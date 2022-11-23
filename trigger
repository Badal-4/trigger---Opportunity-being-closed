trigger trg3 on Opportunity(before Update)
{
    if(trigger.isBefore && trigger.isUpdate)
    {
        if(trigger.new.size() > 0 && trigger.oldMap != null && trigger.newMap != null)
        {
            trgController.trgMethod(trigger.new,trigger.oldMap);
        }
    }
}
