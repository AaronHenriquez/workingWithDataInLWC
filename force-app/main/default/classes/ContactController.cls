public with sharing class ContactController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts(){
        try {
            return[                 
                SELECT FirstName, LastName, Email
                FROM Contact
                ORDER BY LastName
            ];            
        } catch (Exception e) {
            // throw new AuraHandledException(e.getMessage());
            throw new AuraHandledException('Forced error');
        }

    }
}
