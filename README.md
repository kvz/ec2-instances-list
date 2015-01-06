---
layout: default
title: EC2 Instances List
permalink: /
---

# ec2-instances-list

At [Transloadit](https://transloadit.com) we tried to find the optimal instance types for our workloads. That doesn't automatically mean the latest/biggest box. You might be able to squeeze more performance out of your dollar if you deploy a multitude of smaller boxes. And then there's network speeds, "free" ephemeral storage, reserved/spot prices, legacy, etc to consider.

With information about Amazon EC2 instances scattered [across](https://aws.amazon.com/blogs/aws/new-c4-instances/) [different](https://aws.amazon.com/ec2/pricing/) [pages](https://aws.amazon.com/ec2/previous-generation/) and different tables within those pages, it's not easy to compare and discover what exactly offers the best bang for your buck.

So we're trying to collect all the metrics we can find, and put them in one community maintained [CSV file](https://github.com/transloadit/ec2-instances-list/blob/gh-pages/ec2-instances-list.csv) on GitHub.

We use this to automatically generate a [Markdown file](https://github.com/transloadit/ec2-instances-list/blob/gh-pages/ec2-instances-list.md), and this [sortable HTML table](https://transloadit.github.io/ec2-instances-list).

Import the csv in your favorite spreadsheet editor and do your calculations, or check our site and do some quick analysis just by sorting on some of our denormalized columns directly, such as the monthly costs or netto ephemeral storage.

<div class="sortable" markdown="1">
{% include ec2-instances-list.md %}
</div>

## Notes

 - Pricing based on Hosting on Linux in North Virginia (eu-west-1)
 - Spot Pricing fluctuates heavily and so should be seen as an indication at most for now
 - Since used micro type ECUs are variable, we set 0.1, 0.2, 0.3, to still allow somewhat sensible sorting. Welcoming better ideas here.

Networking speed is a megabit estimation based on Amazon's rather vague "low to moderate" properties. We will need to refine this later, but for now we're settling for:

 - "very low": `10`
 - "low": `50`
 - "low to moderate": `75`
 - "moderate": `100`
 - "high": `1000`
 - "10 gigabit": `10000`

## Todo

 - [ ] Get love by someone who knows how to front-end
 - [ ] List completeness
 - [ ] Automatically update pricing
 - [ ] More accurate network speed estimations
 - [ ] Use Travis to update the site automatically (as Github Pages won't do the csv->md translation)
 - [ ] Add Reserved Instance prices
 - [ ] Add a separate list for EBS volumes?
 - [x] Investigate if we can automatically update this [We can, partly](http://stackoverflow.com/questions/7334035/get-ec2-pricing-programmatically)

## Contributing

If you have improvements you can [directly hack on ./ec2-instances-list.csv](https://github.com/transloadit/ec2-instances-list/edit/gh-pages/ec2-instances-list.csv)

At the expense of some extra typing, we prefer a denormalized CSV so it's easy to distribute and does not require additional dependencies or formulas.

If you prefer hacking locally in SublimeText, the [Advanced CSV](https://github.com/wadetb/Sublime-Text-Advanced-CSV) plugin can be used for sorting and tidying things up (disable Word Wrap).

![](./images/sublime-text.png)

If you want to work on this site, the same repo has a [README.md](https://github.com/transloadit/ec2-instances-list/edit/gh-pages/README.md) that also serves as the homepage. It includes the generated `./ec2-instances-list.md` as our table.  
Overriding CSS can be done in `./assets/app.css` and the layout is in `./_layouts`.

Site changes are deployed automatically thanks to GitHub pages. Data changes still need a `make deploy` from anyone with push access, so that the `csv`->`md` conversion can take place.

## Thanks

To [tristen](https://github.com/tristen) for an excellent [tablesort](https://github.com/tristen/tablesort) and to our [contributors](https://github.com/transloadit/ec2-instances-list/graphs/contributors) so far:

 - [Kevin van Zonneveld](https://github.com/kvz)



