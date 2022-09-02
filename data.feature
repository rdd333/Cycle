Feature: data

@mul
Scenario:multiplu
And I assign 10 to variable "v2"
And I assign 15 to variable "v3"
And I echo $v2
And I echo $v3
then i divide variable $v2 by 2
And I multiply variable $v3 by 11


@dataset
Scenario Outline:Read data from csv
CSV Examples: Datasets\data.csv
Given I echo <num1>
and I echo <num2>
And i assign chevron variables "num1, num2" to dollar variables
#and i assign chevron variables "num1,num2" to dollar variables adding prefix "Test"


if I verify number <num1> is greater than  <num2>
    Then I echo "num1 is Greater"
    Else I echo "num2 is Greater"
    Elsif I verify number <num1> is equal to <num2>
	then I echo "Both number same"
   Endif
And I echo $num1
And I echo $num2
And I multiply variable $num1 by $num2

@dataset2
Scenario Outline:Read data
Examples:
| Name | Pass |
|"u1"|"p1"|
|"u1"|"p2"|
|"u2"|"p1"|
|"u2"|"p2"|

Given I echo <Name>
and I echo <Pass>

@quotes
Scenario:quotes text echo
Given I assign """Hello""" to variable "text1"  after being UPPER cased

Then I echo $text1
Given I echo <num1>

@writedata
Scenario:write to csv files
Given I "write data to csv file"
Given I assign "Datasets\dataw.csv" to variable "file"
If I verify file $file exists
Then I echo "file exists"
else I create file $file
endif
Then I append "line1" to end of file $file
Then I append "line2" to end of file $file
#And I delete file $file
then i assign chevron variables "<COMMA_SEPARATED_VARIABLE_NAMES>" to  dollar variables

@list
Scenario:list
Given I create list "fruit"