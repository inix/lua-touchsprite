require("TSLib")
local sz = require("sz")
local json = sz.json
w,h = getScreenSize();
MyTable = {
    ["style"]        = "default",
    ["rettype"]      = "table",
    ["width"]        = w,
    ["height"]       = h,
    ["config"]       = "aoc.dat",
    ["timer"]        = 99,
    ["orient"]       = 0,
    ["pagetype"]     = "multi",
    ["title"]        = "剑与家园",
    ["cancelname"]   = "取消",
    ["okname"]       = "开始",
    pages            =
    {

		{
            {
                ["type"] = "Label",
                ["text"] = "功能选择",
                ["size"] = 16,
                ["align"] = "center",
                ["color"] = "0,0,0",
            },
			{
                ["type"] = "Label",
                ["text"] = "兑换券:",
                ["width"] = 170,
                ["nowrap"] = 1,
            },
            {
                ["id"] = "xchange",
                ["type"] = "Edit",
                ["prompt"] = "填入兑换券",
                ["text"] = "43baupwdxr",
                ["kbtype"] = "default",
				["width"] = 475,
            },
            {
                ["id"] = "game_main",
                ["type"] = "RadioGroup",
                ["list"] = "0创号,1换服,2新手,3兑券,4升城,5开图,6(升城|遗迹|采矿),7(升城|采矿),8遗址,9采矿,10战争学院,11清理,12辅助打野,13造兵,14遗迹采矿,15发广告",
                ["select"] = "0",
            },
			{
                ["type"] = "Label",
                ["text"] = "主线设置",
                ["size"] = 14,
                ["align"] = "center",
                ["color"] = "0,0,0",
            },
            {
                ["id"] = "setting",
                ["type"] = "CheckBoxGroup",
                ["list"] = "0邮件,1宝箱,2任务,3技能,4战损,5医院,6剑,7枪,8弓,9骑,10研究,11造兵,12商店稀有,13优升主城,14地图,15优先右侧,16备份名,17兵升级,18商店木材,19开背包,20遗迹,21魔镜,22活动",
                ["images"] = "",
                ["select"] = "",
                ["scale"] = 0.4,
            },
        },{
            {
                ["type"] = "Label",
                ["text"] = "其它设置",
                ["size"] = 16,
                ["align"] = "center",
                ["color"] = "0,0,0",
            },
			{
                ["type"] = "Label",
                ["text"] = "----------------------------------------------",
                ["size"] = 12,
                ["align"] = "center",
                ["color"] = "0,0,0",
            },
            {
                ["type"] = "Label",
                ["text"] = "彩矿数量:",
                ["width"] = 150,
                ["nowrap"] = 1,
            },
            {
                ["id"] = "kuang_mun",
                ["type"] = "Edit",
                ["width"] = 300,
                ["prompt"] = "彩矿数量",
                ["text"] = "30",
                ["kbtype"] = "number",
                
            },
            {
                ["type"] = "Label",
                ["text"] = "遗迹数量:",
                ["width"] = 150,
                ["nowrap"] = 1,
            },
            {
                ["id"] = "yiji_mun",
                ["type"] = "Edit",
                ["width"] = 300,
                ["prompt"] = "遗迹数量",
                ["text"] = "30",
                ["kbtype"] = "number",
                
            },
            {
                ["type"] = "Label",
                ["text"] = "上兵设置:",
                ["width"] = 150,
            },
            {
                ["id"] = "yiji_arm",
                ["type"] = "RadioGroup",
                ["list"] = "1,2,3,4,5,6,最近1,最近2,全上",
                ["select"] = "0",
            },
            {
                ["type"] = "Label",
                ["text"] = "采矿设置:",
                ["width"] = 150,
            },
            {
                ["id"] = "kuang_setting",
                ["type"] = "CheckBoxGroup",
                ["list"] = "0不采水,1不采金,2不采木,3不点水,4不点金,5不点木",
                ["images"] = "水.png,金.png,木.png,水.png,金.png,木.png",
                ["select"] = "",
                ["scale"] = 0.4,
            },
            {
                ["type"] = "Label",
                ["text"] = "研究科技:",
                ["width"] = 150,
            },
            {
                ["id"] = "keji_setting",
                ["type"] = "RadioGroup",
                ["list"] = "0枪,1弓,2剑,3骑,4修女,5车",
                ["images"] = "枪.png,弓.png,剑.png,骑.png,修女.png,车.png",
                ["select"] = "",
                ["scale"] = 0.4,
            },
        },
        {
            {
                ["type"] = "Label",
                ["text"] = "初始设置",
                ["size"] = 16,
                ["align"] = "center",
                ["color"] = "0,0,0",
            },
            {
                ["type"] = "Label",
                ["text"] = "选择国家:",
                ["width"] = 170,
            },
            {
                ["id"] = "world",
                ["type"] = "RadioGroup",
                ["list"] = "桑多瑞,葛雷,利萨姆,达姆斯,莉维塔,夏亚",
                ["select"] = "1",
            },
            {
                ["type"] = "Label",
                ["text"] = "选择英雄:",
                ["width"] = 150,
                ["nowrap"] = 1,
            },
            {
                ["id"] = "hero",
                ["type"] = "RadioGroup",
                ["list"] = "阿瓦隆,安德烈,艾微儿",
                ["select"] = "1",
            },
            {
                ["type"] = "Label",
                ["text"] = "开机模式:",
                ["width"] = 150,
                ["nowrap"] = 1,
            },
            {
                ["id"] = "oneormore",
                ["type"] = "RadioGroup",
                ["list"] = "多号版,单机版",
                ["select"] = "0",
            },
           {
                ["type"] = "Label",
                ["text"] = "帐号数量:",
                ["width"] = 150,
                ["nowrap"] = 1,
            },
            {
                ["id"] = "game_mun",
                ["type"] = "Edit",
                ["width"] = 200,
                ["prompt"] = "游戏数量",
                ["text"] = "50",
                ["kbtype"] = "number",
            },
			{
                ["type"] = "Label",
                ["text"] = "所有者:",
                ["width"] = 150,
                ["nowrap"] = 1,
            },
            {
                ["id"] = "who",
                ["type"] = "Edit",
                ["width"] = 200,
                ["prompt"] = "admin",
                ["text"] = "50",
            },            
			{
                ["id"] = "ad",
                ["type"] = "Edit",
                ["width"] = 600,
                ["prompt"] = "这里加广告词",
                ["text"] = "这是一条广告",
            },
        },
    }   
}

local MyJsonString = json.encode(MyTable);
UIret,values = showUI(MyJsonString)
if UIret == 1 then
	nLog("国家:"..values.world)
	nLog("英雄:"..values.hero)	
	nLog("英雄:"..values.oneormore)
	nLog("兑换券:"..values.xchange)
	nLog("主线功能:"..values.game_main)
	nLog("游戏帐号:"..values.game_mun)
	nLog("采矿数量:"..values.kuang_mun)
	nLog("遗迹数量:"..values.yiji_mun)
	nLog("遗迹预设:"..values.yiji_arm)
	nLog("游戏设置:"..values.setting)
	nLog('所有者:'..values.who)
	
-------普通设置
	values.setting = strSplit(values.setting,'@')
	setting = {}
		--0:读邮件,1:开宝箱,2:任务奖,3:英雄技能
	for i=0,50 do
		for k,j in pairs(values.setting)do
			if i == tonumber(j)then
				setting[i] = true
				break
			else
				setting[i] = false
			end
		end
	end
	for k,v in pairs(setting)do
		if v then
			nLog('true')
		end
	end
-------采矿设置
	values.kuang_setting = strSplit(values.kuang_setting,'@')
	kuang_setting = {}
	for i=0,20 do
		for k,j in pairs(values.kuang_setting)do
			if i == tonumber(j)then
				kuang_setting[i] = true
				break
			else
				kuang_setting[i] = false
			end
		end
	end

	for k,v in pairs(kuang_setting)do
		if v then
			nLog(k..'--kuang_setting--true')
		end
	end

else
	lua_exit()
end




