trigger Emailcontactscreated on Contact (After insert,after delete) {
    if(Trigger.isInsert){
        integer counter = Trigger.new.Size();
        EmailManager.sendMail('sridivya4b0@gmail.com','Trailhead Trigger tutorial',Counter + ' Contacts created in your Org at ' + system.now());
        
    }
}