import 'dart:io';

void main() {
  
  String?word = stdin.readLineSync();

  String revWord = word.split('').reversed.join('');
  
  if (word == revWord){
    print("string is a palindrome");
  }else{
    print("string is not a palindrome");
  }
  
}
