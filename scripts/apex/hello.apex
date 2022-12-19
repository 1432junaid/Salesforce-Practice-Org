// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);


//  how to comment
// * thisis Important
// ? ksk
// ! mada

// ! this is alert
// todo: this is todo comment 
// IMP :  ladk
// IMP dkd


List<Integer> listOfInteger = new List<Integer>{21,22,31,44,2,1};
System.debug('listOfInteger >> '+listOfInteger);
testArray objSortArray = new testArray();
System.debug( objSortArray.sortArrayAsc(listOfInteger) );



List<String> availableValues = new List<String>{'Red','Green','Blue','White','Black'};
Integer listSize = availableValues.size() - 1;
Integer randomNumber = Integer.valueof((Math.random() * listSize));
System.debug('Random number >> '+randomNumber);
String randomString= availableValues[randomNumber];
System.debug('randomString is'+randomString);


