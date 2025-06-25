public class AccountTriggerHandler {
    public static void onBeforeUpdate(List<Account> newList, Map<id, Account> oldMap){
        for (Account NewAcc : newList) {
            Account previousAccount = oldMap.get(NewAcc.Id);
            
            // If Phone has changed, update Description
            if (NewAcc.Phone != previousAccount.Phone) {
                NewAcc.Description = 'Phone number was changed.';
            }
        }
    }
}