## Introduction

This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets. In particular, the data was from the "Individual household
electric power consumption Data Set" taken from the course web site:


* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.


The following descriptions of the 9 variables in the dataset are taken
from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

The names of the variables are changed in this file from the data base, but order is the same and the mapping should be clear.  An addtional variable DateTime was added which joined the original Date and Time variables into a single variable for ordering of data by time.

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>GlActivePower</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>GlReactivePower</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>GlIntensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>SubMetering1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>SubMetering2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>SubMetering3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

The added variable

<li><b>SubTime</b>: Date and time as POSIXct .</li>
## Loading the data


* The dataset has 2,075,259 rows and 9 columns. 
* The data was loaded, skipping rows so that first entry corresponded to a date near Feb 1, 2007.
* A limited number of rows were loaded that included all data for Feb 1 and 2 2007.

## Making Plots

Our overall goal here is simply to examine how household energy usage
varies over a 2-day period in February, 2007. The base plotting library was used to examine 
how power was used.

* Each plot is saved it to a PNG file with a width of 480
pixels and a height of 480 pixels. The files are labeled plotj.png for j=1,4.
A corresponding R code file (plotj.R) is included in the repository.

The four plots reproduce those provided in the course repository.

### Plot 1


![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png) 


### Plot 2

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3.png) 


### Plot 3

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4.png) 


### Plot 4

![plot of chunk unnamed-chunk-5](figure/unnamed-chunk-5.png) 

