public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word){
  String b = reverse(noSpaces(word));
  if(b.equals(noSpaces(word))){
    return true;
  }
  return false;
}

public String reverse(String str){
  String a = new String();
  for(int i = str.length(); i > 0; i--){
    a = a + str.substring(i-1, i);
  }
  return a;
}
public String noSpaces(String sWord){
  String s = new String();
  for(int i = 0; i < sWord.length(); i++){
    if(!sWord.substring(i, i+1).equals(" ") && Character.isLetter(sWord.charAt(i))){
      s = s + sWord.substring(i, i+1);
    }
  }
  return s.toLowerCase();
}