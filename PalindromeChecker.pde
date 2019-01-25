public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    String f = lines[i];
    f = f.replaceAll(" ", "");
    f = f.replaceAll("!", "");
    f = f.replaceAll("'", "");
    f = f.replaceAll(",", "");
    f = f.toLowerCase();
    if(isPalindrome(f)==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
} 
public boolean isPalindrome(String sWord){
  if (sWord.equals(reverse(sWord)))
    return true;
  else
    return false;
}

public String reverse(String sWord){
  String g = "";
  for (int i = 0; i < sWord.length(); i++)
  {
    g = g + sWord.substring(sWord.length() - (i + 1), sWord.length() - i);
  }
  return g;
}

