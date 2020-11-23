SLASH_ABANDON1 = "/aaq"


local function getMaxQuests()
    return select(1, C_QuestLog.GetNumQuestLogEntries())
end

local function AbandonAllQuestsHandler()



    for i = 0,getMaxQuests(),1 
    do 
        local id = C_QuestLog.GetQuestIDForLogIndex(i)
        if(id != 0 )then
            if(C_QuestLog.CanAbandonQuest(id)) then
                print('yes')

            end
        end
        print(id)
    end

end




SlashCmdList['ABANDON'] =  AbandonAllQuestsHandler