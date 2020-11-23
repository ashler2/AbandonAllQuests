SLASH_ABANDON1 = "/aaq"


local function getMaxQuests()
    return select(1, C_QuestLog.GetNumQuestLogEntries())
end

local function AbandonAllQuestsHandler()



    for i = 0,getMaxQuests(),1 
    do 
        local id = C_QuestLog.GetQuestIDForLogIndex(i)
        print(id)
    end

end




SlashCmdList['ABANDON'] =  AbandonAllQuestsHandler