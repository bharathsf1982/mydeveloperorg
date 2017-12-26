public class EmailManager {

    public static void Sendmail(String address,String subject, String body){
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[] {address};
            mail.settoAddresses(toAddresses);
            mail.setsubject(subject);
            mail.setplaintextbody(body);
        messaging.SendEmailResult[] results = messaging.sendEmail(new Messaging.SingleEmailMessage[] {mail} );
        
        inspectResults(results);
    }
    
    // Helper method
    private static Boolean inspectResults(Messaging.SendEmailResult[] results) {
        Boolean sendResult = true;
        
        // sendEmail returns an array of result objects.
        // Iterate through the list to inspect results. 
        // In this class, the methods send only one email, 
        // so we should have only one result.
        for (Messaging.SendEmailResult res : results) {
            if (res.isSuccess()) {
                System.debug('Email sent successfully');
            }
            else {
                sendResult = false;
                System.debug('The following errors occurred: ' + res.getErrors());                 
            }
        }
        
        return sendResult;
    }

}