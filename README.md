# ec2-instances-list

At [Transloadit](https://transloadit.com) we tried to find the optimal instance types for our workloads. That doesn't automatically mean the latest/biggest boxes. You might be able to get more performance per dollar if you deploy many older or smaller boxes.

With information about Amazon EC2 instances scattered [across](https://aws.amazon.com/blogs/aws/new-c4-instances/) [different](https://aws.amazon.com/ec2/pricing/) [pages](https://aws.amazon.com/ec2/previous-generation/) and different tables within those pages, it's not easy to compare and discover what exactly offers the best bang for your buck.

So we're trying to collect all the metrics we can find, and put them in one community maintained [CSV file](https://github.com/transloadit/ec2-instances-list/blob/gh-pages/ec2-instances-list.csv) on GitHub. 

We use this to automatically generate a [Markdown file](https://github.com/transloadit/ec2-instances-list/blob/gh-pages/ec2-instances-list.md), and this [sortable HTML table](https://transloadit.github.io/ec2-instances-list), for your convenience.
