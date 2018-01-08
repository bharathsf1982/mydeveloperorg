public class Autopopulate{
    private String oppId;
    public Autopopulate() {

    }

    
    public String getoppId(){        
        oppId = (String)ApexPages.currentPage().getParameters().get('Id');
        return oppId;
    }    
 
    public String GetMySessionId() {
        return UserInfo.getSessionId();
    }

    public static testMethod void testgetoppId(){
           PageReference pageRef = Page.Storyboard;
           Test.setCurrentPage(pageRef);                
           ApexPages.currentPage().getParameters().put('Id', '006R0000006D9O3');
           Autopopulate controller = new Autopopulate();
           String opportunityId = controller.getoppId();
           System.assertEquals(opportunityId,'006R0000006D9O3');
           String sessionId = controller.GetMySessionId();
           System.assertEquals(sessionId,UserInfo.getSessionId());  
    }

}