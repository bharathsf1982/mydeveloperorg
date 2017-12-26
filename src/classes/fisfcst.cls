public with sharing class fisfcst {

public list<Fis_data__c> results;

private Fis_data__c c;

public String slspsnemail {
        get { return slspsnemail; }
        set { slspsnemail = value; }
    }
               
    
    public Integer fisyear { 
        get { return fisyear;}
        set { fisyear = value;}
    }
   
public PageReference save() {
System.debug('Results::::::::::::::::'+results);
 period stupdfis;   
for(Fis_data__c fd:results){
	Decimal d = fd.Fiscal_period__c;
	String dt = d.format();
Integer st = Integer.valueOf(dt);
system.debug('int val' + st);
stupdfis = [select id, startdate from period  where period.Type = 'month' and period.Number = :st and FISCALYEARSETTINGSID in ( select id from fiscalyearsettings where fiscalyearsettings.Name = :String.valueOf(fisyear) )];
system.debug('after stupfis' + stupdfis.StartDate);
fd.Start_date__c = stupdfis.StartDate;
system.debug('after fdstart' + fd.Start_date__c);
 }
update results;
return null;      
}

public PageReference newfis() {
Fis_data__c newfcst = new Fis_data__c(Sales_person_email__c = slspsnemail, fiscal_year__c = fisyear);
results.add(newfcst);
insert newfcst;
return null;      
}

/*public void loadResults(){
}*/
public List<Fis_data__C> getresults() {
return results;
}

public PageReference test() {
System.debug('Test..........');
System.debug('Sales_person_email##########'+slspsnemail);
System.debug('fiscal_year##########'+fisyear);
results = [Select id,Fiscal_period__C,Fis_forecast__c,Fis_plan__c,Fis_sales__C,Start_Date__c
from Fis_data__c where Sales_person_email__C = :slspsnemail and fiscal_year__c = :fisyear];
System.debug('Test results ..........'+results);
return null;
}
/*
public void updateFisRecord(Id fisfcstId){
    c = [SELECT id,Fiscal_period__C,Fis_forecast__c,Fis_plan__c,Fis_sales__C,Start_Date__c FROM Fis_data__c WHERE Id=: fisfcstId]; 
    update c;
}
*/
}