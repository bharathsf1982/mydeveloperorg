public with sharing class storyBoard{

    public String V { get; set; }
public list<Customer_lnsight_BII__c> 
csBii =  new list<Customer_lnsight_BII__c>();
public list<Solution_Development__c> 
sd = new list<Solution_Development__c>();
public list<Decision_Influence_and_Relationship_Scan__c> 
dirs = new list<Decision_Influence_and_Relationship_Scan__c>();
public list<Internal_Resources_Alignment__c> 
ira = new list<Internal_Resources_Alignment__c>();
public list<Competitive_Scan__c> 
cs = new list<Competitive_Scan__c>();
public list<Value_Proposition__c> 
vp = new list<Value_Proposition__c>();
public list<Team_Action_Plan__c> 
tap = new list<Team_Action_Plan__c>();
public Storyboard__c sbdt;
public Financial_Criteria_and_Information__c fcidt;
public Customer_Insight_TBT__c tbtdet;
public String tbd1 = '';
public String tbd2 = '';
public String tbd3 = '';
public String tbd4 = '';

Public String sb_id = 
ApexPages.currentPage().getParameters().get('sb_id');
public List<Customer_lnsight_BII__c> getcsBii() 
{ 
try{
csBii = [SELECT ID,CustInsight_BII_What__c,
CustInsight_BII_Why__c,CustInsight_BII_Doing__c,
CustInsight_BII_Who__c,CustInsight_BII_Impact__c 
FROM Customer_lnsight_BII__c where 
CustInsight_BII_Storyboard__c =:sb_id ];
system.debug('CS method.........'+csBii.size());
return csBii;
}
catch(Exception e){
return null;
}
}
public List<Solution_Development__c> getsd() 
{
 try{ 
sd = [SELECT ID,SD_Product_and_Service__c,
SD_Offer_Enablers__c 
FROM Solution_Development__c where 
SD_Storyboard__c =:sb_id ];
system.debug('SD method.........'+sd.size());
return sd;
}
catch(Exception e){
return null;
}

}
public List<Decision_Influence_and_Relationship_Scan__c> getdirs() 
{ 
try{
dirs = [SELECT ID,DI_Name__c,DI_Title__c,DI_Type__c,
DI_Compelling_Interest_in_the_deal__c,
RS_Rating__c,RS_Explain_Rating__c,RS_Relationship_Owner__c 
FROM Decision_Influence_and_Relationship_Scan__c where 
Storyboard__c =:sb_id ];
system.debug('DI RS method.........'+dirs.size());
return dirs;
}
catch(Exception e){
return null;
} 
}

public List<Internal_Resources_Alignment__c> getira() 
{   
try{
ira = [SELECT ID,IRA_Type__c,IRA_Solution_Element__c,
IRA_Owner__c,IRA_Interest_in_Opportunity__c,
IRA_Customer_contact__c,IRA_Action_to_engage__c 
FROM Internal_Resources_Alignment__c where
IRA_Storyboard__c =:sb_id];
system.debug('Ira.........'+ira.size());
return ira;
}
catch(Exception e){
return null;
}
}

 public List<Competitive_Scan__c> getcs() 
 { 
 try{
 cs = [SELECT ID,Competitor_Strength__c
,Competitor_Weaknesses__c,Your_Strengths__c,
Your_Weaknesses__c FROM Competitive_Scan__c where 
Storyboard__c =:sb_id ];
system.debug('CS method.........'+cs.size()); 
return cs;
}
catch(Exception e){
return null;
}
}

public List<Value_Proposition__c> getvp() 
{ 
try{
vp = [SELECT ID,VP_What_do_they_care_about__c,
VP_What_do_you_have__c,VP_Impact__c
FROM Value_Proposition__c where 
Storyboard__c =:sb_id ];
system.debug('VP method.........'+vp.size());
return vp;
}
catch(Exception e){
return null;
}
}

public List<Team_Action_Plan__c> gettap() 
{ 
try{
tap = [SELECT ID,TAP_Priority__c,TAP_Action_Item__c,
TAP_Who__c,TAP_When__c
FROM Team_Action_Plan__c where 
Storyboard__c =:sb_id ];
system.debug('TAP method.........'+tap.size());
return tap;
}
catch(Exception e){
return null;
}
}
public Storyboard__c getsbdt()
{
try{
sbdt = [select Id,sb_customer_name__c,Date__c,Competitor_s_Involved__c,Revenue_Margins__c,sb_opportunity_name__c,Value_Proposition__c,Proof_Points__c,Your_Opportunities__c,Your_Competitive_Startegy__c,Competitor_s_Anticipated_Strategy__c,Your_Threats__c from Storyboard__c where Id =:sb_id ];
return sbdt;
}
catch(Exception e){
return null;
}
}

public Financial_Criteria_and_Information__c getfcidt()
{
try{
fcidt = [SELECT Id,FCI_IT_Budget_Set_Infortion__c,FCI_IT_Budget_set_How__c,FCI_IT_Budget_amount_Information__c,FCI_IT_Budget_amount_How__c,FCI_IT_Budget_process_Information__c,FCI_IT_Budget_process_How__c,FCI_IT_Budget_criteria_Information__c,FCI_IT_Budget_criteria_How__c,FCI_IT_Budget_OFI_Information__c,FCI_IT_Budget_OFI_How__c  FROM Financial_Criteria_and_Information__c where Storyboard__c =:sb_id];
return fcidt;
}
catch(Exception e){
return null;
}
}
public Customer_Insight_TBT__c gettbtdet()
{
try{
tbtdet = [SELECT Id,CustInsight_TBT1__c,CustInsight_TBT2__c,CustInsight_TBT3__c,CustInsight_TBT4__c FROM Customer_Insight_TBT__c where CustInsight_TBT_storyboard__c =:sb_id];
return tbtdet;
}
catch(Exception e){
return null;
}
}



public List<String> gettbd1()
{
String ListString;
try{
Customer_Insight_TBT__c thdt1 = [SELECT Id,CustInsight_TBT_txt1__c FROM Customer_Insight_TBT__c where CustInsight_TBT_storyboard__c =:sb_id];
tbd1= String.valueOf(thdt1.CustInsight_TBT_txt1__c);
List<String> splitString=tbd1.split('[|||]');
return splitString;
}
catch(Exception e){
return null;
}

}
public List<String> gettbd2()
{
String ListString;
try{
Customer_Insight_TBT__c thdt1 = [SELECT Id,CustInsight_TBT_txt2__c FROM Customer_Insight_TBT__c where CustInsight_TBT_storyboard__c =:sb_id];
tbd2= String.valueOf(thdt1.CustInsight_TBT_txt2__c);
List<String> splitString=tbd2.split('[|||]');
return splitString;
}
catch(Exception e){
return null;
}

    
}
public List<String> gettbd3()
{
String ListString;
try{
Customer_Insight_TBT__c thdt1 = [SELECT Id,CustInsight_TBT_txt3__c FROM Customer_Insight_TBT__c where CustInsight_TBT_storyboard__c =:sb_id];
tbd3= String.valueOf(thdt1.CustInsight_TBT_txt3__c);
List<String> splitString=tbd3.split('[|||]');
return splitString;
}
catch(Exception e){
return null;
}
 

}
public List<String> gettbd4()
{
String ListString;
try{
Customer_Insight_TBT__c thdt1 = [SELECT Id,CustInsight_TBT_txt4__c FROM Customer_Insight_TBT__c where CustInsight_TBT_storyboard__c =:sb_id];
tbd4 = String.valueOf(thdt1.CustInsight_TBT_txt4__c);
List<String> splitString=tbd4.split('[|||]');
return splitString;
}
catch(Exception e){
return null;
}

}

/*
public static testMethod void testgetcsBii() {
          
           PageReference pageRef = Page.StoryBoardPreview;
           Test.setCurrentPage(pageRef);        
        
           ApexPages.currentPage().getParameters().put('sb_id', 'a0UR0000002ehyG');
           storyBoard controller = new storyBoard();
           List<Customer_lnsight_BII__c> testdata = controller.getcsBii();
       
       System.assertEquals(testdata.size(),2);
       List<Solution_Development__c> testdata1 = controller.getsd();
       
       System.assertEquals(testdata1.size(),2);
           List<Decision_Influence_and_Relationship_Scan__c> testdata2 = controller.getdirs();
           System.assertEquals(testdata2.size(),5);        
           List<Internal_Resources_Alignment__c> testdata3 = controller.getira();
           System.assertEquals(testdata3.size(),2); 

           List<Competitive_Scan__c> testdata4 = controller.getcs();
           System.assertEquals(testdata4.size(),2); 
           List<Value_Proposition__c> testdata5 = controller.getvp();
           System.assertEquals(testdata5.size(),2); 
           List<Team_Action_Plan__c> testdata6 = controller.gettap();
           System.assertEquals(testdata6.size(),5); 
           Storyboard__c testdata7 = controller.getsbdt();
           System.assertEquals(testdata7.Id,'a0UR0000002ehyG'); 
           Financial_Criteria_and_Information__c testdata8 = controller.getfcidt();
           System.assertEquals(testdata8.Id,'a0WR0000002zePUMAY'); 
           Customer_Insight_TBT__c testdata9 = controller.gettbtdet();
           System.assertEquals(testdata9.Id,'a0xR0000000evWAIAY'); 

       Customer_Insight_TBT__c thdt1 = [SELECT Id,CustInsight_TBT_txt1__c FROM Customer_Insight_TBT__c where CustInsight_TBT_storyboard__c ='a0UR0000002ehyG'];
           String tb01= String.valueOf(thdt1.CustInsight_TBT_txt1__c);
       List<String> splitString1=tb01.split('[|||]');
           List<String> testdata10 = controller.gettbd1();
           System.assertEquals(testdata10,splitString1);
          
           Customer_Insight_TBT__c thdt2 = [SELECT Id,CustInsight_TBT_txt2__c FROM Customer_Insight_TBT__c where CustInsight_TBT_storyboard__c ='a0UR0000002ehyG'];
            String tb02= String.valueOf(thdt2.CustInsight_TBT_txt2__c);
            List<String> splitString2 =tb02.split('[|||]');            
          List<String> testdata11 = controller.gettbd2();
           System.assertEquals(testdata11,splitString2); 

            Customer_Insight_TBT__c thdt3 = [SELECT Id,CustInsight_TBT_txt3__c FROM Customer_Insight_TBT__c where CustInsight_TBT_storyboard__c ='a0UR0000002ehyG'];
            String tb03= String.valueOf(thdt3.CustInsight_TBT_txt3__c);
            List<String> splitString3 =tb03.split('[|||]');                     
           List<String> testdata12 = controller.gettbd3();
           System.assertEquals(testdata12,splitString3); 
           
            Customer_Insight_TBT__c thdt4 = [SELECT Id,CustInsight_TBT_txt4__c FROM Customer_Insight_TBT__c where CustInsight_TBT_storyboard__c ='a0UR0000002ehyG'];
            String tb04= String.valueOf(thdt4.CustInsight_TBT_txt4__c);
            List<String> splitString4 =tb04.split('[|||]');                     
           
           List<String> testdata13 = controller.gettbd4();
           System.assertEquals(testdata13,splitString4); 

}*/
}