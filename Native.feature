Feature: Native

Background: 
#Clock -Microsoft.WindowsAlarms_8wekyb3d8bbwe!App
# Calculator -Microsoft.WindowsCalculator_8wekyb3d8bbwe!App

@Calculator
Scenario: Calculator
Given I open app "Calculator" with id "Microsoft.WindowsCalculator_8wekyb3d8bbwe!App" within 5 seconds
Then I click object "AutomationId:num9Button" in app within 5 seconds
Then I click object "AutomationId:plusButton" in app within 5 seconds
Then I click object "AutomationId:num6Button" in app within 5 seconds
Then I click object "AutomationId:minusButton" in app within 5 seconds
Then I click object "AutomationId:num9Button" in app within 6 seconds
Then I click object "AutomationId:equalButton" in app within 5 seconds
Then I copy text inside object "AutomationId:CalculatorResults" in app to variable "Result"
Then I echo $Result
And I close app


@Clock
Scenario: Calculator
Given I open app "Clock" with id "Microsoft.WindowsAlarms_8wekyb3d8bbwe!App" within 5 seconds
Then I click object "AutomationId:TimerButton" in app within 5 seconds
Then I click object "AutomationId:AddTimerButton" in app within 5 seconds
#Once I see title contains "Add new timer" in app within 4 seconds
Then I click object "Name:seconds" in app
then I enter "30" 
Then I click object "Name:Timer name" in app
then I enter "Test" 
Then I click object "AutomationId:PrimaryButton" in app within 5 seconds

#Once I see value "<TEXT>" equals text in object "<id|automationId|name|xPath|controlType>:<OBJECT_IDENTIFIER>" in app
#Then I click object "AutomationId:minusButton" in app within 5 seconds
#Then I click object "AutomationId:Button" in app within 6 seconds
Then I click object "AutomationId:TimerPlayPauseButton" in app within 5 seconds
#Then I copy text inside object "AutomationId:CalculatorResults" in app to variable "Result"
And I wait 35 seconds
And I close app
