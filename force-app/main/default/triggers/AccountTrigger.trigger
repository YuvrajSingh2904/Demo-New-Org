trigger AccountTrigger on Account (before update) {
	AccountTriggerHandler.onBeforeUpdate(Trigger.new, Trigger.oldMap);
}