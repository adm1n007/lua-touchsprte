-- 万国觉醒
-- ad.lua  

t['对话框']={0xf2f2f2, "0|0|0xf2f2f2,-21|-3|0xededed",90,123,652,178,746}
    t['对话框-王国']={0x594a30, "0|0|0x594a30,-5|5|0x008fbe",90,13,47,109,608}
    t['对话框-王国-激活']={0xf0e9df, "0|0|0xf0e9df,-5|5|0x008fbe",90,13,47,109,608}
    t['对话框-打开侧边']={0xfff2e6, "0|0|0xfff2e6,-1|-7|0xb2925e,-1|-11|0xfff2e6",90,12,3,51,56}
    t['对话框-打开侧边-发送']={0x006adf, "0|0|0x006adf,8|-14|0xe9fbff",90,1261,176,1330,567}

function ad()
    if d('对话框',true,1,3) then
        if d('对话框-王国',true) or d('对话框-王国-激活') then
        else
            d('对话框-打开侧边',true)
        end
        click(523,711,3)
        inputStr( _UI.广告告[rd(1,#_UI.广告)] )
        delay(2)
        if d('对话框-打开侧边-发送',true,1,20) then
            return true
        end
    end
end

t['广告-收藏夹']={0xb46d12, "0|0|0xb46d12,10|5|0xffa700",90,466,-1,524,40}
    t['广告-收藏夹-全部点特殊']={0xffffff, "0|0|0xffffff,-234|1|0x098b08",90,188,101,569,186}
    t['广告-收藏夹-特殊激活']={0xffffff, "0|0|0xffffff,-58|2|0x088508",90,193,114,563,181}
        t['广告-收藏夹-删除一次']={0x005588, "0|0|0x005588,-4|-13|0x005588,70|-5|0x00c2fe",90,910,186,1089,377}
        t['广告-收藏夹-特殊激活-无书签']={0xffffff, "0|0|0xffffff,113|4|0x066f9a,120|3|0xffffff",90,500,351,788,421}
	        t['广告-收藏夹-特殊激活-关闭']={0xd3d1ca, "0|0|0xd3d1ca,-11|-9|0xd7d6ce,-9|-2|0x9b9a8d",90,1110,65,1162,107}
	            t['广告-收藏夹-特殊激活-收藏自己']={0x995200, "0|0|0x995200,56|-3|0x1274ba,-62|-3|0x1075ba",90,160,79,1319,682}
	            t['广告-收藏夹-特殊激活-收藏自己-盟主']={0xd967f7, "0|0|0xd967f7,-63|0|0x1174ba,56|0|0x1274ba",90,71,55,1296,712}
	                t['广告-收藏夹-激活自己的收藏']={0x003658, "0|0|0x003658,-5|-130|0x0898d5",90,125,170,263,448}
	            t['广告-收藏夹-特殊激活-收藏完成']={0x007aff, "0|0|0x007aff,49|-5|0x007aff,14|18|0x007aff",90,1017,61,1310,635}
	            t['广告-收藏夹-特殊激活-确定']={0x1274ba, "0|0|0x1274ba,-59|-17|0x00ccfe,52|17|0x00b7f3",90,273,140,1039,608}
	    t['广告-收藏夹-特殊激活-有书签']={0x055987, "0|0|0x055987,13|-9|0x025788,14|8|0x005886,9|0|0x1587bf",90,854,190,910,261}
	    t['广告-收藏夹-世界频道']={0x008fbe, "0|0|0x008fbe,0|-6|0x7b705f,63|2|0xffffff",90,384,74,756,688}
	    t['广告-收藏夹-世界频道-确定发送']={0x0e75e5, "0|0|0x0e75e5,-20|-12|0xffffff,-201|-3|0xc5b499",90,382,275,936,549}
	    
function ads_()
    d('游戏主界面-城内',true,2)
    if d('游戏主界面-野外',false,1,3) then
        if d('广告-收藏夹',true,1,2) then
            d('广告-收藏夹-全部点特殊',true,1,3)
            if d('广告-收藏夹-特殊激活') then
                -- 对旧的广告文, 进行删除
                if 删除旧广告key then
                    d("广告-收藏夹-删除一次",true,1,2)
                    删除旧广告key = false
                end
                if d("广告-收藏夹-特殊激活-有书签",true,1,2) then
                    if d('广告-收藏夹-世界频道',true,1,2)then
                        if d('广告-收藏夹-世界频道-确定发送',true,1,2)then
                            delay(10)
                            发广告次数 = 发广告次数 + 1
                            删除旧广告key = true
                            return true
                        end
                    end
                else
                    log('无书签')
                    d('广告-收藏夹-特殊激活-关闭',true,1,2)
                    click(663, 358,2)
                    d('广告-收藏夹-特殊激活-收藏自己',true,1,2)
                    d("广告-收藏夹-特殊激活-收藏自己-盟主",true,1,2)
                    d('广告-收藏夹-激活自己的收藏',true,1,2)
                    click(576, 251,5)
                    clearTxt()
                    input( __UI.分享广告[发广告次数] )
                    delay(5)
                    d("广告-收藏夹-特殊激活-收藏完成",true,1,2)
                    d("广告-收藏夹-特殊激活-确定",true,1,2)
                    return false;
                end
            end
        end
    end
end


t['发广告-执政官资料-一排']={0xd06f3b, "142|-10|0xefd134,275|-9|0x31405a,419|-2|0xfdef5a,564|-6|0xffff77,702|-5|0xfaefd7",90,245,502,1083,606}
--更多信息,排行榜,统帅,部队,成就,设置
t['发广告-执政官资料-排行榜']={0xc6310f, "0|0|0xc6310f,-154|18|0x117db4,-687|-7|0xd93611",90,145,114,1174,203}
    t['发广告-排行榜-联盟-战力']={0x953e08, "1|-212|0x964009",90,147,109,291,526}
t['发广告-排行榜']={0xd3d1ca, "0|0|0xd3d1ca,-20|70|0xb56908,-11|77|0xeba13f,-972|74|0xb66b08",90,108,10,1258,165}
t['发广告-排行榜-123']={0xfe7e45, "0|85|0x7b7b7b,0|168|0xd07b56",90,155,181,213,532}
t['发广告-排行榜-定位']={0x0c72a9, "0|0|0x0c72a9,35|1|0x3d90bc,38|69|0x0d74ac,0|66|0x0c71a9,-4|33|0x064462",90,137,174,224,337}

t['发广告-排行榜-个人邮件']={0xfcecb8, "-3|9|0xc9a366,-23|-7|0xfcfafa",90,826,514,941,604}
t['发广告-排行榜-盟主邮件']={0x1274ba, "0|0|0x1274ba,7|-8|0x00c5ff,15|-49|0x1a93c9",90,771,508,945,652}
t['发广告-邮件页面']={0x676767, "0|0|0x676767,-4|14|0x888888,-48|6|0x8c8c8c",90,892,105,1091,158}
t['发广告-邮件完成-左下角']={0x007aff, "0|0|0x007aff,6|0|0xbab9b8,14|-3|0x007aff",90,25,270,122,545}
t['发广告-邮件-不保存']={0x1176bc, "0|0|0x1176bc,-37|7|0x00c0fd,-213|2|0xdf3d34",90,413,445,925,547}
t['发广告-邮件发送']={0x00b9f7, "0|0|0x00b9f7,13|-10|0x008ac3",90,900,23,1098,154}


choice = 1 --1,为联盟,2为个人战力
top_key = 20

function 发邮件_联盟()
    click(40,40)
    d( "发广告-执政官资料-一排",true,2 )
    d( "发广告-执政官资料-排行榜")
        d( "发广告-排行榜-联盟-战力",true,choice,2 )
        
        local i = 0
        while i < 10  and d("发广告-排行榜")do
            
            if d("发广告-排行榜-123") then
                top_now = 1
            elseif d("发广告-排行榜-定位") then
                local x1,y1,x2,y2 = x+15,y+18,x+55,y+58
                top_now = ocrText(x1,y1,x2,y2, 0) or 0
                top_now = tonumber(top_now)
            end
            
            log({x,y,['top_now'] = top_now })
            
            if top_now > 0 and top_key - top_now < 6 then
                --点击计算出来的正确位置
                click( x,y+20+ (top_key-top_now) *84,3  )
                break
            else
                moveTo(400,500,400,300,1)
                delay(3)
            end
            
            i = i + 1
        end
        
        if d("发广告-排行榜-个人邮件",true,1,3) or
        d("发广告-排行榜-盟主邮件",true,1,3) then
            d("发广告-邮件-不保存",true,1,2)
            click(468,153,2)
            input(__UI.邮件广告[1])
            click(368,223,2)
            input(__UI.邮件广告[2])
            d("发广告-邮件完成-左下角",true,1,2)
            if d("发广告-邮件发送",true,1,2) then
                发广告次数 = 发广告次数 + 1
                top_key = top_key + 1
                if top_key >= top_key_max then
                    top_key = 1
                end
                writeFile( {json.encode({['top_key'] = top_key,['top_key_max'] = top_key_max})} ,'w',"/User/Media/TouchSprite/lua/" ..__game.token..".txt")
                return true 
            end
        end
end















	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	