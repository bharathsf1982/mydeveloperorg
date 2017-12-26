public class ContactAndLeadSearch{
public static List<List<SObject>> searchContactsAndLeads(string searchParam){
   
List<List<SObject>> searchlist = [Find 'Smith' IN Name Fields RETURNING Contact(id,Name,FirstName,LastName), Lead(id,Name,FirstName,LastName) ]; 
Contact[] searchcontacts = (Contact[])searchlist[0];
lead[] searchleads = (lead[])searchlist[1];
System.debug('Found the following Contacts.');
for (Contact c : searchcontacts) {
    System.debug(c.Name);
}

System.debug('Found the following Leads.');
for (Lead d : searchleads) {
    System.debug(d.LastName + ', ' + d.FirstName);
}
return searchList;
}

}