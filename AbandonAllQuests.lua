SLASH_ABANDON1 = "/aaq"


local function getMaxQuests()
    return select(1, C_QuestLog.GetNumQuestLogEntries())
end

local function AbandonAllQuestsHandler()

    for i = 0,getMaxQuests(),1 
    do 
        local id = C_QuestLog.GetQuestIDForLogIndex(i)
        if(id > 0 )then
            if(C_QuestLog.CanAbandonQuest(id)) then
                C_QuestLog.SetSelectedQuest(id)
                C_QuestLog.SetAbandonQuest()
                C_QuestLog.AbandonQuest()
            end
        end
    end
    if(select(1,C_QuestLog.GetNumQuestLogEntries()) == 0 ) then
        print("All Quests have been abandoned")
    else 
        print('Something failed to be abandoned')
    end

end




SlashCmdList['ABANDON'] =  AbandonAllQuestsHandler