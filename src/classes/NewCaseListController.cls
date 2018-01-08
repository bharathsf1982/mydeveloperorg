public class NewCaseListController {

    string stat = 'New';
    public list<Case> getNewCases() {
        
        List<Case> results = Database.query(
        'SELECT Id, CaseNumber,Contact.Firstname,Subject,ContactEmail,Origin,ClosedDate ' +
        'FROM Case where status=:stat ' + 
        'LIMIT 10'
    );
        return results;
    }
}