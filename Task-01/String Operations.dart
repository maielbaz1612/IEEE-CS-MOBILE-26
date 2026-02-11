void main() {
  
  String first = "C\'est ";
  
  String last = "la vie";
  
  String word = "$first$last";
  int chars = word.length;
  
  String sub = word.substring(0, 5);
  
  String upperCase = word.toUpperCase();
  String lowerCase = word.toLowerCase();

  
  print("concatenated : $word \nlength : $chars \nsubString : $sub");
  print("UpperCase : $upperCase \nLowerCase : $lowerCase");
  
}
