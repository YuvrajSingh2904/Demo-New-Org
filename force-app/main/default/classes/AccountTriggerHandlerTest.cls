@isTest
public class AccountTriggerHandlerTest {
    @isTest
    static void testDescriptionUpdatedWhenPhoneChanged() {
        // Create test Account
        Account acc = new Account(Name = 'Test Account', Phone = '1234567890');
        insert acc;

        // Update phone (should trigger Description change)
        acc.Phone = '0987654321';
        update acc;

        // Retrieve updated record
        Account updatedAcc = [SELECT Description FROM Account WHERE Id = :acc.Id];
        System.assertEquals('Phone number was changed.', updatedAcc.Description);
    }

    @isTest
    static void testDescriptionNotUpdatedWhenPhoneNotChanged() {
        // Create test Account
        Account acc = new Account(Name = 'Test Account 2', Phone = '1231231234');
        insert acc;

        // Update Name only (should not change Description)
        acc.Name = 'Updated Account Name';
        update acc;

        // Retrieve updated record
        Account updatedAcc = [SELECT Description FROM Account WHERE Id = :acc.Id];
        System.assertEquals(null, updatedAcc.Description);
    }
}