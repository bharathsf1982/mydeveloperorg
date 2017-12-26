trigger AddRelatedRecord on Account (after insert, after update) {
    
    list<Opportunity> opplist = new List<opportunity>();
	
    Map<id,Account> acctswithopps = new map<id,account>([Select id,(select id from opportunities) from Account where id in :Trigger.new]);
    
    for(Account a : Trigger.new){
        system.debug('acctswithopps.get(a.id).opportunities.size()= ' + acctswithopps.get(a.id).opportunities.size());
          // Check if the account already has a related opportunity.
        if (acctsWithOpps.get(a.Id).Opportunities.size() == 0) {
            // If it doesn't, add a default opportunity
            oppList.add(new Opportunity(Name=a.Name + ' Opportunity',
                                       StageName='Prospecting',
                                       CloseDate=System.today().addMonths(1),
                                       AccountId=a.Id));
        }           
    }

        if (oppList.size() > 0) {
            insert oppList;
        }
    
    
}