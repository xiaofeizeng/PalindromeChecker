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
public boolean palindrome(String word)
{
  String bob = new String();
  for (int i = 0; i < word.length(); i++)
  {
    if(Character.isLetter(word.charAt(i)) == true)
    {
      bob = bob + word.charAt(i);
    }
  }
  if(bob.toLowerCase().equals(reverse(word)))
  {
    return true;
  }
  //your code here
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length()-1; i >= 0; i--)
    {
      if(Character.isLetter(str.charAt(i)) == true)
      {
        sNew = sNew + str.charAt(i);
      }
    }
    //your code here
    return sNew;
}


