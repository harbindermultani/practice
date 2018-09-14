//test jenkins
//mythird change 12
//Hi, this is a really cool test comment

public with sharing class discount{
	public static void applyDiscount(Book__c[] books) {
   for (Book__c b :books){
      b.Price__c *= 1.0;//discount updated to 10
   }
}
    
}
