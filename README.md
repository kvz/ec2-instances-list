ec2-instances-list
==================

| CanUse           | Name        | vCPU           | ECU  | Memory (GiB) | Instance Storage (GB) | Net. Ephemeral GB | Networking Speed | Price  | Spot Price | Generation | Family            |
|------------------|-------------|----------------|------|--------------|-----------------------|-------------------|------------------|--------|------------|------------|-------------------|
| #ERROR!          | m1.small    | 1              | 1    | 1.7          | 1 x 160               | 160               | low              | $0.044 | $0.0071    | 1          | General Purpose   |
|                  | m1.medium   | 1              | 2    | 3.75         | 1 x 410               | 410               | moderate         | $0.087 | $0.0081    | 1          | General Purpose   |
|                  | m1.large    | 2              | 4    | 7.5          | 2 x 420               | 420               | moderate         | $0.175 | $0.0161    | 1          | General Purpose   |
|                  | m1.xlarge   | 4              | 8    | 15           | 4 x 420               | 1680              | high             | $0.350 | $0.0330    | 1          | General Purpose   |
|                  | c1.medium   | 2              | 5    | 1.7          | 1 x 350               | 350               | moderate         | $0.130 | $0.0160    | 1          | Compute Optimized |
|                  | c1.xlarge   | 8              | 20   | 7            | 4 x 420               | 1680              | high             | $0.520 | $0.2000    | 1          | Compute Optimized |
|                  | cc2.8xlarge | 32             | 88   | 60.5         | 4 x 840               | 3360              | 10 gigabit       | $2.000 | $0.2000    | 2          | Compute Optimized |
|                  | cg1.4xlarge | 16             | 33.5 | 22.5         | 2 x 840               | 1680              | 10 gigabit       | $2.100 |            | 1          | GPU Instances     |
|                  | m2.xlarge   | 2              | 6.5  | 17.1         | 1 x 420               | 420               | moderate         | $0.245 |            | 2          | Memory Optimized  |
|                  | m2.2xlarge  | 4              | 13   | 34.2         | 1 x 850               | 850               | moderate         | $0.490 |            | 2          | Memory Optimized  |
|                  | m2.4xlarge  | 8              | 26   | 68.4         | 2 x 840               | 1680              | high             | $0.980 |            | 2          | Memory Optimized  |
|                  | cr1.8xlarge | 32             | 88   | 244          | 2 x 120 SSD           | 240               | 10 gigabit       | $3.500 |            | 1          | Memory Optimized  |
|                  | hi1.4xlarge | 16             | 35   | 60.5         | 2 x 1024 SSD          | 2048              | 10 gigabit       | $3.100 |            | 1          | Storage Optimized |
|                  | t1.micro    | 1              | 0.1  | 0.615        | EBS Only              | 0                 | very low         | $0.020 | $0.0031    | 1          | General Purpose   |
|                  | t2.micro    | 1              | 0.1  | 1            | EBS Only              | 0                 | low to moderate  | $0.013 |            | 2          | General Purpose   |
|                  | t2.small    | 1              | 0.2  | 2            | EBS Only              | 0                 | low to moderate  | $0.026 |            | 2          | General Purpose   |
|                  | t2.medium   | 2              | 0.3  | 4            | EBS Only              | 0                 | low to moderate  | $0.052 |            | 2          | General Purpose   |
|                  | m3.medium   | 1              | 3    | 3.75         | 1 x 4 SSD             | 4                 | moderate         | $0.070 | $0.1100    | 3          | General Purpose   |
|                  | m3.large    | 2              | 6.5  | 7.5          | 1 x 32 SSD            | 32                | moderate         | $0.140 | $0.2000    | 3          | General Purpose   |
|                  | m3.xlarge   | 4              | 13   | 15           | 2 x 40 SSD            | 80                | high             | $0.280 | $0.4500    | 3          | General Purpose   |
|                  | m3.2xlarge  | 8              | 26   | 30           | 2 x 80 SSD            | 160               | high             | $0.560 | $0.0600    | 3          | General Purpose   |
|                  | c3.large    | 2              | 7    | 3.75         | 2 x 16 SSD            | 32                | moderate         | $0.105 | $0.0160    | 3          | Compute Optimized |
|                  | c3.xlarge   | 4              | 14   | 7.5          | 2 x 40 SSD            | 80                | moderate         | $0.210 | $0.0300    | 3          | Compute Optimized |
|                  | c3.2xlarge  | 8              | 28   | 15           | 2 x 80 SSD            | 160               | high             | $0.420 | $0.0600    | 3          | Compute Optimized |
|                  | c3.4xlarge  | 16             | 55   | 30           | 2 x 160 SSD           | 320               | high             | $0.840 | $0.1300    | 3          | Compute Optimized |
|                  | c3.8xlarge  | 32             | 108  | 60           | 2 x 320 SSD           | 640               | 10 gigabit       | $1.680 | $0.2600    | 3          | Compute Optimized |
|                  | g2.2xlarge  | 8              | 26   | 15           | 60 SSD                | 60                | high             | $0.650 | $0.0600    | 2          | GPU Instances     |
|                  | r3.large    | 2              | 6.5  | 15           | 1 x 32 SSD            | 32                | moderate         | $0.175 | $0.0160    | 3          | Memory Optimized  |
|                  | r3.xlarge   | 4              | 13   | 30.5         | 1 x 80 SSD            | 80                | moderate         | $0.350 | $0.0300    | 3          | Memory Optimized  |
|                  | r3.2xlarge  | 8              | 26   | 61           | 1 x 160 SSD           | 160               | high             | $0.700 | $0.0600    | 3          | Memory Optimized  |
|                  | r3.4xlarge  | 16             | 52   | 122          | 1 x 320 SSD           | 320               | high             | $1.400 | $0.1300    | 3          | Memory Optimized  |
|                  | r3.8xlarge  | 32             | 104  | 244          | 2 x 320 SSD           | 640               | 10 gigabit       | $2.800 | $0.2600    | 3          | Memory Optimized  |
|                  | i2.xlarge   | 4              | 14   | 30.5         | 1 x 800 SSD           | 800               | moderate         | $0.853 |            | 2          | Storage Optimized |
|                  | i2.2xlarge  | 8              | 27   | 61           | 2 x 800 SSD           | 1600              | high             | $1.705 |            | 2          | Storage Optimized |
|                  | i2.4xlarge  | 16             | 53   | 122          | 4 x 800 SSD           | 3200              | high             | $3.410 |            | 2          | Storage Optimized |
|                  | i2.8xlarge  | 32             | 104  | 244          | 8 x 800 SSD           | 6400              | moderate         | $6.820 |            | 2          | Storage Optimized |
|                  | hs1.8xlarge | 16             | 35   | 117          | 24 x 2048             | 49152             | moderate         | $4.600 | $0.1300    | 1          | Storage Optimized |
