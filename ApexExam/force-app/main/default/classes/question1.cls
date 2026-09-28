public with sharing class question1 {
   



    public List<Account>getAccounts(){


        List<Account> acc=[SELECT Id,Name ,(SELECT Id, Name, Email, Phone FROM Contact ),(SELECT Id, Name, StageName, Amount, CloseDate FROM Opportunity ) FROM Account];
        return acc;
    }
}