public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public boolean palindrome(String word)
{
  if(onlyLetters(noCapitals(noSpaces(word))).equals(reverse(word))){
    return true;
  }
  return false;
}

public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length(); i > 0; i--){
      sNew = sNew + str.substring(i - 1, i);
    }
    return onlyLetters(noCapitals(noSpaces(sNew)));
}

public String noCapitals(String sWord){
  return (sWord.toLowerCase());
}

public String noSpaces(String space){
  String noS = "";
  for(int i = 0; i < space.length(); i++){
    if(space.substring(i,i+1).equals(" ") == false){
      noS = noS + space.substring(i,i+1);
    }
  }
  return noS;
}

public String onlyLetters(String sString){
  String ret = "";
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i)) == true){
      ret = ret + sString.charAt(i);
    }
  }
  return ret;
}
