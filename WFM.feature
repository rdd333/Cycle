Feature: WFM

Background: Credentials
Given I assign "iadmin" to variable "usr"
Given I assign  "admin#1" to variable "pwd"

Scenario: Login
Given I open "Chrome" web browser
And I navigate to "http://jdatb02/retail/" in web browser within 30 seconds
And I wait 10 seconds
And I click element "id:loginUserName" in web browser within 30 seconds
And I type $usr in element "id:loginUserName" in web browser within 10 seconds
And I wait 4 seconds
And I click element "id:loginPassword" in web browser within 30 seconds
And I type $pwd in element "id:loginPassword" in web browser within 10 seconds
And I wait 5 seconds
And I click element "id:loginButton" in web browser within 10 seconds
Once i see element "text:Retail CO" in web browser
And I wait 10 seconds
then i click element "id:jdaSiteButton-1023-btnIconEl" in web browser within 10 seconds
And I wait 10 seconds
Once i see element "text:Choose Site" in web browser within 10 seconds
And I wait 10 seconds
then i click element "id:combobox-1031-inputEl" in web browser within 10 seconds
#tHEN I select option "BU1108" from drop-down element "id:combobox-1031-inputCell" in web browser within 10 seconds
And I type "BU1108" in element "id:combobox-1031-inputEl" in web browser within 10 seconds
And I wait 5 seconds
And I click element "id:button-1034-btnEl" in web browser within 10 seconds
Once i see element "text:Schedule Editor" in web browser within 10 seconds
And I wait 20 seconds
#THEN I select option "Sun" from drop-down element "id:ext-gen1216" in web browser within 10 seconds
And I click element "id:ext-gen1216" in web browser within 5 seconds
And I wait 10 seconds
And I click element "xPath://li[contains(text(),'Sun')]" in web browser
#then i click element "id:ext-comp-1093-inputEl" in web browser within 10 seconds

#After Scenario: 
#Given I close web browser