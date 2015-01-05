---
layout: default
title: EC2 Instances List
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

 - [ ] List completeness
 - [ ] Add Reserved Instances?
 - [ ] Add a separate list for EBS volumes?
 - [ ] More accurate network speed estimations
 - [ ] Automatically update pricing
 - [ ] Use Travis to update the site automatically (as Github Pages won't do the csv->md translation)
 - [x] Investigate if we can automatically update this [We can, partly](http://stackoverflow.com/questions/7334035/get-ec2-pricing-programmatically)

## Contributing

If you have improvements you can [directly hack on the CSV file](https://github.com/transloadit/ec2-instances-list/edit/gh-pages/ec2-instances-list.csv)

If you prefer hacking locally in SublimeText, the [Advanced CSV](https://github.com/wadetb/Sublime-Text-Advanced-CSV) plugin works quite well for sorting and tidying things up.

![](./images/sublime-text.png)

<script src="./assets/sorttable.js"></script>
<script type="text/javascript">
  var table = document.getElementsByTagName("table")[0];
  sorttable.makeSortable(table);
</script>
