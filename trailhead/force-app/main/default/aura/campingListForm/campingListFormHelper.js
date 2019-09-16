({

     createItem : function(component) {
        var newItem = component.get("v.newItem");
        var addEvent = component.getEvent("addItem");
        addEvent.setParams({"item" : newItem});
        addEvent.fire();
        component.set("v.newItem",
                     { 'sobjectType': 'Camping_Item__c',
                    'Name': '',
                    'Packed__c': false,
                    'Price__c': 0,
                    'Quantity__c': 0});
    }

})