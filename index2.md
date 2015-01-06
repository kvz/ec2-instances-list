---
layout: default
title: EC2 Instances List
permalink: /
---

{% include README.md %}

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

If you want to work on this site, the same repo has an `./index.md` with the content. It re-uses `./README.md` as the homepage intro, and includes the generated `./ec2-instances-list.md` as our main table.  
Overriding CSS can be done in `./assets/app.css`.

Site changes go live immediately thanks to GitHub pages. Data changes still need a `make deploy` from anyone with push access, so that the `csv`->`md` conversion can take place.

## Thanks

To [tristen](https://github.com/tristen) for an excellent [tablesort](https://github.com/tristen/tablesort) and to our [contributors](https://github.com/transloadit/ec2-instances-list/graphs/contributors) so far:

 - [Kevin van Zonneveld](https://github.com/kvz)


