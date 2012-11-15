public with sharing class SuggestionController{

public String Accname{get;set;}
public String Inputname{get;set;}
public List<Account> listacc{get;set;}
public List<SelectOption> strlist{set;get;}
public String accountchoosed{set;get;}
public void giveresult(){

System.debug('-->'+Inputname);
listacc=new List<Account>();
strlist=new List<SelectOption>();
String query='[select Name from Account where Name like Inputname]';
listacc= Database.query(query);

System.debug('-------->'+listacc);
for(Account a:listacc){
String s=a.name;

strlist.add(new SelectOption(s,s));
}
System.debug('-------->'+strlist);


}
}