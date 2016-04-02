---
layout: post
title: "Talks and Wonders"
tags:
 -
---

Here are some talks that I could maybe write and then give if I felt like it

- The anatomy of an rspec test in ruby, common failures of let(:) scopes
- Feature Feature and deploy and migration
- refactoring the email sanitizer
- penny allocation
- email validation (Here is some real production code that I don't think is the most perfect approach possible)

{% highlight ruby %}
  # Current valid admin email on prod has the following format:
  # 1) comma seperated list where individual emails may have leading or trailing white spaces
  # 2) ampersand seperated list where individual emails may have leading or trailing white spaces
  # 3) semicolon seperated list where individual emails may have leading or trailing white spaces
  # 4) white space seperated list
  # 5) a single email followed by a comma, ampersand, semicolon, whitesapce
  def sanitize_admin_email!
    return false if admin_email.blank? || /@/ !~ admin_email ||  /\./ !~ admin_email

    email_list = []
    if admin_email =~ /,/
      email_list = admin_email.strip.split(',').map(&:strip)
    elsif admin_email =~ /&/
      email_list = admin_email.strip.split('&').map(&:strip)
    elsif admin_email =~ /;/
      email_list = admin_email.strip.split(';').map(&:strip)
    elsif admin_email =~ / /
      email_list = admin_email.strip.split(' ').map(&:strip)
    else
      return (admin_email =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i).present?
    end

    email_list.each do |email|
      unless email =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
        return false
      end
    end

    update_column(:admin_email, email_list.map { |s| "#{s}" }.join(','))
    true
  end
{% endhighlight %}
