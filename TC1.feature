Feature: TC1
Background: Open Notepad
Given I assign "Test" to variable "t1"
and I assign 10 to variable "t2"
and I assign "t123" to variable "t7"
And I assign "Defining variables in a Background makes them available to use in all Scenarios in a Feature." to variable "t4"
#And I convert string variable $t7 to INTEGER variable "t8"
and I assign 10 to variable "v1"
and I assign 20 to variable "v2"

@Variables
Scenario: Variables
#And I echo "This Step will enter text into whatever program is active on the desktop."
And I echo $t1
And I echo $t2
And I assign variable "t3" by combining $t1 " Cycle"
And I echo $t3
#And i prompt "Enter text" and assign user response to variable "t5"
#And I echo $t5
#And I prompt "Numbers" for integer and assign user response to variable "t6"
#And I echo $t6
And I echo $t8

@Comparision
Scenario: Comparision
Given I "compare variables"
If I verify number $v1 is greater than or equal to $v2
Then I echo "v1 is greater"
else I echo "V1 is lesser"
EndIf

While I verify number $v2 is less than 40
Then I echo $v2
and I increase variable "v2" by 1
EndWhile
