// Purpose: Pop vending machine

#include <stdio.h>
#include <stdlib.h>
#define COIN1 25
#define COIN2 10
#define COIN3 5
#define COIN1TYPE "Quarter"
#define COIN2TYPE "Dime"
#define COIN3TYPE "Nickel"
#define COIN3CHAR1 'N'
#define COIN3CHAR2 'n'
#define COIN2CHAR1 'D'
#define COIN2CHAR2 'd'
#define COIN1CHAR1 'Q'
#define COIN1CHAR2 'q'
#define MAXPOPPRICE 105
#define MINPOPPRICE 5
#define CURRENCY "cents"
// The constants for the program are defined. These can be changed as values need to be changed.


//Below method is used calculate the userÕs change. 
// When no changed is owed, the programs will read out a message. 
// Constants from above are used and the it can be changed accordingly.

void
REFUND(int inputted){
   int Result2=inputted/COIN2; int Result1=(inputted%COIN2)/COIN3;
   if (inputted==0){
      printf("No  change to be given. \n");}
// in the case that the use is owed no change
   else{
      printf ("Your total change is %d %s. Please accept %d %s(s) and %d %s(s) . \n",inputted, CURRENCY,Result2,COIN2TYPE,Result1,COIN3TYPE);}



}



//Method will go through the arguments given to see if they
//are valid or not

int
main (int argc, char **argv){
   int intvar;
   if(argc != 2){
 printf("Please enter only one value \nHint: $pop 30\n");
      exit(1);
   }
   if (sscanf (argv[1], "%i", &intvar)!=1) {
//checking to see if arg is a number
      printf ("You must enter a number (of %s) that is a multiple of %d \nHint: $pop 30\n", CURRENCY,COIN3); exit(0);
      exit(1);
   }
   int value = atoi(argv[1]);
//converts the value value to integer
   if (value>MAXPOPPRICE || value<MINPOPPRICE) {
//checking if given number is between max and min
      printf ("You must enter a number of %s between %d and %d \nHint: $pop 30\n", CURRENCY, MINPOPPRICE, MAXPOPPRICE);
      exit(1);
   }
   if (value % COIN3 !=0) {
//checking to see if the amount is a multiple of coin3
      printf ("You must enter a number of %s that is a multiple of %d \nHint: $pop 30\n", CURRENCY, COIN3);
      exit(1);
   }

   printf ( "Welcome. Pop costs %d %s \n", value, CURRENCY);
   printf ( "You may insert any combination of %ss (%c/%c), %ss (%c/%c), or %ss (%c/%c). Or you can ask for a refund (R/r) in the form of %ss and %ss. \n", COIN3TYPE, COIN3CHAR1$

//Will now ask user to insert coins to retrieve pop.
//The constants defined at the top will provide the names of the coins and the currency used. And the refund function will
// calculate the change if the user asks for it or exits program.


   int remaining=value; //amount still needed
   int inputted; //amount already inputted by user
   char coin; //the coin selection made by user
   int selection; //will tell if the user has made coin selection //or not

   while (remaining > (COIN1*(-1))){
      printf ( "Please enter a coin (NDQ/ndq) or ask for a refund (R/r):");
//asking user to enter a coin now. 
      scanf ( " %c", &coin);
     if (coin=='R' || coin=='r'){printf ("You asked for a refund! \n"); REFUND(inputted); remaining=value; inputted=0; selection=0;}
//in the case of refund the values indicated are set to zero 
// again
      else if (coin=='E' || coin=='e'){printf("You have aborted. Please remember your change!\n"); REFUND(inputted); exit(1);}
      else if (coin==COIN1CHAR1 || coin==COIN1CHAR2){remaining=remaining-COIN1; inputted=inputted+COIN1; selection=1; printf("%s Detected!\n", COIN1TYPE);}//if user enters quart$
      else if (coin==COIN2CHAR2 || coin==COIN2CHAR2){remaining=remaining-COIN2; inputted=inputted+COIN2; selection=1; printf("%s Detected!\n", COIN2TYPE);}//if user enters dime
      else if (coin==COIN3CHAR1 || coin==COIN3CHAR2){remaining=remaining-COIN3; inputted=inputted+COIN3; selection=1; printf("%s Detected!\n", COIN3TYPE);}//if user enters nickel
      else {printf("Please enter a valid amount of %s (NDQ/ndq) \n", CURRENCY); selection=0;}//if user invalid amount
      if (selection==1){printf("You have inserted a total of %d %s ", inputted, CURRENCY);}//telling the user the input received
      if (remaining>0){printf ( "You must insert %d more %s \n",remaining,CURRENCY);}//amount left to be paid for the pop
      if (remaining==0){printf ( "Pop is dispensed. Thank you for your business. \nWelcome. Pop costs %d %s \n", value, CURRENCY); remaining=value; inputted=0;}//if exact change$
      if (remaining<0){printf ( "Pop is dispensed. Please also accept the extra change \n"); inputted=inputted-value; REFUND(inputted); printf("Welcome. Pop costs %d %s \n", val$
      //if the user is owed changed
   }
   return (0);

}




