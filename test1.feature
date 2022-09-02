Feature: My Feature

Scenario:welcome
Given I echo "Welcome"

@notepad
Scenario:Open Notepad
Given I "Open Notepad"
Then I wait 5 seconds
Then I press keys "CTRL+ESC"
And I wait 5 seconds
when I enter "Wordpad"
And I press keys Enter
And I wait 5 seconds
Then I enter  "Wordpad" 



@variable
Scenario: Declare Variable
Given I assign 10 to variable "num1"
And  I assign "20" to variable "num2"
Then I convert string variable "num2" to INTEGER variable "num3"
And I echo $num1
And I echo $num3