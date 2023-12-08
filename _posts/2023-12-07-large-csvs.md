---
layout: post
title: "Large CSVs"
tags:
 -
---

If you have a very large csv which contains some problems... here are some useful commands 

```ruby
CSV.parse(File.open("tiny.csv")) # fails before returning

# gem install smarter_csv
require "smarter-csv"
SmarterCSV.process('tiny.csv', {:chunk_size => 2}) # never returns
```

```bash
# http://harelba.github.io/q/
# brew install harelba/q/q
time q -d , -H "select npi from dec5.csv" > q_dec5.csv

diff q_dec1.csv q_dec5.csv | grep "^<" | wc -l
diff sort_q_dec1.csv sort_q_dec5.csv | grep "^<" | wc -l
```


line counts mismatches

```bash
# wc -l *.csv | sort
#       10 tiny.csv
#  1807551 q_dec1.csv
#  1807551 sort_q_dec1.csv
#  1807552 Order_and_Referring_Dec_1_2023.csv
#  1807552 dec1.csv
#  1807552 npis_dec1.csv
#  21698032 total
#  2531781 q_dec5.csv
#  2531781 sort_q_dec5.csv
#  2532234 Order_and_Referring_Dec_5_2023.csv
#  2532234 dec5.csv
#  2532234 npis_dec5.csv
#  2531782 python regular csv parse
#  2532374 python fancy regex parse (140 more NPIs than lines in the file)
#  2531679 python isdigit cells
```

```python
import csv
x = csv.reader(open("dec5.csv"))
y = list(x)

import json
import re
z = re.findall(r"(\d+)", json.dumps(y))
z.sort()
len(z)
# >>> z[0:5]
# ['0', '0', '0', '0', '0']
# >>> z[2532370:2532374]
# ['95864', '9786117', '99', '992053854']

import collections
collections.Counter(z)["0"]
# 14
z[0:15]
# ['0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '003495276'

z[2532350:2532374]
# ['811973886', '813', '831202498', '841280740', '861037509', '864082', '86751238', '878', '88286520', '888', '9', '9', '9032315', '9152838', '916686', '932144730', '9405', '942517412', '94352641', '956505', '95864', '9786117', '99', '992053854']
```