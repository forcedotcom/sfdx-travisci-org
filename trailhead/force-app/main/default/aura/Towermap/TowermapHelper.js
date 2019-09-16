({
     initHelper : function(component, event, helper) {
          helper.utilSetMarkers(component, event, helper);
     },
     utilSetMarkers : function(component, event, helper) {
          let action = component.get("c.getAllTowers");
          action.setCallback(this, function(response) {
               const data = response.getReturnValue();
               const dataSize = data.length;
               let markers = [];
               for(let i=0; i < dataSize; i += 1) {
                    const Tower = data[i];
                    markers.push({
                        'location': {
                             'Latitude' : Tower.Tower_Location__Latitude__s,
                             'Longitude' : Tower.Tower_Location__Longitude__s
                        },
                        'icon': 'utility:Tower',
                        'title' : Tower.Name,
                        'description' : Tower.Name + ' Tower Location at ' + Tower.State__r.Name
                   });
               }
               component.set('v.markersTitle', 'Out and About Communications Tower Locations');
               component.set('v.mapMarkers', markers);
          });
          $A.enqueueAction(action);
     }
})