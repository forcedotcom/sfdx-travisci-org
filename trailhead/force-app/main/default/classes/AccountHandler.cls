public class AccountHandler {

    public static Account insertNewAccount(string acctName) {
        try {
            Account newAccount = new Account(Name=acctName);
            insert newAccount;
            //test12
            return newAccount;
        } catch (DmlException e) {
            System.debug('A DML exception has occurred: ' + e.getMessage());
            return null;
        }
    }
}