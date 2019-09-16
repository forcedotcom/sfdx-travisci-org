({
	saveItem: function(component, item, callback) {
        var action = component.get("c.saveItem");
        action.setParams({
            "item": item
        });
        if (callback) {
            action.setCallback(this, callback);
        }
        $A.enqueueAction(action);
    },
    
    
    createItem: function(component, item) {
        this.saveItem(component, item, function(response){
            var state = response.getState();
            if (component.isValid() && state === "SUCCESS") {
                var items = component.get("v.items");
                items.push(response.getReturnValue());
                component.set("v.items", items);
            }
        });
    },
    
    updateItem: function(component, item) {
        this.saveItem(component, item);
    },

})