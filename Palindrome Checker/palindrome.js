// A palindrome is a word, phrase, number, or other sequence of characters that reads the same forward and backward, ignoring spaces, punctuation, and capitalization. E
// Example of palindrome are: word(radar, level), phrase(Never odd or even), and number(121, 1001)
// A palidrome checker task - Checks if a word(or sentence) reads the same backward as it does forward.

function palindrome(str) {
    let a = str.toLowerCase().match(/[a-z0-9]/g).join('');
    let b = a.split('').reverse(). join('');
    console.log(a, b);
    return a == b;
}
palindrome("Madam, Iam Adam.");

//Function is used to perform operation. It execute a block of code when it is called from somewhere in a program.
//Here I want to use function to check whether a string is the same forward and backward thus if is palindrome.
//First, I will ignore spaces, punctuation, and capitalization.

//Used a key word function to define a function name which is palindrome and passed parameter to it inside the paranthese. The work of parameter is to pass information to the function and it is the placeholder. str is the parameter or the placeholder.

//inside the {} curly brackets is where the execution of the code take place thus the body of the function.
// Initialize to variables a and b. Variable a stores the cleaned and processed version of the input string, where only lowercase letters and numbers are included. While variable b stores the version of variable b.

//Return Statement: return a == b returns true if the cleaned string is equal to its reverse, indicating that it's a palindrome, otherwise it returns false.

//For the function to work we need to call the function. Here we call the function with argument to send valu to the function when it is called.

