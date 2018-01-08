Public class StringArrayTest{

public static list<string> generateStringArray(integer n)
{
    list<string> returnstring = new list<string>();
    for (integer i = 0 ; i < n; i++)
    {
       returnstring.add('Test ' + i);
       System.debug(returnstring[i]);

    }
    
    system.debug('result ' + returnstring);
    return returnstring;
}

}