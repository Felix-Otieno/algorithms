def check_palindrome(text):
    length = len(text)
    for i in range(length // 2):
        if (text[i] != text[length - i - 1]):
            return False
    return True
string1 = "racecar"
string2 = "abceba"
print(check_palindrome(string1))
print(check_palindrome(string2))

