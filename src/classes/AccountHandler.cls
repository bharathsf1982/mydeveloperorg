Public class AccountHandler{

public static Account insertNewAccount(String accName)
{    
    try {
        
        Account acct = new Account(Name = accName);
        insert acct;
        system.debug('account created for name ' + acct.Name + ' with Id ' + acct.Id );
        return acct;
    }
    catch(DmlException e) {
    System.debug('A DML exception has occurred: ' +
                e.getMessage());
                
        return null;      
        }  

}
}