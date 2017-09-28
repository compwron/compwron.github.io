---
layout: post
title: "Penny Allocation"
tags:
 -
---

At the core, this issue stems from different tax calculations between DS and the BPRO client. DS warehouse code should mimic the behavior of the client code and group all check_items and fees by tax_rate, then apply tax, then round (and penny allocate at this step), and then sum.

You can view a check with this discrepancy here:

https://uat-reports.breadcrumb.com/hq/restaurants/arrakis/reports/checks/5f2ca0e4-0f03-488b-a1a5-b140b727f867

In depth behavior walkthrough (base on my best understanding) follows:

In Data Service's Warehouse code:
Tax is calculated and distributed amongst all check components (check_items and fees) via

dsitribute_tax_after_comp_to_check_items

This method takes all the contribution_to_tax from each component and passes them as an array into the reallocate_partial_pennies method.

contribution_to_tax

Is a method on check_items and fees which takes the price_sum_without_tax ( just price X quantity with some extra logic for inclusive items ) and multiplies it by its tax_rate **without rounding**

reallocate_partial_pennies

Takes fractional pennies from each un-rounded tax and adds them together. Any full pennies created after rounding are distributed amongst the check_items.

So, for example, if the array of [.567, .009, .026] goes in, the fractional pennies add up to .022 which rounds to 2 pennies to allocate, and then  the array that comes out is [.57, .01, .02] (sum of .60).

In the Breadcrumb Pro App Code:
Tax is calculated by grouping all items/fees with the same tax_rate, taking the sum of their revenue (what DS calls price_sum_without_tax), multiplying by their tax rate, then **rounding** to pennies, and then summing all taxes.

So in this case we have 3 items on the check with revenue of [6.30, .09, .26]. They have the respective tax rates of [.09, .1, .1]. So step one is grouping these values by tax rate:

{
     .1: (0.09 + 0.26) = 0 .35,
    .09: 6.30
}

We then multiply each grouped revenue by its tax rate: .1 becomes 0.035, .09 becomes 0.567. It is at this point that the client rounds these numbers. So 0.035 => 0.04, 0.567 => 0.57. Which when summed = 0.61 .

Ping [~dchetlin] this was the root cause of the issue I asked you about a few days ago.




---


http://c2.com/cgi/wiki?BankersRounding
