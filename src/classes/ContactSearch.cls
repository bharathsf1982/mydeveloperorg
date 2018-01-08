Public class ContactSearch{

public static List<Contact> searchForContacts(String lastName,String postalCode)
{
    List<Contact> cList = [Select ID, Name, FirstName, LastName From Contact 
                            where LastName =:lastName and MailingPostalCode =:postalCode ] ;
    
    system.debug(' size of list ' + cList.size());
    system.debug(' Id ' + cList[0].id + ' Name ' + cList[0].name );
    return cList;
    
}
}