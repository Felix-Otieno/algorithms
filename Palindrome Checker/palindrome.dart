void main() {
  bool isPalindrome = palindrome("Madam, I am Adam.");
  print("Is the input a palindrome? $isPalindrome");
}

bool palindrome(String str) {
  // Convert the string to lowercase and filter out non-alphanumeric characters
  String a = str.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
  
  // Reverse the filtered string
  String b = a.split('').reversed.join('');
  
  // Print the original and reversed strings
  print("Filtered: $a, Reversed: $b");
  
  // Check if the filtered string is equal to its reverse
  return a == b;
}
