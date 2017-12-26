public with sharing class Testingshipments {
	
public static void getfunction(){	
sObject sample = [SELECT id, Sales_amount__c, Opportunity_Sales__r.name FROM Sales_History__c where Opportunity_Sales__r.name like 'Fastner%'];

Object var = sample.get('Sales_amount__c');
System.debug(var);
}
}