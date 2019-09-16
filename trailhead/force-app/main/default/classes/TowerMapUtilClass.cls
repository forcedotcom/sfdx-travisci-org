public inherited sharing class TowerMapUtilClass {
     public static List<sObject> queryObjects(String theObject, List<String> theFields, String theFilter, String sortField, String sortOrder) {
          String theQuery = 'SELECT ' + string.join(theFields, ',');
          theQuery += ' FROM ' + theObject;
          if(!String.isEmpty(theFilter)) {
               theQuery += ' WHERE ' + theFilter;
          }
          if(!String.isEmpty(sortField)) {
               theQuery += ' ORDER BY ' + sortField;
               if(!String.isEmpty(sortOrder)) {
                    theQuery += ' ' + sortOrder;
               }
          }
          return database.query(theQuery);
     }
}