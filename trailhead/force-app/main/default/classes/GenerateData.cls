public class GenerateData {
    
    public static void initData() {
        removeOldData();
        createNewData();        
    }
    
    public static void removeOldData() {
        DELETE [SELECT id FROM Opportunity];
        DELETE [SELECT id FROM Case];
        DELETE [SELECT id FROM Account];
        DELETE [SELECT id FROM Contact];
        DELETE [SELECT id FROM Boat__c];
        DELETE [SELECT id FROM BoatType__c];
        DELETE [SELECT id FROM BoatReview__c];
    }
    
    public static void createNewData()  {
        // new install
        Account newAccount = new Account (name = 'Lightning Superbadge',
                                          BillingCity ='San Francisco',
                                          BillingCountry ='California'
                                         );
        insert newAccount;
        
        // insert contact and boat info
        Contact Contact1 = new Contact (
            FirstName = 'Jamie',
            LastName = 'Powell',
            AccountId = newAccount.Id,
            email = 'jamie@trailheadboats.com'
        );
        insert Contact1;
        
        Contact Contact2 = new Contact (
            FirstName = 'Gayatri',
            LastName = 'Bhatt',
            AccountId = newAccount.Id,
            email = 'gayatri@trailheadboats.com'
        );
        insert Contact2;
        
        Contact Contact3 = new Contact (
            FirstName = 'Aaron',
            LastName = 'Gray',
            AccountId = newAccount.Id,
            email = 'aaron@trailheadboats.com'
        );
        insert Contact3;
        
        Contact Contact4 = new Contact (
            FirstName = 'Emanuel',
            LastName = 'Manzanares',
            AccountId = newAccount.Id,
            email = 'emanuel@trailheadboats.com'
        );
        insert Contact4;
        
        Contact Contact5 = new Contact (
            FirstName = 'Rachel',
            LastName = 'King',
            AccountId = newAccount.Id,
            email = 'rachel@trailheadboats.com'
        );
        insert Contact5;  
        
        Contact Contact6 = new Contact (
            FirstName = 'Takuya',
            LastName = 'Watanabe',
            AccountId = newAccount.Id,
            email = 'takuya@trailheadboats.com'
        );
        insert Contact6;  
        
        Contact Contact7 = new Contact (
            FirstName = 'Clara',
            LastName = 'Figueroa',
            AccountId = newAccount.Id,
            email = 'clara@trailheadboats.com'
        );
        insert Contact7;  
        
        Contact Contact8 = new Contact (
            FirstName = 'Liam',
            LastName = 'Bates',
            AccountId = newAccount.Id,
            email = 'Liam@trailheadboats.com'
        );
        insert Contact8;  
        
        Contact Contact9 = new Contact (
            FirstName = 'Skye',
            LastName = 'Taylor',
            AccountId = newAccount.Id,
            email = 'skye@trailheadboats.com'
        );
        insert Contact9;  
        
        Contact Contact10 = new Contact (
            FirstName = 'Millie',
            LastName = 'Brooks',
            AccountId = newAccount.Id,
            email = 'millie@trailheadboats.com'
        );
        insert Contact10;  
        
        // insert Boat Types
        BoatType__c Sailboat = new BoatType__c (
            Name = 'Sailboat'
        ); 
        insert Sailboat;
        
        BoatType__c Fishingboat = new BoatType__c (
            Name = 'Fishing Boat'
        ); 
        insert Fishingboat;
        
        BoatType__c JetSki = new BoatType__c (
            Name = 'Jet Ski'
        );
        insert JetSki;
        
        BoatType__c HighPerformance = new BoatType__c (
            Name = 'High Performance'
        ); 
        insert HighPerformance;
        
        BoatType__c PleasureBoat = new BoatType__c (
            Name = 'Pleasure Boat'
        );
        insert PleasureBoat;
        
        BoatType__c SkiBoat = new BoatType__c (
            Name = 'Ski Boat'
        );
        insert SkiBoat;
        
        BoatType__c Yacht = new BoatType__c (
            Name = 'Yacht'
        );
        insert Yacht;
        
        BoatType__c Houseboat = new BoatType__c (
            Name = 'House Boat'
        );
        insert Houseboat;
        
        // insert sail boats
        Boat__c Boat1 = new Boat__c (
            Name = 'Dipsy Doodle',
            Contact__c =  Contact1.Id,
            BoatType__c = Sailboat.Id,
            Length__c = 20,
            Price__c = 100000,
            Year_Built__c = 2015,
            Picture__c = '/resource/Sailboats/sailboat1.png',
            //columbia island marina
            Geolocation__latitude__s = 38.875052,	
            Geolocation__longitude__s = -77.049531
        );
        insert Boat1;
        
        Boat__c Boat2 = new Boat__c (
            Name = 'Gallifrey Falls',
            Contact__c =  Contact2.Id,
            BoatType__c = Sailboat.Id,
            Length__c = 30,
            Price__c = 500000,
            Year_Built__c = 2013,
            Picture__c = '/resource/Sailboats/sailboat2.png',
            //Baltimore Inner Harbor
            Geolocation__latitude__s = 39.282735,
            Geolocation__longitude__s = -76.6170849
        );
        insert Boat2;
        
        Boat__c Boat3 = new Boat__c (
            Name = 'Geronimo',
            Contact__c =  Contact3.Id,
            BoatType__c = SkiBoat.Id,
            Length__c = 15,
            Price__c = 30000,
            Year_Built__c = 2008,
            Picture__c = '/resource/Sailboats/skiboat1.png',
            //Boston Harbor Hotel
            Geolocation__latitude__s = 42.3565323,
            Geolocation__longitude__s = -71.0524035
        );
        insert Boat3;
        
        Boat__c Boat4 = new Boat__c (
            Name = 'All In The Family',
            Contact__c =  Contact4.Id,
            BoatType__c = PleasureBoat.Id,
            Length__c = 15,
            Price__c = 99000,
            Year_Built__c = 2005,
            Picture__c = '/resource/Sailboats/sportboat1.png',
            //Atlantis Paradise Island Resort
            Geolocation__latitude__s = 25.0831569,
            Geolocation__longitude__s = -77.3248236
        );
        insert Boat4;
        
        Boat__c Boat5 = new Boat__c (
            Name = 'The Old Man and the Sea',
            Contact__c =  Contact5.Id,
            BoatType__c = SkiBoat.Id,
            Length__c = 15,
            Price__c = 55000,
            Year_Built__c = 2009,
            Picture__c = '/resource/Sailboats/skiboat2.png',
            //Montauk Yacht Club
            Geolocation__latitude__s = 41.0671996,
            Geolocation__longitude__s = -71.9345349
        );
        insert Boat5;
        
        Boat__c Boat6 = new Boat__c (
            Name = 'The Enterprise',
            Contact__c =  Contact6.Id,
            BoatType__c = Yacht.Id,
            Length__c = 42,
            Price__c = 555000,
            Year_Built__c = 2009,
            Picture__c = '/resource/Sailboats/yacht1.png',
            //Hilton Daytona Beach
            Geolocation__latitude__s = 29.229702,
            Geolocation__longitude__s = -81.0111687
        );
        insert Boat6;
        
        Boat__c Boat7 = new Boat__c (
            Name = 'Excelsior',
            Contact__c =  Contact7.Id,
            BoatType__c = Yacht.Id,
            Length__c = 40,
            Price__c = 655000,
            Year_Built__c = 2012,
            Picture__c = '/resource/Sailboats/yacht2.png',
            //Pirate's Cove Marina
            Geolocation__latitude__s = 35.8937555,
            Geolocation__longitude__s = -75.6461981
        );
        insert Boat7;
        
        Boat__c Boat8 = new Boat__c (
            Name = 'Big Billy Bass',
            Contact__c =  Contact8.Id,
            BoatType__c = Fishingboat.Id,
            Length__c = 15,
            Price__c = 30000,
            Year_Built__c = 2002,
            Picture__c = '/resource/Houseboats/fishingboat1.png',
            //Fisherman's Wharf Marina
            Geolocation__latitude__s = 36.8315019,
            Geolocation__longitude__s = -75.9792301
        );
        insert Boat8;
        
        Boat__c Boat9 = new Boat__c (
            Name = 'Home Suite Home',
            Contact__c =  Contact9.Id,
            BoatType__c = Houseboat.Id,
            Length__c = 25,
            Price__c = 120500,
            Year_Built__c = 2006,
            Picture__c = '/resource/Houseboats/houseboat1.png',
            //Sunset Marina Resort & Yacht Club Cancun
            Geolocation__latitude__s = 21.1412251,
            Geolocation__longitude__s = -86.7767266
        );
        insert Boat9;
        
        Boat__c Boat10 = new Boat__c (
            Name = 'Man Cave',
            Contact__c =  Contact10.Id,
            BoatType__c = Houseboat.Id,
            Length__c = 27,
            Price__c = 140500,
            Year_Built__c = 1999,
            Picture__c = '/resource/Houseboats/houseboat2.png',
            //Dewey Beach Watersports
            Geolocation__latitude__s = 38.689841,
            Geolocation__longitude__s = -75.0781053
        );
        insert Boat10; 
    }
}