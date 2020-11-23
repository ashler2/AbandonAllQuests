SLASH_ABANDON = "/abandonallquests"


local function getMaxQuests()
    return select(1, C_QuestLog.GetNumQuestLogEntries())
end

local function AbandonAllQuestsHandler()



    for i = 0,getMaxQuests(),1 
    do 
        print(i) 
    end

end




SlashCmdList['ABANDON'] =  AbandonAllQuestsHandler