public class AccountTriggerHandler {
    public static void onBeforeUpdate(List<Account> newList, Map<id, Account> oldMap){
        for (Account acc : newList) {
            Account oldAccount = oldMap.get(acc.Id);
            
            // If Phone has changed, update Description
            if (acc.Phone != oldAccount.Phone) {
                acc.Description = 'Phone number was changed.';
            }
        }
    }
}