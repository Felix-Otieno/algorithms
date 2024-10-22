function palindrome(str) {
    // Clean the string: convert to lowercase and retain alphanumeric characters
    let cleanedStr = str.toLowerCase().match(/[a-z0-9]/g).join('');
    
    // Use a for loop to compare characters from the beginning and the end
    for (let i = 0; i < Math.floor(cleanedStr.length / 2); i++) {
        // Compare character at position i with the character at the mirrored position
        if (cleanedStr[i] !== cleanedStr[cleanedStr.length - 1 - i]) {
            // If characters don't match, it's not a palindrome
            return false;
        }
    }
    
    // If all characters match, it's a palindrome
    return true;
}
console.log(palindrome("Madam, I am Adam"));
console.log(palindrome("Madam"));