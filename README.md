# UnitConversion-iOS

### Index
* [Introduction](#intro)
* [Project Idea](#projIdea)
* [What I learnt from this project?](#outcome)
* [Testing Screenshots & Video](#testing)


<a id=intro>

### Introduction:
UnitConversion is an iOS application used to convert length from one unit to another.
I build this application to solve the challenge as a part of 100DaysOfSwiftUI.
As we know, the SwiftUI is the popular iOS framework right now to build high quality iOS applications which supports responsive layouts.
With such iOS application, moving my feet deeper into the SwiftUI framework.


<a id=projIdea>

### Project Idea:
As i already mentioned that this project is a challege which has following few requirements.

- The app should have only one screen with a form. This is basically the length conversion app. We should able to convert it among "millimeter (mm)", "centimeter (cm)", "meter (m)", "kilometer (km)", "feet (ft)", "yard (yd)", "mile (mi)".
- Form should have input fields such as unit of input value, unit of output value, and the actual input value.
- The unit of input value and unit of output value should be picker and sould select from picker.
- The app should calculate the output with selected output unit. Finally I have to show the output on the screen.
- The app should show the final result as the output value along with output unit.

<a id=outcome>

### What I learnt from this project?:
I started coding and building iOS applications using SwiftUI with this project. Got to learn following few points of SwiftUI while developing this project:
- **Creating a form in SwiftUI:** The SwiftUI has Form tag to create a form. We can add sections, input fields, and many more into the form.
- **Navigation Bar:** Adding a navigation bar in SwiftUi is quick different. Got to learn that since I have used it in this project.
- **Program state and it's binding:** As we provide input to the input fields of the form. The app should read/write that data in a variable and work accordingly.
- **Pickers in Form:** Learnt about the Pickers used in the Form and it's varients such as inline, segmented, wheel, etc.
- **Computed properties in Struct:** Used few computed properties through an app. It will calculate its value based on other variables which are binded to the input fields.
- **ToolBar:** Used toolbar to hide the button. Actually, created a new button in a system keyboard and handled keyboard's behavior though that newly added button.

<a id=testing>

### Testing Screenshots & Video:
Please refer the following screenshots and testing video to verify the behavior of an application. <br />

![UnitConversion-Screenshot](https://user-images.githubusercontent.com/83705143/217154547-440b6b34-8c87-4780-80bc-19727711f3a2.png)

https://user-images.githubusercontent.com/83705143/217154569-c2607ca7-4637-4d6d-8ff8-db0ce3d449ca.mov
