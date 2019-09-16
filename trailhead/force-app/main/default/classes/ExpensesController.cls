public with sharing class ExpensesController {

    @AuraEnabled
    public static List<Expense__c> getExpenses() {
        // Perform isAccessible() checking first, then
        return [SELECT Id, Name, Amount__c, Client__c, Date__c, 
                       Reimbursed__c, CreatedDate 
                FROM Expense__c];
    }
    
    @AuraEnabled
    public static Expense__c saveExpense(Expense__c expense) {
        // Perform isUpdatable() checking first, then
        upsert expense;
        return expense;
    }
}