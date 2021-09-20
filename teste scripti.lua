do
b=[[31994
Var #BF268D80|bf268d80|10|e12fff1ee3a0001e|0|0|0|0|r-xp|/mnt/expand/586cdd83-c0a4-4209-ace8-5d20d4dbae81/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|f39d80
Var #BF268D84|bf268d84|10|e3a02000e12fff1e|0|0|0|0|r-xp|/mnt/expand/586cdd83-c0a4-4209-ace8-5d20d4dbae81/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|f39d84
]]
fileData=gg.EXT_STORAGE.."/[###].dat"
io.output(fileData):write(b):close()
gg.loadList(fileData,gg.LOAD_APPEND)
gg.sleep(50)
r=gg.getListItems()
getReset=gg.getValues(r)
gg.clearList()
os.remove(fileData)

end


gg.toast("⚠️99%ANT BAN⚠️")


local memFrom, memTo, lib, num, lim, results, src, ok = 0, -1, nil, 0, 32, {}, nil, false
function name(n)
	if lib ~= n then
		lib = n
		local ranges = gg.getRangesList(lib)
		if #ranges == 0 then
			gg.toast("Sᴇ Cᴏɴᴇᴄᴛᴇ Aᴏ Fʀᴇᴇ Fɪʀᴇ Pᴀʀᴀ Pᴏᴅᴇʀ Exᴇᴄᴜᴛᴀʀ o Sᴄʀɪᴘᴛ")
			os.exit()
		else
			memFrom = ranges[1].start
			memTo = ranges[#ranges]["end"]
		end
	end
end
function hex2tbl(hex)
	local ret = {}
	hex:gsub("%S%S", function (ch)
		ret[#ret + 1] = ch
		return ""
	end)
	return ret
end
function original(orig)
	local tbl = hex2tbl(orig)
	local len = #tbl
	if len == 0 then return end
	local used = len
	if len > lim then used = lim end
	local s = ''
	for i = 1, used do
		if i ~= 1 then s = s..";" end
		local v = tbl[i]
		if v == "??" or v == "**" then v = "0~~0" end		
		s = s..v.."r"
	end
	s = s.."::"..used
	gg.searchNumber(s, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, memFrom, memTo)
	if len > used then
		for i = used + 1, len do
			local v = tbl[i]
			if v == "??" or v == "**" then
				v = 256
			else
				v = ("0x"..v) + 0
				if v > 127 then v = v - 256 end
			end
			tbl[i] = v
		end
	end
	local found = gg.getResultCount();
	results = {}
	local count = 0
	local checked = 0
	while true do
		if checked >= found then
			break
		end
		local all = gg.getResults(8)
		local total = #all
		local start = checked
		if checked + used > total then
			break
		end
		for i, v in ipairs(all) do

	    v.address = v.address + myoffset
        end
         gg.loadResults(all)
		while start < total do		
			local good = true
			local offset = all[1 + start].address - 1
			if used < len then			
				local get = {}
				for i = lim + 1, len do
					get[i - lim] = {address = offset + i, flags = gg.TYPE_BYTE, value = 0}
				end
				get = gg.getValues(get)
				for i = lim + 1, len do
					local ch = tbl[i]
					if ch ~= 256 and get[i - lim].value ~= ch then
						good = false
						break
					end
				end
			end
			if good then
				count = count + 1
				results[count] = offset
				checked = checked + used
			else
				local del = {}
				for i = 1, used do
					del[i] = all[i + start]
				end
				gg.removeResults(del)
			end
			start = start + used
		end
	end
	
end
function replaced(repl)
	num = num + 1
	local tbl = hex2tbl(repl)
	if src ~= nil then
		local source = hex2tbl(src)
		for i, v in ipairs(tbl) do
			if v ~= "??" and v ~= "**" and v == source[i] then tbl[i] = "**" end
		end
		src = nil
	end
	local cnt = #tbl
	local set = {}
	local s = 0
	for _, addr in ipairs(results) do
		for i, v in ipairs(tbl) do
			if v ~= "??" and v ~= "**" then
				s = s + 1
				set[s] = {
					["address"] = addr + i, 
					["value"] = v.."r",
					["flags"] = gg.TYPE_BYTE,
				}
			end
		end		
	end
	if s ~= 0 then gg.setValues(set) end
	ok = true


end

Date = "20210926"--Type Here Your Script End Date .
date = os.date("%Y%m%d")
if date >= Date then
You = gg.alert("📩🆂🅴🅹🅰 🅱🅴🅼-🆅🅸🅽🅳🅾 🅰 🆂🅲🆁🅸🅿🆃 🅸🅽🅹🅴🆃🅾🆁 🆅🅸🅿 🆃🅴🅰🅼  📩", "➡️ 🅴🅽🆃🆁🅰🆁 🅽🅰 🆂🅲🆁🅸🅿🆃 ⬅️")
if You == 1 then revo.goURL("https://youtube.com/c/donyfff")
    end 
print(os.date('📅 %A %d %B %Y\n🕐 %H:%M:%S\n  ⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃\n 🅱🆈 🇩 🇴 🇳 🇾  🇫 🇫 \n⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃⁃'))
return
end


function START1()
menu = gg.choice({
	    '🅼🅴🅽🆄 🅱🆈🅿🅰🆂🆂',
        '🅶🅷🅾🆂🆃 🅷🅰🅲🅺 🆅🅸🅿',
        '🅶🅷🅾🆂🆃 🅿🅲',
        '🆉🅴́ 🅿🅴🅳🆁🅸🅽🅷🅰',
        '🅼🅴🅽🆄 🅰🆁🅼🅰🆂 🆅🅸🅿',
        '🅼🅴🅽🆄 🆃🅴🅻🅴🅿🅾🆁🆃🅴',
        '🅵🅻🆈',
        '🆄🅽🅳🅴🆁🅲🅰🆁',
        '🇸 🇦 🇮 🇷 ',
        }, nil, '🅲🆁🅸🅰🅳🅾🆁: 🆅🅸🅿 🆃🅴🅰🅼 \n🆂🅲🆁🅸🅿🆃 🅿🆁🅾 \n🅵🆁🅴🅴 🅵🅸🆁🅴 : 1.64.🆇\n🅱🆈 2.0\n🗓️ 🆅🅰🅻🅸🅳🅰🅳🅴 🇴 🇳 🇱 🇮 🇳 🇪')
if menu == 1 then MNBYPASS() end
if menu == 2 then GTPC() end
if menu == 3 then GHOST() end
if menu == 4 then ZEPEDRA() end
if menu == 5 then MNARMAS() end
if menu == 6 then MNTELE() end
if menu == 7 then FLY() end
if menu == 8 then undervip() end
if menu == 9 then exit1() end
XGCK1= -1
end


GPC = "⚫"
function GTPC()
if GPC == "⚫" then
gg.clearResults()
io["output"](fileData):write([[
4821
Var #8B2F7FA0|8b2f7fa0|10|0|0|0|0|0|r-xp|/data/data/com.chaozhuo.gameassistant/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|42ffa0
]]):close()
gg.loadList(fileData, gg.LOAD_APPEND | gg.LOAD_VALUES)
os.remove(fileData)
gg.sleep(50)
gg.clearList()
gg.clearResults()
gg.toast("ATIVADO")
GPC = "⚪"
elseif GPC == "⚪" then
gg.clearResults()
io["output"](fileData):write([[
4821
Var #8B2F7FA0|8b2f7fa0|10|447a0000|0|0|0|0|r-xp|/data/data/com.chaozhuo.gameassistant/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|42ffa0
]]):close()
gg.loadList(fileData, gg.LOAD_APPEND | gg.LOAD_VALUES)
os.remove(fileData)
gg.sleep(50)
gg.clearList()
gg.clearResults()
gg.toast("DESATIVADO")
GPC = "⚫"
end
end


        function MNARMAS()
            menu3 = gg.multiChoice({
            '🅰🅸🅼🅱🅾🆃 180%',
            '🅽🅾 🆁🅴🅲🅾🅸🅻',
            '🅼🅴🅳🅺🅸🆃 🅲🅾🆁🆁🅴🅽🅳🅾',
            '🇸 🇦 🇮 🇷',
            }, nil, "🅲🆁🅸🅰🅳🅾🆁: 🆅🅸🅿 🆃🅴🅰🅼\n🅼🅴🅽🆄\n🇦 🇷 🇲 🇦 ")
            if menu3 == nil then
            START1()
            else
            if menu3[1] == true then
            AI180()
            end 
            if menu3[2] == true then
            G4()
            end 
            if menu3[3] == true then
            kitcor()
            end 
            if menu3[4] == true then
            START1()
            end 
            end
            MNFREE = -1
            end 
   
            
            kit = "⚫"      
function kitcor()
if kit == "⚫" then
      gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
      name("libil2cpp.so")
      myoffset = 9333564
      original("7F 45 4C 46 01 01 01 00")
      replaced("00 00 A0 E3 1E FF 2F E1")
      gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
      name("libil2cpp.so")
      myoffset = 20500820
      original("7F 45 4C 46 01 01 01 00")
      replaced("00 00 A0 E3 1E FF 2F E1")
      gg.clearResults()
      gg.toast("ATIVADO")
      kit = "⚪"
    elseif kit == "⚪" then
      gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
      name("libil2cpp.so")
      myoffset = 9333564
      original("7F 45 4C 46 01 01 01 00")
      replaced("70 4C 2D E9 10 B0 8D E2")
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
      name("libil2cpp.so")
      myoffset = 20500820
      original("7F 45 4C 46 01 01 01 00")
      replaced("70 4C 2D E9 10 B0 8D E2")
      gg.clearResults()
      gg.toast("DESATIVADO")
      kit = "⚫"
    end
  end
            
            GarentodG4 = "⚫️"
            function G4()
            if GarentodG4 == "⚫️"then 
            gg.setRanges(32)
            gg.searchNumber("0.01748251915", 16, false, 536870912, 0, -1)
            gg.getResults(999)
            gg.editAll("-2.2958874e-41", 16)
            gg.clearResults()
            gg.setRanges(32)
            gg.searchNumber("1016018816", 4, false, 536870912, 0, -5)
            gg.getResults(500)
            gg.editAll("0006018816", 4)
            gg.clearResults()
            gg.toast("ATIVADO")
            GarentodG4 = "⚪️"
            elseif GarentodG4 == "⚪️" then 
            gg.setRanges(32)
            gg.searchNumber("0.01748251915", 16, false, 536870912, 0, -1)
            gg.getResults(999)
            gg.editAll("-2.2958874e-41", 16)
            gg.clearResults()
            gg.setRanges(32)
            gg.searchNumber("1016018816", 4, false, 536870912, 0, -5)
            gg.getResults(500)
            gg.editAll("0006018816", 4)
            gg.clearResults()
            gg.toast("DESATIVO")
            GarentodG4 = "⚫️"
            end 
            end  

        AIM180 = "⚫️"
        function AI180()
        if AIM180 == "⚫️"then 
        gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
      name("libil2cpp.so")
      myoffset = 22495872
      original("7F 45 4C 46 01 01 01 00")
      replaced("5C 04 44 E3 1E FF 2F E1")
      gg.clearResults()
        gg.toast("ATIVADO")
        AIM180 = "⚪️"
        elseif AIM180 == "⚪️" then 
        gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
      name("libil2cpp.so")
      myoffset = 22495872
      original("7F 45 4C 46 01 01 01 00")
      replaced("5C 00 90 E5 1E FF 2F E1")
      gg.clearResults()
        gg.toast("DESATIVADO")
        AIM180 = "⚫️"
        end 
        end

        function MNTELE()
            menu6 = gg.multiChoice({
            '🆃🅴🅻🅴🅿🅾🆁🆃🅴 🅲🅰🆁🆁🅾', 
            '🆃🅴🅻🅴🅿🅾🆁🆃🅴 🅲🅰🆁🆁🅾 🆅🅸🅿',
            '🇸 🇦 🇮 🇷',
            }, nil, "🅲🆁🅸🅰🅳🅾🆁: 🆅🅸🅿 🆃🅴🅰🅼\n🅼🅴🅽🆄\n🇹 🇪 🇱 🇪 🇵 🇴 🇷 🇹  🇪   ")
            if menu6 == nil then
            START1()
            else
            if menu6[1] == true then
            TELEPRO2()
            end
            if menu6[2] == true then
            TELEPRO22()
            end
            if menu6[3] == true then
            START1()
            end
            end
            MAINFREE = -1
            end 
            
            TELEPRO9 = "⚫️"
            function TELEPRO22()
            if TELEPRO9 == "⚫️"then 
            gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
      name("libil2cpp.so")
      myoffset = 0x20C6F18
      original("7F 45 4C 46 01 01 01 00")
      replaced("00 00 A0 E3 1E FF 2F E1")
      gg.clearResults()
            gg.toast("ATIVADO")
            TELEPRO9 = "⚪️"
            elseif TELEPRO9 == "⚪️" then 
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
      name("libil2cpp.so")
      myoffset = 34368300
      original("7F 45 4C 46 01 01 01 00")
      replaced("F0 48 2D E9 10 B0 8D E2")
      gg.clearResults()
            gg.toast("DESATIVADO")
            TELEPRO9 = "⚫️"
            end 
            end            
            
            TELEPRO = "⚫️"
            function TELEPRO2()
            if TELEPRO == "⚫️"then 
            gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
name("libil2cpp.so")
myoffset = 0x20C6B2C
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 A0 E3 1E FF 2F E1")
gg.clearResults()
            gg.toast("ATIVADO")
            TELEPRO = "⚪️"
            elseif TELEPRO == "⚪️" then 
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
name("libil2cpp.so")
myoffset = 0x20C6B2C
original("7F 45 4C 46 01 01 01 00")
replaced("F0 48 2D E9 10 B0 8D E2")
gg.clearResults()
            gg.toast("DESATIVADO")
            TELEPRO = "⚫️"
            end 
            end
            
            
            FLY1 = "⚫️"
            function FLY()
            if FLY1 == "⚫️"then 
            gg.setRanges(gg.REGION_CODE_APP)
      io.output(fileData):write([[
    20233
Var #C16C66AC|c16c66ac|10|c4714000|0|0|0|0|r-xp|/data/data/com.chaozhuo.gameassistant/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|180c6ac
Var #C16C6A94|c16c6a94|10|c4714000|0|0|0|0|r-xp|/data/data/com.chaozhuo.gameassistant/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|180ca94
]]):close()
      gg.loadList(fileData, gg.LOAD_APPEND | gg.LOAD_VALUES)
      os.remove(fileData)
      gg.clearList()
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      name("libil2cpp.so")
      myoffset = 9544416
      original("7F 45 4C 46 01 01 01 00")
      replaced("00 00 A0 E3 1E FF 2F E1")
      gg.clearResults()
            gg.toast("ATIVADO")
            FLY1 = "⚪️"
            elseif FLY1 == "⚪️" then 
            gg.setRanges(gg.REGION_CODE_APP)
            gg.searchNumber("-1000", gg.TYPE_FLOAT)
            gg.getResults(10000)
            gg.editAll("100", gg.TYPE_FLOAT)
            gg.clearResults()
            gg.toast("DESATIVADO")
            FLY1 = "⚫️"
            end 
            end

            
            undercar = "⚫️"
            function undervip()
            if undercar == "⚫️"then 
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x20C6CC0
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 20 C0")
gg.clearResults()
            gg["toast"]("ATIVADO")
            undercar = "⚪️"
            elseif undercar == "⚪️" then 
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x20C6CC0
original("7F 45 4C 46 01 01 01 00")
replaced("17 B7 D1 38")
gg.clearResults()
            gg["toast"]("DESATIVO")
            undercar = "⚫️"
            end 
            end 


                esdra =  "⚫️"
                function ZEPEDRA()
                if esdra == "⚫️"  then
gg.clearResults()
io.output(fileData):write(string.char(table.unpack({10,57,57,57,57,57,10,90,78,88,88,88,32,35,56,49,53,66,54,70,54,56,124,56,49,53,98,54,102,54,56,124,49,48,124,52,49,50,48,48,48,48,48,124,48,124,48,124,48,124,48,124,114,45,120,112,124,47,100,97,116,97,47,97,112,112,47,99,111,109,46,100,116,115,46,102,114,101,101,102,105,114,101,116,104,45,50,47,108,105,98,47,97,114,109,47,108,105,98,117,110,105,116,121,46,115,111,124,97,98,102,102,54,56,10,90,78,88,88,88,32,35,56,49,53,66,54,70,54,67,124,56,49,53,98,54,102,54,99,124,49,48,124,52,49,50,48,48,48,48,48,124,48,124,48,124,48,124,48,124,114,45,120,112,124,47,100,97,116,97,47,97,112,112,47,99,111,109,46,100,116,115,46,102,114,101,101,102,105,114,101,116,104,45,50,47,108,105,98,47,97,114,109,47,108,105,98,117,110,105,116,121,46,115,111,124,97,98,102,102,54,99,10,90,78,88,88,88,32,35,56,49,53,66,54,70,55,48,124,56,49,53,98,54,102,55,48,124,49,48,124,52,49,50,48,48,48,48,48,124,48,124,48,124,48,124,48,124,114,45,120,112,124,47,100,97,116,97,47,97,112,112,47,99,111,109,46,100,116,115,46,102,114,101,101,102,105,114,101,116,104,45,50,47,108,105,98,47,97,114,109,47,108,105,98,117,110,105,116,121,46,115,111,124,97,98,102,102,55,48,10,90,78,88,88,88,32,35,56,49,53,66,54,70,55,52,124,56,49,53,98,54,102,55,52,124,49,48,124,52,49,50,48,48,48,48,48,124,48,124,48,124,48,124,48,124,114,45,120,112,124,47,100,97,116,97,47,97,112,112,47,99,111,109,46,100,116,115,46,102,114,101,101,102,105,114,101,116,104,45,50,47,108,105,98,47,97,114,109,47,108,105,98,117,110,105,116,121,46,115,111,124,97,98,102,102,55,52,10,90,78,88,88,88,32,35,56,49,53,66,54,70,55,56,124,56,49,53,98,54,102,55,56,124,49,48,124,52,49,50,48,48,48,48,48,124,48,124,48,124,48,124,48,124,114,45,120,112,124,47,100,97,116,97,47,97,112,112,47,99,111,109,46,100,116,115,46,102,114,101,101,102,105,114,101,116,104,45,50,47,108,105,98,47,97,114,109,47,108,105,98,117,110,105,116,121,46,115,111,124,97,98,102,102,55,56,10}))):close()
gg.loadList(fileData, gg.LOAD_APPEND | gg.LOAD_VALUES)
os.remove(fileData)
gg.sleep(50)
gg.clearList()
gg.clearResults()
                gg.toast("ATIVADO")
                esdra = "⚪️"
                elseif esdra == "⚪️"  then
gg.clearResults()
io.output(fileData):write(string.char(table.unpack({10,57,57,57,57,57,10,90,78,88,88,88,32,35,56,49,53,66,54,70,54,56,124,56,49,53,98,54,102,54,56,124,49,48,124,99,97,102,102,102,101,53,55,124,48,124,48,124,48,124,48,124,114,45,120,112,124,47,100,97,116,97,47,97,112,112,47,99,111,109,46,100,116,115,46,102,114,101,101,102,105,114,101,116,104,45,50,47,108,105,98,47,97,114,109,47,108,105,98,117,110,105,116,121,46,115,111,124,97,98,102,102,54,56,10,90,78,88,88,88,32,35,56,49,53,66,54,70,54,67,124,56,49,53,98,54,102,54,99,124,49,48,124,101,97,48,48,48,48,48,101,124,48,124,48,124,48,124,48,124,114,45,120,112,124,47,100,97,116,97,47,97,112,112,47,99,111,109,46,100,116,115,46,102,114,101,101,102,105,114,101,116,104,45,50,47,108,105,98,47,97,114,109,47,108,105,98,117,110,105,116,121,46,115,111,124,97,98,102,102,54,99,10,90,78,88,88,88,32,35,56,49,53,66,54,70,55,48,124,56,49,53,98,54,102,55,48,124,49,48,124,101,49,97,48,48,48,48,56,124,48,124,48,124,48,124,48,124,114,45,120,112,124,47,100,97,116,97,47,97,112,112,47,99,111,109,46,100,116,115,46,102,114,101,101,102,105,114,101,116,104,45,50,47,108,105,98,47,97,114,109,47,108,105,98,117,110,105,116,121,46,115,111,124,97,98,102,102,55,48,10,90,78,88,88,88,32,35,56,49,53,66,54,70,55,52,124,56,49,53,98,54,102,55,52,124,49,48,124,101,51,53,48,48,48,48,48,124,48,124,48,124,48,124,48,124,114,45,120,112,124,47,100,97,116,97,47,97,112,112,47,99,111,109,46,100,116,115,46,102,114,101,101,102,105,114,101,116,104,45,50,47,108,105,98,47,97,114,109,47,108,105,98,117,110,105,116,121,46,115,111,124,97,98,102,102,55,52,10,90,78,88,88,88,32,35,56,49,53,66,54,70,55,56,124,56,49,53,98,54,102,55,56,124,49,48,124,99,97,102,102,102,101,53,51,124,48,124,48,124,48,124,48,124,114,45,120,112,124,47,100,97,116,97,47,97,112,112,47,99,111,109,46,100,116,115,46,102,114,101,101,102,105,114,101,116,104,45,50,47,108,105,98,47,97,114,109,47,108,105,98,117,110,105,116,121,46,115,111,124,97,98,102,102,55,56,10}))):close()
gg.loadList(fileData, gg.LOAD_APPEND | gg.LOAD_VALUES)
os.remove(fileData)
gg.sleep(50)
gg.clearList()
gg.clearResults()
                gg.toast('DESATIVADO')
                esdra =  "⚫️"
                end
                end

modo =  "⚫️"     
function GHOST()
if modo ==  "⚫️" then
gg.clearResults()
io["output"](fileData):write([[
6871
Var #8A776B00|8a776b00|10|e3a00000|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|ce8b00
Var #8A776B04|8a776b04|10|e12fff1e|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|ce8b04
]]):close()
gg.loadList(fileData, gg.LOAD_APPEND | gg.LOAD_VALUES)
os.remove(fileData)
gg.sleep(50)
gg.clearList()
gg.clearResults()
gg.toast("ATIVADO")
modo =  "⚪️"   
elseif modo ==  "⚪️" then
gg.clearResults()
io["output"](fileData):write([[
6871
Var #8A776B00|8a776b00|10|e92d4ff0|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|ce8b00
Var #8A776B04|8a776b04|10|e28db01c|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|ce8b04
]]):close()
gg.loadList(fileData, gg.LOAD_APPEND | gg.LOAD_VALUES)
os.remove(fileData)
gg.sleep(50)
gg.clearList()
gg.clearResults()
gg.toast("DESATIVADO")
modo =  "⚫️"     
end
end

        function MNBYPASS()
            ct13 = gg.multiChoice({
            '🅱🆈🅿🅰🆂🆂 🅰🅽🆃🅸 🆂🆄🆂🅿🅴🅽🅲̧🅰🅾',
            '🅰🅽🆃🅸 🅳🅴🆃🅴🅲🆃 🅶🅰🅼🅴\n🅽🅾 🅻🅾🅱🅱🆈',
            '🅻🅸🅼🅿🅰🆁 🅲🅾🅽🆅🅸🅳🅰🅳🅾',
            '🅻🅸🅼🅿🅰🆁 🅻🅾🅶🆂\n🅽🅾 🅻🅾🅱🅱🆈',
            '🅱🆈🅿🅰🆂🆂 🆁🅰🅽🅺\n🅽🅾 🅻🅾🅱🅱🆈',
            '🅱🆈🅿🅰🆂🆂 🅸🅼🅴🅸',
            '🅱🆈🅿🅰🆂🆂 🅲🅻🅾🅽🅰🅳🅾🆁\n🅽🅾 🅻🅾🅱🅱🆈',
            '🇸 🇦 🇮 🇷',
        }, nil, "🅲🆁🅸🅰🅳🅾🆁: 🆅🅸🅿 🆃🅴🅰🅼\n🅼🅴🅽🆄\n🇧 🇾 🇵 🇦 🇸 🇸   ") 
        if ct13 == nil then
        START1()
        else
        if ct13[1] == true then E1() end
        if ct13[2] == true then E2() end
        if ct13[3] == true then E3() end
        if ct13[4] == true then E4() end
        if ct13[6] == true then byrk() end
        if ct13[7] == true then imeit() end
        if ct13[8] == true then byclo() end
        if ct13[9] == true then START1() end
        end
        MAINFREE = -1
        end 
        
        
  function byclo()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 13383416
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("BY CLONADOR ATIVADO")
    gg.sleep(350)
  end        
        
imei = "⚫"
  function imeit()
    if imei == "⚫" then
      gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
      name("libil2cpp.so")
      myoffset = 22547300
      original("7F 45 4C 46 01 01 01 00")
      replaced("00 00 A0 E3 1E FF 2F E1")
      gg.clearResults()
      gg.toast("IMEI TOOLS ATIVADO")
      imei = "⚪"
    elseif imei == "⚪" then
      gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
      name("libil2cpp.so")
      myoffset = 22547300
      original("7F 45 4C 46 01 01 01 00")
      replaced("F0 48 2D E9 10 B0 8D E2")
      gg.clearResults()
      gg.toast("DESATIVADO")
      imei = "⚫"
    end
  end
            
            GarentodE1 = "⚫️"
            function E1()
            if GarentodE1 == "⚫️"then 
            gg.sleep(100)
            gg.toast("LOADING 10%")
            gg.sleep(200)
            gg.toast("LOADING 20%")
            gg.sleep(300)
            gg.toast("LOADING 30%")
            gg.sleep(400)
            gg.toast("LOADING 40%")
            gg.sleep(500)
            gg.toast("LOADING 50%")
            gg.sleep(600)
            gg.toast("LOADING 60%")
            gg.sleep(700)
            gg.toast("LOADING 70%")
            gg.sleep(800)
            gg.toast("LOADING 80%")
            gg.sleep(900)
            gg.toast("LOADING 90%")
            gg.sleep(100)
            gg.toast("LOADING 100%")
            gg.sleep(500)
            gg.toast("BY  ANTI SUSPENÇAO")
            GarentodE1 = "⚪️"
            elseif GarentodE1 == "⚪️" then 
            gg.sleep(100)
            gg.toast("LOADING 10%")
            gg.sleep(200)
            gg.toast("LOADING 20%")
            gg.sleep(300)
            gg.toast("LOADING 30%")
            gg.sleep(400)
            gg.toast("LOADING 40%")
            gg.sleep(500)
            gg.toast("LOADING 50%")
            gg.sleep(600)
            gg.toast("LOADING 60%")
            gg.sleep(700)
            gg.toast("LOADING 70%")
            gg.sleep(800)
            gg.toast("LOADING 80%")
            gg.sleep(900)
            gg.toast("LOADING 90%")
            gg.sleep(100)
            gg.toast("LOADING 100%")
            gg.sleep(500)
            gg.toast("DESATIVADO")
            GarentodE1 = "⚫️"
            end 
            end 
            
            GarentodE2 = "⚫️"
            function E2()
            if GarentodE2 == "⚫️"then 
            gg.setRanges(32)
            gg.searchNumber("R_R({83,65,103,40,11,249,31,224,203,177,215,152,126,127,143,80,52,36,71,8,236,220,255,192,164,152,183,120,94,94,111,47,29,9})", 1, false, 536870912, 0, -1)
            gg.refineNumber("R_R({83,65,103,40,11,249,31,224,203,177,215,152,126,127,143,79,61,37})", 1, false, 536870912, 0, -1)
            gg.getResults(10000)
            gg.editAll("R_R({83,65,103,40,11,249,31,224,199,185,215,152,127,108,143})", 1)
            gg.clearResults()
            gg.toast("DETECT GG")
            GarentodE2 = "⚪️"
            elseif GarentodE2 == "⚪️" then 
            gg.setRanges(32)
            gg.searchNumber("R_R({83,65,103,40,11,249,31,224,203,177,215,152,126,127,143,80,52,36,71,8,236,220,255,192,164,152,183,120,94,94,111,47,29,9})", 1, false, 536870912, 0, -1)
            gg.refineNumber("R_R({83,65,103,40,11,249,31,224,199,185,215,152,127,108,143})", 1, false, 536870912, 0, -1)
            gg.getResults(10000)
            gg.editAll("R_R({83,65,103,40,11,249,31,224,203,177,215,152,126,127,143,79,61,37})", 1)
            gg.clearResults()
            gg.toast("DESATIVADO")
            GarentodE2 = "⚫️"
            end 
            end 
            
            GarentodE3 = "⚫️"
            function E3()
            if GarentodE3 == "⚫️"then 
            os.remove("/com.garena.msdk/guest100067.dat")
            os.remove("/com.garena.msdk")
            os.remove("/Android/data/com.dts.libil2cpp.soth/files/reportnew.db")
            os.remove("/Android/data/com.dts.libil2cpp.soth/files/ymrtc_log.txt")
            os.remove("/com.garena.msdk/guest100067.dat")
            os.remove("/com.garena.msdk")
            os.remove("/Android/data/com.dts.libil2cpp.soth/files/reportnew.db")
            os.remove("/Android/data/com.dts.libil2cpp.soth/files/ymrtc_log.txt")
            gg.toast("APAGAR CONTA")
            GarentodE3 = "⚪️"
            elseif GarentodE3 == "⚪️" then 
            os.remove("/com.garena.msdk/guest100067.dat")
            os.remove("/com.garena.msdk")
            os.remove("/Android/data/com.dts.libil2cpp.soth/files/reportnew.db")
            os.remove("/Android/data/com.dts.libil2cpp.soth/files/ymrtc_log.txt")
            os.remove("/com.garena.msdk/guest100067.dat")
            os.remove("/com.garena.msdk")
            os.remove("/Android/data/com.dts.libil2cpp.soth/files/reportnew.db")
            os.remove("/Android/data/com.dts.libil2cpp.soth/files/ymrtc_log.txt")
            gg.toast("DESATIVADO")
            GarentodE3 = "⚫️"
            end 
            end 
            
            GarentodE4 = "⚫️"
            function E4()
            if GarentodE4 == "⚫️"then 
            io.output("/storage/emulated/0/[###].dat")
            gg.loadList("/storage/emulated/0/[###].dat", 10)
            gg.clearList()
            gg.clearResults()
            gg.toast("APAGAR LOGS")
            GarentodE4 = "⚪️"
            elseif GarentodE4 == "⚪️" then 
            io.output("/storage/emulated/0/[###].dat")
            gg.loadList("/storage/emulated/0/[###].dat", 00)
            gg.clearList()
            gg.clearResults()
            gg.toast("DESATIVADO")
            GarentodE4 = "⚫️"
            end 
            end 
            
            
            function YUMEKO2()
                function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Name.."  modify"..#data.."Article data") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item)end end end gg.setValues(t) else gg.toast(Name.."Failed to open", false) return false end else gg.toast(Name.."Failed to open") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "Failed to open") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "            ") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "Smile reminder: open successfully, modify a total" .. xgsl .. "Article    ") else gg.toast(qmnb[2]["name"] .. "Smile reminder: failed to open") end end end end function PS() end function setvalue(address,flags,value) PS('Modify address value (address, value type, value to be modified)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 
                function SearchWrite(Search, Write, Type, Name)  gg.clearResults()  gg.setVisible(false)  gg.searchNumber(Search[1][1], Type)  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}  local base = Search[1][2]  if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base  local num = Search[k][1]  for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = v.flags  end  tmp = gg.getValues(tmp)  for i, v in ipairs(tmp)
                
                do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end  for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast("Found"..#data.."Code Data")  local t = {}  local base = Search[1][2]  for i=1, #data do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = Type  t[#t].value = w[1]  if (w[3] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Name.."Successfully opened!  already"..#t.."Code Data")  gg.addListItems(t)  else  gg.toast(Name.."Failed to open", false)  return false  end  else  gg.toast(Name.."Failed to open")  return false  end  end
                function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.."????"..#data.."")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.."????"..#t.."")     gg.addListItems(t)  else  gg.toast(Mingcg.."????", false)  return false  end  else  gg.toast("????")  return false  end end  
                function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "Failed to open") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "Failed to open") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" ..
                
                szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "Successfully opened, modified in total" .. xgsl .. "Article data") else gg.toast(qmnb[2]["name"] .. "No data found, failed to open") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("Successfully opened, modified in total"..#t.."Article data") gg.addListItems(t) else gg.toast("No data found, failed to open", false) return false end else gg.toast("Not Found") return false end end
                local memFrom, memTo, lib, num, lim, results, src, ok = 0, -1, nil, 0, 32, {}, nil, false  function name(n)  if lib ~= n then  lib = n  local ranges = gg.getRangesList(lib)  if #ranges == 0 then  print('                    : ' .. lib .. '       ')  gg.alert('             : ' .. lib .. '\n                                                                                       ')  gg.toast('             : ' .. lib .. '\n                                                                                        ')  os.exit()  else  memFrom = ranges[1].start  memTo = ranges[#ranges]['end']   end  end  end  function hex2tbl(hex)  local ret = {}  hex:gsub('%S%S', function(ch)  ret[#ret + 1] = ch  return ''  end)  return ret  end  function original(orig)  local tbl = hex2tbl(orig)  local len = #tbl  if len == 0 then  return  end  local used = len  if len > lim then  used = lim  end  local s = ''  for i = 1, used do  if i ~= 1 then  s = s .. ';'  end  local v = tbl[i]  if v == '??' or v == '**' then  v = '0~~0'  end  s = s .. v .. 'r'  end  s = s .. '::' .. used  gg.searchNumber(s, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, memFrom, memTo)  if len > used then  for i = used + 1, len do  local v = tbl[i]  if v == '??' or v == '**' then  v = 256  else  v = ('0x' .. v) + 0  if v > 127 then  v = v - 256  end  end  tbl[i] = v  end  end  local found = gg.getResultCount()  results = {}  local count = 0  local checked = 0  while not (found <= checked) do  local all = gg.getResults(8)  local total = #all  local start = checked  if total < checked + used then  break  end  for i, v in ipairs(all) do  v.address = v.address + myoffset  end  gg.loadResults(all)  while total > start do  local good = true  local offset = all[1 + start].address - 1  if len > used then  local get = {}  for i = lim + 1, len do  get[i - lim] = {  address = offset + i,  flags = gg.TYPE_BYTE,  value = 0  }  end  get = gg.getValues(get)  for i = lim + 1, len do  local ch = tbl[i]  if ch ~= 256 and get[i - lim].value ~= ch then  good = false  break  end  end  end  if good then  count = count + 1  results[count] = offset  checked = checked + used  else  local del = {}  for i = 1, used do  del[i] = all[i + start]  end  gg.removeResults(del)  end  start = start + used  end  end  end  function replaced(repl)  num = num + 1  local tbl = hex2tbl(repl)  if src ~= nil then  local
                
                source = hex2tbl(src)  for i, v in ipairs(tbl) do  if v ~= '??' and v ~= '**' and v == source[i] then  tbl[i] = '**'  end  end  src = nil  end  local cnt = #tbl  local set = {}  local s = 0  for _, addr in ipairs(results) do  for i, v in ipairs(tbl) do  if v ~= '??' and v ~= '**' then  s = s + 1  set[s] = {  address = addr + i,  value = v .. 'r',  flags = gg.TYPE_BYTE  }   end  end  end  if s ~= 0 then  gg.setValues(set)  end  ok = true  end
                function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
                function read_file(path) local file = io.open(path, "rb") if not file then return nil end local content = file:read("*a") file:close() return content end              
                
                local HexPatches = {}
                function HexPatches.MemoryPatch(Lib,Offset,Edit,Type)
                local Ranges = gg.getRangesList(Lib)
                local v = {}
                v[1] = {}
                v[1].address = Ranges[1].start + Offset
                v[1].flags = Type
                v[1].value = Edit.."r"
                v[1].freeze = true
                gg.setValues(v)
                end
                
                local memFrom, memTo, lib, num, lim, results, src, ok = 0, -1, nil, 0, 32, {}, nil, false
                function name(n)
                 if lib ~= n then
                  lib = n
                  local ranges = gg.getRangesList(lib)
                  if #ranges == 0 then
                   print("⚠️Error : "..lib.." not found⚠️")
                   gg.toast("⚠️Error : "..lib.." not found⚠️")
                   os.exit()
                  else
                   memFrom = ranges[1].start
                   memTo = ranges[#ranges]["end"]
                  end
                 end
                end
                function hex2tbl(hex)
                 local ret = {}
                 hex:gsub("%S%S", function (ch)
                  ret[#ret + 1] = ch
                  return ""
                 end)
                 return ret
                end
                function original(orig,longoff)
                 local tbl = hex2tbl(orig)
                 local len = #tbl
                 if len == 0 then return end
                 local used = len
                 if len > lim then used = lim end
                 local s = ""
                 for i = 1, used do
                  if i ~= 1 then s = s..";" end
                  local v = tbl[i]
                  if v == "??" or v == "**" then v = "0~~0" end  
                  s = s..v.."r"
                 end
                 s = s.."::"..used
                 gg.searchNumber(s, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, memFrom, memTo)
                 if len > used then
                  for i = used + 1, len do
                   local v = tbl[i]
                   if v == "??" or v == "**" then
                    v = 256
                   else
                    v = ("0x"..v) + 0
                    if v > 127 then v = v - 256 end
                   end
                   tbl[i] = v
                  end
                 end
                 local found = gg.getResultCount();
                 results = {}
                 local count = 0
                 local checked = 0
                 while true do
                  if checked >= found then
                   break
                  end
                  local all = gg.getResults(8)
                  local total = #all
                  local start = checked
                  if checked + used > total then
                   break
                  end
                  for i, v in ipairs(all) do
                     v.address = v.address + longoff
                        end
                         gg.loadResults(all)
                  while start < total do  
                   local good = true
                   local offset = all[1 + start].address - 1
                   if used < len then   
                    local get = {}
                    for i = lim + 1, len do
                     get[i - lim] = {address = offset + i, flags = gg.TYPE_BYTE, value = 0}
                    end
                    get = gg.getValues(get)
                    for i = lim + 1, len do
                     local ch = tbl[i]
                     if ch ~= 256 and get[i - lim].value ~= ch then
                      good = false
                      break
                     end
                    end
                   end
                   if good then
                    count = count + 1
                    results[count] = offset
                    checked = checked + used
                   else
                    local del = {}
                    for i = 1, used do
                     del[i] = all[i + start]
                    end
                    gg.removeResults(del)
                   end
                   start = start + used
                  end
                 end
                end
                function replaced(repl)
                 num = num + 1
                 local tbl = hex2tbl(repl)
                 if src ~= nil then
                  local source = hex2tbl(src)
                  for i, v in ipairs(tbl) do
                   if v ~= "??" and v ~= "**" and v == source[i] then tbl[i] = "**" end
                  end
                  src = nil
                 end
                 local cnt = #tbl
                 local set = {}
                 local s = 0
                 for _, addr in ipairs(results) do
                  for i, v in ipairs(tbl) do
                   if v ~= "??" and v ~= "**" then
                    s = s + 1
                    set[s] = {
                     ["address"] = addr + i, 
                     ["value"] = v.."r",
                     ["flags"] = gg.TYPE_BYTE,
                    }
                   end
                  end  
                 end
                 if s ~= 0 then gg.setValues(set) end
                 ok = true
                end
                so=gg.getRangesList('libil2cpp.so')[1].start  
                py=0x1E971F8 
                setvalue(so+py,4,-484380672)
                gg.clearResults()
        gg.toast("ATIVADO")
        end
        
            
function YUMEKO13()
local memFrom, memTo, lib, num, lim, results, src, ok = 0, -1, nil, 0, 32, {}, nil, false
function name(n)
if lib ~= n then
lib = n
local ranges = gg.getRangesList(lib)
if #ranges == 0 then
print('?? ????? : ' .. lib .. ' ??')
gg.alert('????? : ' .. lib .. '\n ?????? ?????? ???? ?? ???? ???????')
gg.toast('????? : ' .. lib .. '\n ?????? ?????? ???? ?? ???? ??????? ')
os.exit()
else
memFrom = ranges[1].start
memTo = ranges[#ranges]['end']
end
end
end
function hex2tbl(hex)
local ret = {}
hex:gsub('%S%S', function(ch)
ret[#ret + 1] = ch
return ''
end)
return ret
end
function original(orig)
local tbl = hex2tbl(orig)
local len = #tbl
if len == 0 then
return
end
local used = len
if len > lim then
used = lim
end
local s = ''
for i = 1, used do
if i ~= 1 then
s = s .. ';'
end
local v = tbl[i]
if v == '??' or v == '**' then
v = '0~~0'
end
s = s .. v .. 'r'
end
s = s .. '::' .. used
gg.searchNumber(s, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, memFrom, memTo)
if len > used then
for i = used + 1, len do
local v = tbl[i]
if v == '??' or v == '**' then
v = 256
else
v = ('0x' .. v) + 0
if v > 127 then
v = v - 256
end
end
tbl[i] = v
end
end
local found = gg.getResultCount()
results = {}
local count = 0
local checked = 0
while not (found <= checked) do
local all = gg.getResults(8)
local total = #all
local start = checked
if total < checked + used then
break
end
for i, v in ipairs(all) do
v.address = v.address + myoffset
end
gg.loadResults(all)
while total > start do
local good = true
local offset = all[1 + start].address - 1
if len > used then
local get = {}
for i = lim + 1, len do
get[i - lim] = {
address = offset + i,
flags = gg.TYPE_BYTE,
value = 0
}
end
get = gg.getValues(get)
for i = lim + 1, len do
local ch = tbl[i]
if ch ~= 256 and get[i - lim].value ~= ch then
good = false
break
end
end
end
if good then
count = count + 1
results[count] = offset
checked = checked + used
else
local del = {}
for i = 1, used do
del[i] = all[i + start]
end
gg.removeResults(del)
end
start = start + used
end
end
end
function replaced(repl)
num = num + 1
local tbl = hex2tbl(repl)
if src ~= nil then
local source = hex2tbl(src)
for i, v in ipairs(tbl) do
if v ~= '??' and v ~= '**' and v == source[i] then
tbl[i] = '**'
end
end
src = nil
end
local cnt = #tbl
local set = {}
local s = 0
for _, addr in ipairs(results) do
for i, v in ipairs(tbl) do
if v ~= '??' and v ~= '**' then
s = s + 1
set[s] = {
address = addr + i,
value = v .. 'r',
flags = gg.TYPE_BYTE
}
end
end
end
if s ~= 0 then
gg.setValues(set)
end
ok = true
end
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name('libil2cpp.so')
myoffset = 0x30F5468
original('7F454C4601010100')
replaced('0200A0E31EFF2FE1')
gg.clearResults()
gg.toast("MENOS RECOIL ATIVADO")
end
        
        
        function BYPASSGL()
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("67136366", gg.TYPE_DWORD)
            gg.refineNumber("67136366", gg.TYPE_DWORD)
            gg.getResults(50500)
            gg.editAll("0", gg.TYPE_DWORD)
            gg.clearResults()
            
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("67175169", gg.TYPE_DWORD)
            gg.refineNumber("67175169", gg.TYPE_DWORD)
            gg.getResults(50500)
            gg.editAll("0", gg.TYPE_DWORD)
            gg.clearResults()
            
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("83952138", gg.TYPE_DWORD)
            gg.refineNumber("83952138", gg.TYPE_DWORD)
            gg.getResults(50500)
            gg.editAll("0", gg.TYPE_DWORD)
            gg.clearResults()
            
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("117768450", gg.TYPE_DWORD)
            gg.refineNumber("117768450", gg.TYPE_DWORD)
            gg.getResults(50500)
            gg.editAll("0", gg.TYPE_DWORD)
            gg.clearResults()
            
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("67305728", gg.TYPE_DWORD)
            gg.refineNumber("67305728", gg.TYPE_DWORD)
            gg.getResults(50500)
            gg.editAll("0", gg.TYPE_DWORD)
            gg.clearResults()
            
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("109495689", gg.TYPE_DWORD)
            gg.refineNumber("109495689", gg.TYPE_DWORD)
            gg.getResults(50500)
            gg.editAll("0", gg.TYPE_DWORD)
            gg.clearResults()
            
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("196867", gg.TYPE_DWORD)
            gg.refineNumber("196867", gg.TYPE_DWORD)
            gg.getResults(50500)
            gg.editAll("720914", gg.TYPE_DWORD)
            gg.clearResults()
            
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("131842", gg.TYPE_DWORD)
            gg.refineNumber("131842", gg.TYPE_DWORD)
            gg.getResults(50500)
            gg.editAll("720914", gg.TYPE_DWORD)
            gg.clearResults()
            
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("144387", gg.TYPE_DWORD)
            gg.refineNumber("144387", gg.TYPE_DWORD)
            gg.getResults(50500)
            gg.editAll("720914", gg.TYPE_DWORD)
            gg.clearResults()
            
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("262403", gg.TYPE_DWORD)
            gg.refineNumber("262403", gg.TYPE_DWORD)
            gg.getResults(50500)
            gg.editAll("720914", gg.TYPE_DWORD)
            gg.clearResults()
            
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("70658", gg.TYPE_DWORD)
            gg.refineNumber("70658", gg.TYPE_DWORD)
            gg.getResults(50500)
            gg.editAll("720914", gg.TYPE_DWORD)
            gg.clearResults()
            
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("134914", gg.TYPE_DWORD)
            gg.refineNumber("134914", gg.TYPE_DWORD)
            gg.getResults(50500)
            gg.editAll("720914", gg.TYPE_DWORD)
            gg.clearResults()
            
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("134658", gg.TYPE_DWORD)
            gg.refineNumber("134658", gg.TYPE_DWORD)
            gg.getResults(50500)
            gg.editAll("720914", gg.TYPE_DWORD)
            gg.clearResults()
            
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("131330", gg.TYPE_DWORD)
            gg.refineNumber("131330", gg.TYPE_DWORD)
            gg.getResults(50500)
            gg.editAll("720914", gg.TYPE_DWORD)
            gg.clearResults()
            
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("131331", gg.TYPE_DWORD)
            gg.refineNumber("131331", gg.TYPE_DWORD)
            gg.getResults(50500)
            gg.editAll("720914", gg.TYPE_DWORD)
            gg.clearResults()
            
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("65795", gg.TYPE_DWORD)
            gg.refineNumber("65795", gg.TYPE_DWORD)
            gg.getResults(50500)
            gg.editAll("720914", gg.TYPE_DWORD)
            gg.clearResults()
            
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("133634", gg.TYPE_DWORD)
            gg.refineNumber("133634", gg.TYPE_DWORD)
            gg.getResults(50500)
            gg.editAll("720914", gg.TYPE_DWORD)
            gg.clearResults()
            
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("133635", gg.TYPE_DWORD)
            gg.refineNumber("133635", gg.TYPE_DWORD)
            gg.getResults(50500)
            gg.editAll("720914", gg.TYPE_DWORD)
            gg.clearResults()
            
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("133378", gg.TYPE_DWORD)
            gg.refineNumber("133378", gg.TYPE_DWORD)
            gg.getResults(50500)
            gg.editAll("720914", gg.TYPE_DWORD)
            gg.clearResults()
            
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("134402", gg.TYPE_DWORD)
            gg.refineNumber("134402", gg.TYPE_DWORD)
            gg.getResults(50500)
            gg.editAll("720914", gg.TYPE_DWORD)
            gg.clearResults()
        gg.alert("❬BYPASS GLOBAL INJETADO❭")
        end
    

local memFrom, memTo, lib, num, lim, results, src, ok = 0, -1, nil, 0, 32, {}, nil, false
function name(n)
if lib ~= n then
lib = n
local ranges = gg.getRangesList(lib)
if #ranges == 0 then
gg.toast("Error : " .. lib .. "ABRA O FF")
os.exit()
else
memFrom = ranges[1].start
memTo = ranges[#ranges]["end"]
 end
end
end
function hex2tbl(hex)
local ret = {}
hex:gsub("%S%S", function(ch)
ret[#ret + 1] = ch
return ""
end)
return ret
end
function original(orig)
local tbl = hex2tbl(orig)
local len = #tbl
if len == 0 then
return
end
local used = len
if len > lim then
used = lim
end
local s = ""
for i = 1, used do
if i ~= 1 then
s = s .. ";"
end
local v = tbl[i]
if v == "??" or v == "**" then
v = "0~~0"
end
s = s .. v .. "r"
end
s = s .. "::" .. used
gg.searchNumber(s, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, memFrom, memTo)
if len > used then
for i = used + 1, len do
local v = tbl[i]
if v == "??" or v == "**" then
v = 256
else
v = ("0x" .. v) + 0
if v > 127 then
v = v - 256
end
end
tbl[i] = v
end
end
local found = gg.getResultCount()
results = {}
local count = 0
local checked = 0
while not (found <= checked) do
local all = gg.getResults(8)
local total = #all
local start = checked
if total < checked + used then
break
end
for i, v in ipairs(all) do
v.address = v.address + myoffset
end
gg.loadResults(all)
while total > start do
local good = true
local offset = all[1 + start].address - 1
if len > used then
local get = {}
for i = lim + 1, len do
get[i - lim] = {
address = offset + i,
flags = gg.TYPE_BYTE,
value = 0
}
end
get = gg.getValues(get)
for i = lim + 1, len do
local ch = tbl[i]
if ch ~= 256 and get[i - lim].value ~= ch then
good = false
break
end
end
end
if good then
count = count + 1
results[count] = offset
checked = checked + used
else
local del = {}
for i = 1, used do
del[i] = all[i + start]
end
gg.removeResults(del)
end
start = start + used
end
end
end
function replaced(repl)
num = num + 1
local tbl = hex2tbl(repl)
if src ~= nil then
local source = hex2tbl(src)
for i, v in ipairs(tbl) do
if v ~= "??" and v ~= "**" and v == source[i] then
tbl[i] = "**"
end
end
src = nil
end
local cnt = #tbl
local set = {}
local s = 0
for _, addr in ipairs(results) do
for i, v in ipairs(tbl) do
if v ~= "??" and v ~= "**" then
s = s + 1
set[s] = {
address = addr + i,
value = v .. "r",
flags = gg.TYPE_BYTE
}
 end
end
end
if s ~= 0 then
gg.setValues(set)
end
ok = true
end
  b = [[
20672
Var #9CDFC4A8|9cdfc4a8|10|0|0|0|0|0|r-xp|/data/app/com.dts.freefireth-1/lib/arm/libunity.so|abff68
Var #9CDFC4B8|9cdfc4b8|10|0|0|0|0|0|r-xp|/data/app/com.dts.freefireth-1/lib/arm/libunity.so|abff78
Var #9CDFC4E8|9cdfc4e8|10|0|0|0|0|0|r-xp|/data/app/com.dts.freefireth-1/lib/arm/libunity.so|abffa8
]]
  fileData = gg.EXT_STORAGE .. '/[###].dat'
  io.output(fileData):write(b):close()
  gg.loadList(fileData, gg.LOAD_APPEND)
  gg.sleep(50)
  r = gg.getListItems()
  getReset = gg.getValues(r)
  gg.clearList()
  os.remove(fileData)
  b = [[
12873
Var #9D95DF68|9d95df68|10|cafffe57|0|0|0|0|r-xp|/data/app/com.dts.freefireth-1/lib/arm/libunity.so|abff68
Var #9D95DF78|9d95df78|10|cafffe53|0|0|0|0|r-xp|/data/app/com.dts.freefireth-1/lib/arm/libunity.so|abff78
Var #9D95DFA8|9d95dfa8|10|cafffe47|0|0|0|0|r-xp|/data/app/com.dts.freefireth-1/lib/arm/libunity.so|abffa8
]]
  fileData = gg.EXT_STORAGE .. '/[###].dat'
  io.output(fileData):write(b):close()
  gg.loadList(fileData, gg.LOAD_APPEND)
  gg.sleep(50)
  r = gg.getListItems()
  getReset = gg.getValues(r)
  gg.clearList()
  os.remove(fileData)
  b = [[
28255
Var #88A9E68C|88a9e68c|10|3f800000|0|0|0|0|r-xp|/data/data/com.chaozhuo.gameassistant/virtual/data/app/com.dts.freefireth/lib/libunity.so|5bb68c
Var #88A9E68C|88a9e68c|10|3f800000|1|0|0|0|r-xp|/data/data/com.chaozhuo.gameassistant/virtual/data/app/com.dts.freefireth/lib/libunity.so|5bb68c
]]
  fileData = gg.EXT_STORAGE .. '/[###].dat'
  io.output(fileData):write(b):close()
  gg.loadList(fileData, gg.LOAD_APPEND)
  gg.sleep(50)
  r = gg.getListItems()
  getReset = gg.getValues(r)
  gg.clearList()
  os.remove(fileData)
  b = [[
20245
Var #95149204|95149204|10|42200000|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|686204
Var #959CF298|959cf298|10|e92d4830|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|f0c298
Var #959CF29C|959cf29c|10|e28db008|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|f0c29c
Var #959CF5C4|959cf5c4|10|e590013c|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|f0c5c4
Var #959CF5C8|959cf5c8|10|e12fff1e|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|f0c5c8
Var #95761A28|95761a28|10|42700000|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|c9ea28
Var #95157900|95157900|10|e92d4c70|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|694900
Var #95157904|95157904|10|e28db010|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|694904
Var #95134908|95134908|10|e92d4ff0|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|671908
Var #9513490C|9513490c|10|e28db01c|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|67190c
Var #95E02A38|95e02a38|10|e92d4ff0|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|133fa38
Var #95E02A3C|95e02a3c|10|e28db01c|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|133fa3c
Var #959BBA58|959bba58|10|e92d4c70|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|ef8a58
Var #959BBA5C|959bba5c|10|e28db010|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|ef8a5c
Var #959CA3C0|959ca3c0|10|e92d4ff0|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|f073c0
Var #959CA3C4|959ca3c4|10|e28db01c|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|f073c4
Var #95760788|95760788|10|e92d4ff0|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|c9d788
Var #9576078C|9576078c|10|e28db01c|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|c9d78c
Var #9519E7F4|9519e7f4|10|e5900020|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|6db7f4
Var #9519E7F8|9519e7f8|10|e12fff1e|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|6db7f8
Var #96D115BC|96d115bc|10|e92d4830|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|224e5bc
Var #96D115C0|96d115c0|10|e28db008|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|224e5c0
Var #96A467C0|96a467c0|10|3e4ccccd|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|1f837c0
Var #96A47310|96a47310|10|3e4ccccd|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|1f84310
Var #9A06C280|9a06c280|10|358637bd|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libunity.so|151280
Var #96EA0C08|96ea0c08|10|42c80000|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|23ddc08
Var #959C111C|959c111c|10|e92d4c70|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|efe11c
Var #959C1120|959c1120|10|e28db010|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|efe120
Var #9515D704|9515d704|10|e92d4c70|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|69a704
Var #9515D708|9515d708|10|e28db010|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|69a708
Var #9513504C|9513504c|10|e92d4800|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|67204c
Var #95135050|95135050|10|e1a0b00d|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|672050
Var #959C0AD4|959c0ad4|10|e5900060|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|efdad4
Var #959C0AD8|959c0ad8|10|e12fff1e|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|efdad8
Var #95156C58|95156c58|10|43960000|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|693c58
Var #959C0E74|959c0e74|10|e5900050|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|efde74
Var #959C0E78|959c0e78|10|e12fff1e|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|efde78
Var #95D887F4|95d887f4|10|e92d4c70|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|12c57f4
Var #95D887F8|95d887f8|10|e28db010|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|12c57f8
Var #959C4804|959c4804|10|e92d4c70|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|f01804
Var #959C4808|959c4808|10|e28db010|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|f01808
Var #95163EF4|95163ef4|10|e92d48f0|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|6a0ef4
Var #95163EF8|95163ef8|10|e28db010|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|6a0ef8
Var #9512EBFC|9512ebfc|10|e5d00358|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|66bbfc
Var #9512EC00|9512ec00|10|e12fff1e|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|66bc00
Var #96AE01A0|96ae01a0|10|e92d48f0|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|201d1a0
Var #96AE01A4|96ae01a4|10|e28db010|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|201d1a4
Var #9ADBC890|9adbc890|10|358637bd|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libunity.so|ea1890
Var #9ADBC894|9adbc894|10|358637bd|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libunity.so|ea1894
Var #9ADBC898|9adbc898|10|358637bd|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libunity.so|ea1898
Var #9ADBC89C|9adbc89c|10|358637bd|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libunity.so|ea189c
Var #9ADB079C|9adb079c|10|358637bd|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libunity.so|e9579c
]]
  fileData = gg.EXT_STORAGE .. '/[###].dat'
  io.output(fileData):write(b):close()
  gg.loadList(fileData, gg.LOAD_APPEND)
  gg.sleep(50)
  r = gg.getListItems()
  getReset = gg.getValues(r)
  gg.clearList()
  os.remove(fileData)
  b = [[
20245
Var #95149204|95149204|10|43b40000|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|686204
Var #95154228|95154228|10|e3a00000|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|691228
Var #9515422C|9515422c|10|e12fff1e|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|69122c
Var #959CF298|959cf298|10|e3a00001|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|f0c298
Var #959CF29C|959cf29c|10|e12fff1e|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|f0c29c
Var #959CF5C4|959cf5c4|10|e3a0000f|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|f0c5c4
Var #959CF5C8|959cf5c8|10|e12fff1e|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|f0c5c8
Var #95761A28|95761a28|10|bf800000|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|c9ea28
Var #95157900|95157900|10|e3a00001|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|694900
Var #95157904|95157904|10|e12fff1e|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|694904
Var #95134908|95134908|10|e3a00001|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|671908
Var #9513490C|9513490c|10|e12fff1e|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|67190c
Var #95E02A38|95e02a38|10|e3a00000|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|133fa38
Var #95E02A3C|95e02a3c|10|e12fff1e|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|133fa3c
Var #959BBA58|959bba58|10|e344007f|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|ef8a58
Var #959BBA5C|959bba5c|10|e12fff1e|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|ef8a5c
Var #959CA3C0|959ca3c0|10|e3a00012|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|f073c0
Var #959CA3C4|959ca3c4|10|e12fff1e|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|f073c4
Var #95760788|95760788|10|e3a00000|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|c9d788
Var #9576078C|9576078c|10|e12fff1e|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|c9d78c
Var #9519E7F4|9519e7f4|10|e3430f46|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|6db7f4
Var #9519E7F8|9519e7f8|10|e12fff1e|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|6db7f8
Var #96D115BC|96d115bc|10|e3a00000|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|224e5bc
Var #96D115C0|96d115c0|10|e12fff1e|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|224e5c0
Var #96A467C0|96a467c0|10|0|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|1f837c0
Var #96A47310|96a47310|10|0|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|1f84310
Var #9A06C280|9a06c280|10|bf800000|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libunity.so|151280
Var #96EA0C08|96ea0c08|10|c1d00000|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|23ddc08
Var #959C111C|959c111c|10|e3a00312|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|efe11c
Var #959C1120|959c1120|10|e12fff1e|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|efe120
Var #9515D704|9515d704|10|e3a00000|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|69a704
Var #9515D708|9515d708|10|e12fff1e|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|69a708
Var #9513504C|9513504c|10|e3a00000|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|67204c
Var #95135050|95135050|10|e12fff1e|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|672050
Var #959C0AD4|959c0ad4|10|e344045c|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|efdad4
Var #959C0AD8|959c0ad8|10|e12fff1e|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|efdad8
Var #95156C58|95156c58|10|437a0000|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|693c58
Var #959C0E74|959c0e74|10|e3a0008a|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|efde74
Var #959C0E78|959c0e78|10|e12fff1e|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|efde78
Var #95D887F4|95d887f4|10|e3a00000|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|12c57f4
Var #95D887F8|95d887f8|10|e12fff1e|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|12c57f8
Var #959C4804|959c4804|10|e3a00000|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|f01804
Var #959C4808|959c4808|10|e12fff1e|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|f01808
Var #95163EF4|95163ef4|10|e3a00000|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|6a0ef4
Var #95163EF8|95163ef8|10|e12fff1e|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|6a0ef8
Var #9512EBFC|9512ebfc|10|e3a00000|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|66bbfc
Var #9512EC00|9512ec00|10|e12fff1e|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|66bc00
Var #96AE01A0|96ae01a0|10|e3a00000|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|201d1a0
Var #96AE01A4|96ae01a4|10|e12fff1e|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|201d1a4
Var #96B8A11C|96b8a11c|10|e3a00000|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|20c711c
Var #96B8A120|96b8a120|10|e12fff1e|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libil2cpp.so|20c7120
Var #9ADBC890|9adbc890|10|bf8e3cc9|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libunity.so|ea1890
Var #9ADBC894|9adbc894|10|bf8e3cc9|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libunity.so|ea1894
Var #9ADBC898|9adbc898|10|bf8e3cc9|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libunity.so|ea1898
Var #9ADBC89C|9adbc89c|10|bf8e3cc9|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libunity.so|ea189c
Var #9ADB079C|9adb079c|10|bf800000|0|0|0|0|rwxp|/data/app/com.dts.freefireth-1/lib/arm/libunity.so|e9579c
]]
  fileData = gg.EXT_STORAGE .. '/[###].dat'
  io.output(fileData):write(b):close()
  gg.loadList(fileData, gg.LOAD_APPEND)
  gg.sleep(50)
  r = gg.getListItems()
  getReset = gg.getValues(r)
  gg.clearList()
  os.remove(fileData)
  gg.setVisible(true)
            
            
function exit1()-- Simple block sstool and unluac -- while(nil)do;local i={}if(i.i)then;i.i=(i.i(i))end;end
gg["toast"]("🅱🆈 🇩 🇴 🇳 🇾  🇫 🇫 ")
print('║▌│█║▌│ █║▌│█│║▌▌║▌║█│▌▌│█║▌║ ')
print(' ¹³ ⁴ ⁵ ⁶ ⁷ ⁸   ³⁵ ⁶² ⁷   ² ¹³ ⁴ ⁵ ⁶ ⁷')
print('')
print('☠️ NÃO CONFIE, NÃO CAIA EM GOLPE📢')
print('😎A ÚNICA EQUIPE😜')
print('👩‍💻 YOTUBER👩‍💻')
print('🤼 EQUIPE DONY FF🤺')
print('CRIADORES : DONY FF')
print(' ¹³ ⁴ ⁵ ⁶ ⁷ ⁸   ³⁵ ⁶² ⁷   ² ¹³ ⁴ ⁵ ⁶ ⁷')
print('▌│█║▌║▌║▌║▌║█│▌║▌║▌║█│▌▌│█║▌║')

os.exit()
end

 
  while true do
if gg.isVisible(true) then
XGCK1 = 1
gg.setVisible(false)
gg.clearResults()
gg.clearResults()
end
if XGCK1 == 1 then
START1()
end
XGCK1 = -1
end