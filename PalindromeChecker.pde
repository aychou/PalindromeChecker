public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  println(onlyLetters("nurses run"));
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

  if((reverse(onlyLetters(noSpaces(onlyCaps(word))))).equals(onlyLetters(noSpaces(onlyCaps(word)))))
  {
    return true;
  }
  else
  {
    return false;
  }
}
public String reverse(String str)
{
  String sNew = new String();
  for(int i=str.length()-1; i>=0;i--)
  {
    sNew+=(str.substring(i,i+1));
  }
  return sNew;
}
public String onlyLetters(String str)
{
  String hi = new String();
  for(int i =0; i<str.length();i++)
  {
    if(Character.isLetter(str.charAt(i)))
    {
      hi+=str.charAt(i);
    }
  }
  return hi;
}
public String noSpaces(String str)
{
  String hi =new String();
  for(int i=0; i<str.length(); i++)
  {
    if(str.charAt(i)!=' ')
    {
      hi+=str.charAt(i);
    }
  }
  return hi;
}
public String onlyCaps(String str)
{
  return str.toLowerCase();
}


