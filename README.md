# Data processing project

[![Gitpod Ready-to-Code](https://img.shields.io/badge/Gitpod-Ready--to--Code-blue?logo=gitpod)](https://gitpod.io/from-referrer/)


Welcome to the Datasmoothie processing environment. Use the `Data processing.ipynb` notebook provided to get started or create your own. 

For a quick reference, here are common ways of doing data processing with Quantipy. For a guide on how to generate dashboards, Excel exports and Powerpoint documents, refer to the internal documentation on the Datasmoothie API.

## Data processing examples:

#### recoding
Example of recoding into a single choice variable.
```
country_mapper = [
	(1,  "North America", {"country":[1,2,3]}),
	(2,  "CEE", {"country":[4,5,6]}),
	(3,  "AsiaPac", {"country":[7,8,9]}),
	(4,  "Western Europe", {"country":[10,11,12]}),
	(5,  "Middle East", {"country":[13,14,15]}),
	(6,  "Africa", {"country":[10, 11, 12]})
]
dataset.derive('regions', 
               'single', "Region", country_mapper)
```

#### banding
Recoding/banding a numerical variable into single-choice variable to create age groups:
```
age_bands= [{"Younger than 18": (0, 17)},
            (18, 34),
            (35, 54),
            (55, 64),
            {"65+": (65, 200)}
            ]
#dataset.band(name='age', bands=age_bands, new_name='grouped_age', label="Age groups")
```


#### cleaning

Filter down the dataset to use only responses marked with status codes 1 and 2.
```
dataset = dataset.filter('completes', 
						{'status':[1,2})
```
