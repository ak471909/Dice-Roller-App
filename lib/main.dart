import 'package:flutter/material.dart';
import 'package:basics/gradient_container.dart';

// Defining custom functions in dart
void main() {
  //Function provided by flutter to run apps (show user interfaces on the screen)
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 16, 0, 90),
          Color.fromARGB(255, 135, 132, 192),
          Color.fromARGB(255, 0, 183, 255),
        ]),
      ),
    ),
  );
}


/*
Notes:
- Executing  a function : function_name();
- Functions in flutter-dart are same as functions in python or java
- runApp is not defined until package is imported
- External dependencies must be added using import statement
- Importing package syntax: import 'package:package_name';
- main function is a special function from dart which automatically gets 
  executed without having to call the function
- runApp() should be called inside the main
-runApp needs a widget or widget tree value to run
-Widgets are nested within each other to form a user interface. This is called 
 widget tree
 Eg. Placing a text widget inside a button widget

- 2 core widgets used to create a basic user interface: MaterialApp()
- The syntax for widgets are similar to functions but widgets are actually also 
 known as clauses

- Using MaterialApp() alone does not display anything on the screen so an
  must be passed within it in order to display something

- A positional parameter of argument is used as an input value for the 
  MaterialApp widget. home: is the core parameter used.
- A positional parameter is placed within curly brackets {}

Two types of parameters: positional and named
a) positional: The position of the argument determines which value the parameter
   recieves. Syntax: void add(a,b){}
   add(5,10)
b) Named: The name of the argument determines which value the parameter recieves
   Syntax: void add({a,b}){}
   add(b:10, a:5)

- positional arguments are required and must not be omitted while named 
  are optional and may be omitted.

-optional values for parameters can be added using square braces [] and a default
 values can also be added in the parameters
 Example: void add(a,[b=10]){}

-required values for parameters can be defined by writing 'required' before the
parameter name. Example: void add(required a, required b)

const is a keyword provided by dart that optimizes the runtime perfomance
It allows dart to reuse values that are equal and alows duplication of data in
the memory.
(The editor usually suggests where to use const so the widgets that can use it don't need to be memorized)


*/
