public class AnimalLocator {

	public static String getAnimalNameById(integer animalNum) {
		Map<String, Object> animal = new Map<String, Object>();

		Http http = new Http();
		HttpRequest request = new HttpRequest();
		request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + animalNum);
		request.setMethod('GET');
		
		HttpResponse response = http.send(request);
		if (response.getStatusCode() == 200) {
		    // Deserialize the JSON string into collections of primitive data types.
		    Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
		    animal = (Map<String, Object>) results.get('animal');
		} 
		return(String)animal.get('name');
	}
}