---
layout: default
title: EC2 Instances List
permalink: /
---

# ec2-instances-list

Trying to find the optimal EC2 instance types for workloads doesn't automatically mean get the latest/biggest box. You might be able to squeeze more performance out of your dollar if you deploy a multitude of smaller boxes.

Machines that perform 20% slower are for instance priced 40% cheaper. Assuming your budget is finite and your platform scalable, you might be able to gain a higher total performance by using older machines.

At [Transloadit](https://transloadit.com) we're considering this life-hack, but with information about Amazon EC2 instances scattered [across](https://aws.amazon.com/blogs/aws/new-c4-instances/) [different](https://aws.amazon.com/ec2/pricing/) [pages](https://aws.amazon.com/ec2/previous-generation/) and different tables within those pages, it's not exactly easy to compare and discover what (for starters, on paper) offers the best bang for our buck.

So we decided to collect the metrics, add some of our own (like monthly costs or net ephemeral storage) and put them in a community maintained [CSV file](https://github.com/transloadit/ec2-instances-list/blob/gh-pages/ec2-instances-list.csv) on GitHub.

With the CSV we can generate a [Markdown table](https://github.com/transloadit/ec2-instances-list/blob/gh-pages/ec2-instances-list.md), and can then present [this sortable HTML table](https://transloadit.github.io/ec2-instances-list#data) for quick comparisions.

If you want to do deeper analysis, you can import the CSV into your database or favorite spreadsheet editor.

<a name="data"></a>

<div class="sortable">
{% capture list %}{% include_relative ec2-instances-list.md %}{% endcapture %}
{{ list | markdownify }}
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
 - [ ] Use Travis to update the page automatically (as Github Pages won't do the csv->md translation)
 - [ ] Add Reserved Instance prices
 - [ ] Add a separate list for EBS volumes?
 - [x] Investigate if we can automatically update this [We can, partly](http://stackoverflow.com/questions/7334035/get-ec2-pricing-programmatically)

## Contribute Data

If you have improvements you can [directly hack on ./ec2-instances-list.csv](https://github.com/transloadit/ec2-instances-list/edit/gh-pages/ec2-instances-list.csv)

At the expense of some extra typing, we prefer a denormalized CSV so it's easy to distribute and does not require additional dependencies or formulas.

If you prefer hacking locally in SublimeText, the [Advanced CSV](https://github.com/wadetb/Sublime-Text-Advanced-CSV) plugin can be used for sorting and tidying things up (disable Word Wrap).

![](./images/sublime-text.png)

## Contribute to Webpage

Our repository's [README.md](https://github.com/transloadit/ec2-instances-list/edit/gh-pages/README.md) is turned into this webpage, sourcing `./ec2-instances-list.md` for the table. Overriding CSS can be done in `./assets/app.css` and the layout is in `./_layouts/default.html`.

That's all. If you have Jekyll installed, you can preview changes locally via

```bash
make preview
```

Once changes are pushed to the repo, the site will update automatically thanks to GitHub pages. Data changes need a manual `make deploy` from anyone with push access, so that the `csv`->`md` conversion will be done first.

## Thanks

A shoutout to [tristen](https://github.com/tristen) for an excellent [tablesort](https://github.com/tristen/tablesort), and also the [contributors](https://github.com/transloadit/ec2-instances-list/graphs/contributors) so far:

 - [Kevin van Zonneveld](https://github.com/kvz)



