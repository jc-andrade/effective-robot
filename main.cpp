/*
This program calls for a function which reads a line from a test.txt file found on the desktop (in my case) and then displays it on the screen.
Done by: Julio C. Andrade
 */

// Declaring what features we'll be using (preprocessors)
#include <fstream> // File manipulation
#include <string> // To use strings
#include <iostream> // To use cout
#include "display.h"


// Main function
int main()
{
    display();  // Calling the display function from display.h file, which will read line from test.txt file
}



/*
 What kind of computer did you use to do this work?
 15-Inch MacbookPro Retina running OS X El Capitan BETA.
 
 What programming language did you use?
 C++
 
 Indicate what other languages you feel you could have used as well.
 C, java.
 
 What tools did you use to complete this work?
 I used Xcode to write the code and I used some of C++'s standard libraries.
 I used Terminal and the cat command to create a quick text file that said, "Hello, World!" and called it test.txt
 I ran it (Product -> Run) a couple of times and the program finished but no output came up. I looked through the Xcode settings and made sure my file was in the correct location.
 Ran it again and it worked.
 **UPDATE** 
 Realized that the assignment was to actually make the method run in another file. So created a header file and copied the function declaration and the function into the other file.
 I added #include "display.h" at the top to make sure that the program would import it and the program still ran.
 
 What files were produced as part of this process, and where did they end up on your system?
 I didn't notice any files being created in the directory via Finder or via Terminal (by using ls -la) whenever I hit run on Xcode.
 I then decided to compile this program via Terminal and navigated to my Desktop and typed the command "g++ main.cpp" and waited a few seconds; it created a file called a.out on the desktop.
 */