//
//  display.h
//
//
//  Created by Julio Andrade on 8/26/15.
//
//

// Declaring function
void display();

/***********************************
 *        Display Function         *
 **********************************/
void display()
{
    std::string line; // Declares a string object called line
    std::ifstream inFile; // Creates file object to read
    inFile.open("test.txt"); // Opens file called test.txt in same directory as program
    getline(inFile, line); // Reads the one line
    std::cout << line; // Prints out the line
}