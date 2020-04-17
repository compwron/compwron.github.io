---
layout: post
title: "EBT Braindump"
tags:
 -
---

A whole bunch of links, data, and technical notes on SNAP/EBT

[NOTE: this is messy. I hope to clean it up someday but it’s better to publish now I think]

SNAP is Supplemental Nutrition Assistance Program https://en.wikipedia.org/wiki/Supplemental_Nutrition_Assistance_Program i.e. American “food stamps” or “food assistance” and when it is accessed electronically, i.e. via a debit card (debit card ish thing) it is called EBT which stands for Electronic Benefit Transfer https://en.wikipedia.org/wiki/Electronic_benefit_transfer
Published in 2019 there is https://snapstories.codeforamerica.org/ which tells stories from people who use SNAP/EBT. This is a great educational resource for people to learn more about what kinds of people use EBT and why.
In January 2019 (during the government shutdown) EBT benefits for both February and March were distributed in February, so that recipients would be sure to get their March benefits even if the government shutdown did not end.
https://www.fns.usda.gov/pressrelease/2019/000319 “USDA will rely on a provision of the just-expired Continuing Resolution (CR), which provides an appropriation for programs like SNAP and child Nutrition to incur obligations for program operations within 30 days of the CR’s expiration. USDA will be reaching out to states to instruct them to request early issuance of SNAP benefits for February. States will have until January 20th to request and implement the early issuance”
https://whyy.org/articles/shutdown-snap-funded-through-february-but-outage-glitch-unfixed/
https://twitter.com/kylegriffin1/status/108732644344338432
52,500 retailers are unable to take any form of food stamps due to the government shutdown, because they need to renew EBT debit card licenses but can’t. https://www.pbs.org/newshour/show/why-many-stores-cant-accept-food-stamps-during-the-shutdown
Billions in food stamp payments to come early because of shutdown
The partial government shutdown, hours away from becoming the longest in U.S. history, means that millions of…
www.politico.com

2019 Government Shutdown - San Diego Hunger Coalition
Our Mission Staff Board of Directors Impact Reports Financials Strategic Partners Our Funders Jobs/Internships
www.sandiegohungercoalition.org
More shutdown fallout: Some retailers now unable to accept food stamps
BONITA, Calif. (KGTV) - In the wake of the partial government shutdown, recipients of food stamps are learning some…
www.10news.com
How a store applies for, checks on, and renews their ability to accept EBT
(it’s not a streamlined process, custom per state)
How Do I Apply to Accept Benefits? | Food and Nutrition Service
Apply to become authorized to accept SNAP benefits. You can complete an online application in as little as 15 minutes…
www.fns.usda.gov
What's My Application Status? | Food and Nutrition Service
Welcome to the Supplemental Nutrition Assistance Program's Online Store and Farmers Market Application. In order to…
www.fns.usda.gov
SNAP (Food Stamps)
The Supplemental Nutrition Assistance Program (SNAP), commonly known as food stamps, helps people with limited income…
www1.nyc.gov
EBT Retailer
State of California
www.ebtproject.ca.gov
Do I need to renew my SNAP authorization periodically? (For SNAP Retailers)
How do I apply and be authorized to accept SNAP benefits? (For SNAP Retailers) Where do I mail my SNAP Retailer…
asktheexpert.custhelp.com
More details on how farmers markets specifically work with EBT https://www.fns.usda.gov/ebt/snap-and-farmers-markets That SNAPauthorizedFMs.xls download has 3,374 farmers markets on it- here’s a public google doc version. https://docs.google.com/spreadsheets/d/1FmnIH4l8NMQB36O6yNhDKE23UDAZoIIo7eazMwILcqU/edit#gid=2130676983
Training materials for merchants accepting SNAP https://www.youtube.com/watch?v=JCBhn_NdX8U&feature=youtu.be (17 min) https://fns-prod.azureedge.net/sites/default/files/snap/Retailer-Training-Guide.pdf 3rd-party guide to becoming an EBT merchant
Scams
https://www.kdrv.com/content/news/EBT-Scam-Reported-Impacting-Camp-Fire-Survivors-504642371.html
Overall stats
Anyway, some ending numbers about current usage/cost: SNAP benefits in fiscal year 2016 supplied roughly 44.2 million Americans (14% of the population) with a monthly average of $125.51 per person in food assistance. https://www.fns.usda.gov/pd/supplemental-nutrition-assistance-program-snap … https://en.wikipedia.org/wiki/Supplemental_Nutrition_Assistance_Program …
More fun: Acculynk (i.e. First Data) https://acculynk.com/ is the only authorized vendor of the online EBT PIN-secure solution (???)
The beginning of EBT
Historical note- on January 5th 2017, the US Food and Nutrition Service announced the selection of seven retailers for the initial launch of the SNAP Online Purchasing Pilot. https://www.fns.usda.gov/snap/online-purchasing-pilot … Initial launch included Amazon and Walmart +9 others, in 8 states.
Downtime
When the systems that make EBT transactions work are not working for a few minutes or hours, it keeps people from getting their groceries (there is a manual voucher system which supposedly allows people to spend their SNAP when the EBT system is down, but stores don’t use it because it requires calling a government phone number for each customer). Periods of degraded service happen fairly often. https://downdetector.com/status/snap-ebt is a place where people check for this and report their issues.
In August 2018, the company Novo Dia which makes “Mobile Market+” had some financial troubles. However now in 2019 they are doing just fine thanks to some help from the company Square. https://newfoodeconomy.org/farmers-market-novo-dia-snap-software/ As of 2018, “40% of SNAP-authorized [farmers markets] use Novo Dia’s Mobile Market software exclusively to serve customers who purchase food using their benefits” and in 2018, “400 markets and farmer-vendors are currently on a waitlist for SNAP processing equipment” https://farmersmarketcoalition.org/novo-dia-group-shutdown-information/
Top-level providers
FIS, Confluent, ??
Hardware providers
The actual vendor list linked there is https://fns-prod.azureedge.net/sites/default/files/snap/SNAP-EBT-TPP-guidance.pdf … (PDF) with 31 vendors. Some highlights:
Bank of America, Fidelity, WorldPay.
“If you are a third party processor that wishes to be added to this list please contact RPMDHQ-Web@fns.usda.gov”
Online usage
Walmart only accepts EBT/SNAP at certain stores? https://wmt-grocery.custhelp.com/app/answers/detail/a_id/1848/kw/ebt/session/L2F2LzEvdGltZS8xNTQ2MDY5MTAxL3NpZC9mVWxvNmh0a3VLZmdNQmdpWjhZMXpuZ3pjRHo2UnBiRFVkb3Q2NlkzeWdHTlBPUXNPWXFHSE9BbjhoVXNtZEllOE15YWlaeU1ScDVORkRjOE5uQldJZW9ORW8yJTdFMzkxV0pDTUsxMGdDQ2d2NmxkN1ZZd0lLbnBVUSUyMSUyMQ%3D%3D … “Accepted Payment Methods: … money order, and EBT (must select cash option in debit reader)). SNAP (Food) and WIC benefits cannot be used to pay for the order amount” https://help.walmart.com/app/answers/detail/a_id/30/~/accepted-payment-methods …
https://www.businessinsider.com/walmart-could-take-hit-from-snap-benefits-reduction-2018-4
How hardware is provided to farmers markets
In California, farmers markets get EBT processing equipment through the state. Michigan is similar- the state’s 2018 fiscal year budget included funding for “no-cost, wireless POS devices to farmers’ markets and direct-marketing farmers,” “The one-time budget allocation is considered part of the administrative cost of implementing SNAP in our state and is therefore eligible to be split 50/50 between our state and FNS … This funding is independent of the FNS SNAP equipment funding.”
Double EBT at farmers markets
In 20 states, https://www.doubleupfoodbucks.org/about/
https://twitter.com/hashtag/DoubleUpFoodBucks?src=hash
Funded by https://www.doubleupfoodbucks.org/partners/
Companies
Propel https://www.joinpropel.co/ makes the app https://twitter.com/FreshEBT https://play.google.com/store/apps/details?id=com.propel.ebenefits&hl=en_US “Check EBT card balance, view spending and transaction history, find nearby stores that accept SNAP” Since the official SNAP locator site requires flash, this seems like a *great* idea https://www.fns.usda.gov/snap/retailerlocator FreshEBT relies on the major government contractors that manage state food stamp networks, FIS https://www.fisglobal.com and https://www.conduent.com but Conduent struggled to handle the data demands of FreshEBT. Conduent blocked FreshEBT in April 2018, and eventually launched their own (so far, substandard) solution, ConnectEBT https://play.google.com/store/apps/details?id=com.conduent.ebt&hl=en_US https://www.nytimes.com/2018/04/23/technology/start-up-fight-poverty-food-stamp-giant-blocking-it.html
Another player is https://allebt.com “Shop online with your EBT card and Food Stamps at stores like Walmart, Costco, Target.” https://www.f6s.com/allebt https://everipedia.org/wiki/lang_en/all_ebt/ http://www.allebt.com/ https://thespoon.tech/all_ebt-offers-calendar-tool-to-help-snap-recipients-budget-purchases/
STCR, a merchant services company that provides equipment and technical support
“If they drop and break the terminal, if it’s a merchant usage error — meaning they punched the wrong key — that can take five, ten minutes to retrain them,” said MerchantSource president Kim Lyons. If a device needs to be replaced, depending on the warranty, that process can take up to a week or two.
In Pennsylvania, the company that is contracted by the state to process all EBT payments is Conduent. Before Conduent, JP Morgan provided this service.
there is a small, regulated group of companies who are able to process SNAP payments at the state level.
Novo Dia
In 2018 the Food and Nutrition Service (FNS), the branch of USDA that manages the SNAP program, contracted Financial Transactions Management (FTM) — a company less than a year old — to oversee the distribution of processing equipment to farmers’ markets nationwide. FTM decided to cut ties with Novo Dia and work instead with First Data, an Atlanta-based financial services giant, and others. According to FERN’s story, the decision delivered a serious blow to Novo Dia, whose mobile application had been a favorite of farmer’s market vendors for its ease of use and because it eliminated third-party fees related to processing SNAP transactions.
“Due in part to small but significant improvements in data sharing and data matching, improper payment rates in the Supplemental Nutrition Assistance Program (SNAP) have been pushed down from a high of 6.0 percent in 2007 to its lowest level ever, 3.2 percent, in 2014.32” https://www2.deloitte.com/insights/us/en/industry/public-sector/fraud-waste-and-abuse-in-entitlement-programs-benefits-fraud.html https://oui.doleta.gov/unemploy/bam/2015/IPIA_2015_Benefit_Accuracy_Measurement_Annual_Report.pdf
Technical details
API documentation for the endpoint https://secure.ftipgw.com/ArgoFire/transact.asmx?op=ProcessEBTCard is hosted at https://www.frontstream.com/developers/secure-electronics-payments-api/documentation/processebtcard/
https://blacknectarapi.docs.apiary.io/# is an API that lets you search for stores that support EBT
Testing Guidelines https://fns-prod.azureedge.net/sites/default/files/WIC_EBT_Testing_Guidelines_060402%5B1%5D.pdf
Public sentiment
There is a lot of chatter on twitter about EBT. Here are some highlights


Which stores support EBT
You can view data on which stores support SNAP at https://catalog.data.gov/dataset/supplemental-nutrition-assistance-program-snap-data-system-a2b49 … as a downloadable excel file rather than having to use the api (also listed on that page)
Related/similar data file download excel https://catalog.data.gov/dataset/snap-online-state-ebt-access-dataset …
Data tagged EBT on http://data.gov https://catalog.data.gov/dataset?tags=ebt … (See entire listing for Connecticut)
Hardware
https://exadigm.com/wp-content/uploads/2017/09/ExaDigm-G3-Series-09.17.pdf
http://www.miurasystems.com/hubfs/MiuraUi/downloads/Shuttle-DataSheet.pdf?t=1440608034550
Other discounts based on EBT
Amazon https://amazon.com/qualify offers discounted Prime for SNAP cardholders- 5.99/month (71.88/year) vs the usual 12.99/month (155.88/year) or the buy-once $119/year plan, and allows EBT as a payment option (many online retailers don’t/can’t) ($36 savings compared to someone who buys prime every month of year- but probably some people just buy Prime long enough to get all their holiday shopping done with free shipping?)
Here’s a list of some childrens museums, cell phone/service providers, and gardening resources that give discounts to EBT card holders http://www.technogypsie.com/reviews/?p=36151 … (Feb 2018) https://lowincomerelief.com/ebt/ (June 2016)
Funding requests for EBT acceptance hardware
https://www.gofundme.com/help-jcfm-fund-a-new-pos-system 2018 “JCFM needs to buy a new system for Debit/Credit and SNAP/EBT tokens because the current provider, Novo Dia (MobileMarket+) is shutting down at the end of August.” (outdated- Novo Dia was funded by Square in 2019 and is no longer planned to shut down) https://www.washingtonpost.com/lifestyle/food/tech-company-comes-to-the-rescue-of-food-stamp-benefits-at-farmers-markets/2019/01/30/ba22def2-24e7-11e9-90cd-dedb0c92dc17_story.html?noredirect=on&utm_term=.48d32e9ff581
https://www.gofundme.com/5t7v04w “9th West Farmers Market EBT/SNAP Eq — Due to our EBT/SNAP service provider going out of business at the end of the month (and we just learned about this week), we are having to scramble to get a new provider and new equipment to continue providing EBT/SNAP to allow those in our community to use their food stamp benefits to purchase fresh, local produce, honey, eggs, and more. We were the first Farmers Market in Utah to provide this service to our customers and we wish to continue providing the service.” (outdated- Novo Dia was funded by Square in 2019 and is no longer planned to shut down)
https://www.gofundme.com/farmers-market-ebt-machine “I am starting this go fund me page to help The Eureka Springs Farmers Market get a new EBT processing machine. We are looking to help people in and around Carroll county using the EBT system to have year around access to healthy food alternatives.”
Podcasts:
https://www.cbpp.org/research/podcast-the-food-stamp-program podcast from 2009 (10 years out of date!)
https://www.npr.org/templates/story/story.php?storyId=127743434 podcast from 2010 (9 years out of date!)
https://www.stitcher.com/podcast/wearelatech-la-startups-podcast/e/52273333 podcast from 2019 about All_ebt http://www.allebt.com/
https://a16z.com/2017/06/07/modernizing-govt-services-foodstamps-fostercare/ podcast from 2017 about food benefits and https://www.freshebt.com/ an app made by https://www.joinpropel.com/
Youtube:
https://www.youtube.com/watch?v=h9XrziG1AZI “How to Use Your EBT Card” by MyDSS (Missouri Department of Social Services)
https://www.youtube.com/watch?v=zgyx3FDVNyA “SNAP, Food Stamps, Obesity, and Behavioral Economics” by Behavioral Triage
https://www.youtube.com/watch?v=Jw7uT1jOt0o “SNAP: Myths vs. Facts” by Take Part
https://www.youtube.com/watch?v=i0fBlx2Vf08 “What Things Do People Actually Buy With Food Stamps?” by The Infographics Show
ATMIA EBT 2018 conference
https://www.atmia.com/conferences/ebt/ past conference about EBT
Attendee list https://www.atmia.com/files/conferences/2018-ebt/ebt-2018-final-attendee.pdf
https://www.atmia.com/conferences/ebt/ebt-next-gen-presentations/ Links to all presentation PDFs from 2018
https://twitter.com/hashtag/2018EBT
“EBT Next Generation Orientation 2018” https://www.atmia.com/files/conferences/2018-ebt/orientation-session.pdf
“https://fns-prod.azureedge.net/sites/default/files/ops/SNAPCNMI.pdf” “Assessing the Feasibility of Implementing SNAP in the Commonwealth of the Northern Mariana Islands” (The Northern Mariana Islands are a U.S. commonwealth in the Pacific Ocean.) August 2016
https://fns-prod.azureedge.net/sites/default/files/wic/2016-wicebtugm-showcase-hinderer.pdf slides for “MAXIMUS — Your WIC, EBT & MIS Experts” “MAXIMUS has assisted more than 50 agencies (including Chickasaw Nation, ITCA, and Puerto Rico) with their SNAP, eWIC, and MIS needs”
https://www.atmia.com/files/conferences/2018-ebt/workshop-1.pdf Workshop 1: EBT 101: Understanding the Basics
Chris Gonzales — Project Manager, Burger,Carroll & Associates, Inc.
Sarah Newhouse — Senior Consultant, MAXIMUS
These slides are a good read
https://www.atmia.com/files/conferences/2018-ebt/workshop-3.pdf
WIC EBT 201, Elements of Successful WIC EBT implementations
Ellen Thompson — Vice President, MAXIMUS
Lisa Cwanger Ichilov — Director of Project Management, Burger, Carroll & Associates, Inc.
“The APDU (Application Protocol Data Unit) is the communication unit between a reader and a card. The structure of an APDU is defined by the ISO 7816 standards”
https://businessdocbox.com/Business_Software/67353022-Ebt-next-generation-conference-art-burger-burger-carroll-associates-inc-ellen-thompson-maximus-inc.html “EBT: Next Generation Conference Art Burger, Burger Carroll & Associates, Inc. Ellen Thompson, MAXIMUS, Inc.” <- technical, hardware, networking details
SNAP and CASH EBT 201:
The Detailed ins and outs of SNAP and CASH EBT
https://www.atmia.com/files/Conferences/2016%20EBT%20Conference/workshop_4.pdf
https://www.atmia.com/files/conferences/2018-ebt/breakout-6-j-bejjani.pdf EBT Mobile Identity: Oh, the Places You’ll Go — John Bejjani
Product Manager, Authentication and Mobile
EBT Security Today
• EBT Mobile Identity
• Mobile ID: Secure Credential
• Mobile ID: Technology Overview
• Protecting Personal and FIS Data
• Challenges
• The Places You’ll Go
EBT Data & Analytic Success in Idaho
Presented by Maggie Trautman
Principal Fraud Analyst

https://www.atmia.com/files/conferences/2018-ebt/breakout-8-m-trautman.pdf
The PARIS inter-state match report identifies members that have benefit enrollment in multiple states.
6,700 Idaho matches on the inter-state report.
550 SNAP members with SNAP in multiple states
https://www.atmia.com/files/conferences/2018-ebt/breakout-12-j-sheppard.pdf
Hurricane Maria EBT Recovery Puerto Rico Case Study
Pre-Storm
 > 40% of population are EBT participants
 Approximately 2,500 stores processing EBT transactions
Post-Storm
 Additional Disaster Supplemental Assistance being sent to participants
 Normal benefits were being loaded on cards regardless of the storm impact
 Due to communications outages “0” stores were processing EBT transactions
 Within the first 30 days only a few hundred stores were back online processing EBT
https://www.tactivate.com/
Transactions supported by program (Estimated combined EBT/Credit Card)
 November 2017–11,938 Transactions
 December 2017–13,440 Transactions
 January 2018–16,075 Transactions
https://www.atmia.com/files/conferences/2018-ebt/breakout-12-t-byrnes.pdf
Texas Disaster SNAP Experience and Lessons Learned
ATMIA EBT: The Next Generation 2017 conference
http://docplayer.net/57433836-Conference-agenda-registration-costs-hotel-information-exhibitor-sponsor-information-registration-form.html also hosted at https://drive.google.com/file/d/1mJloV5YxbkkUaHFI85hUVgjCX1rUgHoX/view?usp=sharing
slides to “Orientation: The Secrets to Getting the Most out of EBT-The Next Generation” moderated by Mary Hinderer https://www.atmia.com/images/conferences/2017-ebt/orientation-session.pdf
Government acts
https://www.congress.gov/bill/115th-congress/house-bill/3151/all-info
Sources & resources:
1. the current issues with EBT acceptance system in Alaska (that https://18f.gsa.gov/ are fixing)
2. the expansion of EBT eligibility to include people who have SSI (previously SSI recipients had a EBT-alternative program which was complicated to get access to) effective June 1 which will add 800k newly eligible users to the EBT eligibility pool
18f.gsa.gov
3. the new Los Angeles program for “double bucks” for WIT (frequently co-administrated with EBT) funded by Kaiser (like the San Francisco Civic Center farmers market has for EBT/SNAP)
https://www.michigan.gov/documents/micontractconnect/3200036_407570_7.pdf Conduent contract with Michigan, 2013–2018 with extension to 2020