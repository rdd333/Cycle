Feature: Lemme Google That

Background:
Given I assign "Chrome" to variable "browser"
Given I assign "https://www.google.com" to variable "dstWebsite"
Given I assign "Tryon Solutions" to variable "searchPhrase"

@wip @directions
Scenario: Directions
Given I "verify that Cycle can open the web browser, navigate to Google.com, and then close itself by running the test"
And I "want to verify that I am on Google's search page"

When I "add a step in the main scenario between the navigation step and the wait step that verifies that it can see the Search Bar"
	Given I "find the step in the Step Guide by looking for a step that can see element in web browser"

And I "specify the element type to see is xPath and define the xPath in the step"
	Given I "inspect the search bar"
    When I "see a highlighted element"
    And I "see that the element has the 'input' Tagname"
    And I "see that the element has attributes with values that can be used to define the element"
    Then I "use the least number of attributes and elements to define the unique element to build my xPath"

And I "add a within clause to the step to give the web page time to load and I set it to 5 seconds"


Scenario: Lemme Google That
Given I open $browser web browser
When I navigate to $dstWebsite in web browser
And I wait 2 seconds
If I see element  "text:Sign in to Google" in web browser 
	then I click  element "text:No thanks" in web browser within 5 seconds
  EndIf
And I type "cycle" in element "xPath://input[@name='q']" in web browser within 5 seconds
 And I click element "xPath://input[@name='btnK']" in web browser
 And i see image "Image:images\166178019ss.png"
#Then I close web browser


@image
Scenario:Image
Given I open $browser web browser
And I maximize web browser
And I navigate to "https://blueyonder.com/" in web browser within 25 seconds
And I wait 2 seconds
And I see image "Image:BY\BlueYonder1.png" in web browser within 100 seconds