public class NewCaseListController {
    public List<Case> getNewCases() {
    	List<Case> newcase = new List<Case>();
        
        newcase = [Select Id,CaseNumber from Case where Status='New'];
        return newcase;
    }
}