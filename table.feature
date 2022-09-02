Feature: table

@open
Scenario: Web browser
Given I open "Chrome" web browser
And I navigate to "https://www.google.com/" in web browser within 7 seconds
And I maximize web browser
And I wait 10 seconds
When I type "Hello" in element "xPath://input[@name='q']" in web browser within 5 seconds
#And I close web browser



@table
Scenario: table
Given I open "Chrome" web browser
And I navigate to "https://money.rediff.com/gainers" in web browser 
Once I see "Top Gainers" in web browser
and I copy value in row "4" column "4" in table "xPath://table[@class='dataTable']" in web browser as variable "price"
And I echo $price
#And I click the "Group M" link in web browser
#But I do