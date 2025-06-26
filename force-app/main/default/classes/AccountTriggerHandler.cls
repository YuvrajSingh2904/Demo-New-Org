public class AccountTriggerHandler {
    //New Comment to test Deployment Action
    public static void onBeforeUpdate(List<Account> newList, Map<id, Account> oldMap){
        for (Account NewAcc : newList) {
            Account OldAcc = oldMap.get(NewAcc.Id);
            
            // If Phone has changed, update Description
            if (NewAcc.Phone != OldAcc.Phone) {
                NewAcc.Description = 'Phone number was changed.';
            }
        }
    }
}