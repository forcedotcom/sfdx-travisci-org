public with sharing class AlertController {
	private Id recordId {get; set;}

	public AlertController(ApexPages.StandardController con) {
		recordId = con.getId();
		List<Alert__mdt> alertList = getAlertList(con);

		If(alertList.size()>0) {
			evalulateAlertList(alertList, con);
		}

	}

	private List<Alert__mdt> getAlertList(ApexPages.StandardController con) {
		//get alerts for this record type
		string recordType = String.valueOf(con.getRecord().getsObjectType());
		List<Alert__mdt> alertList = new List<Alert__mdt>();

		alertList = [SELECT Id FROM Alert__mdt WHERE Obect__c =:recordType];
		System.Debug('Alert Count ' + alertList.size());

		return alertList;
	}

	private void evalulateAlertList(List<Alert__mdt> alertList, ApexPages.StandardController con) {
		Map<Id, List<Alert_Rule__mdt>> alertRuleMap = new Map<Id, List<Alert_Rule__mdt>>();
		string recordType = String.valueOf(con.getRecord().getsObjectType());

		for(Alert_Rule__mdt alertRule : [SELECT Alert__c FROM Alert_Rule__mdt WHERE Alert__c IN :alertList]) {
			if(!alertRuleMap.containsKey(alertRule.Alert__c)) {
				alertRuleMap.put(alertRule.Alert__c, new List<Alert_Rule__mdt>());
			}
			alertRuleMap.get(alertRule.Alert__c).add(alertRule);
		}

		for(Alert__mdt alert : alertList) {
			List<Alert_Rule__mdt> alertRules = alertRuleMap.get(alert.Id);

			if(alertRules.size() > 0) {
				boolean result = evaluateAlertRule(alertRules, alert.Condition__c, recordType);
			}
		}

	}

	private boolean evaluateAlertRule(List<Alert_Rule__mdt> alertRuleList, string condition, string recordType) {
		boolean eval = false;
		for(Alert_Rule__mdt alertRule : alertRuleList) {
			string fieldName = alertRule.Field__c;
			string fieldValue = alertRule.Field_Value__c;
			wrapperClass result = getFieldValue(alertRule.Field__c, recordType);


			if(alertRule.Condition__c=='Contains') {

			} 
			else if(alertRule.Condition__c=='Equal') {

			}
			else if(alertRule.Condition__c=='Greater Than') {
				
			}
			else if(alertRule.Condition__c=='Greater Than Equal To') {
				
			}
			else if(alertRule.Condition__c=='Less Than') {
				
			}
			else if(alertRule.Condition__c=='Less Than Equal To') {
				
			}
			else if(alertRule.Condition__c=='Not Equal') {
				
			}
		}
		return eval;
	}

	private wrapperClass getFieldValue(string fieldName, string objectType) {
		wrapperClass fieldValue = new wrapperClass();

		Map < String, Schema.SObjectType > m = Schema.getGlobalDescribe();
		Schema.SObjectType sT = m.get(objectType);
		return fieldValue;
	}

	public class wrapperClass{
		Integer intg;
		String str;
		Boolean bool;
	}

}