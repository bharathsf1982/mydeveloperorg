trigger AccountDeletion on Account (before delete) {

    for(Account a: [select id from Account where id in (select accountid from opportunity) and id in :trigger.old] ){
        Trigger.oldMap.get(a.id).adderror('Cannot delete account with related opportunities');
    }
}