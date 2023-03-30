// Write a program that generates a random password based on the user's specifications. The user should be able to specify the length of the password and whether it should include numbers, letters, and special characters.

// Hint: You can import the math library to use Random.nextInt() function.



void main() {
print("Welcome to Password Generator!");
bool hasNumbers = false;
bool hasLetters = false;
bool hasSpecialChars = false;
// Ask user for password specifications
print("\nPlease enter your password specifications:");
String includeNumbers = stdin.readLineSync()!;
if (includeNumbers == "y") {
hasNumbers = true;
}
print("Include letters? (y/n): ");
String includeLetters = stdin.readLineSync()!;
if (includeLetters == "y") {
hasLetters = true;
}
print("Include special characters? (y/n): ");
String includeSpecialChars = stdin.readLineSync()!;
if (includeSpecialChars == "y") {
hasSpecialChars = true;
}
// Generate password
String password = "";
var random = new Random();
for (int i = 0; i < passwordLength; i++) {
var characterType = random.nextInt(3);
if (characterType == 0 && hasNumbers) {
// Add random number
password += random.nextInt(10).toString();
} else if (characterType == 1 && hasLetters) {
// Add random letter
password += String.fromCharCode(random.nextInt(26) + 97);
} else if (characterType == 2 && hasSpecialChars) {
// Add random special character
password += String.fromCharCode(random.nextInt(15) + 33);
} else {
// Try again for a different type of character
i--;
}
}
// Output password
print("\nGenerated Password: $password");
}


// (b)
// Write a function that takes a 
// string input from the user and checks
//   if the password is strong enough based on certain 
//     criteria (e.g. minimum length, use of uppercase letters,
//               use of special characters, etc.).


Function checkStrongPassword(password: String) -> Bool {
// define minimum criteria for strong password
minimumLength = 8 // password must be at least 8 characters long
hasUppercase = false // password must have at least 1 uppercase letter
hasSpecialCharacter = false // password must have at least 1 special character
// check if password meets minimum criteria
if password.length < minimumLength {
return false
}
// loop through each character in password
for character in password {
// check if character is an uppercase letter
if character >= 'A' && character <= 'Z' {
hasUppercase = true
}
// check if character is a special character
if character isSpecialCharacter() {
hasSpecialCharacter = true
}
}
// check if password has at least 1 uppercase letter and 1 special character
if !hasUppercase || !hasSpecialCharacter {
return false
}
// if password meets all criteria, return true
return true
}

def check_password_strength(password):

# Define criteria for password strength
special_char_weight = 0
number_weight = 0
if re.search("[!@#$%^&*(),.?\":{}|<>]", password):
special_char_weight = 0.2
if any(char.isdigit() for char in password):
number_weight = 0.15
  
# Calculate password strength based on criteria
password_strength = special_char_weight + number_weight
if password_strength >= 0.2:
return "Strong"
elif password_strength >= 0.1:
return "Good"
elif password_strength >= 0.05:
return "Fair"
else:
return "Weak"
  print("Length of Password: ");
int passwordLength = int.parse(stdin.readLineSync()!);
print("Include numbers? (y/n): ");

  
  