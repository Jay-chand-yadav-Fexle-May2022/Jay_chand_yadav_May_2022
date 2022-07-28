public class AccountTriggerHandler {

    public static void updateTheAccountsNumber(List<Account> listOfAccount) {
        
        for(Account acc : listOfAccount) {
            Integer len = 14;
	    String str = string.valueof(Math.abs(Crypto.getRandomLong()));
	    System.debug(str);
	    String randomNumber = str.substring(0, len);
            system.debug('Random Number-' + randomNumber);
			
            if(acc.Type == 'Saving') {
                acc.AccountNumber = 'SB-' + randomNumber;
            }
            else if(acc.Type == 'FD') {
                acc.AccountNumber = 'FD-' + randomNumber;
            }
        }
    }
    
    public static void sendEmail(List<Account> listOfAccount) {
        List<Messaging.SingleEmailMessage> mails = new List<Messaging.SingleEmailMessage>();
        for(Account acc : listOfAccount) {
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            List<String> sendTo = new List<String>();
            sendTo.add('jaychand.yadav@fexle.com');
            mail.setToAddresses(sendTo);
            mail.setSubject('Account has created ');
            String body = 'Dear ' + acc.Name + ', ';
            body += 'Congratulations you account type is ' + acc.Type + ' and your account number is ' + acc.AccountNumber;
            mail.setHtmlBody(body);
            mails.add(mail);
        }
        Messaging.sendEmail(mails);
    }
}
