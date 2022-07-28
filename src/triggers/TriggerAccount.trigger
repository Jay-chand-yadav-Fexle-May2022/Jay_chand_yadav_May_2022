trigger TriggerAccount on Account (before insert, after insert) {
	
    if(Trigger.isInsert) {
    	if(Trigger.isBefore) 
        {
            AccountTriggerHandler.updateTheAccountsNumber(Trigger.New);
        }
        
        if(Trigger.isAfter) {
        	AccountTriggerHandler.sendEmail(Trigger.New);
    	}
    } 
}