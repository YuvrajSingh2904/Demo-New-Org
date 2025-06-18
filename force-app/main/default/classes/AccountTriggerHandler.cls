public class AccountTriggerHandler {
    public static void onBeforeUpdate(List<Account> newList, Map<id, Account> oldMap){
        for (Account currentAccount : newList) {
            Account oldAcc = oldMap.get(currentAccount.Id);
            
            // If Phone has changed, update Description
            if (currentAccount.Phone != oldAcc.Phone) {
                currentAccount.Description = 'Phone number was changed.';
            }
        }
    }
}