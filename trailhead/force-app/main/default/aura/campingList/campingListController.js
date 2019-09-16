({
    handleUpdateItem: function(component, event, helper) {
        var updatedItem = event.getParam("item");
        helper.updateItem(component, updatedItem);
    },
    
    handleAddItem: function(component, event, helper) {
        var item = event.getParam("item");
        var action = component.get("c.saveItem");
        //json stringify is not needed I think.       
        action.setParams({
            "item": item
        });
        
        action.setCallback(this, function(response){
            var state = response.getState();
            if (component.isValid() && state === "SUCCESS") {        
                var items = component.get("v.items");
                items.push(item);
                component.set("v.items",items);
            }
        });
        $A.enqueueAction(action);
    },
    
    
    // Load items from Salesforce
    doInit: function(component, event, helper) {
        
        // Create the action
        var action = component.get("c.getItems");
        
        // Add callback behavior for when response is received
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (component.isValid() && state === "SUCCESS") {
                component.set("v.items", response.getReturnValue());
            }
            else {
                console.log("Failed with state: " + state);
            }
        });
        
        // Send action off to be executed
        $A.enqueueAction(action);
    },
})