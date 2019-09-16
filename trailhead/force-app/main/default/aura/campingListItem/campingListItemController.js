({
    clickPacked: function(component, event, helper) {
        var item = component.get("v.item");
        var updateEvent = component.getEvent("updateItem");
        updateEvent.setParams({ "item": item });
        updateEvent.fire();
    }
})