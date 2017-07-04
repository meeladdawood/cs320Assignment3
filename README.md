## CS 320 Assignment 3

**Description:** 
This assignment consists of three programs. Each program is a continuation of the previous program. The purpose of this asignment is to implement a Lua program that contains a function that translates a string from in-fix to post-fix notation. This assignment also utilizes the Lua C API in which the Lua application is executed.

### prog3_1.cpp

**Description:** 
This program takes in one command line argument, which is the name of a lua file. Then the program creates a lua state in which it runs the lua application.

**How to compile/run:**

```
//Compiling
g++ prog3_1.cpp -o prog3_1 -I ~/CS320Assignment3/correct/lua-5.3.4/src/ -L ~/CS320Assignment3/correct/lua-5.3.4/src/ -l lua -l m -l dl

//Running
./prog3_1 test.lua

``` 


### prog3_2.lua
**Description:**
This program implements a function that converts an input string from in-fix notation to post-fix notation. The in-fix string is entered by the user through stdin and then is tokenized by white space and then translated to a string that contains the new post-fix notion. The resultant post-fix string is then displayed on stdout.

**How to compile/run:**

```
//Running
lua prog3_2.lua

```



### prog3_3.cpp

**Description:**
This program takes in one command line argument, which is the name of a lua file. Then the program creates a lua state in which it runs the lua application. Then the program will take in a line from stdin, containing a string with the in fix notion and then calls the InfixtoPostfix() function. After the function is done, the variable containg is the resultant postfix string is then retervied in this program and is displayed to stdout
 

**How to compile/run:**

```
//Compiling
g++ prog3_3.cpp -o prog3_3 -I ~/CS320Assignment3/correct/lua-5.3.4/src/ -L ~/CS320Assignment3/correct/lua-5.3.4/src/ -l lua -l m -l dl

//Running
./prog3_3 prog3_2.lua | lua StackMachine.lua

```


