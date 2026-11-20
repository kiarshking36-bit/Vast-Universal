--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local TABLE_TableIndirection = {};
TABLE_TableIndirection["obf_stringchar%0"] = string['char'];
TABLE_TableIndirection["obf_stringbyte%0"] = string['byte'];
TABLE_TableIndirection["obf_stringsub%0"] = string['sub'];
TABLE_TableIndirection["obf_bitlib%0"] = bit32 or bit;
TABLE_TableIndirection["obf_XOR%0"] = TABLE_TableIndirection["obf_bitlib%0"]['bxor'];
TABLE_TableIndirection["obf_tableconcat%0"] = table['concat'];
TABLE_TableIndirection["obf_tableinsert%0"] = table['insert'];
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	TABLE_TableIndirection["result%0"] = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		TABLE_TableIndirection["obf_tableinsert%0"](TABLE_TableIndirection["result%0"], TABLE_TableIndirection["obf_stringchar%0"](TABLE_TableIndirection["obf_XOR%0"](TABLE_TableIndirection["obf_stringbyte%0"](TABLE_TableIndirection["obf_stringsub%0"](LUAOBFUSACTOR_STR, i, i + 1)), TABLE_TableIndirection["obf_stringbyte%0"](TABLE_TableIndirection["obf_stringsub%0"](LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return TABLE_TableIndirection["obf_tableconcat%0"](TABLE_TableIndirection["result%0"]);
end
TABLE_TableIndirection["CONFIG_FILE%0"] = LUAOBFUSACTOR_DECRYPT_STR_0("\231\194\200\49\208\178\212\23\222\205\200\26\197\180\201\24\216\196\149\47\245\180\201", "\126\177\163\187\69\134\219\167");
if not game:IsLoaded() then
	game['Loaded']:Wait();
end
local function svc(name)
	local ok, s = pcall(function()
		return game:GetService(name);
	end);
	if ok then
		return s;
	end
end
TABLE_TableIndirection["CoreGui%0"] = svc(LUAOBFUSACTOR_DECRYPT_STR_0("\0\194\56\192\219\54\196", "\156\67\173\74\165"));
TABLE_TableIndirection["Players%0"] = svc(LUAOBFUSACTOR_DECRYPT_STR_0("\4\187\72\15\185\52\85", "\38\84\215\41\118\220\70"));
TABLE_TableIndirection["RunService%0"] = svc(LUAOBFUSACTOR_DECRYPT_STR_0("\98\3\44\33\251\66\0\43\17\251", "\158\48\118\66\114"));
TABLE_TableIndirection["TweenService%0"] = svc(LUAOBFUSACTOR_DECRYPT_STR_0("\159\51\21\51\125\150\254\185\50\25\53\118", "\155\203\68\112\86\19\197"));
TABLE_TableIndirection["HttpService%0"] = svc(LUAOBFUSACTOR_DECRYPT_STR_0("\110\201\34\236\115\125\247\238\79\222\51", "\152\38\189\86\156\32\24\133"));
TABLE_TableIndirection["UserInputService%0"] = svc(LUAOBFUSACTOR_DECRYPT_STR_0("\201\68\162\84\213\89\183\83\232\100\162\84\234\94\164\67", "\38\156\55\199"));
TABLE_TableIndirection["VirtualUser%0"] = svc(LUAOBFUSACTOR_DECRYPT_STR_0("\158\116\110\60\6\117\246\118\187\120\110", "\35\200\29\28\72\115\20\154"));
TABLE_TableIndirection["GuiService%0"] = svc(LUAOBFUSACTOR_DECRYPT_STR_0("\62\170\216\236\136\62\34\16\188\212", "\84\121\223\177\191\237\76"));
TABLE_TableIndirection["_wait%0"] = 0;
while not TABLE_TableIndirection["Players%0"]['LocalPlayer'] and (TABLE_TableIndirection["_wait%0"] < 100) do
	task.wait(0.1);
	TABLE_TableIndirection["_wait%0"] = TABLE_TableIndirection["_wait%0"] + 1;
end
if not TABLE_TableIndirection["Players%0"]['LocalPlayer'] then
	warn(LUAOBFUSACTOR_DECRYPT_STR_0("\128\96\200\179\46\109\112\237\180\85\200\172\10\92\49\216\190\68\137\180\51\93\53\206\174\66", "\161\219\54\169\192\90\48\80"));
	return;
end
TABLE_TableIndirection["LocalPlayer%0"] = TABLE_TableIndirection["Players%0"]['LocalPlayer'];
task.wait(math.random(30, 80) / 100);
TABLE_TableIndirection["BLOCKED_GAMES%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\24\16\88\117\26\27\80\116\17\27\89\115\24\21\85", "\69\41\34\96")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\237\144\129\82\85\115\229\154\130\94\82", "\75\220\163\183\106\98")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\83\235\219\102\142\87\234\217\102\136\90\227\222\110\141", "\185\98\218\235\87")]=true};
TABLE_TableIndirection["DISCORD_LINK%0"] = LUAOBFUSACTOR_DECRYPT_STR_0("\195\40\51\246\205\240\132\115\35\239\205\169\196\46\35\168\217\173\132\9\113\212\137\162\221\9\4\178\216", "\202\171\92\71\134\190");
TABLE_TableIndirection["currentGameId%0"] = tostring(game.PlaceId);
if TABLE_TableIndirection["BLOCKED_GAMES%0"][TABLE_TableIndirection["currentGameId%0"]] then
	TABLE_TableIndirection["warningGui%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\26\194\62\141\44\207\11\157\32", "\232\73\161\76"));
	TABLE_TableIndirection["warningGui%0"]['Name'] = LUAOBFUSACTOR_DECRYPT_STR_0("\141\216\81\73\40\178\202\75\82\16\168\238\67\79\16\178\215\69", "\126\219\185\34\61");
	TABLE_TableIndirection["warningGui%0"]['ResetOnSpawn'] = false;
	TABLE_TableIndirection["warningGui%0"]['IgnoreGuiInset'] = true;
	TABLE_TableIndirection["warningGui%0"]['ZIndexBehavior'] = Enum['ZIndexBehavior']['Sibling'];
	TABLE_TableIndirection["warningGui%0"]['DisplayOrder'] = 100;
	TABLE_TableIndirection["warningGui%0"]['Parent'] = TABLE_TableIndirection["CoreGui%0"];
	TABLE_TableIndirection["mainFrame%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\42\220\95\127\123", "\135\108\174\62\18\30\23\147"));
	TABLE_TableIndirection["mainFrame%0"]['Name'] = LUAOBFUSACTOR_DECRYPT_STR_0("\155\232\35\197\62\188\50\202\179", "\167\214\137\74\171\120\206\83");
	TABLE_TableIndirection["mainFrame%0"]['Size'] = UDim2.new(0, 450, 0, 280);
	TABLE_TableIndirection["mainFrame%0"]['Position'] = UDim2.new(0.5, -225, 0.5, -140);
	TABLE_TableIndirection["mainFrame%0"]['BackgroundColor3'] = Color3.fromRGB(11, 14, 12);
	TABLE_TableIndirection["mainFrame%0"]['BorderSizePixel'] = 0;
	TABLE_TableIndirection["mainFrame%0"]['Parent'] = TABLE_TableIndirection["warningGui%0"];
	TABLE_TableIndirection["corner%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\190\217\17\82\234\169\142\226", "\199\235\144\82\61\152"));
	TABLE_TableIndirection["corner%0"]['CornerRadius'] = UDim.new(0, 8);
	TABLE_TableIndirection["corner%0"]['Parent'] = TABLE_TableIndirection["mainFrame%0"];
	TABLE_TableIndirection["stroke%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\50\63\138\63\21\25\178\46", "\75\103\118\217"));
	TABLE_TableIndirection["stroke%0"]['Color'] = Color3.fromRGB(34, 42, 36);
	TABLE_TableIndirection["stroke%0"]['Thickness'] = 1;
	TABLE_TableIndirection["stroke%0"]['Parent'] = TABLE_TableIndirection["mainFrame%0"];
	TABLE_TableIndirection["icon%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\243\81\104\0\149\31\197\81\124", "\126\167\52\16\116\217"));
	TABLE_TableIndirection["icon%0"]['Size'] = UDim2.new(0, 60, 0, 60);
	TABLE_TableIndirection["icon%0"]['Position'] = UDim2.new(0.5, -30, 0, 30);
	TABLE_TableIndirection["icon%0"]['BackgroundColor3'] = Color3.fromRGB(226, 94, 94);
	TABLE_TableIndirection["icon%0"]['Text'] = "⚠";
	TABLE_TableIndirection["icon%0"]['TextColor3'] = Color3.fromRGB(255, 255, 255);
	TABLE_TableIndirection["icon%0"]['Font'] = Enum['Font']['GothamBold'];
	TABLE_TableIndirection["icon%0"]['TextSize'] = 40;
	TABLE_TableIndirection["icon%0"]['BorderSizePixel'] = 0;
	TABLE_TableIndirection["icon%0"]['Parent'] = TABLE_TableIndirection["mainFrame%0"];
	TABLE_TableIndirection["iconCorner%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\253\7\3\143\166\23\249\218", "\156\168\78\64\224\212\121"));
	TABLE_TableIndirection["iconCorner%0"]['CornerRadius'] = UDim.new(1, 0);
	TABLE_TableIndirection["iconCorner%0"]['Parent'] = TABLE_TableIndirection["icon%0"];
	TABLE_TableIndirection["warningText%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\51\235\189\218\43\239\167\203\11", "\174\103\142\197"));
	TABLE_TableIndirection["warningText%0"]['Size'] = UDim2.new(1, -40, 0, 60);
	TABLE_TableIndirection["warningText%0"]['Position'] = UDim2.new(0, 20, 0, 110);
	TABLE_TableIndirection["warningText%0"]['BackgroundTransparency'] = 1;
	TABLE_TableIndirection["warningText%0"]['Text'] = "We have another script for this game\ncheck discord";
	TABLE_TableIndirection["warningText%0"]['TextColor3'] = Color3.fromRGB(226, 233, 228);
	TABLE_TableIndirection["warningText%0"]['Font'] = Enum['Font']['GothamMedium'];
	TABLE_TableIndirection["warningText%0"]['TextSize'] = 16;
	TABLE_TableIndirection["warningText%0"]['TextWrapped'] = true;
	TABLE_TableIndirection["warningText%0"]['Parent'] = TABLE_TableIndirection["mainFrame%0"];
	TABLE_TableIndirection["joinBtn%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\45\71\44\7\75\236\66\39\81", "\152\54\72\63\88\69\62"));
	TABLE_TableIndirection["joinBtn%0"]['Size'] = UDim2.new(1, -40, 0, 45);
	TABLE_TableIndirection["joinBtn%0"]['Position'] = UDim2.new(0, 20, 0, 190);
	TABLE_TableIndirection["joinBtn%0"]['BackgroundColor3'] = Color3.fromRGB(104, 222, 142);
	TABLE_TableIndirection["joinBtn%0"]['Text'] = LUAOBFUSACTOR_DECRYPT_STR_0("\254\203\231\82\148\203\251\78\148\192\231\79\215\203\252\88\148\215\235\78\194\193\252\28\210\203\252\28\217\203\252\89\148\208\230\85\218\195\253", "\60\180\164\142");
	TABLE_TableIndirection["joinBtn%0"]['TextColor3'] = Color3.fromRGB(8, 16, 11);
	TABLE_TableIndirection["joinBtn%0"]['Font'] = Enum['Font']['GothamBold'];
	TABLE_TableIndirection["joinBtn%0"]['TextSize'] = 14;
	TABLE_TableIndirection["joinBtn%0"]['BorderSizePixel'] = 0;
	TABLE_TableIndirection["joinBtn%0"]['AutoButtonColor'] = false;
	TABLE_TableIndirection["joinBtn%0"]['Parent'] = TABLE_TableIndirection["mainFrame%0"];
	TABLE_TableIndirection["joinCorner%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\109\119\38\38\53\227\23\74", "\114\56\62\101\73\71\141"));
	TABLE_TableIndirection["joinCorner%0"]['CornerRadius'] = UDim.new(0, 6);
	TABLE_TableIndirection["joinCorner%0"]['Parent'] = TABLE_TableIndirection["joinBtn%0"];
	TABLE_TableIndirection["joinBtn%0"]['MouseEnter']:Connect(function()
		TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["joinBtn%0"], TweenInfo.new(0.15), {[LUAOBFUSACTOR_DECRYPT_STR_0("\154\232\216\207\191\251\212\209\182\237\248\203\180\230\201\151", "\164\216\137\187")]=Color3.fromRGB(124, 242, 162)}):Play();
	end);
	TABLE_TableIndirection["joinBtn%0"]['MouseLeave']:Connect(function()
		TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["joinBtn%0"], TweenInfo.new(0.15), {[LUAOBFUSACTOR_DECRYPT_STR_0("\240\231\50\185\161\236\4\199\232\53\145\169\242\4\192\181", "\107\178\134\81\210\198\158")]=Color3.fromRGB(104, 222, 142)}):Play();
	end);
	TABLE_TableIndirection["choiceFrame%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\28\131\203\175", "\202\88\110\226\166"));
	TABLE_TableIndirection["choiceFrame%0"]['Name'] = LUAOBFUSACTOR_DECRYPT_STR_0("\224\7\141\254\201\198\41\144\246\199\198", "\170\163\111\226\151");
	TABLE_TableIndirection["choiceFrame%0"]['Size'] = UDim2.new(1, -40, 0, 60);
	TABLE_TableIndirection["choiceFrame%0"]['Position'] = UDim2.new(0, 20, 0, 190);
	TABLE_TableIndirection["choiceFrame%0"]['BackgroundColor3'] = Color3.fromRGB(23, 28, 24);
	TABLE_TableIndirection["choiceFrame%0"]['BorderSizePixel'] = 0;
	TABLE_TableIndirection["choiceFrame%0"]['Visible'] = false;
	TABLE_TableIndirection["choiceFrame%0"]['Parent'] = TABLE_TableIndirection["mainFrame%0"];
	TABLE_TableIndirection["choiceCorner%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\36\25\145\55\92\57\44\3", "\73\113\80\210\88\46\87"));
	TABLE_TableIndirection["choiceCorner%0"]['CornerRadius'] = UDim.new(0, 6);
	TABLE_TableIndirection["choiceCorner%0"]['Parent'] = TABLE_TableIndirection["choiceFrame%0"];
	TABLE_TableIndirection["getLinkBtn%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\181\41\213\6\197\148\56\217\29\233", "\135\225\76\173\114"));
	TABLE_TableIndirection["getLinkBtn%0"]['Size'] = UDim2.new(0.48, 0, 1, -10);
	TABLE_TableIndirection["getLinkBtn%0"]['Position'] = UDim2.new(0, 5, 0, 5);
	TABLE_TableIndirection["getLinkBtn%0"]['BackgroundColor3'] = Color3.fromRGB(104, 222, 142);
	TABLE_TableIndirection["getLinkBtn%0"]['Text'] = LUAOBFUSACTOR_DECRYPT_STR_0("\61\232\172\240\128\180\169\17", "\199\122\141\216\208\204\221");
	TABLE_TableIndirection["getLinkBtn%0"]['TextColor3'] = Color3.fromRGB(8, 16, 11);
	TABLE_TableIndirection["getLinkBtn%0"]['Font'] = Enum['Font']['GothamBold'];
	TABLE_TableIndirection["getLinkBtn%0"]['TextSize'] = 13;
	TABLE_TableIndirection["getLinkBtn%0"]['BorderSizePixel'] = 0;
	TABLE_TableIndirection["getLinkBtn%0"]['AutoButtonColor'] = false;
	TABLE_TableIndirection["getLinkBtn%0"]['Parent'] = TABLE_TableIndirection["choiceFrame%0"];
	TABLE_TableIndirection["getLinkCorner%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\152\244\51\255\106\248\168\207", "\150\205\189\112\144\24"));
	TABLE_TableIndirection["getLinkCorner%0"]['CornerRadius'] = UDim.new(0, 4);
	TABLE_TableIndirection["getLinkCorner%0"]['Parent'] = TABLE_TableIndirection["getLinkBtn%0"];
	TABLE_TableIndirection["notNowBtn%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\17\129\167\88\38\157\5\4\42\138", "\112\69\228\223\44\100\232\113"));
	TABLE_TableIndirection["notNowBtn%0"]['Size'] = UDim2.new(0.48, 0, 1, -10);
	TABLE_TableIndirection["notNowBtn%0"]['Position'] = UDim2.new(0.52, 0, 0, 5);
	TABLE_TableIndirection["notNowBtn%0"]['BackgroundColor3'] = Color3.fromRGB(40, 40, 55);
	TABLE_TableIndirection["notNowBtn%0"]['Text'] = LUAOBFUSACTOR_DECRYPT_STR_0("\250\16\19\147\152\115\145", "\230\180\127\103\179\214\28");
	TABLE_TableIndirection["notNowBtn%0"]['TextColor3'] = Color3.fromRGB(226, 233, 228);
	TABLE_TableIndirection["notNowBtn%0"]['Font'] = Enum['Font']['GothamMedium'];
	TABLE_TableIndirection["notNowBtn%0"]['TextSize'] = 13;
	TABLE_TableIndirection["notNowBtn%0"]['BorderSizePixel'] = 0;
	TABLE_TableIndirection["notNowBtn%0"]['AutoButtonColor'] = false;
	TABLE_TableIndirection["notNowBtn%0"]['Parent'] = TABLE_TableIndirection["choiceFrame%0"];
	TABLE_TableIndirection["notNowCorner%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\185\44\124\73\246\79\229\158", "\128\236\101\63\38\132\33"));
	TABLE_TableIndirection["notNowCorner%0"]['CornerRadius'] = UDim.new(0, 4);
	TABLE_TableIndirection["notNowCorner%0"]['Parent'] = TABLE_TableIndirection["notNowBtn%0"];
	TABLE_TableIndirection["joinBtn%0"]['MouseButton1Click']:Connect(function()
		TABLE_TableIndirection["joinBtn%0"]['Visible'] = false;
		TABLE_TableIndirection["choiceFrame%0"]['Visible'] = true;
	end);
	TABLE_TableIndirection["getLinkBtn%0"]['MouseButton1Click']:Connect(function()
		if setclipboard then
			setclipboard(TABLE_TableIndirection["DISCORD_LINK%0"]);
			TABLE_TableIndirection["getLinkBtn%0"]['Text'] = LUAOBFUSACTOR_DECRYPT_STR_0("\143\166\1\77\179\239\142", "\175\204\201\113\36\214\139");
			task.wait(2);
		else
			game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\96\217\60\239\1\85\218\60\223\1", "\100\39\172\85\188")):InspectAndPurchaseBundle();
		end
		TABLE_TableIndirection["warningGui%0"]:Destroy();
	end);
	TABLE_TableIndirection["notNowBtn%0"]['MouseButton1Click']:Connect(function()
		TABLE_TableIndirection["warningGui%0"]:Destroy();
		loadMainScript();
	end);
	TABLE_TableIndirection["mainFrame%0"]['GroupTransparency'] = 1;
	TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["mainFrame%0"], TweenInfo.new(0.3, Enum['EasingStyle'].Quint, Enum['EasingDirection'].Out), {[LUAOBFUSACTOR_DECRYPT_STR_0("\138\106\182\149\35\153\106\184\142\32\189\121\171\133\61\174\97", "\83\205\24\217\224")]=0}):Play();
	return;
end
function loadMainScript()
	TABLE_TableIndirection["hasDrawing%0"] = false;
	local DrawingNew = function()
		return nil;
	end;
	pcall(function()
		if (Drawing and (type(Drawing.new) == LUAOBFUSACTOR_DECRYPT_STR_0("\224\208\195\62\242\204\194\51", "\93\134\165\173"))) then
			DrawingNew = Drawing['new'];
			TABLE_TableIndirection["hasDrawing%0"] = true;
		elseif (syn and syn['drawing'] and syn['drawing']['new']) then
			DrawingNew = syn['drawing']['new'];
			TABLE_TableIndirection["hasDrawing%0"] = true;
		end
	end);
	if not TABLE_TableIndirection["hasDrawing%0"] then
		warn(LUAOBFUSACTOR_DECRYPT_STR_0("\133\196\192\209\46\243\242\90\172\243\214\203\52\201\242\95\142\219\129\204\53\218\242\127\168\243\200\206\59\204\190\123", "\30\222\146\161\162\90\174\210"));
	end
	local function newDrawing(class)
		if not TABLE_TableIndirection["hasDrawing%0"] then
			return nil;
		end
		local ok, d = pcall(DrawingNew, class);
		if (ok and d) then
			return d;
		end
	end
	TABLE_TableIndirection["targetParent%0"] = (pcall(function()
		return gethui();
	end) and gethui()) or TABLE_TableIndirection["CoreGui%0"];
	if not pcall(function()
		TABLE_TableIndirection["f%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\195\65\124\14\224\92", "\106\133\46\16"), TABLE_TableIndirection["targetParent%0"]);
		TABLE_TableIndirection["f%0"]:Destroy();
	end) then
		TABLE_TableIndirection["targetParent%0"] = TABLE_TableIndirection["LocalPlayer%0"]:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\104\44\114\229\95\82\127\53\122", "\32\56\64\19\156\58"));
	end
	local function safe(fn, ...)
		local ok, a, b, c = pcall(fn, ...);
		if ok then
			return a, b, c;
		end
	end
	local function rnd()
		return tostring(math.random(1, 9999999));
	end
	local function randName(base)
		return (base or "V") .. rnd();
	end
	TABLE_TableIndirection["Themes%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\127\197\224\68\91\254\132", "\224\58\168\133\54\58\146")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\91\81", "\107\57\54\43\157\21\230\231")]=Color3.fromRGB(11, 14, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\200\158\3\243\184\223\202", "\175\187\235\113\149\217\188")]=Color3.fromRGB(15, 19, 16),[LUAOBFUSACTOR_DECRYPT_STR_0("\46\174\136\95\230\125", "\24\92\207\225\44\131\25")]=Color3.fromRGB(23, 28, 24),[LUAOBFUSACTOR_DECRYPT_STR_0("\71\218\182\73", "\29\43\179\216\44\123")]=Color3.fromRGB(34, 42, 36),[LUAOBFUSACTOR_DECRYPT_STR_0("\169\220\56\88", "\44\221\185\64")]=Color3.fromRGB(226, 233, 228),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\242\92\90\119", "\19\97\135\40\63")]=Color3.fromRGB(122, 134, 125),[LUAOBFUSACTOR_DECRYPT_STR_0("\170\85\62", "\81\206\60\83\91\79")]=Color3.fromRGB(76, 86, 79),[LUAOBFUSACTOR_DECRYPT_STR_0("\79\168\211\119\33\215", "\196\46\203\176\18\79\163\45")]=Color3.fromRGB(104, 222, 142),[LUAOBFUSACTOR_DECRYPT_STR_0("\177\44\117", "\143\216\66\30\126\68\155")]=Color3.fromRGB(8, 16, 11),[LUAOBFUSACTOR_DECRYPT_STR_0("\174\201\3\204\192\177", "\129\202\168\109\171\165\195\183")]=Color3.fromRGB(226, 94, 94)},[LUAOBFUSACTOR_DECRYPT_STR_0("\1\74\62\213\205\27\232", "\134\66\56\87\184\190\116")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\62\54", "\85\92\81\105\219\121\139\65")]=Color3.fromRGB(14, 10, 10),[LUAOBFUSACTOR_DECRYPT_STR_0("\238\166\66\67\125\220\248", "\191\157\211\48\37\28")]=Color3.fromRGB(19, 14, 14),[LUAOBFUSACTOR_DECRYPT_STR_0("\205\30\253\15\63\219", "\90\191\127\148\124")]=Color3.fromRGB(28, 20, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\116\142\32\18", "\119\24\231\78")]=Color3.fromRGB(42, 32, 32),[LUAOBFUSACTOR_DECRYPT_STR_0("\150\40\189\94", "\113\226\77\197\42\188\32")]=Color3.fromRGB(233, 226, 226),[LUAOBFUSACTOR_DECRYPT_STR_0("\55\3\224\176\62", "\213\90\118\148")]=Color3.fromRGB(134, 122, 122),[LUAOBFUSACTOR_DECRYPT_STR_0("\95\39\185", "\45\59\78\212\54")]=Color3.fromRGB(86, 76, 76),[LUAOBFUSACTOR_DECRYPT_STR_0("\17\85\128\142\136\58", "\144\112\54\227\235\230\78\205")]=Color3.fromRGB(255, 80, 90),[LUAOBFUSACTOR_DECRYPT_STR_0("\186\38\4", "\59\211\72\111\156\176")]=Color3.fromRGB(16, 8, 8),[LUAOBFUSACTOR_DECRYPT_STR_0("\74\134\237\42\75\149", "\77\46\231\131")]=Color3.fromRGB(255, 170, 90)},[LUAOBFUSACTOR_DECRYPT_STR_0("\149\87\179\65\180", "\32\218\52\214")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\76\16", "\58\46\119\81\200\145\208\37")]=Color3.fromRGB(10, 12, 16),[LUAOBFUSACTOR_DECRYPT_STR_0("\56\153\34\170\168\190\51", "\86\75\236\80\204\201\221")]=Color3.fromRGB(13, 17, 22),[LUAOBFUSACTOR_DECRYPT_STR_0("\96\64\126\150\251\143", "\235\18\33\23\229\158")]=Color3.fromRGB(20, 26, 34),[LUAOBFUSACTOR_DECRYPT_STR_0("\92\179\207\190", "\219\48\218\161")]=Color3.fromRGB(32, 40, 52),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\116\100\93", "\128\132\17\28\41\187\47")]=Color3.fromRGB(226, 232, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\39\18\63\89", "\61\97\82\102\90")]=Color3.fromRGB(122, 132, 148),[LUAOBFUSACTOR_DECRYPT_STR_0("\168\39\166", "\105\204\78\203\43\167\55\126")]=Color3.fromRGB(76, 84, 98),[LUAOBFUSACTOR_DECRYPT_STR_0("\164\169\32\27\29\16", "\49\197\202\67\126\115\100\167")]=Color3.fromRGB(80, 170, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\62\85\212", "\62\87\59\191\73\224\54")]=Color3.fromRGB(8, 10, 14),[LUAOBFUSACTOR_DECRYPT_STR_0("\227\3\244\206\226\16", "\169\135\98\154")]=Color3.fromRGB(255, 100, 100)},[LUAOBFUSACTOR_DECRYPT_STR_0("\248\98\42\71\248\39", "\168\171\23\68\52\157\83")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\246\118", "\231\148\17\149\205\69\77")]=Color3.fromRGB(14, 11, 10),[LUAOBFUSACTOR_DECRYPT_STR_0("\147\178\213\253\86\252\133", "\159\224\199\167\155\55")]=Color3.fromRGB(20, 15, 14),[LUAOBFUSACTOR_DECRYPT_STR_0("\229\242\53\193\242\247", "\178\151\147\92")]=Color3.fromRGB(29, 22, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\128\244\66\55", "\26\236\157\44\82\114\44")]=Color3.fromRGB(44, 34, 32),[LUAOBFUSACTOR_DECRYPT_STR_0("\62\43\205\79", "\59\74\78\181")]=Color3.fromRGB(237, 228, 224),[LUAOBFUSACTOR_DECRYPT_STR_0("\40\196\78\95\183", "\211\69\177\58\58")]=Color3.fromRGB(138, 124, 118),[LUAOBFUSACTOR_DECRYPT_STR_0("\179\236\116", "\171\215\133\25\149\137")]=Color3.fromRGB(88, 78, 74),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\203\49\255\225\36", "\34\129\168\82\154\143\80\156")]=Color3.fromRGB(255, 150, 80),[LUAOBFUSACTOR_DECRYPT_STR_0("\140\188\56", "\233\229\210\83\107\40\46")]=Color3.fromRGB(16, 8, 8),[LUAOBFUSACTOR_DECRYPT_STR_0("\197\67\60\209\0\211", "\101\161\34\82\182")]=Color3.fromRGB(255, 80, 80)},[LUAOBFUSACTOR_DECRYPT_STR_0("\222\4\86\242\222\246", "\78\136\109\57\158\187\130\226")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\60\56", "\145\94\95\153")]=Color3.fromRGB(12, 11, 16),[LUAOBFUSACTOR_DECRYPT_STR_0("\238\216\6\211\79\180\248", "\215\157\173\116\181\46")]=Color3.fromRGB(16, 15, 22),[LUAOBFUSACTOR_DECRYPT_STR_0("\39\181\130\225\223\49", "\186\85\212\235\146")]=Color3.fromRGB(24, 22, 32),[LUAOBFUSACTOR_DECRYPT_STR_0("\206\136\24\251", "\56\162\225\118\158\89\142")]=Color3.fromRGB(38, 34, 50),[LUAOBFUSACTOR_DECRYPT_STR_0("\72\0\216\187", "\184\60\101\160\207\66")]=Color3.fromRGB(230, 228, 238),[LUAOBFUSACTOR_DECRYPT_STR_0("\60\151\104\185\53", "\220\81\226\28")]=Color3.fromRGB(128, 124, 140),[LUAOBFUSACTOR_DECRYPT_STR_0("\23\220\143", "\167\115\181\226\155\138")]=Color3.fromRGB(80, 78, 92),[LUAOBFUSACTOR_DECRYPT_STR_0("\227\33\228\89\117\101", "\166\130\66\135\60\27\17")]=Color3.fromRGB(180, 120, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\77\68\197", "\80\36\42\174\21")]=Color3.fromRGB(10, 8, 14),[LUAOBFUSACTOR_DECRYPT_STR_0("\74\17\57\125\75\2", "\26\46\112\87")]=Color3.fromRGB(255, 100, 100)},[LUAOBFUSACTOR_DECRYPT_STR_0("\148\44\165\123", "\212\217\67\203\20\223\223\37")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\184\138", "\178\218\237\200")]=Color3.fromRGB(10, 10, 10),[LUAOBFUSACTOR_DECRYPT_STR_0("\165\160\244\214\183\182\227", "\176\214\213\134")]=Color3.fromRGB(16, 16, 16),[LUAOBFUSACTOR_DECRYPT_STR_0("\230\172\191\199\173\82", "\57\148\205\214\180\200\54")]=Color3.fromRGB(24, 24, 24),[LUAOBFUSACTOR_DECRYPT_STR_0("\30\244\59\49", "\22\114\157\85\84")]=Color3.fromRGB(40, 40, 40),[LUAOBFUSACTOR_DECRYPT_STR_0("\208\206\11\208", "\200\164\171\115\164\61\150")]=Color3.fromRGB(235, 235, 235),[LUAOBFUSACTOR_DECRYPT_STR_0("\179\225\23\64\135", "\227\222\148\99\37")]=Color3.fromRGB(140, 140, 140),[LUAOBFUSACTOR_DECRYPT_STR_0("\55\91\95", "\153\83\50\50\150")]=Color3.fromRGB(90, 90, 90),[LUAOBFUSACTOR_DECRYPT_STR_0("\92\117\112\25\125\191", "\45\61\22\19\124\19\203")]=Color3.fromRGB(230, 230, 230),[LUAOBFUSACTOR_DECRYPT_STR_0("\200\28\6", "\217\161\114\109\149\98\16")]=Color3.fromRGB(10, 10, 10),[LUAOBFUSACTOR_DECRYPT_STR_0("\22\33\54\123\185\102", "\20\114\64\88\28\220")]=Color3.fromRGB(255, 90, 90)},[LUAOBFUSACTOR_DECRYPT_STR_0("\18\24\208\177\234", "\221\81\97\178\212\152\176")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\207\224", "\122\173\135\125\155")]=Color3.fromRGB(8, 8, 14),[LUAOBFUSACTOR_DECRYPT_STR_0("\151\212\18\191\62\50\205", "\168\228\161\96\217\95\81")]=Color3.fromRGB(12, 12, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\208\39\79\42\83", "\55\187\177\78\60\79")]=Color3.fromRGB(20, 18, 30),[LUAOBFUSACTOR_DECRYPT_STR_0("\33\199\81\238", "\224\77\174\63\139\38\175")]=Color3.fromRGB(35, 30, 55),[LUAOBFUSACTOR_DECRYPT_STR_0("\144\68\64\58", "\78\228\33\56")]=Color3.fromRGB(230, 228, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\195\107\166\6\129", "\229\174\30\210\99")]=Color3.fromRGB(130, 125, 155),[LUAOBFUSACTOR_DECRYPT_STR_0("\31\228\139", "\89\123\141\230\49\141\93")]=Color3.fromRGB(80, 75, 100),[LUAOBFUSACTOR_DECRYPT_STR_0("\242\114\245\9\30\94", "\42\147\17\150\108\112")]=Color3.fromRGB(0, 240, 220),[LUAOBFUSACTOR_DECRYPT_STR_0("\6\168\38", "\136\111\198\77\31\135")]=Color3.fromRGB(8, 8, 14),[LUAOBFUSACTOR_DECRYPT_STR_0("\6\8\169\81\184\246", "\201\98\105\199\54\221\132\119")]=Color3.fromRGB(255, 60, 180)},[LUAOBFUSACTOR_DECRYPT_STR_0("\158\3\143\37", "\204\217\108\227\65\98\85")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\92\196", "\160\62\163\149\133\76")]=Color3.fromRGB(14, 13, 10),[LUAOBFUSACTOR_DECRYPT_STR_0("\197\181\31\41\194\213\165", "\163\182\192\109\79")]=Color3.fromRGB(19, 18, 14),[LUAOBFUSACTOR_DECRYPT_STR_0("\38\39\9\211\240\48", "\149\84\70\96\160")]=Color3.fromRGB(28, 26, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\15\3\232", "\141\88\102\109")]=Color3.fromRGB(44, 40, 30),[LUAOBFUSACTOR_DECRYPT_STR_0("\167\86\210\100", "\161\211\51\170\16\122\93\53")]=Color3.fromRGB(238, 232, 220),[LUAOBFUSACTOR_DECRYPT_STR_0("\246\187\166\45\255", "\72\155\206\210")]=Color3.fromRGB(140, 132, 115),[LUAOBFUSACTOR_DECRYPT_STR_0("\66\115\89", "\83\38\26\52\110")]=Color3.fromRGB(88, 82, 68),[LUAOBFUSACTOR_DECRYPT_STR_0("\89\20\36\67\86\3", "\38\56\119\71")]=Color3.fromRGB(240, 200, 100),[LUAOBFUSACTOR_DECRYPT_STR_0("\250\225\83", "\54\147\143\56\182\69")]=Color3.fromRGB(14, 12, 8),[LUAOBFUSACTOR_DECRYPT_STR_0("\210\128\241\78\218\196", "\191\182\225\159\41")]=Color3.fromRGB(240, 80, 80)},[LUAOBFUSACTOR_DECRYPT_STR_0("\15\0\41\86\158\139\195", "\162\75\114\72\53\235\231")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\142\59", "\98\236\92\36\130\51")]=Color3.fromRGB(14, 14, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\183\12\30\188\68\171\176", "\80\196\121\108\218\37\200\213")]=Color3.fromRGB(20, 20, 30),[LUAOBFUSACTOR_DECRYPT_STR_0("\18\114\11\108\78\10", "\234\96\19\98\31\43\110")]=Color3.fromRGB(30, 30, 44),[LUAOBFUSACTOR_DECRYPT_STR_0("\10\22\92\194", "\235\102\127\50\167\204\18")]=Color3.fromRGB(48, 48, 68),[LUAOBFUSACTOR_DECRYPT_STR_0("\68\164\237\55", "\78\48\193\149\67\36")]=Color3.fromRGB(248, 248, 242),[LUAOBFUSACTOR_DECRYPT_STR_0("\61\11\148\29\69", "\33\80\126\224\120")]=Color3.fromRGB(150, 150, 170),[LUAOBFUSACTOR_DECRYPT_STR_0("\232\161\14", "\60\140\200\99\164")]=Color3.fromRGB(90, 90, 110),[LUAOBFUSACTOR_DECRYPT_STR_0("\134\247\7\35\172\147", "\194\231\148\100\70")]=Color3.fromRGB(189, 147, 249),[LUAOBFUSACTOR_DECRYPT_STR_0("\79\66\202", "\168\38\44\161\195\150")]=Color3.fromRGB(14, 14, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\132\253\140\113\53\250", "\118\224\156\226\22\80\136\214")]=Color3.fromRGB(255, 85, 85)},[LUAOBFUSACTOR_DECRYPT_STR_0("\108\225\75\132", "\224\34\142\57")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\220\160", "\110\190\199\165\189\19\145\61")]=Color3.fromRGB(14, 17, 22),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\254\101\238\138\196\223", "\167\186\139\23\136\235")]=Color3.fromRGB(20, 24, 31),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\180\129\30\31\177", "\109\122\213\232")]=Color3.fromRGB(30, 36, 46),[LUAOBFUSACTOR_DECRYPT_STR_0("\226\254\172\53", "\80\142\151\194")]=Color3.fromRGB(48, 56, 70),[LUAOBFUSACTOR_DECRYPT_STR_0("\23\195\111\88", "\44\99\166\23")]=Color3.fromRGB(216, 222, 233),[LUAOBFUSACTOR_DECRYPT_STR_0("\113\226\61\51\55", "\196\28\151\73\86\83")]=Color3.fromRGB(136, 146, 166),[LUAOBFUSACTOR_DECRYPT_STR_0("\247\10\36", "\22\147\99\73\112\226\56\120")]=Color3.fromRGB(80, 90, 105),[LUAOBFUSACTOR_DECRYPT_STR_0("\185\118\225\240\131\172", "\237\216\21\130\149")]=Color3.fromRGB(136, 192, 208),[LUAOBFUSACTOR_DECRYPT_STR_0("\139\64\84", "\62\226\46\63\63\208\169")]=Color3.fromRGB(14, 17, 22),[LUAOBFUSACTOR_DECRYPT_STR_0("\225\24\91\132\26\31", "\62\133\121\53\227\127\109\79")]=Color3.fromRGB(191, 97, 106)},[LUAOBFUSACTOR_DECRYPT_STR_0("\61\29\60\225", "\194\112\116\82\149\182\206")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\59\175", "\110\89\200\44\120\160\130")]=Color3.fromRGB(10, 16, 15),[LUAOBFUSACTOR_DECRYPT_STR_0("\184\214\89\64\66\73\62", "\45\203\163\43\38\35\42\91")]=Color3.fromRGB(14, 22, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\192\132\213\48\130\173", "\52\178\229\188\67\231\201")]=Color3.fromRGB(22, 32, 30),[LUAOBFUSACTOR_DECRYPT_STR_0("\45\72\94\1", "\67\65\33\48\100\151\60")]=Color3.fromRGB(36, 52, 48),[LUAOBFUSACTOR_DECRYPT_STR_0("\203\226\182\204", "\147\191\135\206\184")]=Color3.fromRGB(224, 240, 236),[LUAOBFUSACTOR_DECRYPT_STR_0("\137\61\178\196\220", "\210\228\72\198\161\184\51")]=Color3.fromRGB(124, 150, 142),[LUAOBFUSACTOR_DECRYPT_STR_0("\50\64\254", "\174\86\41\147\112\19")]=Color3.fromRGB(76, 94, 88),[LUAOBFUSACTOR_DECRYPT_STR_0("\90\3\142\14\43\27", "\203\59\96\237\107\69\111\113")]=Color3.fromRGB(94, 240, 196),[LUAOBFUSACTOR_DECRYPT_STR_0("\45\24\167", "\183\68\118\204\129\81\144")]=Color3.fromRGB(8, 16, 14),[LUAOBFUSACTOR_DECRYPT_STR_0("\10\172\126\227\14\144", "\226\110\205\16\132\107")]=Color3.fromRGB(255, 100, 100)},[LUAOBFUSACTOR_DECRYPT_STR_0("\199\194\246\220\79\239\198\242", "\33\139\163\128\185")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\85\95", "\190\55\56\100")]=Color3.fromRGB(16, 14, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\69\186\46\24\18\224\246", "\147\54\207\92\126\115\131")]=Color3.fromRGB(22, 20, 28),[LUAOBFUSACTOR_DECRYPT_STR_0("\31\48\60\110\8\122", "\30\109\81\85\29\109")]=Color3.fromRGB(32, 28, 42),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\120\90\179", "\156\159\17\52\214\86\190")]=Color3.fromRGB(50, 44, 64),[LUAOBFUSACTOR_DECRYPT_STR_0("\186\234\165\168", "\220\206\143\221")]=Color3.fromRGB(238, 232, 246),[LUAOBFUSACTOR_DECRYPT_STR_0("\139\104\57\18\220", "\178\230\29\77\119\184\172")]=Color3.fromRGB(148, 138, 168),[LUAOBFUSACTOR_DECRYPT_STR_0("\241\183\7", "\152\149\222\106\123\23")]=Color3.fromRGB(90, 84, 106),[LUAOBFUSACTOR_DECRYPT_STR_0("\220\37\245\70\187\201", "\213\189\70\150\35")]=Color3.fromRGB(200, 160, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\70\91\127", "\104\47\53\20")]=Color3.fromRGB(16, 14, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\167\77\143\27\185\29", "\111\195\44\225\124\220")]=Color3.fromRGB(255, 110, 110)}};
	TABLE_TableIndirection["ThemeOrder%0"] = {LUAOBFUSACTOR_DECRYPT_STR_0("\253\75\5\97\170\167\220", "\203\184\38\96\19\203"),LUAOBFUSACTOR_DECRYPT_STR_0("\26\97\112\76\221\54\125", "\174\89\19\25\33"),LUAOBFUSACTOR_DECRYPT_STR_0("\0\17\87\79\249", "\107\79\114\50\46\151\231"),LUAOBFUSACTOR_DECRYPT_STR_0("\10\179\187\58\143\45", "\160\89\198\213\73\234\89\215"),LUAOBFUSACTOR_DECRYPT_STR_0("\126\120\187\242\192\92", "\165\40\17\212\158"),LUAOBFUSACTOR_DECRYPT_STR_0("\200\214\6\60", "\70\133\185\104\83"),LUAOBFUSACTOR_DECRYPT_STR_0("\39\92\70\47\219", "\169\100\37\36\74"),LUAOBFUSACTOR_DECRYPT_STR_0("\39\136\174\84", "\48\96\231\194"),LUAOBFUSACTOR_DECRYPT_STR_0("\236\72\15\46\12\212\174", "\227\168\58\110\77\121\184\207"),LUAOBFUSACTOR_DECRYPT_STR_0("\85\51\173\68", "\197\27\92\223\32\209\187\17"),LUAOBFUSACTOR_DECRYPT_STR_0("\46\86\205\239", "\155\99\63\163"),LUAOBFUSACTOR_DECRYPT_STR_0("\174\208\183\136\183\128\135\195", "\228\226\177\193\237\217")};
	TABLE_TableIndirection["C%0"] = {};
	for k, v in pairs(TABLE_TableIndirection["Themes%0"].Emerald) do
		TABLE_TableIndirection["C%0"][k] = v;
	end
	local function new(class, props, children)
		TABLE_TableIndirection["inst%0"] = Instance.new(class);
		TABLE_TableIndirection["parent%0"] = nil;
		for k, v in pairs(props or {}) do
			if (k == LUAOBFUSACTOR_DECRYPT_STR_0("\4\177\49\227\58\164", "\134\84\208\67")) then
				TABLE_TableIndirection["parent%0"] = v;
			else
				safe(function()
					TABLE_TableIndirection["inst%0"][k] = v;
				end);
			end
		end
		for _, child in ipairs(children or {}) do
			safe(function()
				child['Parent'] = TABLE_TableIndirection["inst%0"];
			end);
		end
		safe(function()
			TABLE_TableIndirection["inst%0"]['Parent'] = TABLE_TableIndirection["parent%0"];
		end);
		return TABLE_TableIndirection["inst%0"];
	end
	local function tween(inst, time, goal, style, dir)
		safe(function()
			TABLE_TableIndirection["t%0"] = TABLE_TableIndirection["TweenService%0"]:Create(inst, TweenInfo.new(time, style or Enum['EasingStyle']['Quint'], dir or Enum['EasingDirection']['Out']), goal);
			TABLE_TableIndirection["t%0"]:Play();
			return TABLE_TableIndirection["t%0"];
		end);
	end
	local function corner(r)
		return new(LUAOBFUSACTOR_DECRYPT_STR_0("\38\133\165\83\1\162\131\78", "\60\115\204\230"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\196\53\249\126\226\40\217\113\227\51\254\99", "\16\135\90\139")]=UDim.new(0, r)});
	end
	local function stroke(color, thick)
		return new(LUAOBFUSACTOR_DECRYPT_STR_0("\97\93\53\39\92\91\115\81", "\24\52\20\102\83\46\52"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\231\32\45\43\29", "\111\164\79\65\68")]=(color or TABLE_TableIndirection["C%0"]['line']),[LUAOBFUSACTOR_DECRYPT_STR_0("\242\209\138\221\37\228\195\202\144", "\138\166\185\227\190\78")]=(thick or 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\234\100\213\59\75\16\13\217\123\206\50\127\44\29\206", "\121\171\20\165\87\50\67")]=Enum['ApplyStrokeMode']['Border']});
	end
	local function text(props)
		TABLE_TableIndirection["p%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\228\57\186\61\190\16\201\45\183\50\141\16\199\54\170\38\184\16\195\54\186\47", "\98\166\88\217\86\217")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\208\249\119\21", "\188\150\150\25\97\230")]=Enum['Font']['GothamMedium'],[LUAOBFUSACTOR_DECRYPT_STR_0("\238\140\71\22\47\226\214\134\77\81", "\141\186\233\63\98\108")]=TABLE_TableIndirection["C%0"]['text'],[LUAOBFUSACTOR_DECRYPT_STR_0("\197\239\52\162\22\248\240\41", "\69\145\138\76\214")]=13,[LUAOBFUSACTOR_DECRYPT_STR_0("\68\202\145\157\135\55\124\198\142\135\178\19\126\219", "\118\16\175\233\233\223")]=Enum['TextXAlignment']['Left'],[LUAOBFUSACTOR_DECRYPT_STR_0("\191\129\45\175", "\29\235\228\85\219\142\235")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\31\219\168\217\114\92\20\91\39\209\138\212\111\75\43", "\50\93\180\218\189\23\46\71")]=0};
		for k, v in pairs(props) do
			TABLE_TableIndirection["p%0"][k] = v;
		end
		return new(LUAOBFUSACTOR_DECRYPT_STR_0("\234\161\67\88\104\221\74\219\168", "\40\190\196\59\44\36\188"), TABLE_TableIndirection["p%0"]);
	end
	pcall(function()
		for _, parent in ipairs({TABLE_TableIndirection["CoreGui%0"],TABLE_TableIndirection["targetParent%0"]}) do
			safe(function()
				for _, child in ipairs(parent:GetChildren()) do
					if (string.find(child.Name, LUAOBFUSACTOR_DECRYPT_STR_0("\10\68\207\160\204\116\30\53\74\210\167", "\109\92\37\188\212\154\29")) or string.find(child.Name, LUAOBFUSACTOR_DECRYPT_STR_0("\58\217\225\199", "\58\100\143\196\163\81"))) then
						child:Destroy();
					end
				end
			end);
		end
	end);
	local function LoadMainHub(getStatus)
		TABLE_TableIndirection["Settings%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\59\75\46\161\48\93", "\110\122\34\67\195\95\41\133")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\84\184\86\72\217\97\154\94\83", "\182\21\209\59\42")]=Enum['KeyCode']['E'],[LUAOBFUSACTOR_DECRYPT_STR_0("\156\82\220\48\46\186\178", "\222\215\55\165\125\65")]=LUAOBFUSACTOR_DECRYPT_STR_0("\24\222\193\29\254\196", "\42\76\177\166\122\146\161\141"),[LUAOBFUSACTOR_DECRYPT_STR_0("\131\165\51", "\22\197\234\101\174\25")]=150,[LUAOBFUSACTOR_DECRYPT_STR_0("\30\57\170\211\98\167", "\230\77\84\197\188\22\207\183")]=0.4,[LUAOBFUSACTOR_DECRYPT_STR_0("\201\21\212\232", "\85\153\116\166\156\236\193\144")]=LUAOBFUSACTOR_DECRYPT_STR_0("\140\229\76\183", "\96\196\128\45\211\132"),[LUAOBFUSACTOR_DECRYPT_STR_0("\5\159\126\91\219\172\160\209\58\131", "\184\85\237\27\63\178\207\212")]=0.15,[LUAOBFUSACTOR_DECRYPT_STR_0("\46\118\63\108\0\88\25\90", "\63\104\57\105")]=LUAOBFUSACTOR_DECRYPT_STR_0("\40\142\182\71\7\130", "\36\107\231\196"),[LUAOBFUSACTOR_DECRYPT_STR_0("\106\180\174\139\126\189\167\132\86", "\231\61\213\194")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\61\168\60\126\42\165\56\112\2", "\19\105\205\93")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\128\15\208\142\45\172\46\204\136\58\167\12\205", "\95\201\104\190\225")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\156\200\192\192\157\202\213\203", "\174\207\171\161")]=30,[LUAOBFUSACTOR_DECRYPT_STR_0("\217\255\31\244\253\195\221\236\4\252\234\222\249\231", "\183\141\158\109\147\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\8\0\245\24\45\7\229\9", "\108\76\105\134"),[LUAOBFUSACTOR_DECRYPT_STR_0("\223\196\163\230\203\255\233\190\226\197", "\174\139\165\209\129")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\151\178\240\198\195\23\67\111\170\167\225\201\226\6\124\121\186", "\24\195\211\130\161\166\99\16")]=0.3,[LUAOBFUSACTOR_DECRYPT_STR_0("\117\11\230\59\117\57\112", "\118\38\99\137\76\51")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\219\9\51\49\6\44\242\52", "\64\157\70\101\114\105")]=TABLE_TableIndirection["C%0"]['accent'],[LUAOBFUSACTOR_DECRYPT_STR_0("\102\135\145\211\5\76\187\162", "\112\32\200\199\131")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\4\89\72\186\204\179\13\34", "\66\76\48\60\216\163\203")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\146\143\109\241\80\214\23\179\156\124", "\68\218\230\25\147\63\174")]=20,[LUAOBFUSACTOR_DECRYPT_STR_0("\133\35\71\78\185\181\26\82\94\162", "\214\205\74\51\44")]=LUAOBFUSACTOR_DECRYPT_STR_0("\210\73\227\248", "\23\154\44\130\156"),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\149\157", "\115\113\198\205\206\86")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\166\88\230\95\151", "\58\228\55\158")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\154\136\221\43\47", "\85\212\233\176\78\92\205")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\126\74\137\225\79\74\155", "\130\42\56\232")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\194\176\37\239\84\55", "\95\138\213\68\131\32")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\2\45\160\79\98\34\6\180\78\101", "\22\74\72\193\35")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\4\124\229\92\8\118\240", "\56\76\25\132")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\109\202\174\42\202\74\206\165", "\175\62\161\203\70")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\31\207\204\0\38\52\220\202\1", "\85\92\189\163\115")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\29\169\49\53\26\164\63\47", "\88\73\204\80")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\26\145\17\69\44\200\1\145\25\65\32\212", "\186\78\227\112\38\73")]=LUAOBFUSACTOR_DECRYPT_STR_0("\222\88\233\65\92\119", "\26\156\55\157\53\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\168\209\5\205\185\94\143\221\35\215\177\68", "\48\236\184\118\185\216")]="m",[LUAOBFUSACTOR_DECRYPT_STR_0("\200\188\79\20\198\39\241", "\84\133\221\55\80\175")]=5000,[LUAOBFUSACTOR_DECRYPT_STR_0("\152\212\20\133\200\80\178\245", "\60\221\135\68\198\167")]=Color3.fromRGB(255, 50, 50),[LUAOBFUSACTOR_DECRYPT_STR_0("\204\178\224\160\77\213\225\175", "\185\142\221\152\227\34")]=Color3.fromRGB(255, 50, 50),[LUAOBFUSACTOR_DECRYPT_STR_0("\118\196\90\255\96\60\251\87\215", "\151\56\165\55\154\35\83")]=Color3.fromRGB(255, 50, 50),[LUAOBFUSACTOR_DECRYPT_STR_0("\148\81\4\237\165\81\38\225\172\76\23", "\142\192\35\101")]=Color3.fromRGB(255, 50, 50),[LUAOBFUSACTOR_DECRYPT_STR_0("\225\116\37\168\200\130", "\118\182\21\73\195\135\236\204")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\63\61\22\75\55\29\248\13\56", "\157\104\92\122\32\100\109")]=16,[LUAOBFUSACTOR_DECRYPT_STR_0("\137\179\194\218\18\41", "\203\195\198\175\170\93\71\237")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\4\94\51\197\97\30\235\43\89", "\156\78\43\94\181\49\113")]=50,[LUAOBFUSACTOR_DECRYPT_STR_0("\90\225\212\140\5", "\25\18\136\164\195\107\35")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\192\36\185\103\119\181\198\176\252", "\216\136\77\201\47\18\220\161")]=2,[LUAOBFUSACTOR_DECRYPT_STR_0("\4\226\45\240\29\209\146", "\226\77\140\75\186\104\188")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\151\193\243\51\70\169", "\47\217\174\176\95")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\158\209\111", "\70\216\189\22\98\210\52\24")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\252\211\186\180\195\223\218\167", "\179\186\191\195\231")]=50,[LUAOBFUSACTOR_DECRYPT_STR_0("\223\51\1\201\246\59\29", "\132\153\95\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\147\189\10\52\193\223\172\190\177\7\57\238", "\192\209\210\110\77\151\186"),[LUAOBFUSACTOR_DECRYPT_STR_0("\193\13\54\224\222\226\203", "\164\128\99\66\137\159")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\45\140\231\171\43\140\240", "\222\96\233\137")]=Enum['KeyCode']['RightShift'],[LUAOBFUSACTOR_DECRYPT_STR_0("\141\187\162\18\141", "\144\217\211\199\127\232\147")]=LUAOBFUSACTOR_DECRYPT_STR_0("\221\34\59\58\212\73\6", "\36\152\79\94\72\181\37\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\250\221\73\42\228\219\70\51\210", "\95\183\184\39")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\134\55\232\49\103\148\3\161\44", "\98\213\95\135\70\52\224")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\204\162\199\115\91\243\141\200\122\81\237", "\52\158\195\169\23")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\73\180\61\99\177\52\111\142\104\177\51\102\141", "\235\26\220\82\20\230\85\27")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\171\180\250\214\123\133\130\252\208\103\135\179", "\20\232\193\137\162")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\1\202\215\181\232\158\36\101\59\211\192", "\17\66\191\165\198\135\236\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\44\189\161\0\236\224\237\216\29", "\177\111\207\206\115\159\136\140"),[LUAOBFUSACTOR_DECRYPT_STR_0("\38\156\2\7\219\93\124\10\133\31\6", "\63\101\233\112\116\180\47")]=TABLE_TableIndirection["C%0"]['accent'],[LUAOBFUSACTOR_DECRYPT_STR_0("\224\46\255\1\247\36\240\50\247\23", "\86\163\91\141\114\152")]=12,[LUAOBFUSACTOR_DECRYPT_STR_0("\112\30\102\96\53\65\57\123\103\59\71\14", "\90\51\107\20\19")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\174\229\151\252\50\159\192\144\227\46\136", "\93\237\144\229\143")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\54\227\226\10\4\84\33\228\241\16\7", "\38\117\150\144\121\107")]=false};
		TABLE_TableIndirection["unloaded%0"] = false;
		TABLE_TableIndirection["menuVisible%0"] = true;
		TABLE_TableIndirection["bindTarget%0"] = nil;
		TABLE_TableIndirection["connections%0"] = {};
		TABLE_TableIndirection["noTheme%0"] = {};
		TABLE_TableIndirection["userScale%0"] = TABLE_TableIndirection["Settings%0"]['MenuScale'] / 100;
		TABLE_TableIndirection["Unload%0"] = nil;
		TABLE_TableIndirection["windowFocused%0"] = true;
		TABLE_TableIndirection["robuxMenuOpen%0"] = false;
		TABLE_TableIndirection["cursorHidesMouse%0"] = false;
		TABLE_TableIndirection["cursorAngle%0"] = 0;
		TABLE_TableIndirection["cursorPulseT%0"] = 0;
		TABLE_TableIndirection["scriptLoadTime%0"] = tick();
		TABLE_TableIndirection["lockedTarget%0"] = nil;
		TABLE_TableIndirection["lockedTargetTime%0"] = 0;
		TABLE_TableIndirection["lastTargetSwitch%0"] = 0;
		local function track(conn)
			table.insert(TABLE_TableIndirection["connections%0"], conn);
			return conn;
		end
		local function packColor(c)
			return {c['R'],c['G'],c['B']};
		end
		local function getHum()
			TABLE_TableIndirection["char%0"] = TABLE_TableIndirection["LocalPlayer%0"]['Character'];
			return TABLE_TableIndirection["char%0"] and safe(function()
				return TABLE_TableIndirection["char%0"]:FindFirstChildOfClass(LUAOBFUSACTOR_DECRYPT_STR_0("\5\174\227\59\35\180\231\62", "\90\77\219\142"));
			end);
		end
		local function getHrp()
			TABLE_TableIndirection["char%0"] = TABLE_TableIndirection["LocalPlayer%0"]['Character'];
			return TABLE_TableIndirection["char%0"] and safe(function()
				return TABLE_TableIndirection["char%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\206\17\44\56\66\8\115\226\54\46\54\88\55\123\244\16", "\26\134\100\65\89\44\103"));
			end);
		end
		TABLE_TableIndirection["hitboxOriginals%0"] = {};
		local function restoreHitboxes()
			for part, origSize in pairs(TABLE_TableIndirection["hitboxOriginals%0"]) do
				if (part and part['Parent']) then
					safe(function()
						part['Size'] = origSize;
					end);
				end
			end
			TABLE_TableIndirection["hitboxOriginals%0"] = {};
		end
		local function SaveConfig()
			if not writefile then
				return;
			end
			TABLE_TableIndirection["data%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\215\204\6", "\196\145\131\80\67")]=TABLE_TableIndirection["Settings%0"]['FOV'],[LUAOBFUSACTOR_DECRYPT_STR_0("\45\189\9\7\12\224", "\136\126\208\102\104\120")]=TABLE_TableIndirection["Settings%0"]['Smooth'],[LUAOBFUSACTOR_DECRYPT_STR_0("\72\139\220\87", "\49\24\234\174\35\207\50\93")]=TABLE_TableIndirection["Settings%0"]['Part'],[LUAOBFUSACTOR_DECRYPT_STR_0("\60\224\248\140\120\15\230\244\135\127", "\17\108\146\157\232")]=TABLE_TableIndirection["Settings%0"]['Prediction'],[LUAOBFUSACTOR_DECRYPT_STR_0("\109\236\34\222\39\169\91\198", "\200\43\163\116\141\79")]=TABLE_TableIndirection["Settings%0"]['FOVShape'],[LUAOBFUSACTOR_DECRYPT_STR_0("\136\55\49\143\147\252\230\188\61", "\131\223\86\93\227\208\148")]=TABLE_TableIndirection["Settings%0"]['WallCheck'],[LUAOBFUSACTOR_DECRYPT_STR_0("\215\64\183\187\62\189\230\70\189", "\213\131\37\214\214\125")]=TABLE_TableIndirection["Settings%0"]['TeamCheck'],[LUAOBFUSACTOR_DECRYPT_STR_0("\15\44\43\176\243\35\13\55\182\228\40\47\54", "\129\70\75\69\223")]=TABLE_TableIndirection["Settings%0"]['IgnoreFriends'],[LUAOBFUSACTOR_DECRYPT_STR_0("\117\200\242\231\78\238\82\206", "\143\38\171\147\137\28")]=TABLE_TableIndirection["Settings%0"]['ScanRate'],[LUAOBFUSACTOR_DECRYPT_STR_0("\228\131\171\244\6\247\228\194\139\182\225\10\247\205", "\180\176\226\217\147\99\131")]=TABLE_TableIndirection["Settings%0"]['TargetPriority'],[LUAOBFUSACTOR_DECRYPT_STR_0("\231\184\61\0\214\173\3\8\208\178", "\103\179\217\79")]=TABLE_TableIndirection["Settings%0"]['TargetLock'],[LUAOBFUSACTOR_DECRYPT_STR_0("\126\182\14\210\68\152\144\93\190\8\214\73\168\166\70\182\5", "\195\42\215\124\181\33\236")]=TABLE_TableIndirection["Settings%0"]['TargetSwitchDelay'],[LUAOBFUSACTOR_DECRYPT_STR_0("\62\81\56\41\3\215\59", "\152\109\57\87\94\69")]=TABLE_TableIndirection["Settings%0"]['ShowFOV'],[LUAOBFUSACTOR_DECRYPT_STR_0("\223\248\60\147\171\222\71\173", "\200\153\183\106\195\222\178\52")]=TABLE_TableIndirection["Settings%0"]['FOVPulse'],[LUAOBFUSACTOR_DECRYPT_STR_0("\26\234\156\63\70\66\29\237", "\58\82\131\232\93\41")]=TABLE_TableIndirection["Settings%0"]['HitboxOn'],[LUAOBFUSACTOR_DECRYPT_STR_0("\171\94\196\23\82\39\176\94\202\16", "\95\227\55\176\117\61")]=TABLE_TableIndirection["Settings%0"]['HitboxSize'],[LUAOBFUSACTOR_DECRYPT_STR_0("\48\119\55\73\164\0\78\34\89\191", "\203\120\30\67\43")]=TABLE_TableIndirection["Settings%0"]['HitboxPart'],[LUAOBFUSACTOR_DECRYPT_STR_0("\211\42\85\234\202", "\185\145\69\45\143")]=TABLE_TableIndirection["Settings%0"]['Boxes'],[LUAOBFUSACTOR_DECRYPT_STR_0("\164\30\20\163\207", "\188\234\127\121\198")]=TABLE_TableIndirection["Settings%0"]['Names'],[LUAOBFUSACTOR_DECRYPT_STR_0("\12\32\18\128\61\32\0", "\227\88\82\115")]=TABLE_TableIndirection["Settings%0"]['Tracers'],[LUAOBFUSACTOR_DECRYPT_STR_0("\107\26\187\171\22\123", "\19\35\127\218\199\98")]=TABLE_TableIndirection["Settings%0"]['Health'],[LUAOBFUSACTOR_DECRYPT_STR_0("\52\254\11\238\8\243\36\247\17\232", "\130\124\155\106")]=TABLE_TableIndirection["Settings%0"]['HealthNums'],[LUAOBFUSACTOR_DECRYPT_STR_0("\253\206\247\171\135\249\104", "\223\181\171\150\207\195\150\28")]=TABLE_TableIndirection["Settings%0"]['HeadDot'],[LUAOBFUSACTOR_DECRYPT_STR_0("\127\49\230\162\12\88\53\237", "\105\44\90\131\206")]=TABLE_TableIndirection["Settings%0"]['Skeleton'],[LUAOBFUSACTOR_DECRYPT_STR_0("\220\242\189\170\27\54\254\233\160", "\94\159\128\210\217\104")]=TABLE_TableIndirection["Settings%0"]['Crosshair'],[LUAOBFUSACTOR_DECRYPT_STR_0("\100\252\7\178\108\119\246\109", "\26\48\153\102\223\63\31\153")]=TABLE_TableIndirection["Settings%0"]['TeamShow'],[LUAOBFUSACTOR_DECRYPT_STR_0("\54\82\236\240\7\82\194\225\11\71\228\253", "\147\98\32\141")]=TABLE_TableIndirection["Settings%0"]['TracerOrigin'],[LUAOBFUSACTOR_DECRYPT_STR_0("\60\74\240\222\7\88\72\29\118\237\195\18", "\43\120\35\131\170\102\54")]=TABLE_TableIndirection["Settings%0"]['DistanceUnit'],[LUAOBFUSACTOR_DECRYPT_STR_0("\121\7\159\146\172\163\144", "\228\52\102\231\214\197\208")]=TABLE_TableIndirection["Settings%0"]['MaxDist'],[LUAOBFUSACTOR_DECRYPT_STR_0("\41\225\121\193\197\133", "\182\126\128\21\170\138\235\121")]=TABLE_TableIndirection["Settings%0"]['WalkOn'],[LUAOBFUSACTOR_DECRYPT_STR_0("\188\219\57\237\181\3\53\3\143", "\102\235\186\85\134\230\115\80")]=TABLE_TableIndirection["Settings%0"]['WalkSpeed'],[LUAOBFUSACTOR_DECRYPT_STR_0("\125\25\51\79\93\218", "\66\55\108\94\63\18\180")]=TABLE_TableIndirection["Settings%0"]['JumpOn'],[LUAOBFUSACTOR_DECRYPT_STR_0("\62\152\136\39\23\86\3\136\151", "\57\116\237\229\87\71")]=TABLE_TableIndirection["Settings%0"]['JumpPower'],[LUAOBFUSACTOR_DECRYPT_STR_0("\130\184\253\200\121", "\39\202\209\141\135\23\142")]=TABLE_TableIndirection["Settings%0"]['HipOn'],[LUAOBFUSACTOR_DECRYPT_STR_0("\215\58\25\34\55\241\248\59\29", "\152\159\83\105\106\82")]=TABLE_TableIndirection["Settings%0"]['HipHeight'],[LUAOBFUSACTOR_DECRYPT_STR_0("\168\200\87\216\220\81\145", "\60\225\166\49\146\169")]=TABLE_TableIndirection["Settings%0"]['InfJump'],[LUAOBFUSACTOR_DECRYPT_STR_0("\1\17\12\38\8\23", "\103\79\126\79\74\97")]=TABLE_TableIndirection["Settings%0"]['NoClip'],[LUAOBFUSACTOR_DECRYPT_STR_0("\156\115\202", "\122\218\31\179\19\62")]=TABLE_TableIndirection["Settings%0"]['Fly'],[LUAOBFUSACTOR_DECRYPT_STR_0("\149\218\212\242\217\164\64\183", "\37\211\182\173\161\169\193")]=TABLE_TableIndirection["Settings%0"]['FlySpeed'],[LUAOBFUSACTOR_DECRYPT_STR_0("\209\54\84\244\39\127\188", "\217\151\90\45\185\72\27")]=TABLE_TableIndirection["Settings%0"]['FlyMode'],[LUAOBFUSACTOR_DECRYPT_STR_0("\226\114\243\27\119\229\87", "\54\163\28\135\114")]=TABLE_TableIndirection["Settings%0"]['AntiAFK'],[LUAOBFUSACTOR_DECRYPT_STR_0("\3\222\68\175\65\123\45", "\31\72\187\61\226\46")]=TABLE_TableIndirection["Settings%0"]['KeyMode'],[LUAOBFUSACTOR_DECRYPT_STR_0("\226\15\78\208\72\106\15\198\31", "\68\163\102\35\178\39\30")]=TABLE_TableIndirection["Settings%0"]['AimbotKey']['Name'],[LUAOBFUSACTOR_DECRYPT_STR_0("\147\117\212\210\40\176\154", "\113\222\16\186\167\99\213\227")]=TABLE_TableIndirection["Settings%0"]['MenuKey']['Name'],[LUAOBFUSACTOR_DECRYPT_STR_0("\26\6\254\251\43", "\150\78\110\155")]=TABLE_TableIndirection["Settings%0"]['Theme'],[LUAOBFUSACTOR_DECRYPT_STR_0("\168\192\41\244\151\29\190\76\128", "\32\229\165\71\129\196\126\223")]=TABLE_TableIndirection["Settings%0"]['MenuScale'],[LUAOBFUSACTOR_DECRYPT_STR_0("\240\129\203\150\178\193\194\157\215", "\181\163\233\164\225\225")]=TABLE_TableIndirection["Settings%0"]['ShowStats'],[LUAOBFUSACTOR_DECRYPT_STR_0("\98\138\48\115\95\134\16\118\93\142\45", "\23\48\235\94")]=TABLE_TableIndirection["Settings%0"]['RandomNames'],[LUAOBFUSACTOR_DECRYPT_STR_0("\79\210\215\74\96\50\198\121\200\213\92\69\56", "\178\28\186\184\61\55\83")]=TABLE_TableIndirection["Settings%0"]['ShowWatermark'],[LUAOBFUSACTOR_DECRYPT_STR_0("\231\216\84\40\253\3\214\209\223\84\51\224", "\149\164\173\39\92\146\110")]=TABLE_TableIndirection["Settings%0"]['CustomCursor'],[LUAOBFUSACTOR_DECRYPT_STR_0("\208\50\2\12\21\9\192\51\9\19\31", "\123\147\71\112\127\122")]=TABLE_TableIndirection["Settings%0"]['CursorStyle'],[LUAOBFUSACTOR_DECRYPT_STR_0("\239\216\144\98\73\222\254\139\107\67", "\38\172\173\226\17")]=TABLE_TableIndirection["Settings%0"]['CursorSize'],[LUAOBFUSACTOR_DECRYPT_STR_0("\110\4\62\252\66\3\30\224\89\16\56\234", "\143\45\113\76")]=TABLE_TableIndirection["Settings%0"]['CursorRotate'],[LUAOBFUSACTOR_DECRYPT_STR_0("\155\173\14\47\183\170\44\41\180\171\25", "\92\216\216\124")]=TABLE_TableIndirection["Settings%0"]['CursorPulse'],[LUAOBFUSACTOR_DECRYPT_STR_0("\120\39\190\83\242\73\6\190\65\244\87", "\157\59\82\204\32")]=TABLE_TableIndirection["Settings%0"]['CursorTrail'],[LUAOBFUSACTOR_DECRYPT_STR_0("\29\13\211\217\230\230\220\163", "\209\88\94\131\154\137\138\179")]=packColor(TABLE_TableIndirection["Settings%0"].ESPColor),[LUAOBFUSACTOR_DECRYPT_STR_0("\10\174\220\95\17\47\62\48", "\66\72\193\164\28\126\67\81")]=packColor(TABLE_TableIndirection["Settings%0"].BoxColor),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\45\165\93\5\121\235\35\186", "\22\135\76\200\56\70")]=packColor(TABLE_TableIndirection["Settings%0"].NameColor),[LUAOBFUSACTOR_DECRYPT_STR_0("\185\34\249\39\88\243\174\63\244\43\79", "\129\237\80\152\68\61")]=packColor(TABLE_TableIndirection["Settings%0"].TracerColor),[LUAOBFUSACTOR_DECRYPT_STR_0("\119\135\50\208\19\27\87\67", "\56\49\200\100\147\124\119")]=packColor(TABLE_TableIndirection["Settings%0"].FOVColor),[LUAOBFUSACTOR_DECRYPT_STR_0("\239\43\173\227\195\44\156\255\192\49\173", "\144\172\94\223")]=packColor(TABLE_TableIndirection["Settings%0"].CursorColor)};
			local ok, json = pcall(function()
				return TABLE_TableIndirection["HttpService%0"]:JSONEncode(TABLE_TableIndirection["data%0"]);
			end);
			if ok then
				safe(function()
					writefile(TABLE_TableIndirection["CONFIG_FILE%0"], json);
				end);
			end
		end
		TABLE_TableIndirection["fovLoaded%0"] = false;
		TABLE_TableIndirection["cursorColorLoaded%0"] = false;
		local function LoadConfig()
			if not (readfile and isfile and isfile(TABLE_TableIndirection["CONFIG_FILE%0"])) then
				return;
			end
			local ok, data = pcall(function()
				return TABLE_TableIndirection["HttpService%0"]:JSONDecode(readfile(TABLE_TableIndirection["CONFIG_FILE%0"]));
			end);
			if (not ok or (type(data) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\48\14\160\75\33", "\39\68\111\194"))) then
				return;
			end
			local function num(k, lo, hi)
				if (type(data[k]) == LUAOBFUSACTOR_DECRYPT_STR_0("\216\179\234\197\124\165", "\215\182\198\135\167\25")) then
					TABLE_TableIndirection["Settings%0"][k] = math.clamp(data[k], lo, hi);
				end
			end
			local function bool(k)
				if (type(data[k]) == LUAOBFUSACTOR_DECRYPT_STR_0("\143\70\229\68\136\72\228", "\40\237\41\138")) then
					TABLE_TableIndirection["Settings%0"][k] = data[k];
				end
			end
			local function col(k)
				TABLE_TableIndirection["t%0"] = data[k];
				if ((type(TABLE_TableIndirection["t%0"]) == LUAOBFUSACTOR_DECRYPT_STR_0("\211\117\248\244\79", "\42\167\20\154\152")) and (type(TABLE_TableIndirection["t%0"][1]) == LUAOBFUSACTOR_DECRYPT_STR_0("\68\235\175\64\116\51", "\65\42\158\194\34\17")) and (type(TABLE_TableIndirection["t%0"][2]) == LUAOBFUSACTOR_DECRYPT_STR_0("\20\50\95\14\40\255", "\142\122\71\50\108\77\141\123")) and (type(TABLE_TableIndirection["t%0"][3]) == LUAOBFUSACTOR_DECRYPT_STR_0("\27\183\242\26\62\7", "\91\117\194\159\120"))) then
					TABLE_TableIndirection["Settings%0"][k] = Color3.new(math.clamp(TABLE_TableIndirection["t%0"][1], 0, 1), math.clamp(TABLE_TableIndirection["t%0"][2], 0, 1), math.clamp(TABLE_TableIndirection["t%0"][3], 0, 1));
					if (k == LUAOBFUSACTOR_DECRYPT_STR_0("\60\50\8\59\58\253\43\8", "\68\122\125\94\120\85\145")) then
						TABLE_TableIndirection["fovLoaded%0"] = true;
					end
					if (k == LUAOBFUSACTOR_DECRYPT_STR_0("\52\9\221\77\199\203\153\24\16\192\76", "\218\119\124\175\62\168\185")) then
						TABLE_TableIndirection["cursorColorLoaded%0"] = true;
					end
				end
			end
			local function key(k)
				if (type(data[k]) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\182\228\90\205\171\247", "\164\197\144\40")) then
					return;
				end
				local okk, kc = pcall(function()
					return Enum['KeyCode'][data[k]];
				end);
				if (okk and kc) then
					TABLE_TableIndirection["Settings%0"][k] = kc;
				end
			end
			num(LUAOBFUSACTOR_DECRYPT_STR_0("\165\223\156", "\214\227\144\202\235\189"), 50, 600);
			num(LUAOBFUSACTOR_DECRYPT_STR_0("\222\168\136\116\4\187", "\92\141\197\231\27\112\211\51"), 0.1, 1);
			num(LUAOBFUSACTOR_DECRYPT_STR_0("\203\254\146\135\216\245\235", "\177\134\159\234\195"), 100, 5000);
			num(LUAOBFUSACTOR_DECRYPT_STR_0("\142\232\62\174\251\188\255\58", "\169\221\139\95\192"), 10, 60);
			num(LUAOBFUSACTOR_DECRYPT_STR_0("\238\153\122\59\43\37\202\130\112\49", "\70\190\235\31\95\66"), 0, 3);
			num(LUAOBFUSACTOR_DECRYPT_STR_0("\151\231\20\243\214\185\227\22\227", "\133\218\130\122\134"), 60, 150);
			num(LUAOBFUSACTOR_DECRYPT_STR_0("\11\254\239\207\239\179\61\57\251", "\88\92\159\131\164\188\195"), 8, 500);
			num(LUAOBFUSACTOR_DECRYPT_STR_0("\170\59\178\91\231\228\202\133\60", "\189\224\78\223\43\183\139"), 10, 500);
			num(LUAOBFUSACTOR_DECRYPT_STR_0("\6\245\154\62\196\39\251\130\2", "\161\78\156\234\118"), 0, 20);
			num(LUAOBFUSACTOR_DECRYPT_STR_0("\129\187\208\239\183\178\204\216", "\188\199\215\169"), 10, 500);
			num(LUAOBFUSACTOR_DECRYPT_STR_0("\212\0\75\121\231\228\58\86\97\237", "\136\156\105\63\27"), 12, 50);
			num(LUAOBFUSACTOR_DECRYPT_STR_0("\56\153\107\39\20\158\74\61\1\137", "\84\123\236\25"), 8, 30);
			num(LUAOBFUSACTOR_DECRYPT_STR_0("\196\138\184\16\169\161\195\156\163\3\175\189\212\142\166\22\181", "\213\144\235\202\119\204"), 0.1, 2);
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\20\25\210\38\11\43\72\32\19", "\45\67\120\190\74\72\67"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\20\39\236\168\218\128\235\234\43", "\137\64\66\141\197\153\232\142"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\42\215\44\169\154\6\246\48\175\141\13\212\49", "\232\99\176\66\198"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\223\41\39\17\93\162\207", "\76\140\65\72\102\27\237\153"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\98\211\2\208\216\25\145\68", "\222\42\186\118\178\183\97"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\123\195\114\186\72\224\87\143", "\234\61\140\36"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\21\220\168\117\10\53\241\181\113\4", "\111\65\189\218\18"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\97\68\3\48\24", "\207\35\43\123\85\107\60"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\94\171\173\239\106", "\25\16\202\192\138"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\201\217\172\225\172\230\238", "\148\157\171\205\130\201"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\11\209\117\37\197\254", "\150\67\180\20\73\177"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\165\29\27\65\153\16\52\88\128\11", "\45\237\120\122"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\255\237\163\40\243\231\182", "\76\183\136\194"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\73\237\224\52\85\91\27\116", "\116\26\134\133\88\48\47"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\61\211\175\247\174\122\31\200\178", "\18\126\161\192\132\221"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\107\45\175\9\101\87\39\185", "\54\63\72\206\100"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\255\88\73\113\202\117", "\27\168\57\37\26\133"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\7\191\113\184\248\35", "\183\77\202\28\200"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\63\58\153\39\25", "\104\119\83\233"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\220\246\33\8\86\248\232", "\35\149\152\71\66"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\55\231\97\188\51\9", "\90\121\136\34\208"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\225\2\76", "\126\167\110\53"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\28\30\58\241\253\25\22", "\95\93\112\78\152\188"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\242\253\138\2\215\170\211\213\230", "\178\161\149\229\117\132\222"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\186\218\211\168\174\27\136\34\133\222\206", "\67\232\187\189\204\193\118\198"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\184\38\186\55\12\3\251\142\60\184\33\41\9", "\143\235\78\213\64\91\98"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\174\93\151\253\127\187\174\93\150\250\127\164", "\214\237\40\228\137\16"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\166\246\253\202\12\180\183\236\251\216\23\163", "\198\229\131\143\185\99"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\114\153\186\96\94\158\152\102\93\159\173", "\19\49\236\200"));
			bool(LUAOBFUSACTOR_DECRYPT_STR_0("\221\34\228\164\235\168\202\37\247\190\232", "\218\158\87\150\215\132"));
			col(LUAOBFUSACTOR_DECRYPT_STR_0("\222\45\233\193\57\46\194\233", "\173\155\126\185\130\86\66"));
			col(LUAOBFUSACTOR_DECRYPT_STR_0("\199\169\162\228\135\224\234\180", "\140\133\198\218\167\232"));
			col(LUAOBFUSACTOR_DECRYPT_STR_0("\155\47\185\120\167\186\34\187\111", "\228\213\78\212\29"));
			col(LUAOBFUSACTOR_DECRYPT_STR_0("\179\94\183\6\238\149\111\185\9\228\149", "\139\231\44\214\101"));
			col(LUAOBFUSACTOR_DECRYPT_STR_0("\255\192\48\125\31\189\62\4", "\118\185\143\102\62\112\209\81"));
			col(LUAOBFUSACTOR_DECRYPT_STR_0("\127\101\59\245\170\7\63\55\80\127\59", "\88\60\16\73\134\197\117\124"));
			key(LUAOBFUSACTOR_DECRYPT_STR_0("\113\227\245\202\78\68\193\253\209", "\33\48\138\152\168"));
			key(LUAOBFUSACTOR_DECRYPT_STR_0("\95\19\62\68\234\50\107", "\87\18\118\80\49\161"));
			if ((type(data.Part) == LUAOBFUSACTOR_DECRYPT_STR_0("\95\10\200\169\190\75", "\208\44\126\186\192")) and ((data['Part'] == LUAOBFUSACTOR_DECRYPT_STR_0("\223\31\165\194", "\46\151\122\196\166\116\156\169")) or (data['Part'] == LUAOBFUSACTOR_DECRYPT_STR_0("\209\226\84\9\244", "\155\133\141\38\122")) or (data['Part'] == LUAOBFUSACTOR_DECRYPT_STR_0("\13\63\161\64\65\112\172\33\24\163\78\91\79\164\55\62", "\197\69\74\204\33\47\31")))) then
				TABLE_TableIndirection["Settings%0"]['Part'] = data['Part'];
			end
			if ((type(data.FOVShape) == LUAOBFUSACTOR_DECRYPT_STR_0("\227\91\72\142\254\72", "\231\144\47\58")) and ((data['FOVShape'] == LUAOBFUSACTOR_DECRYPT_STR_0("\145\209\200\118\20\56", "\89\210\184\186\21\120\93\175")) or (data['FOVShape'] == LUAOBFUSACTOR_DECRYPT_STR_0("\130\66\105\212\107\63", "\90\209\51\28\181\25")))) then
				TABLE_TableIndirection["Settings%0"]['FOVShape'] = data['FOVShape'];
			end
			if ((type(data.KeyMode) == LUAOBFUSACTOR_DECRYPT_STR_0("\195\111\69\231\177\215", "\223\176\27\55\142")) and ((data['KeyMode'] == LUAOBFUSACTOR_DECRYPT_STR_0("\16\180\201\178\40\190", "\213\68\219\174")) or (data['KeyMode'] == LUAOBFUSACTOR_DECRYPT_STR_0("\35\239\47\227", "\31\107\128\67\135\74\165\95")))) then
				TABLE_TableIndirection["Settings%0"]['KeyMode'] = data['KeyMode'];
			end
			if ((type(data.TargetPriority) == LUAOBFUSACTOR_DECRYPT_STR_0("\203\252\238\68\79\182", "\209\184\136\156\45\33")) and ((data['TargetPriority'] == LUAOBFUSACTOR_DECRYPT_STR_0("\35\193\102\28\185\9\203\112", "\216\103\168\21\104")) or (data['TargetPriority'] == LUAOBFUSACTOR_DECRYPT_STR_0("\80\168\66\168\108\165", "\196\24\205\35")) or (data['TargetPriority'] == LUAOBFUSACTOR_DECRYPT_STR_0("\13\153\236\21\61\131\226\15\60", "\102\78\235\131")))) then
				TABLE_TableIndirection["Settings%0"]['TargetPriority'] = data['TargetPriority'];
			end
			if ((type(data.TracerOrigin) == LUAOBFUSACTOR_DECRYPT_STR_0("\233\58\38\77\73\62", "\84\154\78\84\36\39\89\215")) and ((data['TracerOrigin'] == LUAOBFUSACTOR_DECRYPT_STR_0("\201\238\70", "\101\157\129\54\56")) or (data['TracerOrigin'] == LUAOBFUSACTOR_DECRYPT_STR_0("\48\160\142\175\47\124", "\25\125\201\234\203\67")) or (data['TracerOrigin'] == LUAOBFUSACTOR_DECRYPT_STR_0("\91\251\12\23\27\42", "\115\25\148\120\99\116\71")))) then
				TABLE_TableIndirection["Settings%0"]['TracerOrigin'] = data['TracerOrigin'];
			end
			if ((type(data.DistanceUnit) == LUAOBFUSACTOR_DECRYPT_STR_0("\31\41\171\45\79\11", "\33\108\93\217\68")) and ((data['DistanceUnit'] == "m") or (data['DistanceUnit'] == LUAOBFUSACTOR_DECRYPT_STR_0("\200\95\180\169\200", "\205\187\43\193")))) then
				TABLE_TableIndirection["Settings%0"]['DistanceUnit'] = data['DistanceUnit'];
			end
			if ((type(data.FlyMode) == LUAOBFUSACTOR_DECRYPT_STR_0("\237\102\23\214\240\117", "\191\158\18\101")) and ((data['FlyMode'] == LUAOBFUSACTOR_DECRYPT_STR_0("\231\204\131\174\153\192\207\136\180\166\209\218", "\207\165\163\231\215")) or (data['FlyMode'] == LUAOBFUSACTOR_DECRYPT_STR_0("\229\223\235\87\41\117", "\16\166\153\153\54\68")))) then
				TABLE_TableIndirection["Settings%0"]['FlyMode'] = data['FlyMode'];
			end
			if ((type(data.HitboxPart) == LUAOBFUSACTOR_DECRYPT_STR_0("\193\167\210\79\58\38", "\153\178\211\160\38\84\65")) and ((data['HitboxPart'] == LUAOBFUSACTOR_DECRYPT_STR_0("\170\14\91\47", "\75\226\107\58")) or (data['HitboxPart'] == LUAOBFUSACTOR_DECRYPT_STR_0("\122\209\21\99", "\173\56\190\113\26\113\162")) or (data['HitboxPart'] == LUAOBFUSACTOR_DECRYPT_STR_0("\234\210\33", "\151\171\190\77\101")))) then
				TABLE_TableIndirection["Settings%0"]['HitboxPart'] = data['HitboxPart'];
			end
			if ((type(data.CursorStyle) == LUAOBFUSACTOR_DECRYPT_STR_0("\214\59\234\160\246\122", "\107\165\79\152\201\152\29")) and ((data['CursorStyle'] == LUAOBFUSACTOR_DECRYPT_STR_0("\116\92\231\216\71\119\86\71\250", "\31\55\46\136\171\52")) or (data['CursorStyle'] == LUAOBFUSACTOR_DECRYPT_STR_0("\227\33\210\243", "\148\177\72\188")) or (data['CursorStyle'] == LUAOBFUSACTOR_DECRYPT_STR_0("\130\185\67", "\179\198\214\55")) or (data['CursorStyle'] == LUAOBFUSACTOR_DECRYPT_STR_0("\211\30\125\101\86", "\179\144\108\18\22\37")))) then
				TABLE_TableIndirection["Settings%0"]['CursorStyle'] = data['CursorStyle'];
			end
			if ((type(data.Theme) == LUAOBFUSACTOR_DECRYPT_STR_0("\213\183\9\128\193\193", "\175\166\195\123\233")) and TABLE_TableIndirection["Themes%0"][data['Theme']]) then
				TABLE_TableIndirection["Settings%0"]['Theme'] = data['Theme'];
			end
		end
		TABLE_TableIndirection["saveToken%0"] = 0;
		local function QueueSave()
			TABLE_TableIndirection["saveToken%0"] = TABLE_TableIndirection["saveToken%0"] + 1;
			TABLE_TableIndirection["mine%0"] = TABLE_TableIndirection["saveToken%0"];
			task.delay(1.5, function()
				if ((TABLE_TableIndirection["mine%0"] == TABLE_TableIndirection["saveToken%0"]) and not TABLE_TableIndirection["unloaded%0"]) then
					SaveConfig();
				end
			end);
		end
		LoadConfig();
		if TABLE_TableIndirection["Themes%0"][TABLE_TableIndirection["Settings%0"]['Theme']] then
			for k, v in pairs(TABLE_TableIndirection["Themes%0"][TABLE_TableIndirection["Settings%0"]['Theme']]) do
				TABLE_TableIndirection["C%0"][k] = v;
			end
		end
		if not TABLE_TableIndirection["fovLoaded%0"] then
			TABLE_TableIndirection["Settings%0"]['FOVColor'] = TABLE_TableIndirection["C%0"]['accent'];
		end
		if not TABLE_TableIndirection["cursorColorLoaded%0"] then
			TABLE_TableIndirection["Settings%0"]['CursorColor'] = TABLE_TableIndirection["C%0"]['accent'];
		end
		local function ckey(c)
			return string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\170\140\9\79\188\170\140\9\79\188\170\140\9\79", "\144\143\162\61\41"), c.R, c.G, c.B);
		end
		local function remapColors(oldT, newT, root)
			TABLE_TableIndirection["map%0"] = {};
			for k, o in pairs(oldT) do
				TABLE_TableIndirection["n%0"] = newT[k];
				if (TABLE_TableIndirection["n%0"] and (o ~= TABLE_TableIndirection["n%0"])) then
					TABLE_TableIndirection["map%0"][ckey(o)] = TABLE_TableIndirection["n%0"];
				end
			end
			if not next(TABLE_TableIndirection["map%0"]) then
				return;
			end
			local function walk(inst)
				if TABLE_TableIndirection["noTheme%0"][inst] then
					return;
				end
				if inst:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\199\198\20\127\112\141\54\227\199", "\83\128\179\125\48\18\231")) then
					TABLE_TableIndirection["n%0"] = TABLE_TableIndirection["map%0"][ckey(inst.BackgroundColor3)];
					if TABLE_TableIndirection["n%0"] then
						safe(function()
							inst['BackgroundColor3'] = TABLE_TableIndirection["n%0"];
						end);
					end
				end
				if (inst:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\105\178\235\201\107\31\95\178\255", "\126\61\215\147\189\39")) or inst:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\76\250\5\81\90\234\9\81\119\241", "\37\24\159\125")) or inst:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\238\163\109\86\248\169\109", "\34\186\198\21"))) then
					TABLE_TableIndirection["n%0"] = TABLE_TableIndirection["map%0"][ckey(inst.TextColor3)];
					if TABLE_TableIndirection["n%0"] then
						safe(function()
							inst['TextColor3'] = TABLE_TableIndirection["n%0"];
						end);
					end
				end
				if inst:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\205\33\246\73\208\247\3\192", "\162\152\104\165\61")) then
					TABLE_TableIndirection["n%0"] = TABLE_TableIndirection["map%0"][ckey(inst.Color)];
					if TABLE_TableIndirection["n%0"] then
						safe(function()
							inst['Color'] = TABLE_TableIndirection["n%0"];
						end);
					end
				end
				for _, ch in ipairs(inst:GetChildren()) do
					walk(ch);
				end
			end
			walk(root);
		end
		TABLE_TableIndirection["guiName%0"] = (TABLE_TableIndirection["Settings%0"]['RandomNames'] and randName(LUAOBFUSACTOR_DECRYPT_STR_0("\251\60", "\133\173\79\210\29\16"))) or LUAOBFUSACTOR_DECRYPT_STR_0("\187\125\254\63\187\117\254\34\130\114\254\30\131\117\251\46\159\111\236\39\170\105\228", "\75\237\28\141");
		TABLE_TableIndirection["gui%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\239\92\222\180\42\21\192\244\213", "\129\188\63\172\209\79\123\135"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\110\229\235\200", "\173\32\132\134")]=TABLE_TableIndirection["guiName%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\124\30\27\234\186\30\195\125\11\9\248\160", "\173\46\123\104\143\206\81")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\157\26\44\133\87\134\38\161\20\11\132\86\134\21", "\97\212\125\66\234\37\227")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\176\202\184\49\27\146\193\179\61\31\156\234\185\39", "\126\234\131\214\85")]=Enum['ZIndexBehavior']['Sibling'],[LUAOBFUSACTOR_DECRYPT_STR_0("\160\220\90\74\67\133\204\102\72\75\129\199", "\47\228\181\41\58")]=50,[LUAOBFUSACTOR_DECRYPT_STR_0("\150\253\203\62\13\36", "\127\198\156\185\91\99\80")]=TABLE_TableIndirection["targetParent%0"]});
		TABLE_TableIndirection["FOVCircle%0"] = newDrawing(LUAOBFUSACTOR_DECRYPT_STR_0("\214\19\222\243\171\14", "\190\149\122\172\144\199\107\89"));
		if TABLE_TableIndirection["FOVCircle%0"] then
			TABLE_TableIndirection["FOVCircle%0"]['Visible'] = false;
			TABLE_TableIndirection["FOVCircle%0"]['Thickness'] = 1.5;
			TABLE_TableIndirection["FOVCircle%0"]['Color'] = TABLE_TableIndirection["C%0"]['accent'];
			TABLE_TableIndirection["FOVCircle%0"]['Filled'] = false;
			TABLE_TableIndirection["FOVCircle%0"]['Transparency'] = 0.9;
		end
		TABLE_TableIndirection["FOVSquare%0"] = newDrawing(LUAOBFUSACTOR_DECRYPT_STR_0("\1\20\228\255\236\55", "\158\82\101\145\158"));
		if TABLE_TableIndirection["FOVSquare%0"] then
			TABLE_TableIndirection["FOVSquare%0"]['Visible'] = false;
			TABLE_TableIndirection["FOVSquare%0"]['Thickness'] = 1.5;
			TABLE_TableIndirection["FOVSquare%0"]['Color'] = TABLE_TableIndirection["C%0"]['accent'];
			TABLE_TableIndirection["FOVSquare%0"]['Filled'] = false;
			TABLE_TableIndirection["FOVSquare%0"]['Transparency'] = 0.9;
		end
		TABLE_TableIndirection["crosshair%0"] = newDrawing(LUAOBFUSACTOR_DECRYPT_STR_0("\83\247\16\21\72\117", "\36\16\158\98\118"));
		if TABLE_TableIndirection["crosshair%0"] then
			TABLE_TableIndirection["crosshair%0"]['Visible'] = false;
			TABLE_TableIndirection["crosshair%0"]['Filled'] = false;
			TABLE_TableIndirection["crosshair%0"]['Thickness'] = 1.5;
			TABLE_TableIndirection["crosshair%0"]['Radius'] = 4;
			TABLE_TableIndirection["crosshair%0"]['Color'] = Color3.new(1, 1, 1);
			TABLE_TableIndirection["crosshair%0"]['Transparency'] = 0.85;
		end
		TABLE_TableIndirection["cursorRing%0"] = newDrawing(LUAOBFUSACTOR_DECRYPT_STR_0("\227\31\209\248\84\237", "\133\160\118\163\155\56\136\71"));
		if TABLE_TableIndirection["cursorRing%0"] then
			TABLE_TableIndirection["cursorRing%0"]['Visible'] = false;
			TABLE_TableIndirection["cursorRing%0"]['Filled'] = false;
			TABLE_TableIndirection["cursorRing%0"]['Thickness'] = 1.5;
			TABLE_TableIndirection["cursorRing%0"]['Transparency'] = 0.9;
		end
		TABLE_TableIndirection["cursorDot%0"] = newDrawing(LUAOBFUSACTOR_DECRYPT_STR_0("\213\171\99\241\186\26", "\213\150\194\17\146\214\127"));
		if TABLE_TableIndirection["cursorDot%0"] then
			TABLE_TableIndirection["cursorDot%0"]['Visible'] = false;
			TABLE_TableIndirection["cursorDot%0"]['Filled'] = true;
			TABLE_TableIndirection["cursorDot%0"]['Radius'] = 2;
		end
		TABLE_TableIndirection["cursorHalo%0"] = newDrawing(LUAOBFUSACTOR_DECRYPT_STR_0("\56\160\182\215\74\161", "\86\123\201\196\180\38\196\194"));
		if TABLE_TableIndirection["cursorHalo%0"] then
			TABLE_TableIndirection["cursorHalo%0"]['Visible'] = false;
			TABLE_TableIndirection["cursorHalo%0"]['Filled'] = false;
			TABLE_TableIndirection["cursorHalo%0"]['Thickness'] = 1;
			TABLE_TableIndirection["cursorHalo%0"]['Transparency'] = 0.5;
		end
		TABLE_TableIndirection["cursorLines%0"] = {};
		for i = 1, 4 do
			TABLE_TableIndirection["l%0"] = newDrawing(LUAOBFUSACTOR_DECRYPT_STR_0("\219\225\215\170", "\207\151\136\185"));
			if TABLE_TableIndirection["l%0"] then
				TABLE_TableIndirection["l%0"]['Visible'] = false;
				TABLE_TableIndirection["l%0"]['Thickness'] = 1.5;
			end
			TABLE_TableIndirection["cursorLines%0"][i] = TABLE_TableIndirection["l%0"];
		end
		TABLE_TableIndirection["cursorTrailCircles%0"] = {};
		for i = 1, 4 do
			TABLE_TableIndirection["c%0"] = newDrawing(LUAOBFUSACTOR_DECRYPT_STR_0("\139\138\58\129\120\125", "\17\200\227\72\226\20\24"));
			if TABLE_TableIndirection["c%0"] then
				TABLE_TableIndirection["c%0"]['Visible'] = false;
				TABLE_TableIndirection["c%0"]['Filled'] = false;
				TABLE_TableIndirection["c%0"]['Thickness'] = 1;
			end
			TABLE_TableIndirection["cursorTrailCircles%0"][i] = TABLE_TableIndirection["c%0"];
		end
		TABLE_TableIndirection["trailPositions%0"] = {};
		TABLE_TableIndirection["viewport%0"] = (workspace['CurrentCamera'] and workspace['CurrentCamera']['ViewportSize']) or Vector2.new(1280, 720);
		TABLE_TableIndirection["fit%0"] = math.clamp(math.min(TABLE_TableIndirection["viewport%0"]['X'] / 900, TABLE_TableIndirection["viewport%0"]['Y'] / 580), 0.6, 1);
		TABLE_TableIndirection["main%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\147\64\21\193\200\226\200\237\191\84\11", "\159\208\33\123\183\169\145\143"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\220\91\53\51", "\86\146\58\88")]=LUAOBFUSACTOR_DECRYPT_STR_0("\117\222\227\206", "\154\56\191\138\160\206\137\86"),[LUAOBFUSACTOR_DECRYPT_STR_0("\167\87\246\143\115\40\177\195\143\87\225", "\172\230\57\149\231\28\90\225")]=Vector2.new(0.5, 0.5),[LUAOBFUSACTOR_DECRYPT_STR_0("\50\165\149\219\60\210\13\164", "\187\98\202\230\178\72")]=UDim2.fromScale(0.5, 0.5),[LUAOBFUSACTOR_DECRYPT_STR_0("\18\232\190\53", "\42\65\129\196\80")]=UDim2.fromOffset(780, 470),[LUAOBFUSACTOR_DECRYPT_STR_0("\32\75\94\209\16\21\13\251\12\78\126\213\27\8\16\189", "\142\98\42\61\186\119\103\98")]=TABLE_TableIndirection["C%0"]['bg'],[LUAOBFUSACTOR_DECRYPT_STR_0("\26\176\16\12\61\173\49\1\34\186\50\1\32\186\14", "\104\88\223\98")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\99\229\237\219\18\217\86\246\236\221\18\236\86\242\236\205\27", "\141\36\151\130\174\98")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\180\123\208\8\138\110", "\109\228\26\162")]=TABLE_TableIndirection["gui%0"]}, {corner(8),stroke(TABLE_TableIndirection["C%0"].line)});
		TABLE_TableIndirection["mainScale%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\107\204\206\123\225\234\91", "\134\62\133\157\24\128"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\52\166\27\213\42", "\182\103\197\122\185\79\209")]=(TABLE_TableIndirection["fit%0"] * 0.96 * TABLE_TableIndirection["userScale%0"]),[LUAOBFUSACTOR_DECRYPT_STR_0("\195\134\243\114\14\92", "\40\147\231\129\23\96")]=TABLE_TableIndirection["main%0"]});
		TABLE_TableIndirection["sidebar%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\83\234\141\72\190", "\188\21\152\236\37\219\204"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\115\224\45\9", "\108\32\137\87")]=UDim2.new(0, 176, 1, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\136\233\3\173\40\235\68\76\164\236\35\169\35\246\89\10", "\57\202\136\96\198\79\153\43")]=TABLE_TableIndirection["C%0"]['surface'],[LUAOBFUSACTOR_DECRYPT_STR_0("\137\44\184\163\136\181\203\162\57\175\151\132\191\253\167", "\152\203\67\202\199\237\199")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\202\66\178\10\17\97", "\134\154\35\192\111\127\21\25")]=TABLE_TableIndirection["main%0"]});
		new(LUAOBFUSACTOR_DECRYPT_STR_0("\158\52\8\7\37", "\178\216\70\105\106\64"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\30\37\121\254\198\199\228\143\54\37\110", "\224\95\75\26\150\169\181\180")]=Vector2.new(1, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\59\213\203\33\80\165\121\5", "\22\107\186\184\72\36\204")]=UDim2.fromScale(1, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\212\180\62\75", "\110\135\221\68\46")]=UDim2.new(0, 1, 1, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\193\55\15\224\201\161\52\246\56\8\200\193\191\52\241\101", "\91\131\86\108\139\174\211")]=TABLE_TableIndirection["C%0"]['line'],[LUAOBFUSACTOR_DECRYPT_STR_0("\217\36\170\19\88\233\24\177\13\88\203\34\160\18\81", "\61\155\75\216\119")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\52\170\160\57\86\29", "\189\100\203\210\92\56\105")]=TABLE_TableIndirection["sidebar%0"]});
		text({[LUAOBFUSACTOR_DECRYPT_STR_0("\27\84\229\60", "\72\79\49\157")]=LUAOBFUSACTOR_DECRYPT_STR_0("\190\145\2\136\200\134\24\143\161\159\31\143", "\220\232\208\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\211\177\235\36", "\193\149\222\133\80\76\58")]=Enum['Font']['GothamBlack'],[LUAOBFUSACTOR_DECRYPT_STR_0("\242\88\87\198\245\84\85\215", "\178\166\61\47")]=15,[LUAOBFUSACTOR_DECRYPT_STR_0("\203\69\251\115\222\55\244\68", "\94\155\42\136\26\170")]=UDim2.fromOffset(22, 24),[LUAOBFUSACTOR_DECRYPT_STR_0("\183\54\60\176", "\213\228\95\70")]=UDim2.new(1, -44, 0, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\26\186\208\129\121\62", "\23\74\219\162\228")]=TABLE_TableIndirection["sidebar%0"]});
		text({[LUAOBFUSACTOR_DECRYPT_STR_0("\13\227\94\187", "\91\89\134\38\207")]=LUAOBFUSACTOR_DECRYPT_STR_0("\113\192\225\0\54\226\20\101\194\136\125", "\71\36\142\168\86\115\176"),[LUAOBFUSACTOR_DECRYPT_STR_0("\249\174\124\171", "\41\191\193\18\223\99\222\54")]=Enum['Font']['Code'],[LUAOBFUSACTOR_DECRYPT_STR_0("\159\35\223\62\153\162\60\194", "\202\203\70\167\74")]=10,[LUAOBFUSACTOR_DECRYPT_STR_0("\24\4\196\39\82\35\13\211\33\34", "\17\76\97\188\83")]=TABLE_TableIndirection["C%0"]['accent'],[LUAOBFUSACTOR_DECRYPT_STR_0("\181\40\202\62\36\138\68\173", "\195\229\71\185\87\80\227\43")]=UDim2.fromOffset(22, 44),[LUAOBFUSACTOR_DECRYPT_STR_0("\211\245\26\85", "\143\128\156\96\48")]=UDim2.new(1, -44, 0, 14),[LUAOBFUSACTOR_DECRYPT_STR_0("\136\208\226\23\25\172", "\119\216\177\144\114")]=TABLE_TableIndirection["sidebar%0"]});
		TABLE_TableIndirection["tabsTop%0"] = 92;
		TABLE_TableIndirection["tabHolder%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\239\59\248\79\204", "\34\169\73\153"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\154\227\24\130\190\229\4\133", "\235\202\140\107")]=UDim2.fromOffset(0, TABLE_TableIndirection["tabsTop%0"]),[LUAOBFUSACTOR_DECRYPT_STR_0("\63\125\46\173", "\165\108\20\84\200\137\71\151")]=UDim2.new(1, 0, 0, 200),[LUAOBFUSACTOR_DECRYPT_STR_0("\88\181\40\131\125\166\36\157\116\176\31\154\123\186\56\152\123\166\46\134\121\173", "\232\26\212\75")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\7\72\96\237\249\35", "\151\87\41\18\136")]=TABLE_TableIndirection["sidebar%0"]}, {new(LUAOBFUSACTOR_DECRYPT_STR_0("\110\134\230\217\237\79\131\203\201\241\78\187", "\158\59\207\170\176"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\127\95\55\77\133\65\89", "\236\47\62\83\41")]=UDim.new(0, 2),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\166\50\47\133\144\254\172\50", "\226\154\201\64\91\202")]=Enum['SortOrder']['LayoutOrder']})});
		TABLE_TableIndirection["indicator%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\231\91\28\21\79", "\220\161\41\125\120\42"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\140\126\179\7\168\120\175\0", "\110\220\17\192")]=UDim2.fromOffset(0, TABLE_TableIndirection["tabsTop%0"] + 8),[LUAOBFUSACTOR_DECRYPT_STR_0("\71\112\46\31", "\199\20\25\84\122\139\87\145")]=UDim2.fromOffset(2, 18),[LUAOBFUSACTOR_DECRYPT_STR_0("\101\8\222\165\28\248\72\28\211\170\56\229\75\6\207\253", "\138\39\105\189\206\123")]=TABLE_TableIndirection["C%0"]['accent'],[LUAOBFUSACTOR_DECRYPT_STR_0("\61\8\155\41\246\235\252\246\5\2\185\36\235\252\195", "\159\127\103\233\77\147\153\175")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\55\241\246\175\78\223", "\171\103\144\132\202\32")]=TABLE_TableIndirection["sidebar%0"]});
		TABLE_TableIndirection["statsLabel%0"] = text({[LUAOBFUSACTOR_DECRYPT_STR_0("\36\42\241\24", "\108\112\79\137")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\25\205\122\60", "\85\95\162\20\72\205\97\137")]=Enum['Font']['Code'],[LUAOBFUSACTOR_DECRYPT_STR_0("\195\248\50\200\62\241\215\242", "\173\151\157\74\188\109\152")]=10,[LUAOBFUSACTOR_DECRYPT_STR_0("\16\13\32\201\255\91\217\252\54\91", "\147\68\104\88\189\188\52\181")]=TABLE_TableIndirection["C%0"]['dim'],[LUAOBFUSACTOR_DECRYPT_STR_0("\59\134\136\216\21\154\187\223\19\134\159", "\176\122\232\235")]=Vector2.new(0, 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\176\122\41\70\250\137\122\52", "\142\224\21\90\47")]=UDim2.new(0, 22, 1, -82),[LUAOBFUSACTOR_DECRYPT_STR_0("\71\221\61\83", "\229\20\180\71\54\196\235")]=UDim2.new(1, -44, 0, 14),[LUAOBFUSACTOR_DECRYPT_STR_0("\25\127\211\230\251\190", "\224\73\30\161\131\149\202")]=TABLE_TableIndirection["sidebar%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\199\236\226\89\243\233\244", "\48\145\133\145")]=TABLE_TableIndirection["Settings%0"]['ShowStats']});
		text({[LUAOBFUSACTOR_DECRYPT_STR_0("\110\73\173\250", "\76\58\44\213\142\177")]=LUAOBFUSACTOR_DECRYPT_STR_0("\224\1\43", "\24\171\68\114\77"),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\18\94\70", "\205\143\125\48\50\231\190\100")]=Enum['Font']['Code'],[LUAOBFUSACTOR_DECRYPT_STR_0("\245\162\12\17\210\234\197\167", "\194\161\199\116\101\129\131\191")]=10,[LUAOBFUSACTOR_DECRYPT_STR_0("\216\33\208\188\212\173\224\43\218\251", "\194\140\68\168\200\151")]=TABLE_TableIndirection["C%0"]['dim'],[LUAOBFUSACTOR_DECRYPT_STR_0("\99\245\214\45\250\80\203\218\44\251\86", "\149\34\155\181\69")]=Vector2.new(0, 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\51\242\198\243\23\244\218\244", "\154\99\157\181")]=UDim2.new(0, 22, 1, -38),[LUAOBFUSACTOR_DECRYPT_STR_0("\190\6\246\165", "\140\237\111\140\192")]=UDim2.new(1, -44, 0, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\54\24\111\29\8\13", "\120\102\121\29")]=TABLE_TableIndirection["sidebar%0"]});
		TABLE_TableIndirection["statusLabel%0"] = text({[LUAOBFUSACTOR_DECRYPT_STR_0("\152\230\161\47", "\91\204\131\217")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\232\240\91\192", "\158\174\159\53\180\211\189")]=Enum['Font']['Code'],[LUAOBFUSACTOR_DECRYPT_STR_0("\102\248\245\201\68\188\72\248", "\213\50\157\141\189\23")]=12,[LUAOBFUSACTOR_DECRYPT_STR_0("\202\35\156\180\81\171\242\41\150\243", "\196\158\70\228\192\18")]=TABLE_TableIndirection["C%0"]['muted'],[LUAOBFUSACTOR_DECRYPT_STR_0("\107\81\18\70\214\88\111\30\71\215\94", "\185\42\63\113\46")]=Vector2.new(0, 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\228\210\50\48\15\221\210\47", "\123\180\189\65\89")]=UDim2.new(0, 22, 1, -20),[LUAOBFUSACTOR_DECRYPT_STR_0("\241\133\234\225", "\233\162\236\144\132")]=UDim2.new(1, -44, 0, 16),[LUAOBFUSACTOR_DECRYPT_STR_0("\130\197\236\31\183\226", "\63\210\164\158\122\217\150")]=TABLE_TableIndirection["sidebar%0"]});
		TABLE_TableIndirection["content%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\21\217\247\225\76", "\152\83\171\150\140\41"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\178\234\144\58\192\18\7\140", "\104\226\133\227\83\180\123")]=UDim2.fromOffset(176, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\48\2\57\85", "\48\99\107\67")]=UDim2.new(1, -176, 1, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\252\167\126\219\42\105\209\179\115\212\25\105\223\168\110\192\44\105\219\168\126\201", "\27\190\198\29\176\77")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\223\74\239\49\167\90", "\46\143\43\157\84\201")]=TABLE_TableIndirection["main%0"]});
		TABLE_TableIndirection["topbar%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\113\106\87\207\90", "\168\55\24\54\162\63\115"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\36\243\58\133", "\174\119\154\64\224\178")]=UDim2.new(1, 0, 0, 64),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\127\198\112\2\181\21\241\36\122\241\105\4\169\9\244\43\108\192\117\6\190", "\132\74\30\165\27\101\199\122")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\31\230\237\162\169\161", "\212\79\135\159\199\199\213")]=TABLE_TableIndirection["content%0"]});
		new(LUAOBFUSACTOR_DECRYPT_STR_0("\95\178\180\74\89", "\120\25\192\213\39\60\183"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\57\78\60\64\23\82\15\71\17\78\43", "\40\120\32\95")]=Vector2.new(0, 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\10\164\42\115\187\22\53\165", "\127\90\203\89\26\207")]=UDim2.fromScale(0, 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\238\60\181\206", "\157\189\85\207\171\105")]=UDim2.new(1, 0, 0, 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\228\160\219\190\4\212\174\205\187\7\229\174\212\186\17\149", "\99\166\193\184\213")]=TABLE_TableIndirection["C%0"]['line'],[LUAOBFUSACTOR_DECRYPT_STR_0("\244\184\146\191\9\152\229\190\154\190\60\131\206\178\140", "\234\182\215\224\219\108")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\240\128\169\48\206\149", "\85\160\225\219")]=TABLE_TableIndirection["topbar%0"]});
		TABLE_TableIndirection["titleLabel%0"] = text({[LUAOBFUSACTOR_DECRYPT_STR_0("\104\0\155\221", "\43\60\101\227\169\86\188")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\86\199\223\171", "\87\16\168\177\223\58\172\217")]=Enum['Font']['GothamBold'],[LUAOBFUSACTOR_DECRYPT_STR_0("\0\200\65\201\8\61\215\92", "\91\84\173\57\189")]=18,[LUAOBFUSACTOR_DECRYPT_STR_0("\32\182\31\245\180\223\31\183", "\182\112\217\108\156\192")]=UDim2.fromOffset(28, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\1\82\234", "\235\202\104\40\143")]=UDim2.new(1, -240, 0, 24),[LUAOBFUSACTOR_DECRYPT_STR_0("\61\138\9\188\3\159", "\217\109\235\123")]=TABLE_TableIndirection["topbar%0"]});
		TABLE_TableIndirection["subLabel%0"] = text({[LUAOBFUSACTOR_DECRYPT_STR_0("\19\140\102\66", "\221\71\233\30\54\16\176\173")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\0\249\70\171\7\245\68\186", "\223\84\156\62")]=12,[LUAOBFUSACTOR_DECRYPT_STR_0("\226\249\250\201\148\52\218\243\240\142", "\91\182\156\130\189\215")]=TABLE_TableIndirection["C%0"]['muted'],[LUAOBFUSACTOR_DECRYPT_STR_0("\78\124\191\92\106\122\163\91", "\53\30\19\204")]=UDim2.fromOffset(28, 37),[LUAOBFUSACTOR_DECRYPT_STR_0("\202\233\106\129", "\199\153\128\16\228")]=UDim2.new(1, -240, 0, 16),[LUAOBFUSACTOR_DECRYPT_STR_0("\225\43\247\28\169\197", "\199\177\74\133\121")]=TABLE_TableIndirection["topbar%0"]});
		TABLE_TableIndirection["hintLabel%0"] = text({[LUAOBFUSACTOR_DECRYPT_STR_0("\140\204\164\234", "\74\216\169\220\158\87\166")]=(TABLE_TableIndirection["Settings%0"]['MenuKey']['Name'] .. LUAOBFUSACTOR_DECRYPT_STR_0("\168\55\28\108\82\225\39\22", "\58\136\67\115\76")),[LUAOBFUSACTOR_DECRYPT_STR_0("\215\165\214\77", "\61\145\202\184\57\229\64\203")]=Enum['Font']['Code'],[LUAOBFUSACTOR_DECRYPT_STR_0("\104\87\145\83\111\91\147\66", "\39\60\50\233")]=11,[LUAOBFUSACTOR_DECRYPT_STR_0("\46\54\187\56\161\39\190\172\8\96", "\195\122\83\195\76\226\72\210")]=TABLE_TableIndirection["C%0"]['dim'],[LUAOBFUSACTOR_DECRYPT_STR_0("\208\209\35\234\25\197\216\50\249\47\233\209\53\234", "\65\132\180\91\158")]=Enum['TextXAlignment']['Right'],[LUAOBFUSACTOR_DECRYPT_STR_0("\36\114\210\38\10\110\225\33\12\114\197", "\78\101\28\177")]=Vector2.new(1, 0.5),[LUAOBFUSACTOR_DECRYPT_STR_0("\21\187\243\88\49\189\239\95", "\49\69\212\128")]=UDim2.new(1, -66, 0.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\36\5\202\247", "\129\119\108\176\146")]=UDim2.fromOffset(160, 16),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\206\21\200\43\26", "\124\92\175\103\173\69\110")]=TABLE_TableIndirection["topbar%0"]});
		TABLE_TableIndirection["closeBtn%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\245\61\27\35\227\45\23\35\206\54", "\87\161\88\99"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\51\247\236\196\184\194\19\29\240\225\216", "\67\114\153\143\172\215\176")]=Vector2.new(1, 0.5),[LUAOBFUSACTOR_DECRYPT_STR_0("\142\173\253\7\170\171\225\0", "\110\222\194\142")]=UDim2.new(1, -22, 0.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\36\208\1\172", "\193\119\185\123\201\50")]=UDim2.fromOffset(28, 28),[LUAOBFUSACTOR_DECRYPT_STR_0("\85\9\250\45\8\107\16\98\6\253\5\0\117\16\101\91", "\127\23\104\153\70\111\25")]=TABLE_TableIndirection["C%0"]['raised'],[LUAOBFUSACTOR_DECRYPT_STR_0("\43\6\165\164\44\62\184\166\7\3\146\189\42\34\164\163\8\21\163\161\40\53", "\211\105\103\198\207\75\76\215")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\250\162\168\251", "\214\174\199\208\143\30\108\218")]="x",[LUAOBFUSACTOR_DECRYPT_STR_0("\55\139\5\190", "\41\113\228\107\202\197\54\184")]=Enum['Font']['Code'],[LUAOBFUSACTOR_DECRYPT_STR_0("\78\136\32\72\73\132\34\89", "\60\26\237\88")]=14,[LUAOBFUSACTOR_DECRYPT_STR_0("\236\47\108\242\141\215\38\123\244\253", "\206\184\74\20\134")]=TABLE_TableIndirection["C%0"]['muted'],[LUAOBFUSACTOR_DECRYPT_STR_0("\25\241\250\190\209\95\44\216\55\234\205\190\255\69\42", "\172\88\132\142\209\147\42\88")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\165\133\222\9\51\231\141\142\144\201\61\63\237\187\139", "\222\231\234\172\109\86\149")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\221\238\210\29\227\251", "\120\141\143\160")]=TABLE_TableIndirection["topbar%0"]}, {corner(6)});
		TABLE_TableIndirection["closeBtn%0"]['MouseEnter']:Connect(function()
			tween(TABLE_TableIndirection["closeBtn%0"], 0.15, {[LUAOBFUSACTOR_DECRYPT_STR_0("\98\173\181\89\71\190\185\71\78\168\130\64\65\162\165\66\65\190\179\92\67\181", "\50\32\204\214")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\178\66\45\109\144\30\138\72\39\42", "\113\230\39\85\25\211")]=TABLE_TableIndirection["C%0"]['text']});
		end);
		TABLE_TableIndirection["closeBtn%0"]['MouseLeave']:Connect(function()
			tween(TABLE_TableIndirection["closeBtn%0"], 0.15, {[LUAOBFUSACTOR_DECRYPT_STR_0("\252\186\5\227\32\217\164\94\208\191\50\250\38\197\184\91\223\169\3\230\36\210", "\43\190\219\102\136\71\171\203")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\22\123\40\77\1\113\60\86\48\45", "\57\66\30\80")]=TABLE_TableIndirection["C%0"]['muted']});
		end);
		TABLE_TableIndirection["pagesArea%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\15\202\161\24\129", "\228\73\184\192\117\228\89\148"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\255\134\102\29\219\128\122\26", "\116\175\233\21")]=UDim2.fromOffset(0, 64),[LUAOBFUSACTOR_DECRYPT_STR_0("\205\241\164\67", "\95\158\152\222\38\187\81")]=UDim2.new(1, 0, 1, -64),[LUAOBFUSACTOR_DECRYPT_STR_0("\218\188\54\185\164\218\247\168\59\182\151\218\249\179\38\162\162\218\253\179\54\171", "\168\152\221\85\210\195")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\136\210\252\151\184\250\240\148\168\219\251\131\170\208\225\148", "\231\203\190\149")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\253\60\241\244\178\225", "\123\173\93\131\145\220\149")]=TABLE_TableIndirection["content%0"]});
		local dragging, dragStart, startPos = false, nil, nil;
		TABLE_TableIndirection["topbar%0"]['InputBegan']:Connect(function(input)
			if (input['UserInputType'] == Enum['UserInputType']['MouseButton1']) then
				dragging = true;
				dragStart = input['Position'];
				startPos = TABLE_TableIndirection["main%0"]['Position'];
			end
		end);
		track(TABLE_TableIndirection["UserInputService%0"]['InputChanged']:Connect(function(input)
			if (dragging and (input['UserInputType'] == Enum['UserInputType']['MouseMovement'])) then
				TABLE_TableIndirection["d%0"] = input['Position'] - dragStart;
				TABLE_TableIndirection["main%0"]['Position'] = UDim2.new(startPos['X'].Scale, startPos['X']['Offset'] + TABLE_TableIndirection["d%0"]['X'], startPos['Y'].Scale, startPos['Y']['Offset'] + TABLE_TableIndirection["d%0"]['Y']);
			end
		end));
		track(TABLE_TableIndirection["UserInputService%0"]['InputEnded']:Connect(function(input)
			if (input['UserInputType'] == Enum['UserInputType']['MouseButton1']) then
				dragging = false;
			end
		end));
		TABLE_TableIndirection["watermark%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\48\214\236\44\113", "\153\118\164\141\65\20"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\207\60\133\234\248\18\222\61\143\236\227", "\96\142\82\230\130\151")]=Vector2.new(1, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\127\191\92\75\240\231\64\190", "\142\47\208\47\34\132")]=UDim2.new(1, -16, 0, 16),[LUAOBFUSACTOR_DECRYPT_STR_0("\215\171\16\13\86\93\226\183\7\49\82\70\243", "\60\150\222\100\98\59")]=Enum['AutomaticSize']['XY'],[LUAOBFUSACTOR_DECRYPT_STR_0("\118\53\77\83", "\81\37\92\55\54\187\218")]=UDim2.fromOffset(0, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\34\69\174\60\134\18\75\184\57\133\35\75\161\56\147\83", "\225\96\36\205\87")]=TABLE_TableIndirection["C%0"]['surface'],[LUAOBFUSACTOR_DECRYPT_STR_0("\203\167\65\114\123\93\6\252\168\70\77\110\78\7\250\182\67\107\121\65\10\240", "\105\137\198\34\25\28\47")]=0.15,[LUAOBFUSACTOR_DECRYPT_STR_0("\51\166\83\114\197\3\154\72\108\197\33\160\89\115\204", "\160\113\201\33\22")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\226\81\191\174\171\161\209", "\205\180\56\204\199\201")]=TABLE_TableIndirection["Settings%0"]['ShowWatermark'],[LUAOBFUSACTOR_DECRYPT_STR_0("\179\223\46\29\141\202", "\120\227\190\92")]=TABLE_TableIndirection["gui%0"]}, {corner(6),stroke(TABLE_TableIndirection["C%0"].line),new(LUAOBFUSACTOR_DECRYPT_STR_0("\8\117\47\122\39\88\208\236\58", "\130\93\60\127\27\67\60\185"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\120\51\60\74\233\77\122\100\55\62\90", "\29\40\82\88\46\128\35")]=UDim.new(0, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\68\208\25\8\182\60\119\221\26\9\172", "\216\91\37\180\125\97")]=UDim.new(0, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\21\119\24\199\94\43\113\40\204\71", "\55\69\22\124\163")]=UDim.new(0, 6),[LUAOBFUSACTOR_DECRYPT_STR_0("\72\210\88\236\214\127\87\214\119\199\72\231\210", "\148\24\179\60\136\191\17\48")]=UDim.new(0, 6)})});
		TABLE_TableIndirection["watermarkLabel%0"] = text({[LUAOBFUSACTOR_DECRYPT_STR_0("\134\47\225\180", "\150\210\74\153\192")]=LUAOBFUSACTOR_DECRYPT_STR_0("\213\201\43\158\67\115\167\234\199\54\153\53\79\186\234\222\61\152\102\123\184", "\212\131\168\88\234\21\26"),[LUAOBFUSACTOR_DECRYPT_STR_0("\99\123\135\152", "\71\37\20\233\236\88")]=Enum['Font']['Code'],[LUAOBFUSACTOR_DECRYPT_STR_0("\249\67\168\2\115\229\86\89", "\60\173\38\208\118\32\140\44")]=12,[LUAOBFUSACTOR_DECRYPT_STR_0("\117\55\249\199\3\192\77\61\243\128", "\175\33\82\129\179\64")]=TABLE_TableIndirection["C%0"]['accent'],[LUAOBFUSACTOR_DECRYPT_STR_0("\207\250\36\192\49\179\250\230\51\252\53\168\235", "\210\142\143\80\175\92")]=Enum['AutomaticSize']['XY'],[LUAOBFUSACTOR_DECRYPT_STR_0("\138\224\233\195", "\166\217\137\147")]=UDim2.fromOffset(0, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\211\162\96\163\255\82", "\38\131\195\18\198\145")]=TABLE_TableIndirection["watermark%0"]});
		TABLE_TableIndirection["toast%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\117\196\59\230\61", "\52\51\182\90\139\88"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\215\183\211\239\76\228\137\223\238\77\226", "\35\150\217\176\135")]=Vector2.new(0.5, 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\95\24\5\99\74\121\247", "\22\153\48\107\108\23\35")]=UDim2.new(0.5, 0, 1, -24),[LUAOBFUSACTOR_DECRYPT_STR_0("\47\144\175\21\114\116\85\224\13\182\178\0\122", "\137\110\229\219\122\31\21\33")]=Enum['AutomaticSize']['XY'],[LUAOBFUSACTOR_DECRYPT_STR_0("\41\180\34\126", "\30\122\221\88\27\86\43\68")]=UDim2.fromOffset(0, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\26\41\232\141\63\58\228\147\54\44\200\137\52\39\249\213", "\230\88\72\139")]=TABLE_TableIndirection["C%0"]['surface'],[LUAOBFUSACTOR_DECRYPT_STR_0("\80\181\21\16\4\26\87\103\186\18\47\17\9\86\97\164\23\9\6\6\91\107", "\56\18\212\118\123\99\104")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\60\230\234\215\218\204\45\224\226\214\239\215\6\236\244", "\190\126\137\152\179\191")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\24\3\96\206\164\84", "\32\72\98\18\171\202")]=TABLE_TableIndirection["gui%0"]}, {corner(6),new(LUAOBFUSACTOR_DECRYPT_STR_0("\49\161\2\117\243\0\129\60\115", "\151\100\232\82\20"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\79\216\242\12\118\215\241\36\122\223\226", "\104\31\185\150")]=UDim.new(0, 14),[LUAOBFUSACTOR_DECRYPT_STR_0("\236\184\247\243\238\194\231\242\213\190\251\227", "\160\188\217\147\151\135\172\128")]=UDim.new(0, 14),[LUAOBFUSACTOR_DECRYPT_STR_0("\63\220\20\244\51\199\8\233\31\224", "\169\111\189\112\144\90")]=UDim.new(0, 8),[LUAOBFUSACTOR_DECRYPT_STR_0("\253\130\33\169\182\142\14\160\194\151\49\162\178", "\226\173\227\69\205\223\224\105")]=UDim.new(0, 8)})});
		TABLE_TableIndirection["toastStroke%0"] = stroke(TABLE_TableIndirection["C%0"].line);
		TABLE_TableIndirection["toastStroke%0"]['Transparency'] = 1;
		TABLE_TableIndirection["toastStroke%0"]['Parent'] = TABLE_TableIndirection["toast%0"];
		TABLE_TableIndirection["toastLabel%0"] = text({[LUAOBFUSACTOR_DECRYPT_STR_0("\108\59\58\79", "\123\56\94\66\59\175")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\206\70\107\245\41\247\155\255", "\225\154\35\19\129\122\158")]=12,[LUAOBFUSACTOR_DECRYPT_STR_0("\110\5\243\67\193\245\209\58\73\16\234\69\240\233\211\45", "\84\58\96\139\55\149\135\176")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\50\42\183\15\67\206\42\26\60\144\9\84\202", "\94\115\95\195\96\46\175")]=Enum['AutomaticSize']['XY'],[LUAOBFUSACTOR_DECRYPT_STR_0("\112\66\37\56", "\128\35\43\95\93\78\77\231")]=UDim2.fromOffset(0, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\148\28\36\49\25\106", "\201\196\125\86\84\119\30")]=TABLE_TableIndirection["toast%0"]});
		TABLE_TableIndirection["toastToken%0"] = 0;
		local function notify(msg)
			TABLE_TableIndirection["toastToken%0"] = TABLE_TableIndirection["toastToken%0"] + 1;
			TABLE_TableIndirection["mine%0"] = TABLE_TableIndirection["toastToken%0"];
			TABLE_TableIndirection["toastLabel%0"]['Text'] = msg;
			TABLE_TableIndirection["toast%0"]['Position'] = UDim2.new(0.5, 0, 1, -16);
			tween(TABLE_TableIndirection["toast%0"], 0.25, {[LUAOBFUSACTOR_DECRYPT_STR_0("\225\239\7\180\196\252\11\170\205\234\48\173\194\224\23\175\194\252\1\177\192\247", "\223\163\142\100")]=0.05,[LUAOBFUSACTOR_DECRYPT_STR_0("\178\25\208\184\172\139\25\205", "\216\226\118\163\209")]=UDim2.new(0.5, 0, 1, -24)});
			tween(TABLE_TableIndirection["toastLabel%0"], 0.25, {[LUAOBFUSACTOR_DECRYPT_STR_0("\138\245\3\21\99\98\62\176\227\11\0\69\117\49\189\233", "\95\222\144\123\97\55\16")]=0});
			tween(TABLE_TableIndirection["toastStroke%0"], 0.25, {[LUAOBFUSACTOR_DECRYPT_STR_0("\45\150\187\77\240\9\133\168\70\237\26\157", "\131\121\228\218\35")]=0});
			task.delay(1.6, function()
				if ((TABLE_TableIndirection["mine%0"] ~= TABLE_TableIndirection["toastToken%0"]) or TABLE_TableIndirection["unloaded%0"]) then
					return;
				end
				tween(TABLE_TableIndirection["toast%0"], 0.3, {[LUAOBFUSACTOR_DECRYPT_STR_0("\251\209\33\10\126\9\214\197\44\5\77\9\216\222\49\17\120\9\220\222\33\24", "\123\185\176\66\97\25")]=1});
				tween(TABLE_TableIndirection["toastLabel%0"], 0.3, {[LUAOBFUSACTOR_DECRYPT_STR_0("\252\10\1\69\33\61\89\63\219\31\24\67\16\33\91\40", "\81\168\111\121\49\117\79\56")]=1});
				tween(TABLE_TableIndirection["toastStroke%0"], 0.3, {[LUAOBFUSACTOR_DECRYPT_STR_0("\243\24\228\184\212\26\228\164\194\4\230\175", "\214\167\106\133")]=1});
			end);
		end
		local pages, tabs = {}, {};
		TABLE_TableIndirection["currentPage%0"] = nil;
		local function makePage(name, title, sub)
			TABLE_TableIndirection["group%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\10\57\66\89\53\108\254\59\55\89\95", "\185\73\88\44\47\84\31"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\166\214\23\165", "\159\232\183\122\192\179")]=name,[LUAOBFUSACTOR_DECRYPT_STR_0("\23\59\178\36", "\65\68\82\200")]=UDim2.fromScale(1, 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\7\81\113\43\200\221\113\48\94\118\20\221\206\112\54\64\115\50\202\193\125\60", "\30\69\48\18\64\175\175")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\210\35\13\232\62\226\31\22\246\62\192\37\7\233\55", "\91\144\76\127\140")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\214\1\85\40\209\182\208", "\176\128\104\38\65\179\218\181")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\224\197\208\16\222\208", "\117\176\164\162")]=TABLE_TableIndirection["pagesArea%0"]});
			TABLE_TableIndirection["scroll%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\183\193\23\255\214\117\141\204\2\214\200\120\137\199", "\25\228\162\101\144\186"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\123\63\163\11", "\132\40\86\217\110\146")]=UDim2.fromScale(1, 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\92\202\36\183\160\97\243\75\112\207\19\174\166\125\239\78\127\217\34\178\164\106", "\62\30\171\71\220\199\19\156")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\98\74\190\50\88\219\28\68\90\64\156\63\69\204\35", "\45\32\37\204\86\61\169\79")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\118\84\11\170\180\111\102\92\31\185", "\28\53\53\101\220\213")]=UDim2.new(0, 0, 0, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\44\73\28\78\87\160\68\214\14\127\9\79\76\160\67\236\4\70\13", "\191\109\60\104\33\58\193\48")]=Enum['AutomaticSize']['Y'],[LUAOBFUSACTOR_DECRYPT_STR_0("\180\212\10\232\139\219\58\230\149\227\16\238\132\220\22\226\148\196", "\135\231\183\120")]=2,[LUAOBFUSACTOR_DECRYPT_STR_0("\213\9\94\235\57\22\139\231\24\101\233\52\29\172\197\5\64\235\39\73", "\201\134\106\44\132\85\122")]=TABLE_TableIndirection["C%0"]['dim'],[LUAOBFUSACTOR_DECRYPT_STR_0("\6\13\101\58\15\24", "\67\86\108\23\95\97\108\168")]=TABLE_TableIndirection["group%0"]}, {new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\17\124\11\160\32\220\94\163", "\48\196\88\44\106\196\68\181"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\178\222\216\39\137\170\165\24\141\207", "\76\226\191\188\67\224\196\194")]=UDim.new(0, 6),[LUAOBFUSACTOR_DECRYPT_STR_0("\233\41\3\244\244\215\47\43\245\251\205", "\157\185\72\103\144")]=UDim.new(0, 24),[LUAOBFUSACTOR_DECRYPT_STR_0("\105\178\142\126\161\191\94\129\131\125\160\165", "\209\57\211\234\26\200")]=UDim.new(0, 24),[LUAOBFUSACTOR_DECRYPT_STR_0("\49\207\162\133\89\220\6\236\169\149\68\221\12", "\178\97\174\198\225\48")]=UDim.new(0, 24)}),new(LUAOBFUSACTOR_DECRYPT_STR_0("\250\127\40\248\107\242\35\206\79\11\228\108", "\111\175\54\100\145\24\134"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\115\24\36\17\74\23\39", "\117\35\121\64")]=UDim.new(0, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\238\178\252\194\12\93\217\184\252", "\47\189\221\142\182\67")]=Enum['SortOrder']['LayoutOrder']})});
			TABLE_TableIndirection["page%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\39\173\40\222\88", "\73\64\223\71\171\40\201\64")]=TABLE_TableIndirection["group%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\25\142\214\86\172\113", "\29\106\237\164\57\192")]=TABLE_TableIndirection["scroll%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\190\182\227\191\199", "\146\209\196\135\218\181\178\192")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\57\57\151\29\85", "\199\77\80\227\113\48")]=title,[LUAOBFUSACTOR_DECRYPT_STR_0("\57\42\92", "\173\74\95\62")]=sub};
			pages[name] = TABLE_TableIndirection["page%0"];
			return TABLE_TableIndirection["page%0"];
		end
		local function nextOrder(p)
			p['order'] = p['order'] + 1;
			return p['order'];
		end
		local function showPage(name, instant)
			if (TABLE_TableIndirection["currentPage%0"] == name) then
				return;
			end
			TABLE_TableIndirection["prev%0"] = TABLE_TableIndirection["currentPage%0"] and pages[TABLE_TableIndirection["currentPage%0"]];
			TABLE_TableIndirection["currentPage%0"] = name;
			TABLE_TableIndirection["page%0"] = pages[name];
			TABLE_TableIndirection["titleLabel%0"]['Text'] = TABLE_TableIndirection["page%0"]['title'];
			TABLE_TableIndirection["subLabel%0"]['Text'] = TABLE_TableIndirection["page%0"]['sub'];
			for tn, t in pairs(tabs) do
				tween(t.btn, 0.18, {[LUAOBFUSACTOR_DECRYPT_STR_0("\242\28\68\34\232\8\176\201\11\15", "\220\166\121\60\86\171\103")]=(((tn == name) and TABLE_TableIndirection["C%0"]['text']) or TABLE_TableIndirection["C%0"]['muted'])});
			end
			tween(TABLE_TableIndirection["indicator%0"], 0.3, {[LUAOBFUSACTOR_DECRYPT_STR_0("\217\13\46\185\47\195\21\231", "\122\137\98\93\208\91\170")]=UDim2.fromOffset(0, TABLE_TableIndirection["tabsTop%0"] + ((tabs[name]['index'] - 1) * 36) + 8)});
			if TABLE_TableIndirection["prev%0"] then
				TABLE_TableIndirection["prev%0"]['group']['Visible'] = false;
			end
			TABLE_TableIndirection["page%0"]['group']['Visible'] = true;
			if instant then
				TABLE_TableIndirection["page%0"]['group']['GroupTransparency'] = 0;
				TABLE_TableIndirection["page%0"]['group']['Position'] = UDim2.fromOffset(0, 0);
			else
				TABLE_TableIndirection["page%0"]['group']['GroupTransparency'] = 1;
				TABLE_TableIndirection["page%0"]['group']['Position'] = UDim2.fromOffset(14, 0);
				tween(TABLE_TableIndirection["page%0"].group, 0.3, {[LUAOBFUSACTOR_DECRYPT_STR_0("\160\243\19\90\197\134\187\203\137\242\12\78\199\183\167\201\158", "\170\231\129\124\47\181\210\201")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\187\180\41\57\30\35\132\181", "\74\235\219\90\80\106")]=UDim2.fromOffset(0, 0)});
			end
		end
		local function addTab(name, label, index)
			TABLE_TableIndirection["btn%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\120\198\67\47\24\225\110\230\67\205", "\146\44\163\59\91\90\148\26"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\70\36\162\132", "\41\21\77\216\225")]=UDim2.new(1, 0, 0, 34),[LUAOBFUSACTOR_DECRYPT_STR_0("\54\76\113\78\19\95\125\80\26\73\70\87\21\67\97\85\21\95\119\75\23\84", "\37\116\45\18")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\251\250\78\182", "\203\175\159\54\194")]=label,[LUAOBFUSACTOR_DECRYPT_STR_0("\93\193\23\47", "\162\27\174\121\91\58\47")]=Enum['Font']['GothamMedium'],[LUAOBFUSACTOR_DECRYPT_STR_0("\231\192\7\225\12\208\201\192", "\185\179\165\127\149\95")]=13,[LUAOBFUSACTOR_DECRYPT_STR_0("\101\112\215\224\52\94\121\192\230\68", "\119\49\21\175\148")]=TABLE_TableIndirection["C%0"]['muted'],[LUAOBFUSACTOR_DECRYPT_STR_0("\99\176\14\73\21\104\134\252\80\187\27\88\35\93", "\149\55\213\118\61\77\41\234")]=Enum['TextXAlignment']['Left'],[LUAOBFUSACTOR_DECRYPT_STR_0("\60\19\222\201\203\44\187\15\18\8\233\201\229\54\189", "\123\125\102\170\166\137\89\207")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\108\15\74\57\11\145\154\71\26\93\13\7\155\172\66", "\201\46\96\56\93\110\227")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\151\2\247\246\0\213\148\17\234\252\7", "\161\219\99\142\153\117")]=index,[LUAOBFUSACTOR_DECRYPT_STR_0("\76\176\180\118\195\104", "\173\28\209\198\19")]=TABLE_TableIndirection["tabHolder%0"]}, {new(LUAOBFUSACTOR_DECRYPT_STR_0("\64\197\135\186\113\232\190\181\114", "\219\21\140\215"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\120\185\194\163\81\70\191\234\162\94\92", "\56\40\216\166\199")]=UDim.new(0, 22)})});
			tabs[name] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\36\160\27", "\79\70\212\117")]=TABLE_TableIndirection["btn%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\174\24\229\195\225", "\109\199\118\129\166\153")]=index};
			TABLE_TableIndirection["btn%0"]['MouseEnter']:Connect(function()
				if (TABLE_TableIndirection["currentPage%0"] ~= name) then
					tween(TABLE_TableIndirection["btn%0"], 0.15, {[LUAOBFUSACTOR_DECRYPT_STR_0("\5\181\111\226\18\191\123\249\35\227", "\150\81\208\23")]=TABLE_TableIndirection["C%0"]['text']});
				end
			end);
			TABLE_TableIndirection["btn%0"]['MouseLeave']:Connect(function()
				if (TABLE_TableIndirection["currentPage%0"] ~= name) then
					tween(TABLE_TableIndirection["btn%0"], 0.15, {[LUAOBFUSACTOR_DECRYPT_STR_0("\205\192\248\159\218\202\236\132\235\150", "\235\153\165\128")]=TABLE_TableIndirection["C%0"]['muted']});
				end
			end);
			TABLE_TableIndirection["btn%0"]['MouseButton1Click']:Connect(function()
				showPage(name);
			end);
		end
		local function addSection(page, title)
			TABLE_TableIndirection["f%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\157\91\163\34\67", "\158\219\41\194\79\38\70\202"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\112\44\53\7", "\232\35\69\79\98\142\182")]=UDim2.new(1, 0, 0, 36),[LUAOBFUSACTOR_DECRYPT_STR_0("\91\1\28\246\126\18\16\232\119\4\43\239\120\14\12\237\120\18\26\243\122\25", "\157\25\96\127")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\139\130\236\10\69\37\136\145\241\0\66", "\81\199\227\149\101\48")]=nextOrder(page),[LUAOBFUSACTOR_DECRYPT_STR_0("\77\83\233\20\248\146", "\219\29\50\155\113\150\230\92")]=page['scroll']});
			text({[LUAOBFUSACTOR_DECRYPT_STR_0("\229\37\221\111", "\45\177\64\165\27\159\40")]=title,[LUAOBFUSACTOR_DECRYPT_STR_0("\59\25\1\190", "\18\125\118\111\202")]=Enum['Font']['Code'],[LUAOBFUSACTOR_DECRYPT_STR_0("\100\57\65\238\3\164\221\254", "\155\48\92\57\154\80\205\167")]=10,[LUAOBFUSACTOR_DECRYPT_STR_0("\141\200\163\171\219\164\73\182\223\232", "\37\217\173\219\223\152\203")]=TABLE_TableIndirection["C%0"]['dim'],[LUAOBFUSACTOR_DECRYPT_STR_0("\57\10\12\63\91\161\249\7", "\150\105\101\127\86\47\200")]=UDim2.fromOffset(12, 16),[LUAOBFUSACTOR_DECRYPT_STR_0("\253\251\233\176", "\160\174\146\147\213\167")]=UDim2.new(1, -24, 0, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\112\229\8\65\2\85", "\33\32\132\122\36\108")]=TABLE_TableIndirection["f%0"]});
		end
		local function addRow(page, height)
			TABLE_TableIndirection["r%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\159\6\115\70\121", "\28\217\116\18\43"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\225\94\204\81", "\92\178\55\182\52\176\206")]=UDim2.new(1, 0, 0, height),[LUAOBFUSACTOR_DECRYPT_STR_0("\56\52\114\30\29\39\126\0\20\49\82\26\22\58\99\70", "\117\122\85\17")]=TABLE_TableIndirection["C%0"]['raised'],[LUAOBFUSACTOR_DECRYPT_STR_0("\170\238\41\79\161\207\135\250\36\64\146\207\137\225\57\84\167\207\141\225\41\93", "\189\232\143\74\36\198")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\222\165\24\74\210\24\207\163\16\75\231\3\228\175\6", "\106\156\202\106\46\183")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\17\24\98\60\63\41\54\105\55\47\47", "\74\93\121\27\83")]=nextOrder(page),[LUAOBFUSACTOR_DECRYPT_STR_0("\77\186\244\123\115\175", "\30\29\219\134")]=page['scroll']});
			new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\181\24\247\241", "\110\53\199\121\154\148\63\120"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\32\20\252\55\86\238\49\21\246\49\77", "\156\97\122\159\95\57")]=Vector2.new(0, 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\254\185\201\241\31\11\48\192", "\95\174\214\186\152\107\98")]=UDim2.fromScale(0, 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\186\7\107\142", "\166\233\110\17\235\115")]=UDim2.new(1, 0, 0, 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\90\15\199\202\245\172\115\109\0\192\226\253\178\115\106\93", "\28\24\110\164\161\146\222")]=TABLE_TableIndirection["C%0"]['line'],[LUAOBFUSACTOR_DECRYPT_STR_0("\121\204\68\33\94\209\101\44\65\198\102\44\67\198\90", "\69\59\163\54")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\128\169\216\79\61\217", "\214\208\200\170\42\83\173")]=TABLE_TableIndirection["r%0"]});
			TABLE_TableIndirection["r%0"]['MouseEnter']:Connect(function()
				tween(TABLE_TableIndirection["r%0"], 0.15, {[LUAOBFUSACTOR_DECRYPT_STR_0("\251\32\113\171\114\203\46\103\174\113\237\51\115\174\102\201\32\96\165\123\218\56", "\21\185\65\18\192")]=0.55});
			end);
			TABLE_TableIndirection["r%0"]['MouseLeave']:Connect(function()
				tween(TABLE_TableIndirection["r%0"], 0.15, {[LUAOBFUSACTOR_DECRYPT_STR_0("\220\87\94\16\166\236\89\72\21\165\202\68\92\21\178\238\87\79\30\175\253\79", "\193\158\54\61\123")]=1});
			end);
			return TABLE_TableIndirection["r%0"];
		end
		local function rowLabels(r, name, desc, dimmed)
			text({[LUAOBFUSACTOR_DECRYPT_STR_0("\1\20\56\173", "\217\85\113\64")]=name,[LUAOBFUSACTOR_DECRYPT_STR_0("\109\0\194\212", "\133\43\111\172\160\143\226")]=Enum['Font']['GothamMedium'],[LUAOBFUSACTOR_DECRYPT_STR_0("\255\166\72\197\243\194\185\85", "\160\171\195\48\177")]=13,[LUAOBFUSACTOR_DECRYPT_STR_0("\231\6\110\57\127\206\163\200\193\80", "\167\179\99\22\77\60\161\207")]=((dimmed and TABLE_TableIndirection["C%0"]['dim']) or TABLE_TableIndirection["C%0"]['text']),[LUAOBFUSACTOR_DECRYPT_STR_0("\49\112\152\81\88\8\112\133", "\44\97\31\235\56")]=UDim2.fromOffset(12, 10),[LUAOBFUSACTOR_DECRYPT_STR_0("\194\7\226\161", "\196\145\110\152")]=UDim2.new(0.6, -12, 0, 18),[LUAOBFUSACTOR_DECRYPT_STR_0("\104\47\236\247\86\58", "\146\56\78\158")]=r});
			text({[LUAOBFUSACTOR_DECRYPT_STR_0("\25\222\87\242", "\58\77\187\47\134")]=desc,[LUAOBFUSACTOR_DECRYPT_STR_0("\52\58\175\19", "\126\114\85\193\103\133\78\52")]=Enum['Font']['Gotham'],[LUAOBFUSACTOR_DECRYPT_STR_0("\240\222\42\108\247\210\40\125", "\24\164\187\82")]=11,[LUAOBFUSACTOR_DECRYPT_STR_0("\197\223\68\190\210\254\214\83\184\162", "\145\145\186\60\202")]=((dimmed and TABLE_TableIndirection["C%0"]['dim']) or TABLE_TableIndirection["C%0"]['muted']),[LUAOBFUSACTOR_DECRYPT_STR_0("\214\223\32\13\242\217\60\10", "\100\134\176\83")]=UDim2.fromOffset(12, 30),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\200\88\184", "\117\179\161\34\221\211")]=UDim2.new(0.6, -12, 0, 16),[LUAOBFUSACTOR_DECRYPT_STR_0("\125\177\232\195\10\235", "\197\45\208\154\166\100\159")]=r});
		end
		local function addToggle(page, name, desc, default, cb)
			TABLE_TableIndirection["state%0"] = default;
			TABLE_TableIndirection["r%0"] = addRow(page, 56);
			rowLabels(TABLE_TableIndirection["r%0"], name, desc);
			TABLE_TableIndirection["trackBtn%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\29\241\158\168\17\60\224\146\179\61", "\83\73\148\230\220"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\18\209\245\232\224\155\3\208\255\238\251", "\233\83\191\150\128\143")]=Vector2.new(1, 0.5),[LUAOBFUSACTOR_DECRYPT_STR_0("\199\137\220\123\25\254\137\193", "\109\151\230\175\18")]=UDim2.new(1, -12, 0.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\147\243\91\65", "\224\192\154\33\36")]=UDim2.fromOffset(36, 18),[LUAOBFUSACTOR_DECRYPT_STR_0("\161\85\27\137\132\70\23\151\141\80\59\141\143\91\10\209", "\226\227\52\120")]=((TABLE_TableIndirection["state%0"] and TABLE_TableIndirection["C%0"]['accent']) or TABLE_TableIndirection["C%0"]['raised']),[LUAOBFUSACTOR_DECRYPT_STR_0("\49\238\244\176", "\217\101\139\140\196\42\223\183")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\59\26\187\21\102\15\27\187\21\74\57\0\163\21\86", "\36\122\111\207\122")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\46\7\246\188\189\38\63\1\254\189\136\61\20\13\232", "\84\108\104\132\216\216")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\252\26\212\93\238\176", "\34\172\123\166\56\128\196")]=TABLE_TableIndirection["r%0"]}, {new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\128\139\196\88\125\208\6", "\116\196\201\200\171\42\19\181"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\85\137\233\83\16\18\46\119\130\242\72\6", "\124\22\230\155\61\117\96")]=UDim.new(1, 0)})});
			TABLE_TableIndirection["trackStroke%0"] = stroke((TABLE_TableIndirection["state%0"] and TABLE_TableIndirection["C%0"]['accent']) or TABLE_TableIndirection["C%0"]['line']);
			TABLE_TableIndirection["trackStroke%0"]['Parent'] = TABLE_TableIndirection["trackBtn%0"];
			TABLE_TableIndirection["knob%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\185\231\230\251", "\149\165\203\134\139\158\141"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\18\162\67\46\60\190\112\41\58\162\84", "\70\83\204\32")]=Vector2.new(0, 0.5),[LUAOBFUSACTOR_DECRYPT_STR_0("\62\142\24\137\26\136\4\142", "\224\110\225\107")]=((TABLE_TableIndirection["state%0"] and UDim2.new(1, -16, 0.5, 0)) or UDim2.new(0, 4, 0.5, 0)),[LUAOBFUSACTOR_DECRYPT_STR_0("\199\127\199\52", "\164\148\22\189\81\80\164")]=UDim2.fromOffset(12, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\144\129\116\184\32\89\120\167\142\115\144\40\71\120\160\211", "\23\210\224\23\211\71\43")]=((TABLE_TableIndirection["state%0"] and TABLE_TableIndirection["C%0"]['ink']) or TABLE_TableIndirection["C%0"]['muted']),[LUAOBFUSACTOR_DECRYPT_STR_0("\139\137\2\179\80\57\239\249\179\131\32\190\77\46\208", "\144\201\230\112\215\53\75\188")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\101\196\11\239\248\177", "\197\53\165\121\138\150")]=TABLE_TableIndirection["trackBtn%0"]}, {new(LUAOBFUSACTOR_DECRYPT_STR_0("\216\246\250\47\255\209\220\50", "\64\141\191\185"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\32\229\162\212\242\219\148\2\238\185\207\228", "\198\99\138\208\186\151\169")]=UDim.new(1, 0)})});
			local function apply(v)
				TABLE_TableIndirection["state%0"] = v;
				tween(TABLE_TableIndirection["trackBtn%0"], 0.2, {[LUAOBFUSACTOR_DECRYPT_STR_0("\47\244\128\85\10\231\140\75\3\241\160\81\1\250\145\13", "\62\109\149\227")]=((v and TABLE_TableIndirection["C%0"]['accent']) or TABLE_TableIndirection["C%0"]['raised'])});
				tween(TABLE_TableIndirection["trackStroke%0"], 0.2, {[LUAOBFUSACTOR_DECRYPT_STR_0("\208\135\133\219\18", "\96\147\232\233\180")]=((v and TABLE_TableIndirection["C%0"]['accent']) or TABLE_TableIndirection["C%0"]['line'])});
				tween(TABLE_TableIndirection["knob%0"], 0.22, {[LUAOBFUSACTOR_DECRYPT_STR_0("\24\55\9\66\153\48\39\54", "\89\72\88\122\43\237")]=((v and UDim2.new(1, -16, 0.5, 0)) or UDim2.new(0, 4, 0.5, 0)),[LUAOBFUSACTOR_DECRYPT_STR_0("\14\186\166\61\28\62\180\176\56\31\15\180\169\57\9\127", "\123\76\219\197\86")]=((v and TABLE_TableIndirection["C%0"]['ink']) or TABLE_TableIndirection["C%0"]['muted'])});
				safe(cb, v);
				QueueSave();
			end
			TABLE_TableIndirection["trackBtn%0"]['MouseButton1Click']:Connect(function()
				apply(not TABLE_TableIndirection["state%0"]);
			end);
			return {[LUAOBFUSACTOR_DECRYPT_STR_0("\107\221\1", "\95\56\184\117\108\142")]=function(v)
				if (TABLE_TableIndirection["state%0"] ~= v) then
					apply(v);
				end
			end,[LUAOBFUSACTOR_DECRYPT_STR_0("\215\199\50", "\140\144\162\70")]=function()
				return TABLE_TableIndirection["state%0"];
			end};
		end
		local function addSlider(page, name, minV, maxV, default, dec, cb)
			TABLE_TableIndirection["r%0"] = addRow(page, 66);
			text({[LUAOBFUSACTOR_DECRYPT_STR_0("\228\45\65\102", "\142\176\72\57\18")]=name,[LUAOBFUSACTOR_DECRYPT_STR_0("\128\62\30\48", "\68\198\81\112")]=Enum['Font']['GothamMedium'],[LUAOBFUSACTOR_DECRYPT_STR_0("\131\10\168\0\127\20\173\10", "\125\215\111\208\116\44")]=13,[LUAOBFUSACTOR_DECRYPT_STR_0("\55\72\92\250\108\85\8\73", "\60\103\39\47\147\24")]=UDim2.fromOffset(12, 10),[LUAOBFUSACTOR_DECRYPT_STR_0("\223\3\237\133", "\46\140\106\151\224\182\147")]=UDim2.new(0.6, -12, 0, 18),[LUAOBFUSACTOR_DECRYPT_STR_0("\219\44\111\71\229\57", "\34\139\77\29")]=TABLE_TableIndirection["r%0"]});
			local function fmt(v)
				if (dec > 0) then
					return string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\245\190", "\73\208\144\125\52") .. dec .. "f", v);
				end
				return tostring(math.floor(v + 0.5));
			end
			TABLE_TableIndirection["valueLabel%0"] = text({[LUAOBFUSACTOR_DECRYPT_STR_0("\30\233\146\223", "\171\74\140\234\171\167\112\51")]=fmt(default),[LUAOBFUSACTOR_DECRYPT_STR_0("\9\1\66\75", "\205\79\110\44\63\145")]=Enum['Font']['Code'],[LUAOBFUSACTOR_DECRYPT_STR_0("\147\90\39\220\135\2\190\25", "\124\199\63\95\168\212\107\196")]=12,[LUAOBFUSACTOR_DECRYPT_STR_0("\50\173\75\46\135\248\133\252\20\251", "\147\102\200\51\90\196\151\233")]=TABLE_TableIndirection["C%0"]['accent'],[LUAOBFUSACTOR_DECRYPT_STR_0("\15\245\247\217\134\193\55\50\247\225\192\187\238\47", "\91\91\144\143\173\222\128")]=Enum['TextXAlignment']['Right'],[LUAOBFUSACTOR_DECRYPT_STR_0("\2\174\79\89\164\92\19\175\69\95\191", "\46\67\192\44\49\203")]=Vector2.new(1, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\217\61\171\48\173\10\10", "\101\100\182\78\194\68\196")]=UDim2.new(1, -12, 0, 11),[LUAOBFUSACTOR_DECRYPT_STR_0("\123\65\42\240", "\181\40\40\80\149\237\43\24")]=UDim2.fromOffset(90, 16),[LUAOBFUSACTOR_DECRYPT_STR_0("\37\179\55\55\180\94", "\114\117\210\69\82\218\42")]=TABLE_TableIndirection["r%0"]});
			TABLE_TableIndirection["ratio0%0"] = (default - minV) / (maxV - minV);
			TABLE_TableIndirection["trackBar%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\196\89\126\169", "\204\36\182\56\19"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\217\68\207\138\105\49\29\231", "\114\137\43\188\227\29\88")]=UDim2.new(0, 12, 0, 44),[LUAOBFUSACTOR_DECRYPT_STR_0("\215\20\178\21", "\112\132\125\200")]=UDim2.new(1, -24, 0, 4),[LUAOBFUSACTOR_DECRYPT_STR_0("\223\185\240\120\93\231\242\173\253\119\121\250\241\183\225\32", "\149\157\216\147\19\58")]=TABLE_TableIndirection["C%0"]['raised'],[LUAOBFUSACTOR_DECRYPT_STR_0("\235\137\10\204\204\148\43\193\211\131\40\193\209\131\20", "\168\169\230\120")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\204\140\150\18\242\153", "\119\156\237\228")]=TABLE_TableIndirection["r%0"]}, {new(LUAOBFUSACTOR_DECRYPT_STR_0("\246\248\35\113\209\223\5\108", "\30\163\177\96"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\57\47\71\135\56\57\230\27\36\92\156\46", "\180\122\64\53\233\93\75")]=UDim.new(1, 0)})});
			TABLE_TableIndirection["fill%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\240\5\18\48\211", "\93\182\119\115"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\177\22\201\137", "\158\226\127\179\236\215")]=UDim2.new(TABLE_TableIndirection["ratio0%0"], 0, 1, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\211\193\202\221\246\210\198\195\255\196\234\217\253\207\219\133", "\182\145\160\169")]=TABLE_TableIndirection["C%0"]['accent'],[LUAOBFUSACTOR_DECRYPT_STR_0("\27\47\34\18\162\29\10\41\42\19\151\6\33\37\60", "\111\89\64\80\118\199")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\143\182\28\67\177\163", "\38\223\215\110")]=TABLE_TableIndirection["trackBar%0"]}, {new(LUAOBFUSACTOR_DECRYPT_STR_0("\107\242\47\202\185\80\222\30", "\203\62\187\108\165"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\218\123\90\48\116\236\226\248\112\65\43\98", "\176\153\20\40\94\17\158")]=UDim.new(1, 0)})});
			TABLE_TableIndirection["handle%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\142\33\186\94\192", "\165\200\83\219\51"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\230\228\119\115\222\167\140\235\206\228\96", "\132\167\138\20\27\177\213\220")]=Vector2.new(0.5, 0.5),[LUAOBFUSACTOR_DECRYPT_STR_0("\194\218\240\69\40\251\218\237", "\92\146\181\131\44")]=UDim2.new(TABLE_TableIndirection["ratio0%0"], 0, 0.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\247\91\131", "\189\43\158\33\230\222\32\119")]=UDim2.fromOffset(12, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\124\193\78\90\143\76\207\88\95\140\125\207\65\94\154\13", "\232\62\160\45\49")]=TABLE_TableIndirection["C%0"]['text'],[LUAOBFUSACTOR_DECRYPT_STR_0("\86\220\231\168\164\102\224\252\182\164\68\218\237\169\173", "\193\20\179\149\204")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\231\0\147\199\217\21", "\162\183\97\225")]=TABLE_TableIndirection["trackBar%0"]}, {new(LUAOBFUSACTOR_DECRYPT_STR_0("\28\236\199\248\14\236\164\59", "\193\73\165\132\151\124\130"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\238\205\187\85\179\164\255\195\173\82\163\165", "\214\173\162\201\59\214")]=UDim.new(1, 0)})});
			TABLE_TableIndirection["hit%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\23\124\178\85\245\53\55\109\165\79", "\64\67\25\202\33\183"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\217\225\98\181\58\219\76\231", "\35\137\142\17\220\78\178")]=UDim2.new(0, 12, 0, 32),[LUAOBFUSACTOR_DECRYPT_STR_0("\30\71\63\4", "\97\77\46\69")]=UDim2.new(1, -24, 0, 28),[LUAOBFUSACTOR_DECRYPT_STR_0("\253\222\3\174\216\205\15\176\209\219\52\183\222\209\19\181\222\205\5\171\220\198", "\197\191\191\96")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\254\44\245\90", "\45\170\73\141\46\56\136")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\160\26\217\234\141\146\19\149\0\195\198\160\139\8\147", "\103\225\111\173\133\207\231")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\110\139\231\81\73\150\198\92\86\129\197\92\84\129\249", "\53\44\228\149")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\253\218\41\0\197\48", "\68\173\187\91\101\171")]=TABLE_TableIndirection["r%0"]});
			TABLE_TableIndirection["sliding%0"] = false;
			local function update(x)
				TABLE_TableIndirection["ratio%0"] = math.clamp((x - TABLE_TableIndirection["trackBar%0"]['AbsolutePosition']['X']) / TABLE_TableIndirection["trackBar%0"]['AbsoluteSize']['X'], 0, 1);
				TABLE_TableIndirection["value%0"] = minV + ((maxV - minV) * TABLE_TableIndirection["ratio%0"]);
				if (dec > 0) then
					TABLE_TableIndirection["m%0"] = 10 ^ dec;
					TABLE_TableIndirection["value%0"] = math.floor((TABLE_TableIndirection["value%0"] * TABLE_TableIndirection["m%0"]) + 0.5) / TABLE_TableIndirection["m%0"];
				else
					TABLE_TableIndirection["value%0"] = math.floor(TABLE_TableIndirection["value%0"] + 0.5);
				end
				TABLE_TableIndirection["fill%0"]['Size'] = UDim2.new(TABLE_TableIndirection["ratio%0"], 0, 1, 0);
				TABLE_TableIndirection["handle%0"]['Position'] = UDim2.new(TABLE_TableIndirection["ratio%0"], 0, 0.5, 0);
				TABLE_TableIndirection["valueLabel%0"]['Text'] = fmt(TABLE_TableIndirection["value%0"]);
				safe(cb, TABLE_TableIndirection["value%0"]);
				QueueSave();
			end
			TABLE_TableIndirection["hit%0"]['InputBegan']:Connect(function(input)
				if (input['UserInputType'] == Enum['UserInputType']['MouseButton1']) then
					TABLE_TableIndirection["sliding%0"] = true;
					update(input['Position'].X);
				end
			end);
			track(TABLE_TableIndirection["UserInputService%0"]['InputChanged']:Connect(function(input)
				if (TABLE_TableIndirection["sliding%0"] and (input['UserInputType'] == Enum['UserInputType']['MouseMovement'])) then
					update(input['Position'].X);
				end
			end));
			track(TABLE_TableIndirection["UserInputService%0"]['InputEnded']:Connect(function(input)
				if (input['UserInputType'] == Enum['UserInputType']['MouseButton1']) then
					TABLE_TableIndirection["sliding%0"] = false;
				end
			end));
		end
		local function addSegment(page, name, desc, options, default, cb, width)
			TABLE_TableIndirection["r%0"] = addRow(page, 56);
			rowLabels(TABLE_TableIndirection["r%0"], name, desc);
			TABLE_TableIndirection["n%0"] = #options;
			TABLE_TableIndirection["idx%0"] = 1;
			for i, o in ipairs(options) do
				if (o[2] == default) then
					TABLE_TableIndirection["idx%0"] = i;
				end
			end
			TABLE_TableIndirection["holder%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\218\29\19\202\76", "\185\156\111\114\167\41\226\29"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\42\11\21\40\187\241\59\10\31\46\160", "\131\107\101\118\64\212")]=Vector2.new(1, 0.5),[LUAOBFUSACTOR_DECRYPT_STR_0("\241\217\63\34\83\201\198\207", "\169\161\182\76\75\39\160")]=UDim2.new(1, -12, 0.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\234\91\173\142", "\200\185\50\215\235\123\66")]=UDim2.fromOffset(width or 230, 28),[LUAOBFUSACTOR_DECRYPT_STR_0("\208\128\218\233\141\100\21\231\143\221\193\133\122\21\224\210", "\122\146\225\185\130\234\22")]=TABLE_TableIndirection["C%0"]['raised'],[LUAOBFUSACTOR_DECRYPT_STR_0("\155\237\210\203\234\169\138\235\218\202\223\178\161\231\204", "\219\217\130\160\175\143")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\14\189\80\56\48\168", "\93\94\220\34")]=TABLE_TableIndirection["r%0"]}, {corner(6),stroke(TABLE_TableIndirection["C%0"].line)});
			TABLE_TableIndirection["highlight%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\41\218\192\135\223", "\157\111\168\161\234\186\151"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\75\79\102\56\214\176\189\139", "\229\27\32\21\81\162\217\210")]=UDim2.new((TABLE_TableIndirection["idx%0"] - 1) / TABLE_TableIndirection["n%0"], 2, 0, 2),[LUAOBFUSACTOR_DECRYPT_STR_0("\31\197\225\63", "\42\76\172\155\90")]=UDim2.new(1 / TABLE_TableIndirection["n%0"], -4, 1, -4),[LUAOBFUSACTOR_DECRYPT_STR_0("\208\140\130\34\7\224\130\148\39\4\209\130\141\38\18\161", "\96\146\237\225\73")]=TABLE_TableIndirection["C%0"]['accent'],[LUAOBFUSACTOR_DECRYPT_STR_0("\202\127\11\227\78\104\173\253\112\12\220\91\123\172\251\110\9\250\76\116\161\241", "\194\136\30\104\136\41\26")]=0.82,[LUAOBFUSACTOR_DECRYPT_STR_0("\254\217\17\76\17\162\154\38\198\211\51\65\12\181\165", "\79\188\182\99\40\116\208\201")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\77\194\56\68\45\43", "\95\29\163\74\33\67")]=TABLE_TableIndirection["holder%0"]}, {corner(4)});
			TABLE_TableIndirection["btns%0"] = {};
			for i, o in ipairs(options) do
				TABLE_TableIndirection["b%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\72\55\88\35\93\159\16\104\61\78", "\100\28\82\32\87\31\234"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\1\93\243\120\239\223\231\48", "\94\81\50\128\17\155\182\136")]=UDim2.new((i - 1) / TABLE_TableIndirection["n%0"], 0, 0, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\184\53\254\60", "\231\235\92\132\89\130\212\124")]=UDim2.new(1 / TABLE_TableIndirection["n%0"], 0, 1, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\220\181\247\52\214\87\241\161\250\59\229\87\255\186\231\47\208\87\251\186\247\38", "\37\158\212\148\95\177")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\64\25\188\147", "\109\20\124\196\231")]=o[1],[LUAOBFUSACTOR_DECRYPT_STR_0("\134\178\122\177", "\64\192\221\20\197\81")]=Enum['Font']['GothamMedium'],[LUAOBFUSACTOR_DECRYPT_STR_0("\155\243\250\182\148\166\236\231", "\199\207\150\130\194")]=12,[LUAOBFUSACTOR_DECRYPT_STR_0("\129\79\99\252\96\186\70\116\250\16", "\35\213\42\27\136")]=(((i == TABLE_TableIndirection["idx%0"]) and TABLE_TableIndirection["C%0"]['accent']) or TABLE_TableIndirection["C%0"]['muted']),[LUAOBFUSACTOR_DECRYPT_STR_0("\129\146\47\176\250\231\180\147\52\177\251\253\172\136\41", "\146\192\231\91\223\184")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\120\254\228\45\212\166\52\7\64\244\198\32\201\177\11", "\110\58\145\150\73\177\212\103")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\196\53\216\247\69\223", "\137\148\84\170\146\43\171")]=TABLE_TableIndirection["holder%0"]});
				TABLE_TableIndirection["btns%0"][i] = TABLE_TableIndirection["b%0"];
				TABLE_TableIndirection["b%0"]['MouseButton1Click']:Connect(function()
					TABLE_TableIndirection["idx%0"] = i;
					tween(TABLE_TableIndirection["highlight%0"], 0.25, {[LUAOBFUSACTOR_DECRYPT_STR_0("\49\208\108\244\99\8\208\113", "\23\97\191\31\157")]=UDim2.new((i - 1) / TABLE_TableIndirection["n%0"], 2, 0, 2)});
					for j, ob in ipairs(TABLE_TableIndirection["btns%0"]) do
						tween(ob, 0.2, {[LUAOBFUSACTOR_DECRYPT_STR_0("\178\135\31\17\254\61\138\141\21\86", "\82\230\226\103\101\189")]=(((j == i) and TABLE_TableIndirection["C%0"]['accent']) or TABLE_TableIndirection["C%0"]['muted'])});
					end
					safe(cb, o[2]);
					QueueSave();
				end);
			end
		end
		local function addDropdownGrid(page, name, desc, options, default, cb, colsOverride)
			TABLE_TableIndirection["cols%0"] = colsOverride or 4;
			TABLE_TableIndirection["rows%0"] = math.ceil(#options / TABLE_TableIndirection["cols%0"]);
			TABLE_TableIndirection["r%0"] = addRow(page, 56 + (TABLE_TableIndirection["rows%0"] * 34));
			rowLabels(TABLE_TableIndirection["r%0"], name, desc);
			TABLE_TableIndirection["btns%0"] = {};
			local function refresh(targetKey)
				for _, e in ipairs(TABLE_TableIndirection["btns%0"]) do
					TABLE_TableIndirection["active%0"] = e['key'] == targetKey;
					tween(e.btn, 0.2, {[LUAOBFUSACTOR_DECRYPT_STR_0("\191\47\171\165\55\132\38\188\163\71", "\116\235\74\211\209")]=((TABLE_TableIndirection["active%0"] and TABLE_TableIndirection["C%0"]['accent']) or TABLE_TableIndirection["C%0"]['muted']),[LUAOBFUSACTOR_DECRYPT_STR_0("\10\61\221\46\47\46\209\48\38\56\253\42\36\51\204\118", "\69\72\92\190")]=((TABLE_TableIndirection["active%0"] and TABLE_TableIndirection["C%0"]['raised']) or TABLE_TableIndirection["C%0"]['bg'])});
					tween(e.stroke, 0.2, {[LUAOBFUSACTOR_DECRYPT_STR_0("\21\52\232\219\185", "\215\86\91\132\180\203\200\118")]=((TABLE_TableIndirection["active%0"] and TABLE_TableIndirection["C%0"]['accent']) or TABLE_TableIndirection["C%0"]['line'])});
				end
			end
			for i, o in ipairs(options) do
				TABLE_TableIndirection["col%0"] = (i - 1) % TABLE_TableIndirection["cols%0"];
				TABLE_TableIndirection["row%0"] = math.floor((i - 1) / TABLE_TableIndirection["cols%0"]);
				TABLE_TableIndirection["w%0"] = ((TABLE_TableIndirection["cols%0"] == 4) and 129) or 90;
				TABLE_TableIndirection["btn%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\7\235\158\199\17\251\146\199\60\224", "\179\83\142\230"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\234\32\238\60\45\22\248\209", "\191\186\79\157\85\89\127\151")]=UDim2.fromOffset(12 + (TABLE_TableIndirection["col%0"] * (TABLE_TableIndirection["w%0"] + 8)), 54 + (TABLE_TableIndirection["row%0"] * 34)),[LUAOBFUSACTOR_DECRYPT_STR_0("\197\115\190\203", "\37\150\26\196\174\228")]=UDim2.fromOffset(TABLE_TableIndirection["w%0"], 28),[LUAOBFUSACTOR_DECRYPT_STR_0("\235\241\177\94\48\155\198\229\188\81\20\134\197\255\160\6", "\233\169\144\210\53\87")]=(((o[2] == default) and TABLE_TableIndirection["C%0"]['raised']) or TABLE_TableIndirection["C%0"]['bg']),[LUAOBFUSACTOR_DECRYPT_STR_0("\22\67\245\200", "\188\66\38\141")]=o[1],[LUAOBFUSACTOR_DECRYPT_STR_0("\199\95\3\37", "\168\129\48\109\81\19\34\104")]=Enum['Font']['GothamMedium'],[LUAOBFUSACTOR_DECRYPT_STR_0("\67\17\20\36\236\44\161\252", "\153\23\116\108\80\191\69\219")]=11,[LUAOBFUSACTOR_DECRYPT_STR_0("\125\26\229\204\219\132\122\70\13\174", "\22\41\127\157\184\152\235")]=(((o[2] == default) and TABLE_TableIndirection["C%0"]['accent']) or TABLE_TableIndirection["C%0"]['muted']),[LUAOBFUSACTOR_DECRYPT_STR_0("\54\210\245\197\53\210\245\222\24\201\194\197\27\200\243", "\170\119\167\129")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\248\255\174\119\134\76\233\249\166\118\179\87\194\245\176", "\62\186\144\220\19\227")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\145\253\254\211\175\232", "\182\193\156\140")]=TABLE_TableIndirection["r%0"]}, {corner(6)});
				TABLE_TableIndirection["st%0"] = stroke(((o[2] == default) and TABLE_TableIndirection["C%0"]['accent']) or TABLE_TableIndirection["C%0"]['line']);
				TABLE_TableIndirection["st%0"]['Parent'] = TABLE_TableIndirection["btn%0"];
				table.insert(TABLE_TableIndirection["btns%0"], {[LUAOBFUSACTOR_DECRYPT_STR_0("\195\88\24", "\95\161\44\118\210\134")]=TABLE_TableIndirection["btn%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\237\69\10", "\206\134\32\115\109\26\182\133")]=o[2],[LUAOBFUSACTOR_DECRYPT_STR_0("\37\236\221\28\86\88", "\61\86\152\175\115\61")]=TABLE_TableIndirection["st%0"]});
				TABLE_TableIndirection["btn%0"]['MouseButton1Click']:Connect(function()
					refresh(o[2]);
					safe(cb, o[2]);
					QueueSave();
				end);
			end
		end
		local function addKeybind(page, name, desc, defaultKey, onChange)
			TABLE_TableIndirection["r%0"] = addRow(page, 56);
			rowLabels(TABLE_TableIndirection["r%0"], name, desc);
			TABLE_TableIndirection["current%0"] = defaultKey;
			TABLE_TableIndirection["btn%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\157\4\196\36\243\148\55\211\166\15", "\167\201\97\188\80\177\225\67"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\111\6\135\167\243\147\126\7\141\161\232", "\225\46\104\228\207\156")]=Vector2.new(1, 0.5),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\207\160\71\35\90\189\177", "\223\202\160\211\46\87\51\210")]=UDim2.new(1, -12, 0.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\229\224\0\113", "\109\182\137\122\20")]=UDim2.fromOffset(104, 26),[LUAOBFUSACTOR_DECRYPT_STR_0("\112\168\17\241\231\197\229\105\92\173\49\245\236\216\248\47", "\28\50\201\114\154\128\183\138")]=TABLE_TableIndirection["C%0"]['raised'],[LUAOBFUSACTOR_DECRYPT_STR_0("\158\131\1\230", "\146\202\230\121")]=TABLE_TableIndirection["current%0"]['Name'],[LUAOBFUSACTOR_DECRYPT_STR_0("\200\224\224\10", "\94\142\143\142\126\167\210\192")]=Enum['Font']['Code'],[LUAOBFUSACTOR_DECRYPT_STR_0("\52\192\5\245\244\9\223\24", "\167\96\165\125\129")]=12,[LUAOBFUSACTOR_DECRYPT_STR_0("\51\211\14\82\97\41\71\135\21\133", "\232\103\182\118\38\34\70\43")]=TABLE_TableIndirection["C%0"]['text'],[LUAOBFUSACTOR_DECRYPT_STR_0("\20\66\59\236\18\100\33\67\32\237\19\126\57\88\61", "\17\85\55\79\131\80")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\234\138\171\168\58\218\182\176\182\58\248\140\161\169\51", "\95\168\229\217\204")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\186\58\148\140\132\47", "\233\234\91\230")]=TABLE_TableIndirection["r%0"]}, {corner(6)});
			TABLE_TableIndirection["st%0"] = stroke(TABLE_TableIndirection["C%0"].line);
			TABLE_TableIndirection["st%0"]['Parent'] = TABLE_TableIndirection["btn%0"];
			TABLE_TableIndirection["btn%0"]['MouseEnter']:Connect(function()
				tween(TABLE_TableIndirection["st%0"], 0.15, {[LUAOBFUSACTOR_DECRYPT_STR_0("\114\78\142\124\181", "\199\49\33\226\19")]=TABLE_TableIndirection["C%0"]['dim']});
			end);
			TABLE_TableIndirection["btn%0"]['MouseLeave']:Connect(function()
				tween(TABLE_TableIndirection["st%0"], 0.15, {[LUAOBFUSACTOR_DECRYPT_STR_0("\113\84\79\16\213", "\167\50\59\35\127")]=TABLE_TableIndirection["C%0"]['line']});
			end);
			TABLE_TableIndirection["btn%0"]['MouseButton1Click']:Connect(function()
				TABLE_TableIndirection["btn%0"]['Text'] = LUAOBFUSACTOR_DECRYPT_STR_0("\88\1\87\255\187\8\18\18\231\173\81", "\200\40\115\50\140");
				TABLE_TableIndirection["btn%0"]['TextColor3'] = TABLE_TableIndirection["C%0"]['accent'];
				TABLE_TableIndirection["bindTarget%0"] = function(key)
					if key then
						TABLE_TableIndirection["current%0"] = key;
						safe(onChange, key);
						QueueSave();
					end
					TABLE_TableIndirection["btn%0"]['Text'] = TABLE_TableIndirection["current%0"]['Name'];
					TABLE_TableIndirection["btn%0"]['TextColor3'] = TABLE_TableIndirection["C%0"]['text'];
				end;
			end);
		end
		local function addAction(page, name, desc, label, cb, color)
			TABLE_TableIndirection["r%0"] = addRow(page, 56);
			rowLabels(TABLE_TableIndirection["r%0"], name, desc);
			TABLE_TableIndirection["col%0"] = color or TABLE_TableIndirection["C%0"]['danger'];
			TABLE_TableIndirection["btn%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\199\40\111\11\209\56\99\11\252\35", "\127\147\77\23"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\170\232\246\124\127\153\214\250\125\126\159", "\16\235\134\149\20")]=Vector2.new(1, 0.5),[LUAOBFUSACTOR_DECRYPT_STR_0("\234\68\93\175\24\142\3\212", "\108\186\43\46\198\108\231")]=UDim2.new(1, -12, 0.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\1\182\239\4", "\28\82\223\149\97")]=UDim2.fromOffset(88, 28),[LUAOBFUSACTOR_DECRYPT_STR_0("\143\52\78\85\170\39\66\75\163\49\110\81\161\58\95\13", "\62\205\85\45")]=TABLE_TableIndirection["col%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\87\13\162\162\5\155\6\96\2\165\157\16\136\7\102\28\160\187\7\135\10\108", "\105\21\108\193\201\98\233")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\116\128\3\234", "\186\32\229\123\158\163\94")]=label,[LUAOBFUSACTOR_DECRYPT_STR_0("\34\44\127\222", "\87\100\67\17\170\121\197")]=Enum['Font']['GothamMedium'],[LUAOBFUSACTOR_DECRYPT_STR_0("\218\142\162\148\100\188\244\142", "\213\142\235\218\224\55")]=12,[LUAOBFUSACTOR_DECRYPT_STR_0("\60\167\225\209\43\173\245\202\26\241", "\165\104\194\153")]=TABLE_TableIndirection["col%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\166\37\205\164\219\72\153\147\63\215\136\246\81\130\149", "\237\231\80\185\203\153\61")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\135\63\146\118\64\183\3\137\104\64\149\57\152\119\73", "\37\197\80\224\18")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\41\67\94\67\186\13", "\212\121\34\44\38")]=TABLE_TableIndirection["r%0"]}, {corner(6),stroke(TABLE_TableIndirection["col%0"])});
			TABLE_TableIndirection["btn%0"]['MouseEnter']:Connect(function()
				tween(TABLE_TableIndirection["btn%0"], 0.15, {[LUAOBFUSACTOR_DECRYPT_STR_0("\152\187\41\14\121\191\253\75\180\190\30\23\127\163\225\78\187\168\47\11\125\180", "\62\218\218\74\101\30\205\146")]=0.85});
			end);
			TABLE_TableIndirection["btn%0"]['MouseLeave']:Connect(function()
				tween(TABLE_TableIndirection["btn%0"], 0.15, {[LUAOBFUSACTOR_DECRYPT_STR_0("\96\168\122\250\218\44\75\58\76\173\77\227\220\48\87\63\67\187\124\255\222\39", "\79\34\201\25\145\189\94\36")]=1});
			end);
			TABLE_TableIndirection["btn%0"]['MouseButton1Click']:Connect(function()
				safe(cb);
			end);
		end
		TABLE_TableIndirection["openPicker%0"] = nil;
		local function addColorPicker(page, name, desc, default, initial, cb)
			TABLE_TableIndirection["r%0"] = addRow(page, 56);
			TABLE_TableIndirection["r%0"]['ClipsDescendants'] = true;
			rowLabels(TABLE_TableIndirection["r%0"], name, desc);
			local h, s, v = initial:ToHSV();
			TABLE_TableIndirection["color%0"] = initial;
			TABLE_TableIndirection["expanded%0"] = false;
			TABLE_TableIndirection["api%0"] = {};
			TABLE_TableIndirection["header%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\116\41\242\30\98\65\84\56\229\4", "\52\32\76\138\106\32"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\139\243\42\195", "\26\216\154\80\166")]=UDim2.new(1, 0, 0, 56),[LUAOBFUSACTOR_DECRYPT_STR_0("\238\200\238\72\122\62\195\220\227\71\73\62\205\199\254\83\124\62\201\199\238\90", "\76\172\169\141\35\29")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\232\220\224\23", "\99\188\185\152")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\243\1\162\1\129\199\0\162\1\173\241\27\186\1\177", "\195\178\116\214\110")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\39\248\148\113\196\244\54\254\156\112\241\239\29\242\138", "\134\101\151\230\21\161")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\153\139\40\81\45\38", "\128\201\234\90\52\67\82")]=TABLE_TableIndirection["r%0"]});
			TABLE_TableIndirection["swatch%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\130\95\63\121\207", "\170\196\45\94\20"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\95\74\6\60\206\50\0\113\77\11\32", "\80\30\36\101\84\161\64")]=Vector2.new(1, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\150\94\10\75\204\50\169\95", "\91\198\49\121\34\184")]=UDim2.new(1, -12, 0, 19),[LUAOBFUSACTOR_DECRYPT_STR_0("\7\207\109\188", "\233\84\166\23\217")]=UDim2.fromOffset(34, 18),[LUAOBFUSACTOR_DECRYPT_STR_0("\90\121\251\237\49\51\119\109\246\226\21\46\116\119\234\181", "\65\24\24\152\134\86")]=TABLE_TableIndirection["color%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\158\56\250\77\185\37\219\64\166\50\216\64\164\50\228", "\41\220\87\136")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\21\55\241\245\192\191", "\203\69\86\131\144\174")]=TABLE_TableIndirection["header%0"]}, {corner(5),stroke(TABLE_TableIndirection["C%0"].line)});
			TABLE_TableIndirection["noTheme%0"][TABLE_TableIndirection["swatch%0"]] = true;
			TABLE_TableIndirection["panel%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\159\12\82\84\205", "\113\217\126\51\57\168\48\135"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\47\26\37\65\92\118\121\192", "\174\127\117\86\40\40\31\22")]=UDim2.fromOffset(12, 64),[LUAOBFUSACTOR_DECRYPT_STR_0("\239\50\86\222", "\187\188\91\44")]=UDim2.new(1, -24, 0, 140),[LUAOBFUSACTOR_DECRYPT_STR_0("\61\246\125\46\229\31\16\226\112\33\214\31\30\249\109\53\227\31\26\249\125\60", "\109\127\151\30\69\130")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\240\138\101\28\192\194\129\31\200\128\71\17\221\213\190", "\118\178\229\23\120\165\176\210")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\53\221\94\12\2\187", "\221\101\188\44\105\108\207\65")]=TABLE_TableIndirection["r%0"]});
			TABLE_TableIndirection["svBox%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\112\34\22\175\215", "\178\54\80\119\194"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\7\6\91\199", "\162\84\111\33\162\143\153\217")]=UDim2.fromOffset(260, 112),[LUAOBFUSACTOR_DECRYPT_STR_0("\5\218\30\129\32\201\18\159\41\223\62\133\43\212\15\217", "\234\71\187\125")]=Color3.fromHSV(h, 1, 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\51\51\67\95\251\3\15\88\65\251\33\53\73\94\242", "\158\113\92\49\59")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\220\113\83\117\240\18", "\103\140\16\33\16\158\102\186")]=TABLE_TableIndirection["panel%0"]}, {corner(4)});
			new(LUAOBFUSACTOR_DECRYPT_STR_0("\225\159\188\120\6", "\92\167\237\221\21\99"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\204\41\55\35", "\70\159\64\77")]=UDim2.fromScale(1, 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\78\81\244\29\197\64\71\241\30\244\64\94\240\8\132", "\122\183\47\50\159")]=Color3.new(1, 1, 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\62\181\75\133\208\2\174\85\133\242\56\191\74\140", "\224\162\81\199\47")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\216\68\33\56\141\252", "\227\136\37\83\93")]=TABLE_TableIndirection["svBox%0"]}, {corner(4),new(LUAOBFUSACTOR_DECRYPT_STR_0("\108\132\47\102\88\169\1\113\87\185", "\20\57\205\104"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\28\185\25\183\9\74\50\58\174\22\186\3", "\83\72\203\120\217\122\58")]=NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})})});
			new(LUAOBFUSACTOR_DECRYPT_STR_0("\154\251\186\174\170", "\223\220\137\219\195\207\221"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\32\65\69\231", "\76\115\40\63\130")]=UDim2.fromScale(1, 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\165\27\46\166\177\195\136\15\35\169\149\222\139\21\63\254", "\177\231\122\77\205\214")]=Color3.new(0, 0, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\102\28\83\68\172\78\119\26\91\69\153\85\92\22\77", "\60\36\115\33\32\201")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\135\119\69\67\66\74", "\193\215\22\55\38\44\62\93")]=TABLE_TableIndirection["svBox%0"]}, {corner(4),new(LUAOBFUSACTOR_DECRYPT_STR_0("\26\59\41\221\212\255\38\23\0\219", "\155\79\114\110\175\181"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\106\91\205\229\165\133\218\86", "\181\56\52\185\132\209\236")]=90,[LUAOBFUSACTOR_DECRYPT_STR_0("\6\94\211\166\86\185\251\32\73\220\171\92", "\154\82\44\178\200\37\201")]=NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(1, 0)})})});
			TABLE_TableIndirection["svCursor%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\83\249\3\0\187", "\21\21\139\98\109\222\40"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\37\226\175\132\53\22\220\163\133\52\16", "\90\100\140\204\236")]=Vector2.new(0.5, 0.5),[LUAOBFUSACTOR_DECRYPT_STR_0("\156\27\45\197\163\17\163\26", "\120\204\116\94\172\215")]=UDim2.fromScale(s, 1 - v),[LUAOBFUSACTOR_DECRYPT_STR_0("\48\180\162\13", "\31\99\221\216\104\139\194\16")]=UDim2.fromOffset(10, 10),[LUAOBFUSACTOR_DECRYPT_STR_0("\23\161\233\7\14\241\58\181\228\8\61\241\52\174\249\28\8\241\48\174\233\21", "\131\85\192\138\108\105")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\20\171\109\7\51\182\76\10\44\161\79\10\46\161\115", "\99\86\196\31")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\106\29\65\249\90\191", "\111\48\84\47\157\63\199")]=3,[LUAOBFUSACTOR_DECRYPT_STR_0("\42\7\146\162\32\14", "\78\122\102\224\199")]=TABLE_TableIndirection["svBox%0"]}, {new(LUAOBFUSACTOR_DECRYPT_STR_0("\201\49\87\12\38\11\171\237", "\159\156\120\20\99\84\101\206"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\95\30\158\113\205\83\69\38\120\24\153\108", "\71\28\113\236\31\168\33\23")]=UDim.new(1, 0)}),stroke(Color3.new(1, 1, 1), 2)});
			TABLE_TableIndirection["svHit%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\121\251\59\236\251\204\47\179\66\240", "\199\45\158\67\152\185\185\91"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\105\112\167\171", "\176\58\25\221\206\176\118\183")]=UDim2.fromScale(1, 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\16\16\218\13\233\170\61\4\215\2\218\170\51\31\202\22\239\170\55\31\218\31", "\216\82\113\185\102\142")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\118\94\56\204", "\29\34\59\64\184")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\51\11\92\197\23\72\6\10\71\196\22\82\30\17\90", "\61\114\126\40\170\85")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\246\1\121\61\198\107", "\19\172\72\23\89\163")]=4,[LUAOBFUSACTOR_DECRYPT_STR_0("\21\83\221\225\48\64\150\62\70\202\213\60\74\160\59", "\197\87\60\175\133\85\50")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\36\127\198\214\26\106", "\179\116\30\180")]=TABLE_TableIndirection["svBox%0"]});
			TABLE_TableIndirection["hueBar%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\205\212\236\140\238", "\225\139\166\141"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\125\132\231\41\89\130\251\46", "\64\45\235\148")]=UDim2.fromOffset(0, 124),[LUAOBFUSACTOR_DECRYPT_STR_0("\69\88\32\231", "\181\22\49\90\130\60")]=UDim2.fromOffset(260, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\45\208\187\2\8\195\183\28\1\213\155\6\3\222\170\90", "\105\111\177\216")]=Color3.new(1, 1, 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\150\21\218\22\21\193\135\19\210\23\32\218\172\31\196", "\179\212\122\168\114\112")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\73\123\150\200\119\110", "\173\25\26\228")]=TABLE_TableIndirection["panel%0"]}, {corner(6),new(LUAOBFUSACTOR_DECRYPT_STR_0("\35\95\238\168\25\18\127\204\180\12", "\120\118\22\169\218"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\228\47\186\233\213", "\134\167\64\214")]=ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),ColorSequenceKeypoint.new(1 / 6, Color3.fromRGB(255, 255, 0)),ColorSequenceKeypoint.new(2 / 6, Color3.fromRGB(0, 255, 0)),ColorSequenceKeypoint.new(3 / 6, Color3.fromRGB(0, 255, 255)),ColorSequenceKeypoint.new(4 / 6, Color3.fromRGB(0, 0, 255)),ColorSequenceKeypoint.new(5 / 6, Color3.fromRGB(255, 0, 255)),ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))})})});
			TABLE_TableIndirection["hueHandle%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\34\155\255\133\204", "\168\100\233\158\232\169"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\83\90\26\244\125\70\41\243\123\90\13", "\156\18\52\121")]=Vector2.new(0.5, 0.5),[LUAOBFUSACTOR_DECRYPT_STR_0("\115\31\200\195\144\188\10\209", "\191\35\112\187\170\228\213\101")]=UDim2.new(h, 0, 0.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\139\166\102\80", "\31\216\207\28\53\94\124")]=UDim2.fromOffset(6, 18),[LUAOBFUSACTOR_DECRYPT_STR_0("\3\38\168\4\92\51\40\190\1\95\2\40\167\0\73\114", "\59\65\71\203\111")]=Color3.new(1, 1, 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\53\175\110\112\142\30\7\30\186\121\68\130\20\49\27", "\84\119\192\28\20\235\108")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\182\215\42\242\31\36", "\33\236\158\68\150\122\92\201")]=3,[LUAOBFUSACTOR_DECRYPT_STR_0("\208\217\235\28\71\229", "\89\128\184\153\121\41\145")]=TABLE_TableIndirection["hueBar%0"]}, {corner(3),stroke(TABLE_TableIndirection["C%0"].bg, 1)});
			TABLE_TableIndirection["hueHit%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\216\48\188\149\0\146\20\47\227\59", "\91\140\85\196\225\66\231\96"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\3\183\164\184\95\58\183\185", "\43\83\216\215\209")]=UDim2.fromOffset(0, -6),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\174\170\14", "\78\43\199\208\107")]=UDim2.new(1, 0, 1, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\80\137\3\21\188\40\202\195\124\140\52\12\186\52\214\198\115\154\5\16\184\35", "\182\18\232\96\126\219\90\165")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\9\91\63\188", "\200\93\62\71")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\103\88\90\213\230\167\26\82\66\64\249\203\190\1\84", "\110\38\45\46\186\164\210")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\66\151\166\18\59\96", "\94\24\222\200\118")]=4,[LUAOBFUSACTOR_DECRYPT_STR_0("\63\207\52\29\24\210\21\16\7\197\22\16\5\197\42", "\121\125\160\70")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\195\235\41\183\253\254", "\210\147\138\91")]=TABLE_TableIndirection["hueBar%0"]});
			text({[LUAOBFUSACTOR_DECRYPT_STR_0("\1\248\208\95", "\115\85\157\168\43\80")]=LUAOBFUSACTOR_DECRYPT_STR_0("\215\127\191", "\169\159\58\231\55\236\169\38"),[LUAOBFUSACTOR_DECRYPT_STR_0("\55\206\177\4", "\28\113\161\223\112\164\116")]=Enum['Font']['Code'],[LUAOBFUSACTOR_DECRYPT_STR_0("\242\93\95\109\104\207\66\66", "\59\166\56\39\25")]=10,[LUAOBFUSACTOR_DECRYPT_STR_0("\134\221\222\220\96\189\212\201\218\16", "\35\210\184\166\168")]=TABLE_TableIndirection["C%0"]['dim'],[LUAOBFUSACTOR_DECRYPT_STR_0("\105\86\110\75\48\126\86\87", "\23\57\57\29\34\68")]=UDim2.fromOffset(284, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\99\56\5\41", "\76\48\81\127")]=UDim2.fromOffset(60, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\62\164\67\178\4\96", "\48\110\197\49\215\106\20\189")]=TABLE_TableIndirection["panel%0"]});
			TABLE_TableIndirection["hexBox%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\41\23\80\184\226\36\94", "\108\125\114\40\204\160\75\38"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\5\127\236\4\33\121\240\3", "\109\85\16\159")]=UDim2.fromOffset(284, 16),[LUAOBFUSACTOR_DECRYPT_STR_0("\20\250\183\94", "\208\71\147\205\59\123\56")]=UDim2.fromOffset(112, 28),[LUAOBFUSACTOR_DECRYPT_STR_0("\117\33\135\179\80\50\139\173\89\36\167\183\91\47\150\235", "\216\55\64\228")]=TABLE_TableIndirection["C%0"]['raised'],[LUAOBFUSACTOR_DECRYPT_STR_0("\139\141\38\214", "\139\223\232\94\162\217\149")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\229\143\34\242\190\93\197\217\135\38\227\143\80\210\193", "\170\181\227\67\145\219\53")]=LUAOBFUSACTOR_DECRYPT_STR_0("\26\183\44\149\126\167\60", "\210\57\229\126"),[LUAOBFUSACTOR_DECRYPT_STR_0("\136\63\235\165\55\205\140\180\55\239\180\17\202\143\183\33\185", "\227\216\83\138\198\82\165")]=TABLE_TableIndirection["C%0"]['dim'],[LUAOBFUSACTOR_DECRYPT_STR_0("\31\176\174\108\209\36\185\185\106\161", "\146\75\213\214\24")]=TABLE_TableIndirection["C%0"]['text'],[LUAOBFUSACTOR_DECRYPT_STR_0("\108\113\207\80", "\53\42\30\161\36\26\37")]=Enum['Font']['Code'],[LUAOBFUSACTOR_DECRYPT_STR_0("\201\252\239\244\206\240\237\229", "\128\157\153\151")]=12,[LUAOBFUSACTOR_DECRYPT_STR_0("\66\112\148\61\45\82\122\124\139\39\24\118\120\97", "\19\22\21\236\73\117")]=Enum['TextXAlignment']['Center'],[LUAOBFUSACTOR_DECRYPT_STR_0("\84\201\167\168\229\137\40\238\99\234\172\143\248\190\56\229", "\150\23\165\194\201\151\221\77")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\92\52\250\30\123\41\219\19\100\62\216\19\102\62\228", "\122\30\91\136")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\143\165\247\181\131\171", "\237\223\196\133\208")]=TABLE_TableIndirection["panel%0"]}, {corner(6),stroke(TABLE_TableIndirection["C%0"].line)});
			TABLE_TableIndirection["preview%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\250\26\194\179\91", "\154\188\104\163\222\62"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\5\226\62\242\4\70\205\59", "\162\85\141\77\155\112\47")]=UDim2.fromOffset(284, 52),[LUAOBFUSACTOR_DECRYPT_STR_0("\33\32\188\75", "\46\114\73\198")]=UDim2.fromOffset(112, 40),[LUAOBFUSACTOR_DECRYPT_STR_0("\135\127\117\228\41\88\170\107\120\235\13\69\169\113\100\188", "\42\197\30\22\143\78")]=TABLE_TableIndirection["color%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\81\74\77\59\118\87\108\54\105\64\111\54\107\64\83", "\95\19\37\63")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\65\45\181\249\127\19", "\103\17\76\199\156\17")]=TABLE_TableIndirection["panel%0"]}, {corner(6),stroke(TABLE_TableIndirection["C%0"].line)});
			TABLE_TableIndirection["noTheme%0"][TABLE_TableIndirection["preview%0"]] = true;
			TABLE_TableIndirection["resetBtn%0"] = new(LUAOBFUSACTOR_DECRYPT_STR_0("\135\47\157\252\126\5\173\238\188\36", "\154\211\74\229\136\60\112\217"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\159\19\249\196\17\78\160\18", "\39\207\124\138\173\101")]=UDim2.fromOffset(284, 102),[LUAOBFUSACTOR_DECRYPT_STR_0("\253\8\89\197", "\194\174\97\35\160")]=UDim2.fromOffset(112, 28),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\33\62\9\248\50\50\23\241\36\9\16\254\46\46\18\254\50\56\12\252\57", "\98\159\64\93")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\58\180\53\11", "\68\110\209\77\127\113\102\59")]=LUAOBFUSACTOR_DECRYPT_STR_0("\156\225\180\74\23", "\206\206\132\199\47\99\163"),[LUAOBFUSACTOR_DECRYPT_STR_0("\208\205\217\102", "\49\150\162\183\18")]=Enum['Font']['GothamMedium'],[LUAOBFUSACTOR_DECRYPT_STR_0("\125\47\163\53\41\233\2\76", "\120\41\74\219\65\122\128")]=12,[LUAOBFUSACTOR_DECRYPT_STR_0("\110\3\68\14\198\168\217\85\20\15", "\181\58\102\60\122\133\199")]=TABLE_TableIndirection["C%0"]['muted'],[LUAOBFUSACTOR_DECRYPT_STR_0("\114\247\200\22\88\70\246\200\22\116\112\237\208\22\104", "\26\51\130\188\121")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\202\141\62\29\76\12\196\80\242\135\28\16\81\27\251", "\57\136\226\76\121\41\126\151")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\18\214\27\86\42\247", "\29\66\183\105\51\68\131")]=TABLE_TableIndirection["panel%0"]}, {corner(6),stroke(TABLE_TableIndirection["C%0"].line)});
			TABLE_TableIndirection["resetBtn%0"]['MouseEnter']:Connect(function()
				tween(TABLE_TableIndirection["resetBtn%0"], 0.15, {[LUAOBFUSACTOR_DECRYPT_STR_0("\113\32\81\218\102\42\69\193\87\118", "\174\37\69\41")]=TABLE_TableIndirection["C%0"]['text']});
			end);
			TABLE_TableIndirection["resetBtn%0"]['MouseLeave']:Connect(function()
				tween(TABLE_TableIndirection["resetBtn%0"], 0.15, {[LUAOBFUSACTOR_DECRYPT_STR_0("\181\179\86\26\51\142\186\65\28\67", "\112\225\214\46\110")]=TABLE_TableIndirection["C%0"]['muted']});
			end);
			local function toHex(c)
				return string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\93\97\115\9\220\248\188\76\28\102\11\182\133", "\140\126\68\67\59\132\221"), math.floor((c['R'] * 255) + 0.5), math.floor((c['G'] * 255) + 0.5), math.floor((c['B'] * 255) + 0.5));
			end
			local function refresh(fire)
				TABLE_TableIndirection["color%0"] = Color3.fromHSV(h, s, v);
				TABLE_TableIndirection["swatch%0"]['BackgroundColor3'] = TABLE_TableIndirection["color%0"];
				TABLE_TableIndirection["preview%0"]['BackgroundColor3'] = TABLE_TableIndirection["color%0"];
				TABLE_TableIndirection["svBox%0"]['BackgroundColor3'] = Color3.fromHSV(h, 1, 1);
				TABLE_TableIndirection["svCursor%0"]['Position'] = UDim2.fromScale(s, 1 - v);
				TABLE_TableIndirection["hueHandle%0"]['Position'] = UDim2.new(h, 0, 0.5, 0);
				TABLE_TableIndirection["hexBox%0"]['Text'] = toHex(TABLE_TableIndirection["color%0"]);
				if fire then
					safe(cb, TABLE_TableIndirection["color%0"]);
					QueueSave();
				end
			end
			refresh(false);
			local dragSV, dragHue = false, false;
			local function svFrom(pos)
				s = math.clamp((pos['X'] - TABLE_TableIndirection["svBox%0"]['AbsolutePosition']['X']) / TABLE_TableIndirection["svBox%0"]['AbsoluteSize']['X'], 0, 1);
				v = 1 - math.clamp((pos['Y'] - TABLE_TableIndirection["svBox%0"]['AbsolutePosition']['Y']) / TABLE_TableIndirection["svBox%0"]['AbsoluteSize']['Y'], 0, 1);
				refresh(true);
			end
			local function hueFrom(pos)
				h = math.clamp((pos['X'] - TABLE_TableIndirection["hueBar%0"]['AbsolutePosition']['X']) / TABLE_TableIndirection["hueBar%0"]['AbsoluteSize']['X'], 0, 1);
				refresh(true);
			end
			TABLE_TableIndirection["svHit%0"]['InputBegan']:Connect(function(input)
				if (input['UserInputType'] == Enum['UserInputType']['MouseButton1']) then
					dragSV = true;
					svFrom(TABLE_TableIndirection["UserInputService%0"]:GetMouseLocation());
				end
			end);
			TABLE_TableIndirection["hueHit%0"]['InputBegan']:Connect(function(input)
				if (input['UserInputType'] == Enum['UserInputType']['MouseButton1']) then
					dragHue = true;
					hueFrom(TABLE_TableIndirection["UserInputService%0"]:GetMouseLocation());
				end
			end);
			track(TABLE_TableIndirection["UserInputService%0"]['InputChanged']:Connect(function(input)
				if (input['UserInputType'] == Enum['UserInputType']['MouseMovement']) then
					if dragSV then
						svFrom(TABLE_TableIndirection["UserInputService%0"]:GetMouseLocation());
					elseif dragHue then
						hueFrom(TABLE_TableIndirection["UserInputService%0"]:GetMouseLocation());
					end
				end
			end));
			track(TABLE_TableIndirection["UserInputService%0"]['InputEnded']:Connect(function(input)
				if (input['UserInputType'] == Enum['UserInputType']['MouseButton1']) then
					dragSV = false;
					dragHue = false;
				end
			end));
			TABLE_TableIndirection["hexBox%0"]['FocusLost']:Connect(function()
				TABLE_TableIndirection["hex%0"] = TABLE_TableIndirection["hexBox%0"]['Text']:gsub("#", "");
				if ((#TABLE_TableIndirection["hex%0"] == 6) and TABLE_TableIndirection["hex%0"]:match(LUAOBFUSACTOR_DECRYPT_STR_0("\188\52\31\0\9", "\230\226\17\103\43\45\127"))) then
					TABLE_TableIndirection["c%0"] = Color3.fromRGB(tonumber(TABLE_TableIndirection["hex%0"]:sub(1, 2), 16), tonumber(TABLE_TableIndirection["hex%0"]:sub(3, 4), 16), tonumber(TABLE_TableIndirection["hex%0"]:sub(5, 6), 16));
					h, s, v = TABLE_TableIndirection["c%0"]:ToHSV();
					refresh(true);
				else
					TABLE_TableIndirection["hexBox%0"]['Text'] = toHex(TABLE_TableIndirection["color%0"]);
				end
			end);
			TABLE_TableIndirection["resetBtn%0"]['MouseButton1Click']:Connect(function()
				h, s, v = default:ToHSV();
				refresh(true);
			end);
			local function setExpanded(value)
				TABLE_TableIndirection["expanded%0"] = value;
				tween(TABLE_TableIndirection["r%0"], 0.28, {[LUAOBFUSACTOR_DECRYPT_STR_0("\227\69\222\78", "\231\176\44\164\43")]=UDim2.new(1, 0, 0, (value and 214) or 56)});
			end
			TABLE_TableIndirection["header%0"]['MouseButton1Click']:Connect(function()
				if TABLE_TableIndirection["expanded%0"] then
					setExpanded(false);
					if (TABLE_TableIndirection["openPicker%0"] == TABLE_TableIndirection["api%0"]) then
						TABLE_TableIndirection["openPicker%0"] = nil;
					end
				else
					if (TABLE_TableIndirection["openPicker%0"] and (TABLE_TableIndirection["openPicker%0"] ~= TABLE_TableIndirection["api%0"])) then
						TABLE_TableIndirection["openPicker%0"].Close();
					end
					TABLE_TableIndirection["openPicker%0"] = TABLE_TableIndirection["api%0"];
					setExpanded(true);
				end
			end);
			TABLE_TableIndirection["api%0"].Close = function()
				setExpanded(false);
			end;
			TABLE_TableIndirection["api%0"].Set = function(c)
				h, s, v = c:ToHSV();
				refresh(true);
			end;
			return TABLE_TableIndirection["api%0"];
		end
		TABLE_TableIndirection["CombatPage%0"] = makePage(LUAOBFUSACTOR_DECRYPT_STR_0("\130\201\41\171\175\152", "\236\193\166\68\201\206"), LUAOBFUSACTOR_DECRYPT_STR_0("\39\52\197\115\5\47", "\17\100\91\168"), LUAOBFUSACTOR_DECRYPT_STR_0("\109\163\141\252\188\45\59\91\181\159\229\160\55", "\27\58\198\236\140\211\67"));
		TABLE_TableIndirection["AimbotPage%0"] = makePage(LUAOBFUSACTOR_DECRYPT_STR_0("\0\196\193\72\134\255", "\139\65\173\172\42\233"), LUAOBFUSACTOR_DECRYPT_STR_0("\166\95\124\218\203\99", "\40\231\54\17\184\164\23\128"), LUAOBFUSACTOR_DECRYPT_STR_0("\176\200\109\255\128\254\141\199\120\184\132\228\128\137\124\247\139\254\150\198\115\235", "\138\228\169\31\152\229"));
		TABLE_TableIndirection["VisualPage%0"] = makePage(LUAOBFUSACTOR_DECRYPT_STR_0("\250\5\81\32\225\207\223", "\163\172\108\34\85\128"), LUAOBFUSACTOR_DECRYPT_STR_0("\17\24\228\146\218\72\155", "\52\71\113\151\231\187\36\232"), LUAOBFUSACTOR_DECRYPT_STR_0("\83\131\125\160\111\205\121\186\119\159\125\163\115\158\107", "\205\22\237\24"));
		TABLE_TableIndirection["MovePage%0"] = makePage(LUAOBFUSACTOR_DECRYPT_STR_0("\147\119\101\205\52\187\118\103", "\89\222\24\19\168"), LUAOBFUSACTOR_DECRYPT_STR_0("\216\86\69\178\28\240\87\71", "\113\149\57\51\215"), LUAOBFUSACTOR_DECRYPT_STR_0("\90\120\202\164\227\195\109\117\217\246\225\207\119\100\217\185\238", "\160\25\16\171\214\130"));
		TABLE_TableIndirection["SettingsPage%0"] = makePage(LUAOBFUSACTOR_DECRYPT_STR_0("\66\221\35\105\116\220\140\98", "\235\17\184\87\29\29\178"), LUAOBFUSACTOR_DECRYPT_STR_0("\153\172\109\236\249\164\174\106", "\144\202\201\25\152"), LUAOBFUSACTOR_DECRYPT_STR_0("\20\222\10\107\187\75\233\4\121\200\1\109\232\67\232\14", "\96\89\187\100\30\155\42\135"));
		addTab(LUAOBFUSACTOR_DECRYPT_STR_0("\14\194\14\72\123\105", "\29\77\173\99\42\26"), LUAOBFUSACTOR_DECRYPT_STR_0("\167\237\10\120\90\251", "\109\228\130\103\26\59\143\151"), 1);
		addTab(LUAOBFUSACTOR_DECRYPT_STR_0("\162\113\163\219\49\94", "\228\227\24\206\185\94\42\79"), LUAOBFUSACTOR_DECRYPT_STR_0("\239\43\58\170\187\15", "\80\174\66\87\200\212\123"), 2);
		addTab(LUAOBFUSACTOR_DECRYPT_STR_0("\253\112\45\221\246\31\216", "\115\171\25\94\168\151"), LUAOBFUSACTOR_DECRYPT_STR_0("\58\187\247\52\246\0\161", "\151\108\210\132\65"), 3);
		addTab(LUAOBFUSACTOR_DECRYPT_STR_0("\245\91\31\77\203\68\201\64", "\52\184\52\105\40\166\33\167"), LUAOBFUSACTOR_DECRYPT_STR_0("\127\1\219\173\55\209\194\70", "\172\50\110\173\200\90\180"), 4);
		addTab(LUAOBFUSACTOR_DECRYPT_STR_0("\200\191\224\88\242\180\243\95", "\44\155\218\148"), LUAOBFUSACTOR_DECRYPT_STR_0("\222\254\56\47\221\41\182\254", "\209\141\155\76\91\180\71"), 5);
		addSection(TABLE_TableIndirection["CombatPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\210\78\236\98\41\199", "\122\147\29\191\43"));
		TABLE_TableIndirection["aimbotToggle%0"] = addToggle(TABLE_TableIndirection["CombatPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\157\217\83\11\213\235", "\30\220\176\62\105\186\159\236"), LUAOBFUSACTOR_DECRYPT_STR_0("\164\210\134\187\118\218\185\169\135\157\145\184\51\149\180\177\135\206\128\163\34\149\178\179\141\208\156", "\221\232\189\229\208\86\181\215"), false, function(v)
			TABLE_TableIndirection["Settings%0"]['Aimbot'] = v;
		end);
		addToggle(TABLE_TableIndirection["CombatPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\42\155\194\156\45\5\166\247\208\43", "\78\108\212\148\188"), LUAOBFUSACTOR_DECRYPT_STR_0("\8\24\27\53\172\20\179\63\123\4\21\48\235\5\175\122\41\17\16\43\249\19", "\90\91\112\116\66\140\96\219"), TABLE_TableIndirection["Settings%0"].ShowFOV, function(v)
			TABLE_TableIndirection["Settings%0"]['ShowFOV'] = v;
		end);
		addSection(TABLE_TableIndirection["CombatPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\237\126\62\46\207\144", "\100\165\55\106\108\128\200"));
		addToggle(TABLE_TableIndirection["CombatPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\237\194\37\177\202\211\113\182\221\219\48\189\193\206\35", "\211\165\171\81"), LUAOBFUSACTOR_DECRYPT_STR_0("\44\124\213\194\151\206\13\102\217\138\216\218\68\113\215\222\210\223\16\124\221\196", "\188\100\21\178\170\183"), TABLE_TableIndirection["Settings%0"].HitboxOn, function(v)
			TABLE_TableIndirection["Settings%0"]['HitboxOn'] = v;
			if not v then
				restoreHitboxes();
			end
		end);
		addSlider(TABLE_TableIndirection["CombatPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\86\30\68\177\189\213\62\4\89\169\183", "\173\30\119\48\211\210"), 12, 50, TABLE_TableIndirection["Settings%0"].HitboxSize, 1, function(v)
			TABLE_TableIndirection["Settings%0"]['HitboxSize'] = v;
		end);
		addSegment(TABLE_TableIndirection["CombatPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\115\208\45\56\84\193\121\42\90\203\45", "\90\59\185\89"), LUAOBFUSACTOR_DECRYPT_STR_0("\119\248\83\76\51\61\80\241\72\91\123\105\79\176\95\87\43\124\78\244", "\29\32\144\58\47\91"), {{LUAOBFUSACTOR_DECRYPT_STR_0("\59\48\112\185", "\193\115\85\17\221\33"),LUAOBFUSACTOR_DECRYPT_STR_0("\197\126\15\26", "\188\141\27\110\126\207")},{LUAOBFUSACTOR_DECRYPT_STR_0("\175\57\90\110", "\105\237\86\62\23\132\136"),LUAOBFUSACTOR_DECRYPT_STR_0("\155\70\56\84", "\125\217\41\92\45\67")},{LUAOBFUSACTOR_DECRYPT_STR_0("\120\184\10", "\59\57\212\102\63\227"),LUAOBFUSACTOR_DECRYPT_STR_0("\92\228\115", "\103\29\136\31")}}, TABLE_TableIndirection["Settings%0"].HitboxPart, function(v)
			TABLE_TableIndirection["Settings%0"]['HitboxPart'] = v;
			restoreHitboxes();
		end, 230);
		addSection(TABLE_TableIndirection["AimbotPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\42\15\232\13\99\42\7\244\13", "\38\126\78\186\74"));
		addSlider(TABLE_TableIndirection["AimbotPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\231\111\28\202\85\133\197\73\63\153", "\228\161\32\74\234\39"), 50, 600, TABLE_TableIndirection["Settings%0"].FOV, 0, function(v)
			TABLE_TableIndirection["Settings%0"]['FOV'] = v;
		end);
		addSlider(TABLE_TableIndirection["AimbotPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\13\137\5\186\228\137\58\133\45\151", "\224\94\228\106\213\144\225\84"), 0.1, 1, TABLE_TableIndirection["Settings%0"].Smooth, 2, function(v)
			TABLE_TableIndirection["Settings%0"]['Smooth'] = v;
		end);
		addSlider(TABLE_TableIndirection["AimbotPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\128\250\66\196\8\179\252\78\207\15", "\97\208\136\39\160"), 0, 3, TABLE_TableIndirection["Settings%0"].Prediction, 2, function(v)
			TABLE_TableIndirection["Settings%0"]['Prediction'] = v;
		end);
		addSegment(TABLE_TableIndirection["AimbotPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\194\40\209\129\92\6\123\230\40\209\146", "\91\150\73\163\230\57\114"), LUAOBFUSACTOR_DECRYPT_STR_0("\121\165\183\68\245\75\170\87\75\237\179\95\253\9\177\75\14\161\189\85\251\24", "\63\46\205\210\54\144\107\222"), {{LUAOBFUSACTOR_DECRYPT_STR_0("\216\41\245\67", "\188\144\76\148\39"),LUAOBFUSACTOR_DECRYPT_STR_0("\173\78\116\160", "\53\229\43\21\196\44\108\66")},{LUAOBFUSACTOR_DECRYPT_STR_0("\7\58\5\182\60", "\197\83\85\119"),LUAOBFUSACTOR_DECRYPT_STR_0("\123\245\12\36\64", "\87\47\154\126")},{LUAOBFUSACTOR_DECRYPT_STR_0("\25\119\195\207", "\180\75\24\172\187\178"),LUAOBFUSACTOR_DECRYPT_STR_0("\235\204\232\2\114\43\240\20\241\214\234\23\76\37\235\4", "\112\163\185\133\99\28\68\153")}}, TABLE_TableIndirection["Settings%0"].Part, function(v)
			TABLE_TableIndirection["Settings%0"]['Part'] = v;
		end);
		addSegment(TABLE_TableIndirection["AimbotPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\159\85\238\204\174\64\188\219\185\93\243\217\162\64\229", "\171\203\52\156"), LUAOBFUSACTOR_DECRYPT_STR_0("\146\197\106\241\62\142\253\179\191\198\120\178\62\193\169\161\168\205\120\165\57", "\192\218\170\29\209\74\225\221"), {{LUAOBFUSACTOR_DECRYPT_STR_0("\167\213\72\20\206\67\42\248", "\157\227\188\59\96\175\45\73"),LUAOBFUSACTOR_DECRYPT_STR_0("\155\195\196\2\48\177\201\210", "\81\223\170\183\118")},{LUAOBFUSACTOR_DECRYPT_STR_0("\14\68\173\183\237\58", "\113\70\33\204\219\153\82"),LUAOBFUSACTOR_DECRYPT_STR_0("\217\135\62\48\234\184", "\208\145\226\95\92\158")},{LUAOBFUSACTOR_DECRYPT_STR_0("\157\243\210\95\252\253\174\17\172", "\120\222\129\189\44\143\149\207"),LUAOBFUSACTOR_DECRYPT_STR_0("\167\3\18\162\217\67\120\177\150", "\216\228\113\125\209\170\43\25")}}, TABLE_TableIndirection["Settings%0"].TargetPriority, function(v)
			TABLE_TableIndirection["Settings%0"]['TargetPriority'] = v;
		end, 230);
		addSegment(TABLE_TableIndirection["AimbotPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\223\213\110\5\97\118\248\234\93", "\30\153\154\56\37\18"), LUAOBFUSACTOR_DECRYPT_STR_0("\62\176\229\15\55\24\249\248\30\123\14\168\226\13\41\24\249\254\2\63\20\186\246\24\52\15", "\91\125\217\151\108"), {{LUAOBFUSACTOR_DECRYPT_STR_0("\218\26\180\115\210\252", "\190\153\115\198\16"),LUAOBFUSACTOR_DECRYPT_STR_0("\25\114\184\132\54\126", "\231\90\27\202")},{LUAOBFUSACTOR_DECRYPT_STR_0("\178\149\77\163\76\132", "\62\225\228\56\194"),LUAOBFUSACTOR_DECRYPT_STR_0("\37\168\172\44\102\80", "\53\118\217\217\77\20")}}, TABLE_TableIndirection["Settings%0"].FOVShape, function(v)
			TABLE_TableIndirection["Settings%0"]['FOVShape'] = v;
		end, 170);
		addToggle(TABLE_TableIndirection["AimbotPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\143\48\210\158\63\188\19\247\219", "\79\201\127\132\190"), LUAOBFUSACTOR_DECRYPT_STR_0("\9\26\224\196\41\0\236\205\104\4\252\197\59\29\231\206\104\50\198\255\104\23\224\219\43\24\236", "\169\72\116\137"), TABLE_TableIndirection["Settings%0"].FOVPulse, function(v)
			TABLE_TableIndirection["Settings%0"]['FOVPulse'] = v;
		end);
		addToggle(TABLE_TableIndirection["AimbotPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\78\123\197\170\57\121\193\163\122\113", "\198\25\26\169"), LUAOBFUSACTOR_DECRYPT_STR_0("\96\116\211\41\149\84\59\122\71\118\208\47\130\66\59\125\76\123\212\40\131\17\108\126\69\127\206", "\31\41\19\189\70\231\49\27"), TABLE_TableIndirection["Settings%0"].WallCheck, function(v)
			TABLE_TableIndirection["Settings%0"]['WallCheck'] = v;
		end);
		addToggle(TABLE_TableIndirection["AimbotPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\131\214\80\235\247\208\89\227\180\216", "\134\215\179\49"), LUAOBFUSACTOR_DECRYPT_STR_0("\207\241\64\227\71\83\237\251\85\237\21\28\239\224\89\166\76\28\244\230\22\233\66\29\161\224\83\231\88", "\115\129\148\54\134\53"), TABLE_TableIndirection["Settings%0"].TeamCheck, function(v)
			TABLE_TableIndirection["Settings%0"]['TeamCheck'] = v;
		end);
		addToggle(TABLE_TableIndirection["AimbotPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\192\128\94\68\202\13\83\239\149\89\78\214\12\0", "\115\137\231\48\43\184\104"), LUAOBFUSACTOR_DECRYPT_STR_0("\247\236\12\230\187\224\51\214\234\17\163\166\174\43\214\169\40\236\171\172\48\193\169\28\241\160\165\49\221\250", "\95\185\137\122\131\201\192"), TABLE_TableIndirection["Settings%0"].IgnoreFriends, function(v)
			TABLE_TableIndirection["Settings%0"]['IgnoreFriends'] = v;
		end);
		addToggle(TABLE_TableIndirection["AimbotPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\66\55\213\20\32\98\118\203\28\38\125", "\69\22\86\167\115"), LUAOBFUSACTOR_DECRYPT_STR_0("\116\139\68\138\5\40\86\144\72\193\81\38\74\131\66\149\5\50\86\144\78\141\5\51\80\129\94\193\65\46\93\196\72\147\5\43\93\133\81\132", "\71\56\228\39\225\37"), TABLE_TableIndirection["Settings%0"].TargetLock, function(v)
			TABLE_TableIndirection["Settings%0"]['TargetLock'] = v;
		end);
		addSlider(TABLE_TableIndirection["AimbotPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\132\224\246\46\255\249\98\163\246\237\61\249\229\98\180\228\232\40\227", "\66\208\129\132\73\154\141"), 0.1, 2, TABLE_TableIndirection["Settings%0"].TargetSwitchDelay, 2, function(v)
			TABLE_TableIndirection["Settings%0"]['TargetSwitchDelay'] = v;
		end);
		addSection(TABLE_TableIndirection["AimbotPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\105\112\248\201\120\112\250\206", "\157\42\63\182"));
		addKeybind(TABLE_TableIndirection["AimbotPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\250\55\36\254\192\207\126\34\249\214", "\175\187\94\73\156"), LUAOBFUSACTOR_DECRYPT_STR_0("\13\58\86\96\15\43\193\50\127\76\47\21\55\210\41\51\92\96\15\43\197\102\62\70\45\25\44\212", "\160\70\95\47\64\123\67"), TABLE_TableIndirection["Settings%0"].AimbotKey, function(key)
			TABLE_TableIndirection["Settings%0"]['AimbotKey'] = key;
		end);
		addSegment(TABLE_TableIndirection["AimbotPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\245\95\109\113\211\85\112\52", "\81\190\58\20"), LUAOBFUSACTOR_DECRYPT_STR_0("\120\66\177\112\143\44\31\60\94\13\190\120\143\45", "\83\44\45\214\23\227\73\63"), {{LUAOBFUSACTOR_DECRYPT_STR_0("\193\181\65\185\44\240", "\64\149\218\38\222"),LUAOBFUSACTOR_DECRYPT_STR_0("\46\168\205\215\22\162", "\176\122\199\170")},{LUAOBFUSACTOR_DECRYPT_STR_0("\58\4\188\212", "\75\114\107\208\176\81"),LUAOBFUSACTOR_DECRYPT_STR_0("\209\36\37\113", "\21\153\75\73")}}, TABLE_TableIndirection["Settings%0"].KeyMode, function(v)
			TABLE_TableIndirection["Settings%0"]['KeyMode'] = v;
		end, 170);
		addSection(TABLE_TableIndirection["AimbotPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\57\54\127\212\157\116\36\50\99\209\151", "\38\105\115\45\146\210"));
		addSlider(TABLE_TableIndirection["AimbotPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\49\21\13\120\115\16\23\24\115", "\83\98\118\108\22"), 10, 60, TABLE_TableIndirection["Settings%0"].ScanRate, 0, function(v)
			TABLE_TableIndirection["Settings%0"]['ScanRate'] = v;
		end);
		addSection(TABLE_TableIndirection["AimbotPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\104\219\73\8\132\182\2\103\200\92", "\67\41\139\25\77\197\228"));
		addColorPicker(TABLE_TableIndirection["AimbotPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\206\129\248\106\85\225\250\173\194\47\22\235\231\162\193\56", "\136\136\206\174\74\54"), LUAOBFUSACTOR_DECRYPT_STR_0("\7\252\138\138\65\228\180\34\179\146\141\86\228\175\37\225\129\128\71\228\169\37\247\143\144\64", "\219\68\147\230\229\51\196"), TABLE_TableIndirection["C%0"].accent, TABLE_TableIndirection["Settings%0"].FOVColor, function(c)
			TABLE_TableIndirection["Settings%0"]['FOVColor'] = c;
		end);
		addSection(TABLE_TableIndirection["VisualPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\83\120\211\210\42\102\34", "\123\28\46\150\128\102\39"));
		addToggle(TABLE_TableIndirection["VisualPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\32\122\45\23\22\136\40\97\0\91", "\21\101\41\125\55\123\233\91"), LUAOBFUSACTOR_DECRYPT_STR_0("\177\252\167\231\15\58\194\237\161\225\76\55\148\238\188\234\76\61\148\238\188\255\13\43\194\233\171\255\3\37", "\82\226\139\206\147\108"), false, function(v)
			TABLE_TableIndirection["Settings%0"]['ESP'] = v;
		end);
		addToggle(TABLE_TableIndirection["VisualPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\211\9\85\180\223", "\172\145\102\45\209"), LUAOBFUSACTOR_DECRYPT_STR_0("\208\31\13\87\203\127\180\15\3\88\203\127\230\2\25\78\143\62\241\12\15\72\203\123\250\8\1\89", "\30\148\109\108\32\235"), TABLE_TableIndirection["Settings%0"].Boxes, function(v)
			TABLE_TableIndirection["Settings%0"]['Boxes'] = v;
		end);
		addToggle(TABLE_TableIndirection["VisualPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\58\70\28\90\7", "\63\116\39\113"), LUAOBFUSACTOR_DECRYPT_STR_0("\11\88\200\251\80\38\169\53\85\135\237\30\44\232\60\89\212\248\17\38\171\61", "\200\88\48\167\140\112\72"), TABLE_TableIndirection["Settings%0"].Names, function(v)
			TABLE_TableIndirection["Settings%0"]['Names'] = v;
		end);
		addToggle(TABLE_TableIndirection["VisualPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\246\76\41\168\231\208\77", "\130\162\62\72\203"), LUAOBFUSACTOR_DECRYPT_STR_0("\135\165\188\103\199\129\175\241\170\185\184\48\147\143\175\248\162\180\181\48\130\142\234\240\186", "\157\195\215\221\16\231\224\143"), TABLE_TableIndirection["Settings%0"].Tracers, function(v)
			TABLE_TableIndirection["Settings%0"]['Tracers'] = v;
		end);
		addToggle(TABLE_TableIndirection["VisualPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\87\220\10\128\247\119\153\9\141\241", "\131\31\185\107\236"), LUAOBFUSACTOR_DECRYPT_STR_0("\152\163\69\51\235\163\79\37\167\191\66\100\169\174\89\45\175\174\10\38\164\179", "\68\203\203\42"), TABLE_TableIndirection["Settings%0"].Health, function(v)
			TABLE_TableIndirection["Settings%0"]['Health'] = v;
		end);
		addToggle(TABLE_TableIndirection["VisualPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\107\82\116\213\87\95\53\215\86\90\119\220\81\68", "\185\35\55\21"), LUAOBFUSACTOR_DECRYPT_STR_0("\128\241\176\147\243\209\143\196\165\248\179\145\182\185\177\129\171\237\255\144\188\185\189\133\161", "\228\211\153\223"), TABLE_TableIndirection["Settings%0"].HealthNums, function(v)
			TABLE_TableIndirection["Settings%0"]['HealthNums'] = v;
		end);
		addToggle(TABLE_TableIndirection["VisualPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\124\234\89\57\122\2\91\251", "\102\52\143\56\93\90"), LUAOBFUSACTOR_DECRYPT_STR_0("\117\26\161\36\233\6\19\175\60\165\73\25\224\45\235\67\26\185\104\237\67\22\164\59", "\133\38\119\192\72"), TABLE_TableIndirection["Settings%0"].HeadDot, function(v)
			TABLE_TableIndirection["Settings%0"]['HeadDot'] = v;
		end);
		addToggle(TABLE_TableIndirection["VisualPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\196\170\113\247\242\181\123\245", "\155\151\193\20"), LUAOBFUSACTOR_DECRYPT_STR_0("\10\182\1\89\59\47\228\19\69\126\34\161\20\65\117\110\162\15\92\59\43\165\3\70\59\43\170\5\67\98", "\27\78\196\96\46"), TABLE_TableIndirection["Settings%0"].Skeleton, function(v)
			TABLE_TableIndirection["Settings%0"]['Skeleton'] = v;
		end);
		addToggle(TABLE_TableIndirection["VisualPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\201\233\189\171\105\76\77\227\233", "\44\138\155\210\216\26\36"), LUAOBFUSACTOR_DECRYPT_STR_0("\152\95\182\73\238\179\76\176\72\189\186\89\249\73\254\169\72\188\84\189\184\72\183\78\248\169", "\157\219\45\217\58"), TABLE_TableIndirection["Settings%0"].Crosshair, function(v)
			TABLE_TableIndirection["Settings%0"]['Crosshair'] = v;
		end);
		addToggle(TABLE_TableIndirection["VisualPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\131\181\57\194\190\164\184\55\216\243\177\169\51\198", "\158\208\221\86\181"), LUAOBFUSACTOR_DECRYPT_STR_0("\193\77\249\4\96\187\42\225\86\170\46\19\143\120\239\79\170\18\47\170\42\160\85\239\10\45", "\88\128\33\138\107\64\223"), TABLE_TableIndirection["Settings%0"].TeamShow, function(v)
			TABLE_TableIndirection["Settings%0"]['TeamShow'] = v;
		end);
		addSection(TABLE_TableIndirection["VisualPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\245\192\84\86\136\73\174\242\215\65\65\132\85\201\242", "\142\161\146\21\21\205\27"));
		addSegment(TABLE_TableIndirection["VisualPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\36\232\125\0\31\235\140\31\232\117\4\19\247", "\172\112\154\28\99\122\153"), LUAOBFUSACTOR_DECRYPT_STR_0("\252\255\165\12\206\183\180\22\206\183\172\23\197\242\224\13\223\246\178\10\216", "\126\171\151\192"), {{LUAOBFUSACTOR_DECRYPT_STR_0("\10\17\233", "\57\94\126\153\124\103\154"),LUAOBFUSACTOR_DECRYPT_STR_0("\35\200\89", "\33\119\167\41\121\182")},{LUAOBFUSACTOR_DECRYPT_STR_0("\106\189\63\82\167\86", "\88\39\212\91\54\203\51\124"),LUAOBFUSACTOR_DECRYPT_STR_0("\1\165\176\142\119\203", "\168\76\204\212\234\27\174")},{LUAOBFUSACTOR_DECRYPT_STR_0("\174\11\39\80\6\235", "\46\236\100\83\36\105\134"),LUAOBFUSACTOR_DECRYPT_STR_0("\27\245\147\148\142\2", "\111\89\154\231\224\225")}}, TABLE_TableIndirection["Settings%0"].TracerOrigin, function(v)
			TABLE_TableIndirection["Settings%0"]['TracerOrigin'] = v;
		end, 230);
		addSection(TABLE_TableIndirection["VisualPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\222\245\42\138\30\202", "\177\157\186\102\197\76\153\188"));
		TABLE_TableIndirection["espPickers%0"] = {};
		addColorPicker(TABLE_TableIndirection["VisualPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\131\178\44\239\135\141\16\239\161\177\44\160\176\173", "\207\194\222\64"), LUAOBFUSACTOR_DECRYPT_STR_0("\40\112\195\0\141\197\30\103\206\84\128\218\21\114\151\65\156\147\20\123\212\69", "\179\123\21\183\32\232"), Color3.fromRGB(255, 50, 50), TABLE_TableIndirection["Settings%0"].ESPColor, function(c)
			TABLE_TableIndirection["Settings%0"]['ESPColor'] = c;
			for _, p in pairs(TABLE_TableIndirection["espPickers%0"]) do
				p.Set(c);
			end
		end);
		TABLE_TableIndirection["espPickers%0"]['box'] = addColorPicker(TABLE_TableIndirection["VisualPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\228\44\212\125\176\13\202\44\222", "\98\166\67\172\93\211"), LUAOBFUSACTOR_DECRYPT_STR_0("\194\237\210\216\27\10\224\232\251\210\198", "\130\135\131\183\181\98\42"), Color3.fromRGB(255, 50, 50), TABLE_TableIndirection["Settings%0"].BoxColor, function(c)
			TABLE_TableIndirection["Settings%0"]['BoxColor'] = c;
		end);
		TABLE_TableIndirection["espPickers%0"]['name'] = addColorPicker(TABLE_TableIndirection["VisualPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\237\183\54\230\96\192\185\55\236\50", "\64\163\214\91\131"), LUAOBFUSACTOR_DECRYPT_STR_0("\63\46\21\51\44\81\46\22\50\127\21\38\11\34\62\31\44\29", "\95\113\79\120\86"), Color3.fromRGB(255, 50, 50), TABLE_TableIndirection["Settings%0"].NameColor, function(c)
			TABLE_TableIndirection["Settings%0"]['NameColor'] = c;
		end);
		TABLE_TableIndirection["espPickers%0"]['tracer'] = addColorPicker(TABLE_TableIndirection["VisualPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\159\230\33\179\131\31\127\202\164\248\47\162", "\169\203\148\64\208\230\109\95"), LUAOBFUSACTOR_DECRYPT_STR_0("\252\5\7\177\47\9\124\234\193\25\3\161", "\134\168\119\102\210\74\123\92"), Color3.fromRGB(255, 50, 50), TABLE_TableIndirection["Settings%0"].TracerColor, function(c)
			TABLE_TableIndirection["Settings%0"]['TracerColor'] = c;
		end);
		addSection(TABLE_TableIndirection["VisualPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\153\47\50\126\142", "\57\203\110\124"));
		addSlider(TABLE_TableIndirection["VisualPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\131\210\13\105\4\167\192\1\40\14\173\214", "\96\206\179\117\73"), 100, 5000, TABLE_TableIndirection["Settings%0"].MaxDist, 0, function(v)
			TABLE_TableIndirection["Settings%0"]['MaxDist'] = v;
		end);
		addSegment(TABLE_TableIndirection["VisualPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\165\42\100\49\128\45\116\32\193\54\121\44\149", "\69\225\67\23"), LUAOBFUSACTOR_DECRYPT_STR_0("\247\148\53\179\213\155\153\116\202\193\61\180\209\134\202", "\27\164\225\83\213\188\227\185"), {{"m","m"},{LUAOBFUSACTOR_DECRYPT_STR_0("\155\27\151\250\212", "\167\232\111\226\158"),LUAOBFUSACTOR_DECRYPT_STR_0("\87\48\58\28\8", "\209\36\68\79\120\123\61\144")}}, TABLE_TableIndirection["Settings%0"].DistanceUnit, function(v)
			TABLE_TableIndirection["Settings%0"]['DistanceUnit'] = v;
		end, 170);
		addSection(TABLE_TableIndirection["MovePage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\123\192\127\16\64\127\209\118\30\36", "\96\44\129\51\91"));
		addToggle(TABLE_TableIndirection["MovePage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\58\25\9\180\225\225\247\16\79\27\167\255\227\179\6\31\9\163\247", "\147\117\111\108\198\147\136"), LUAOBFUSACTOR_DECRYPT_STR_0("\44\185\208\87\15\246\193\65\25\162\205\89\74\161\195\88\1\246\209\68\15\179\198", "\52\106\214\162"), TABLE_TableIndirection["Settings%0"].WalkOn, function(v)
			TABLE_TableIndirection["Settings%0"]['WalkOn'] = v;
			TABLE_TableIndirection["hum%0"] = getHum();
			if TABLE_TableIndirection["hum%0"] then
				TABLE_TableIndirection["hum%0"]['WalkSpeed'] = (v and TABLE_TableIndirection["Settings%0"]['WalkSpeed']) or 16;
			end
		end);
		addSlider(TABLE_TableIndirection["MovePage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\50\14\210\175\177\22\31\219\161\245", "\145\101\111\190\196"), 8, 500, TABLE_TableIndirection["Settings%0"].WalkSpeed, 0, function(v)
			TABLE_TableIndirection["Settings%0"]['WalkSpeed'] = v;
			if TABLE_TableIndirection["Settings%0"]['WalkOn'] then
				TABLE_TableIndirection["hum%0"] = getHum();
				if TABLE_TableIndirection["hum%0"] then
					TABLE_TableIndirection["hum%0"]['WalkSpeed'] = v;
				end
			end
		end);
		addSection(TABLE_TableIndirection["MovePage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\122\248\172\220", "\47\48\173\225\140"));
		addToggle(TABLE_TableIndirection["MovePage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\108\219\132\202\57\165\71\200\193\210\62\161\83\141\145\215\60\169\81", "\204\35\173\225\184\75"), LUAOBFUSACTOR_DECRYPT_STR_0("\200\75\241\142\227\230\13\251\87\247\130\235\230\4\251\73\243\205\246\169\25\235\86", "\110\142\36\131\237\134\198"), TABLE_TableIndirection["Settings%0"].JumpOn, function(v)
			TABLE_TableIndirection["Settings%0"]['JumpOn'] = v;
			TABLE_TableIndirection["hum%0"] = getHum();
			if TABLE_TableIndirection["hum%0"] then
				safe(function()
					TABLE_TableIndirection["hum%0"]['UseJumpPower'] = true;
					TABLE_TableIndirection["hum%0"]['JumpPower'] = (v and TABLE_TableIndirection["Settings%0"]['JumpPower']) or 50;
				end);
			end
		end);
		addSlider(TABLE_TableIndirection["MovePage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\81\85\190\224\120\107\79\164\245\42", "\88\27\32\211\144"), 10, 500, TABLE_TableIndirection["Settings%0"].JumpPower, 0, function(v)
			TABLE_TableIndirection["Settings%0"]['JumpPower'] = v;
			if TABLE_TableIndirection["Settings%0"]['JumpOn'] then
				TABLE_TableIndirection["hum%0"] = getHum();
				if TABLE_TableIndirection["hum%0"] then
					safe(function()
						TABLE_TableIndirection["hum%0"]['UseJumpPower'] = true;
						TABLE_TableIndirection["hum%0"]['JumpPower'] = v;
					end);
				end
			end
		end);
		addToggle(TABLE_TableIndirection["MovePage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\162\189\187\46\217\164\95\117\205\163\183\44\139\165\94\121\138\163\170", "\16\237\203\222\92\171\205\59"), LUAOBFUSACTOR_DECRYPT_STR_0("\199\190\175\139\26\243\226\164\174\156\16\190\161\185\180\152\95\187\228\184\186\128\11", "\211\129\209\221\232\127"), TABLE_TableIndirection["Settings%0"].HipOn, function(v)
			TABLE_TableIndirection["Settings%0"]['HipOn'] = v;
			TABLE_TableIndirection["hum%0"] = getHum();
			if TABLE_TableIndirection["hum%0"] then
				TABLE_TableIndirection["hum%0"]['HipHeight'] = (v and TABLE_TableIndirection["Settings%0"]['HipHeight']) or 2;
			end
		end);
		addSlider(TABLE_TableIndirection["MovePage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\33\70\86\100\244\24\185\65\1\91", "\38\105\47\38\68\156\125\208"), 0, 20, TABLE_TableIndirection["Settings%0"].HipHeight, 1, function(v)
			TABLE_TableIndirection["Settings%0"]['HipHeight'] = v;
			if TABLE_TableIndirection["Settings%0"]['HipOn'] then
				TABLE_TableIndirection["hum%0"] = getHum();
				if TABLE_TableIndirection["hum%0"] then
					TABLE_TableIndirection["hum%0"]['HipHeight'] = v;
				end
			end
		end);
		addToggle(TABLE_TableIndirection["MovePage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\165\142\163\77\242\33\152\133\229\78\233\37\156", "\72\236\224\197\36\156"), LUAOBFUSACTOR_DECRYPT_STR_0("\238\190\73\154\132\162\74\202\201\162\64\199\197\162\86", "\234\164\203\36"), TABLE_TableIndirection["Settings%0"].InfJump, function(v)
			TABLE_TableIndirection["Settings%0"]['InfJump'] = v;
		end);
		addSection(TABLE_TableIndirection["MovePage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\40\194\172\14\165\109\88\93\37", "\18\107\141\224\66\236\62\17"));
		addToggle(TABLE_TableIndirection["MovePage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\133\160\92\244\167\166\12", "\151\203\207\124"), LUAOBFUSACTOR_DECRYPT_STR_0("\227\27\253\9\160\157\22\214\219\15\246\10\160\158\31\200\216\9", "\164\180\122\145\98\128\233\126"), TABLE_TableIndirection["Settings%0"].NoClip, function(v)
			TABLE_TableIndirection["Settings%0"]['NoClip'] = v;
		end);
		addSection(TABLE_TableIndirection["MovePage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\157\40\34", "\173\219\100\123"));
		addSegment(TABLE_TableIndirection["MovePage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\146\36\85\75\30\187\44\73", "\115\212\72\44\107"), LUAOBFUSACTOR_DECRYPT_STR_0("\174\224\80\107\203\43\162\75\143\230\64\107\189\115\238\87\129\224\91\102\245\98\238\103\170\253\85\127\248\110\243\4\159\251\81\115\241\58\166", "\36\236\143\52\18\157\78\206"), {{LUAOBFUSACTOR_DECRYPT_STR_0("\114\78\60\86\201\85\77\55\76\246\68\88", "\159\48\33\88\47"),LUAOBFUSACTOR_DECRYPT_STR_0("\61\77\29\235\133\228\59\56\28\75\13\235", "\87\127\34\121\146\211\129\87")},{LUAOBFUSACTOR_DECRYPT_STR_0("\136\199\151\237\40\59", "\20\203\129\229\140\69\94\175"),LUAOBFUSACTOR_DECRYPT_STR_0("\140\224\70\55\226\231", "\130\207\166\52\86\143")}}, TABLE_TableIndirection["Settings%0"].FlyMode, function(v)
			TABLE_TableIndirection["Settings%0"]['FlyMode'] = v;
		end, 230);
		addToggle(TABLE_TableIndirection["MovePage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\108\86\10", "\65\42\58\115\141\202\27"), LUAOBFUSACTOR_DECRYPT_STR_0("\124\37\102\229\111\95\11\21\204\32\93\1\25\129\28\91\5\86\196\96\104\16\71\205\111\94\20\26\197\32\92\10", "\79\43\100\53\161"), TABLE_TableIndirection["Settings%0"].Fly, function(v)
			TABLE_TableIndirection["Settings%0"]['Fly'] = v;
		end);
		addSlider(TABLE_TableIndirection["MovePage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\214\200\214\15\71\92\51\65\244", "\36\144\164\175\47\52\44\86"), 10, 500, TABLE_TableIndirection["Settings%0"].FlySpeed, 0, function(v)
			TABLE_TableIndirection["Settings%0"]['FlySpeed'] = v;
		end);
		addSection(TABLE_TableIndirection["MovePage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\29\38\200\135", "\31\80\111\155\196"));
		addToggle(TABLE_TableIndirection["MovePage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\114\87\245\221\98\114\127\202", "\79\51\57\129\180"), LUAOBFUSACTOR_DECRYPT_STR_0("\7\160\53\78\220\57\166\112\10\137\122\191\57\86\204\35\183\112\83\208\52\185", "\185\87\210\80\56"), TABLE_TableIndirection["Settings%0"].AntiAFK, function(v)
			TABLE_TableIndirection["Settings%0"]['AntiAFK'] = v;
		end);
		addSection(TABLE_TableIndirection["SettingsPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\229\37\156\107\82\203", "\53\166\112\206\56\29\153"));
		addToggle(TABLE_TableIndirection["SettingsPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\81\6\69\30\250\34\50\16\67\24\230\32\96", "\79\18\115\54\106\149"), LUAOBFUSACTOR_DECRYPT_STR_0("\120\87\94\82\36\126\136\230\83\93\91\76\101\112\130\179\89\87\14\73\44\105\133\230\75\18\77\75\54\105\130\171\10\81\91\76\54\114\159", "\198\42\50\46\62\69\29\237"), TABLE_TableIndirection["Settings%0"].CustomCursor, function(v)
			TABLE_TableIndirection["Settings%0"]['CustomCursor'] = v;
		end);
		addSegment(TABLE_TableIndirection["SettingsPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\225\175\4\42\39\178\78\72\214\163\26\60", "\59\162\218\118\89\72\192\110"), LUAOBFUSACTOR_DECRYPT_STR_0("\179\247\163\74\73\13\50\18\141\255\160\90\8\14\116\65\145\246\181\31\75\20\96\18\138\236", "\97\229\158\208\63\40\97\18"), {{LUAOBFUSACTOR_DECRYPT_STR_0("\14\220\125\85\159\37\207\123\84", "\236\77\174\18\38"),LUAOBFUSACTOR_DECRYPT_STR_0("\163\79\192\6\147\85\206\28\146", "\117\224\61\175")},{LUAOBFUSACTOR_DECRYPT_STR_0("\217\78\200\143", "\232\139\39\166"),LUAOBFUSACTOR_DECRYPT_STR_0("\209\88\93\66", "\162\131\49\51\37\23")},{LUAOBFUSACTOR_DECRYPT_STR_0("\123\118\234", "\20\63\25\158\74"),LUAOBFUSACTOR_DECRYPT_STR_0("\94\213\72", "\217\26\186\60\205\31\176\72")},{LUAOBFUSACTOR_DECRYPT_STR_0("\248\99\9\255\200", "\140\187\17\102"),LUAOBFUSACTOR_DECRYPT_STR_0("\15\153\171\82\63", "\33\76\235\196")}}, TABLE_TableIndirection["Settings%0"].CursorStyle, function(v)
			TABLE_TableIndirection["Settings%0"]['CursorStyle'] = v;
		end, 290);
		addSlider(TABLE_TableIndirection["SettingsPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\43\255\224\76\163\34\197\150\1\240\247", "\229\104\138\146\63\204\80\229"), 8, 30, TABLE_TableIndirection["Settings%0"].CursorSize, 0, function(v)
			TABLE_TableIndirection["Settings%0"]['CursorSize'] = v;
		end);
		addToggle(TABLE_TableIndirection["SettingsPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\131\104\12\218\175\111\94\219\175\105\31\221\169\114\16", "\169\192\29\126"), LUAOBFUSACTOR_DECRYPT_STR_0("\2\213\12\133\113\196\11\130\60\196\17\130\62\203", "\235\81\165\101"), TABLE_TableIndirection["Settings%0"].CursorRotate, function(v)
			TABLE_TableIndirection["Settings%0"]['CursorRotate'] = v;
		end);
		addToggle(TABLE_TableIndirection["SettingsPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\91\145\77\10\138\22\140\104\145\83\10\128", "\172\24\228\63\121\229\100"), LUAOBFUSACTOR_DECRYPT_STR_0("\185\71\207\200\202\94\192\193\153\71\219\202", "\173\234\46\181"), TABLE_TableIndirection["Settings%0"].CursorPulse, function(v)
			TABLE_TableIndirection["Settings%0"]['CursorPulse'] = v;
		end);
		addToggle(TABLE_TableIndirection["SettingsPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\252\39\249\44\44\205\114\255\45\34\214\62", "\67\191\82\139\95"), LUAOBFUSACTOR_DECRYPT_STR_0("\26\229\72\209\248\171\41\255\70\203\224\171\63\232\79\203\226\239\125\238\82\208\255\228\47", "\139\93\141\39\162\140"), TABLE_TableIndirection["Settings%0"].CursorTrail, function(v)
			TABLE_TableIndirection["Settings%0"]['CursorTrail'] = v;
			if not v then
				TABLE_TableIndirection["trailPositions%0"] = {};
				for _, c in ipairs(TABLE_TableIndirection["cursorTrailCircles%0"]) do
					if c then
						c['Visible'] = false;
					end
				end
			end
		end);
		addColorPicker(TABLE_TableIndirection["SettingsPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\15\182\27\196\17\62\227\10\216\18\35\177", "\126\76\195\105\183"), LUAOBFUSACTOR_DECRYPT_STR_0("\124\93\182\98\86\166\31\92\173\127\77", "\212\63\40\196\17\57"), TABLE_TableIndirection["C%0"].accent, TABLE_TableIndirection["Settings%0"].CursorColor, function(c)
			TABLE_TableIndirection["Settings%0"]['CursorColor'] = c;
		end);
		addSection(TABLE_TableIndirection["SettingsPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\136\251\192\223\136\249\209\212\138\238", "\154\201\171\144"));
		addDropdownGrid(TABLE_TableIndirection["SettingsPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\182\230\173\192\179", "\221\226\142\200\173\214\111\223"), LUAOBFUSACTOR_DECRYPT_STR_0("\35\75\177\36\232\13\65\179\62\186\78\93\188\57\173\3\75", "\200\110\46\223\81"), (function()
			TABLE_TableIndirection["o%0"] = {};
			for _, n in ipairs(TABLE_TableIndirection["ThemeOrder%0"]) do
				table.insert(TABLE_TableIndirection["o%0"], {n,n});
			end
			return TABLE_TableIndirection["o%0"];
		end)(), TABLE_TableIndirection["Settings%0"].Theme, function(name)
			TABLE_TableIndirection["Settings%0"]['Theme'] = name;
		end, 4);
		addSlider(TABLE_TableIndirection["SettingsPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\59\66\50\33\98\193\65\23\75\57", "\34\118\39\92\84\66\178"), 60, 150, TABLE_TableIndirection["Settings%0"].MenuScale, 0, function(v)
			TABLE_TableIndirection["Settings%0"]['MenuScale'] = v;
			TABLE_TableIndirection["userScale%0"] = v / 100;
			if TABLE_TableIndirection["menuVisible%0"] then
				tween(TABLE_TableIndirection["mainScale%0"], 0.15, {[LUAOBFUSACTOR_DECRYPT_STR_0("\120\139\48\14\43", "\19\43\232\81\98\78\201\175")]=(TABLE_TableIndirection["fit%0"] * TABLE_TableIndirection["userScale%0"])});
			end
		end);
		addToggle(TABLE_TableIndirection["SettingsPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\120\219\247\177\132\203\186\120\147\183\230\244\228\132\76", "\234\43\179\152\198\164\141"), LUAOBFUSACTOR_DECRYPT_STR_0("\129\83\111\206\139\178\212\199\182\78\125\202\148\243\196\137\229\73\117\218\130\177\204\149", "\231\197\58\28\190\231\211\173"), TABLE_TableIndirection["Settings%0"].ShowStats, function(v)
			TABLE_TableIndirection["Settings%0"]['ShowStats'] = v;
			TABLE_TableIndirection["statsLabel%0"]['Visible'] = v;
		end);
		addToggle(TABLE_TableIndirection["SettingsPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\100\211\42\41\197\129\82\192\53", "\236\51\178\94\76\183"), LUAOBFUSACTOR_DECRYPT_STR_0("\217\197\221\84\170\219\215\81\249\196\221\77\170\194\196\70\248\193\211\90", "\35\138\173\178"), TABLE_TableIndirection["Settings%0"].ShowWatermark, function(v)
			TABLE_TableIndirection["Settings%0"]['ShowWatermark'] = v;
			TABLE_TableIndirection["watermark%0"]['Visible'] = v;
		end);
		addSection(TABLE_TableIndirection["SettingsPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\242\34\110\249\102\68", "\29\161\99\40\188\50"));
		addToggle(TABLE_TableIndirection["SettingsPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\75\43\174\227\1\55\74\226\120\39\165\244", "\140\25\74\192\135\110\90\106"), LUAOBFUSACTOR_DECRYPT_STR_0("\13\83\66\231\185\161\35\69\65\178\169\176\39\80\80\247\174\226\43\95\87\230\171\172\33\84\4\252\171\175\39\66", "\194\66\49\36\146\202"), TABLE_TableIndirection["Settings%0"].RandomNames, function(v)
			TABLE_TableIndirection["Settings%0"]['RandomNames'] = v;
			notify(LUAOBFUSACTOR_DECRYPT_STR_0("\191\48\198\7\214\203\52\203\4\192\136\37\141\13\203\203\63\200\26\209\203\35\200\14\202\138\53", "\165\235\81\173\98"));
		end);
		addSection(TABLE_TableIndirection["SettingsPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\6\160\135\3", "\132\75\229\201\86\217"));
		addKeybind(TABLE_TableIndirection["SettingsPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\175\119\171\176\194\121\160\188", "\197\226\18\197"), LUAOBFUSACTOR_DECRYPT_STR_0("\47\217\14\70\15\145\0\95\24\145\9\88\24\212\18\17\8\217\8\66\92\198\8\95\24\222\22", "\49\124\177\97"), TABLE_TableIndirection["Settings%0"].MenuKey, function(key)
			TABLE_TableIndirection["Settings%0"]['MenuKey'] = key;
			TABLE_TableIndirection["hintLabel%0"]['Text'] = key['Name'] .. LUAOBFUSACTOR_DECRYPT_STR_0("\192\41\207\254\136\52\196\187", "\222\224\93\160");
		end);
		addSection(TABLE_TableIndirection["SettingsPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\216\216\65\18\17\196\211", "\88\139\157\18\65"));
		addAction(TABLE_TableIndirection["SettingsPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\120\31\1\20\223\10\25\29\31\205\67\29", "\171\42\122\114\113"), LUAOBFUSACTOR_DECRYPT_STR_0("\169\173\192\231\153\173\140\241\140\190\201\230\205\187\201\246\153\161\194\229\158\228\140\240\136\164\195\227\137\232\216\237\205\169\220\242\129\177", "\130\237\200\172"), LUAOBFUSACTOR_DECRYPT_STR_0("\20\213\189\11\50", "\110\70\176\206"), function()
			if (delfile and isfile and isfile(TABLE_TableIndirection["CONFIG_FILE%0"])) then
				safe(function()
					delfile(TABLE_TableIndirection["CONFIG_FILE%0"]);
				end);
			end
			notify(LUAOBFUSACTOR_DECRYPT_STR_0("\86\31\51\237\51\114\80\62\231\63\116\2\56\239\116\53\34\56\231\53\116\20\125\255\50\112\80\46\232\40\124\0\41\165", "\90\21\112\93\139"));
		end);
		addAction(TABLE_TableIndirection["SettingsPage%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\52\213\120\185\161\5\155\103\181\178\8\203\96", "\192\97\187\20\214"), LUAOBFUSACTOR_DECRYPT_STR_0("\56\94\62\199\150\15\27\54\222\133\24\66\39\192\137\4\92\115\201\142\14\27\32\220\143\26", "\224\106\59\83\168"), LUAOBFUSACTOR_DECRYPT_STR_0("\146\235\14\244\79\140", "\41\199\133\98\155\46\232"), function()
			if TABLE_TableIndirection["Unload%0"] then
				TABLE_TableIndirection["Unload%0"]();
			end
		end);
		TABLE_TableIndirection["themeToken%0"] = 0;
		local function applyTheme(name)
			if not TABLE_TableIndirection["Themes%0"][name] then
				return;
			end
			TABLE_TableIndirection["themeToken%0"] = TABLE_TableIndirection["themeToken%0"] + 1;
			TABLE_TableIndirection["token%0"] = TABLE_TableIndirection["themeToken%0"];
			TABLE_TableIndirection["old%0"] = {};
			for k, v in pairs(TABLE_TableIndirection["C%0"]) do
				TABLE_TableIndirection["old%0"][k] = v;
			end
			TABLE_TableIndirection["oldAccent%0"] = TABLE_TableIndirection["C%0"]['accent'];
			for k, v in pairs(TABLE_TableIndirection["Themes%0"][name]) do
				TABLE_TableIndirection["C%0"][k] = v;
			end
			if (TABLE_TableIndirection["Settings%0"]['FOVColor'] == TABLE_TableIndirection["oldAccent%0"]) then
				TABLE_TableIndirection["Settings%0"]['FOVColor'] = TABLE_TableIndirection["C%0"]['accent'];
			end
			if (TABLE_TableIndirection["Settings%0"]['CursorColor'] == TABLE_TableIndirection["oldAccent%0"]) then
				TABLE_TableIndirection["Settings%0"]['CursorColor'] = TABLE_TableIndirection["C%0"]['accent'];
			end
			remapColors(TABLE_TableIndirection["old%0"], TABLE_TableIndirection["C%0"], TABLE_TableIndirection["gui%0"]);
			task.delay(0.5, function()
				if ((TABLE_TableIndirection["token%0"] == TABLE_TableIndirection["themeToken%0"]) and not TABLE_TableIndirection["unloaded%0"]) then
					remapColors(TABLE_TableIndirection["old%0"], TABLE_TableIndirection["C%0"], TABLE_TableIndirection["gui%0"]);
				end
			end);
		end
		TABLE_TableIndirection["lastTheme%0"] = TABLE_TableIndirection["Settings%0"]['Theme'];
		track(TABLE_TableIndirection["RunService%0"]['Heartbeat']:Connect(function()
			if TABLE_TableIndirection["unloaded%0"] then
				return;
			end
			if (TABLE_TableIndirection["Settings%0"]['Theme'] ~= TABLE_TableIndirection["lastTheme%0"]) then
				TABLE_TableIndirection["lastTheme%0"] = TABLE_TableIndirection["Settings%0"]['Theme'];
				applyTheme(TABLE_TableIndirection["Settings%0"].Theme);
			end
		end));
		local function setMenu(v)
			TABLE_TableIndirection["menuVisible%0"] = v;
			if v then
				TABLE_TableIndirection["main%0"]['Visible'] = true;
				tween(TABLE_TableIndirection["main%0"], 0.2, {[LUAOBFUSACTOR_DECRYPT_STR_0("\59\180\238\83\173\59\244\29\168\242\86\188\29\227\18\165\248", "\134\124\198\129\38\221\111")]=0});
				tween(TABLE_TableIndirection["mainScale%0"], 0.2, {[LUAOBFUSACTOR_DECRYPT_STR_0("\203\236\176\44\253", "\64\152\143\209")]=(TABLE_TableIndirection["fit%0"] * TABLE_TableIndirection["userScale%0"])});
			else
				tween(TABLE_TableIndirection["main%0"], 0.15, {[LUAOBFUSACTOR_DECRYPT_STR_0("\16\91\202\25\90\25\110\6\57\90\213\13\88\40\114\4\46", "\103\87\41\165\108\42\77\28")]=1});
				tween(TABLE_TableIndirection["mainScale%0"], 0.15, {[LUAOBFUSACTOR_DECRYPT_STR_0("\145\208\21\251\115", "\128\194\179\116\151\22")]=(TABLE_TableIndirection["fit%0"] * TABLE_TableIndirection["userScale%0"] * 0.97)});
				task.delay(0.16, function()
					if (not TABLE_TableIndirection["menuVisible%0"] and not TABLE_TableIndirection["unloaded%0"]) then
						TABLE_TableIndirection["main%0"]['Visible'] = false;
					end
				end);
			end
		end
		TABLE_TableIndirection["closeBtn%0"]['MouseButton1Click']:Connect(function()
			setMenu(false);
		end);
		track(TABLE_TableIndirection["UserInputService%0"]['InputBegan']:Connect(function(input, processed)
			if TABLE_TableIndirection["bindTarget%0"] then
				if (input['UserInputType'] == Enum['UserInputType']['Keyboard']) then
					TABLE_TableIndirection["cb%0"] = TABLE_TableIndirection["bindTarget%0"];
					TABLE_TableIndirection["bindTarget%0"] = nil;
					if (input['KeyCode'] == Enum['KeyCode']['Escape']) then
						TABLE_TableIndirection["cb%0"](nil);
					else
						TABLE_TableIndirection["cb%0"](input.KeyCode);
					end
				end
				return;
			end
			if processed then
				return;
			end
			if (input['KeyCode'] == TABLE_TableIndirection["Settings%0"]['MenuKey']) then
				setMenu(not TABLE_TableIndirection["menuVisible%0"]);
			elseif (input['KeyCode'] == TABLE_TableIndirection["Settings%0"]['AimbotKey']) then
				if (TABLE_TableIndirection["Settings%0"]['KeyMode'] == LUAOBFUSACTOR_DECRYPT_STR_0("\47\61\15\163", "\230\103\82\99\199\188\84")) then
					TABLE_TableIndirection["aimbotToggle%0"].Set(true);
				else
					TABLE_TableIndirection["aimbotToggle%0"].Set(not TABLE_TableIndirection["Settings%0"]['Aimbot']);
					notify((TABLE_TableIndirection["Settings%0"]['Aimbot'] and LUAOBFUSACTOR_DECRYPT_STR_0("\157\143\174\170\86\62\252\137\173", "\74\220\230\195\200\57")) or LUAOBFUSACTOR_DECRYPT_STR_0("\132\131\221\29\4\197\229\133\214\25", "\177\197\234\176\127\107"));
				end
			end
		end));
		track(TABLE_TableIndirection["UserInputService%0"]['InputEnded']:Connect(function(input)
			if ((TABLE_TableIndirection["Settings%0"]['KeyMode'] == LUAOBFUSACTOR_DECRYPT_STR_0("\91\197\202\76", "\63\19\170\166\40\234\20")) and (input['KeyCode'] == TABLE_TableIndirection["Settings%0"]['AimbotKey'])) then
				TABLE_TableIndirection["aimbotToggle%0"].Set(false);
			end
		end));
		track(TABLE_TableIndirection["UserInputService%0"]['JumpRequest']:Connect(function()
			if TABLE_TableIndirection["Settings%0"]['InfJump'] then
				TABLE_TableIndirection["hum%0"] = getHum();
				if TABLE_TableIndirection["hum%0"] then
					safe(function()
						TABLE_TableIndirection["hum%0"]:ChangeState(Enum['HumanoidStateType'].Jumping);
					end);
				end
			end
		end));
		track(TABLE_TableIndirection["LocalPlayer%0"]['Idled']:Connect(function()
			if TABLE_TableIndirection["Settings%0"]['AntiAFK'] then
				safe(function()
					TABLE_TableIndirection["VirtualUser%0"]:CaptureController();
					TABLE_TableIndirection["VirtualUser%0"]:ClickButton2(Vector2.new());
				end);
			end
		end));
		track(TABLE_TableIndirection["UserInputService%0"]['WindowFocused']:Connect(function()
			TABLE_TableIndirection["windowFocused%0"] = true;
		end));
		track(TABLE_TableIndirection["UserInputService%0"]['WindowFocusReleased']:Connect(function()
			TABLE_TableIndirection["windowFocused%0"] = false;
		end));
		if TABLE_TableIndirection["GuiService%0"] then
			track(TABLE_TableIndirection["GuiService%0"]['MenuOpened']:Connect(function()
				TABLE_TableIndirection["robuxMenuOpen%0"] = true;
			end));
			track(TABLE_TableIndirection["GuiService%0"]['MenuClosed']:Connect(function()
				TABLE_TableIndirection["robuxMenuOpen%0"] = false;
			end));
		end
		TABLE_TableIndirection["noclipTick%0"] = 0;
		track(TABLE_TableIndirection["RunService%0"]['Heartbeat']:Connect(function(dt)
			if not TABLE_TableIndirection["Settings%0"]['NoClip'] then
				return;
			end
			TABLE_TableIndirection["noclipTick%0"] = TABLE_TableIndirection["noclipTick%0"] + dt;
			if (TABLE_TableIndirection["noclipTick%0"] < 0.15) then
				return;
			end
			TABLE_TableIndirection["noclipTick%0"] = 0;
			TABLE_TableIndirection["char%0"] = TABLE_TableIndirection["LocalPlayer%0"]['Character'];
			if TABLE_TableIndirection["char%0"] then
				for _, p in ipairs(TABLE_TableIndirection["char%0"]:GetDescendants()) do
					if (p:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\20\9\30\45\16\44\210\34", "\160\86\104\109\72\64\77")) and p['CanCollide']) then
						safe(function()
							p['CanCollide'] = false;
						end);
					end
				end
			end
		end));
		task.spawn(function()
			while not TABLE_TableIndirection["unloaded%0"] do
				if TABLE_TableIndirection["Settings%0"]['Fly'] then
					TABLE_TableIndirection["hrp%0"] = getHrp();
					if TABLE_TableIndirection["hrp%0"] then
						if (TABLE_TableIndirection["Settings%0"]['FlyMode'] == LUAOBFUSACTOR_DECRYPT_STR_0("\219\124\234\19\40\143\245\124\237\3\10\147", "\234\153\19\142\106\126")) then
							TABLE_TableIndirection["bv%0"] = safe(function()
								return TABLE_TableIndirection["hrp%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\23\37\174\12\23\45\174\17\46\42\174\62\45\61\159\46", "\120\65\68\221"));
							end);
							if not TABLE_TableIndirection["bv%0"] then
								TABLE_TableIndirection["bv%0"] = safe(function()
									TABLE_TableIndirection["b%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\58\186\225\165\46\176\233\179\27\188\241\165", "\220\120\213\133"));
									TABLE_TableIndirection["b%0"]['Name'] = LUAOBFUSACTOR_DECRYPT_STR_0("\110\47\212\68\28\81\61\206\95\36\75\8\203\73\8\110", "\74\56\78\167\48");
									TABLE_TableIndirection["b%0"]['MaxForce'] = Vector3.new(8999999488, 8999999488, 8999999488);
									TABLE_TableIndirection["b%0"]['Velocity'] = Vector3['zero'];
									TABLE_TableIndirection["b%0"]['Parent'] = TABLE_TableIndirection["hrp%0"];
									return TABLE_TableIndirection["b%0"];
								end);
							end
							TABLE_TableIndirection["bg%0"] = safe(function()
								return TABLE_TableIndirection["hrp%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\210\29\56\212\60\3\43\237\19\37\211\44\6\33\198\59", "\88\132\124\75\160\106\106"));
							end);
							if not TABLE_TableIndirection["bg%0"] then
								TABLE_TableIndirection["bg%0"] = safe(function()
									TABLE_TableIndirection["g%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\57\137\94\60\179\34\15", "\96\116\86\237\39\123\202\80"));
									TABLE_TableIndirection["g%0"]['Name'] = LUAOBFUSACTOR_DECRYPT_STR_0("\23\21\162\105\180\165\188\40\27\191\110\164\160\182\3\51", "\207\65\116\209\29\226\204");
									TABLE_TableIndirection["g%0"]['MaxTorque'] = Vector3.new(8999999488, 8999999488, 8999999488);
									TABLE_TableIndirection["g%0"]['P'] = 1000;
									TABLE_TableIndirection["g%0"]['D'] = 50;
									TABLE_TableIndirection["g%0"]['Parent'] = TABLE_TableIndirection["hrp%0"];
									return TABLE_TableIndirection["g%0"];
								end);
							end
							TABLE_TableIndirection["cam%0"] = workspace['CurrentCamera'];
							if (TABLE_TableIndirection["cam%0"] and TABLE_TableIndirection["bv%0"] and TABLE_TableIndirection["bg%0"]) then
								TABLE_TableIndirection["dir%0"] = Vector3['zero'];
								if TABLE_TableIndirection["UserInputService%0"]:IsKeyDown(Enum['KeyCode'].W) then
									TABLE_TableIndirection["dir%0"] = TABLE_TableIndirection["dir%0"] + TABLE_TableIndirection["cam%0"]['CFrame']['LookVector'];
								end
								if TABLE_TableIndirection["UserInputService%0"]:IsKeyDown(Enum['KeyCode'].S) then
									TABLE_TableIndirection["dir%0"] = TABLE_TableIndirection["dir%0"] - TABLE_TableIndirection["cam%0"]['CFrame']['LookVector'];
								end
								if TABLE_TableIndirection["UserInputService%0"]:IsKeyDown(Enum['KeyCode'].A) then
									TABLE_TableIndirection["dir%0"] = TABLE_TableIndirection["dir%0"] - TABLE_TableIndirection["cam%0"]['CFrame']['RightVector'];
								end
								if TABLE_TableIndirection["UserInputService%0"]:IsKeyDown(Enum['KeyCode'].D) then
									TABLE_TableIndirection["dir%0"] = TABLE_TableIndirection["dir%0"] + TABLE_TableIndirection["cam%0"]['CFrame']['RightVector'];
								end
								if TABLE_TableIndirection["UserInputService%0"]:IsKeyDown(Enum['KeyCode'].Space) then
									TABLE_TableIndirection["dir%0"] = TABLE_TableIndirection["dir%0"] + Vector3.new(0, 1, 0);
								end
								if TABLE_TableIndirection["UserInputService%0"]:IsKeyDown(Enum['KeyCode'].LeftControl) then
									TABLE_TableIndirection["dir%0"] = TABLE_TableIndirection["dir%0"] - Vector3.new(0, 1, 0);
								end
								if (TABLE_TableIndirection["dir%0"]['Magnitude'] > 0) then
									TABLE_TableIndirection["dir%0"] = TABLE_TableIndirection["dir%0"]['Unit'];
								end
								safe(function()
									TABLE_TableIndirection["bv%0"]['Velocity'] = TABLE_TableIndirection["dir%0"] * TABLE_TableIndirection["Settings%0"]['FlySpeed'];
								end);
								safe(function()
									TABLE_TableIndirection["bg%0"]['CFrame'] = TABLE_TableIndirection["cam%0"]['CFrame'];
								end);
							end
						else
							TABLE_TableIndirection["cam%0"] = workspace['CurrentCamera'];
							if TABLE_TableIndirection["cam%0"] then
								TABLE_TableIndirection["dir%0"] = Vector3['zero'];
								if TABLE_TableIndirection["UserInputService%0"]:IsKeyDown(Enum['KeyCode'].W) then
									TABLE_TableIndirection["dir%0"] = TABLE_TableIndirection["dir%0"] + TABLE_TableIndirection["cam%0"]['CFrame']['LookVector'];
								end
								if TABLE_TableIndirection["UserInputService%0"]:IsKeyDown(Enum['KeyCode'].S) then
									TABLE_TableIndirection["dir%0"] = TABLE_TableIndirection["dir%0"] - TABLE_TableIndirection["cam%0"]['CFrame']['LookVector'];
								end
								if TABLE_TableIndirection["UserInputService%0"]:IsKeyDown(Enum['KeyCode'].A) then
									TABLE_TableIndirection["dir%0"] = TABLE_TableIndirection["dir%0"] - TABLE_TableIndirection["cam%0"]['CFrame']['RightVector'];
								end
								if TABLE_TableIndirection["UserInputService%0"]:IsKeyDown(Enum['KeyCode'].D) then
									TABLE_TableIndirection["dir%0"] = TABLE_TableIndirection["dir%0"] + TABLE_TableIndirection["cam%0"]['CFrame']['RightVector'];
								end
								if TABLE_TableIndirection["UserInputService%0"]:IsKeyDown(Enum['KeyCode'].Space) then
									TABLE_TableIndirection["dir%0"] = TABLE_TableIndirection["dir%0"] + Vector3.new(0, 1, 0);
								end
								if TABLE_TableIndirection["UserInputService%0"]:IsKeyDown(Enum['KeyCode'].LeftControl) then
									TABLE_TableIndirection["dir%0"] = TABLE_TableIndirection["dir%0"] - Vector3.new(0, 1, 0);
								end
								if (TABLE_TableIndirection["dir%0"]['Magnitude'] > 0) then
									TABLE_TableIndirection["dir%0"] = TABLE_TableIndirection["dir%0"]['Unit'];
								end
								safe(function()
									TABLE_TableIndirection["hrp%0"]['CFrame'] = TABLE_TableIndirection["hrp%0"]['CFrame'] + (TABLE_TableIndirection["dir%0"] * TABLE_TableIndirection["Settings%0"]['FlySpeed'] * 0.02);
									TABLE_TableIndirection["hrp%0"]['Velocity'] = Vector3['zero'];
								end);
							end
						end
					end
				else
					TABLE_TableIndirection["hrp%0"] = getHrp();
					if TABLE_TableIndirection["hrp%0"] then
						for _, n in ipairs({LUAOBFUSACTOR_DECRYPT_STR_0("\134\81\152\26\134\89\152\7\191\94\152\40\188\73\169\56", "\110\208\48\235"),LUAOBFUSACTOR_DECRYPT_STR_0("\147\168\144\153\147\160\144\132\170\167\144\171\169\176\161\170", "\237\197\201\227")}) do
							safe(function()
								TABLE_TableIndirection["i%0"] = TABLE_TableIndirection["hrp%0"]:FindFirstChild(n);
								if TABLE_TableIndirection["i%0"] then
									TABLE_TableIndirection["i%0"]:Destroy();
								end
							end);
						end
					end
				end
				task.wait(0.03);
			end
		end);
		track(TABLE_TableIndirection["LocalPlayer%0"]['CharacterAdded']:Connect(function(char)
			task.wait(0.5);
			TABLE_TableIndirection["hum%0"] = safe(function()
				return char:FindFirstChildOfClass(LUAOBFUSACTOR_DECRYPT_STR_0("\147\54\18\127\171\60\115\191", "\26\219\67\127\30\197\83"));
			end);
			if TABLE_TableIndirection["hum%0"] then
				if TABLE_TableIndirection["Settings%0"]['WalkOn'] then
					TABLE_TableIndirection["hum%0"]['WalkSpeed'] = TABLE_TableIndirection["Settings%0"]['WalkSpeed'];
				end
				if TABLE_TableIndirection["Settings%0"]['JumpOn'] then
					safe(function()
						TABLE_TableIndirection["hum%0"]['UseJumpPower'] = true;
						TABLE_TableIndirection["hum%0"]['JumpPower'] = TABLE_TableIndirection["Settings%0"]['JumpPower'];
					end);
				end
				if TABLE_TableIndirection["Settings%0"]['HipOn'] then
					TABLE_TableIndirection["hum%0"]['HipHeight'] = TABLE_TableIndirection["Settings%0"]['HipHeight'];
				end
			end
		end));
		task.spawn(function()
			TABLE_TableIndirection["frames%0"] = 0;
			TABLE_TableIndirection["conn%0"] = TABLE_TableIndirection["RunService%0"]['RenderStepped']:Connect(function()
				TABLE_TableIndirection["frames%0"] = TABLE_TableIndirection["frames%0"] + 1;
			end);
			TABLE_TableIndirection["last%0"] = tick();
			while not TABLE_TableIndirection["unloaded%0"] do
				task.wait(1);
				TABLE_TableIndirection["now%0"] = tick();
				TABLE_TableIndirection["fps%0"] = math.floor(TABLE_TableIndirection["frames%0"] / math.max(TABLE_TableIndirection["now%0"] - TABLE_TableIndirection["last%0"], 0.001));
				TABLE_TableIndirection["frames%0"] = 0;
				TABLE_TableIndirection["last%0"] = TABLE_TableIndirection["now%0"];
				if TABLE_TableIndirection["Settings%0"]['ShowStats'] then
					TABLE_TableIndirection["ping%0"] = 0;
					pcall(function()
						TABLE_TableIndirection["ping%0"] = math.floor(TABLE_TableIndirection["LocalPlayer%0"]:GetNetworkPing() * 1000);
					end);
					TABLE_TableIndirection["count%0"] = 0;
					pcall(function()
						TABLE_TableIndirection["count%0"] = #TABLE_TableIndirection["Players%0"]:GetPlayers();
					end);
					TABLE_TableIndirection["statsLabel%0"]['Text'] = string.format("%d fps · %dms · %d p", TABLE_TableIndirection["fps%0"], TABLE_TableIndirection["ping%0"], TABLE_TableIndirection["count%0"]);
				end
			end
			TABLE_TableIndirection["conn%0"]:Disconnect();
		end);
		task.spawn(function()
			while not TABLE_TableIndirection["unloaded%0"] do
				if getStatus then
					TABLE_TableIndirection["statusLabel%0"]['Text'] = getStatus();
				end
				task.wait(10);
			end
		end);
		showPage(LUAOBFUSACTOR_DECRYPT_STR_0("\214\23\211\120\17\237", "\153\149\120\190\26\112"), true);
		tween(TABLE_TableIndirection["main%0"], 0.35, {[LUAOBFUSACTOR_DECRYPT_STR_0("\43\7\197\181\58\196\236\22\2\6\218\161\56\245\240\20\21", "\119\108\117\170\192\74\144\158")]=0});
		tween(TABLE_TableIndirection["mainScale%0"], 0.35, {[LUAOBFUSACTOR_DECRYPT_STR_0("\212\42\128\45\226", "\65\135\73\225")]=(TABLE_TableIndirection["fit%0"] * TABLE_TableIndirection["userScale%0"])});
		TABLE_TableIndirection["playerList%0"] = TABLE_TableIndirection["Players%0"]:GetPlayers();
		TABLE_TableIndirection["data%0"] = {};
		TABLE_TableIndirection["candidates%0"] = {};
		local currentTarget, currentHum;
		TABLE_TableIndirection["aimTimer%0"] = 0;
		TABLE_TableIndirection["hitboxTick%0"] = 0;
		TABLE_TableIndirection["lastVp%0"] = Vector2.new(0, 0);
		TABLE_TableIndirection["rayParams%0"] = RaycastParams.new();
		TABLE_TableIndirection["rayParams%0"]['FilterType'] = Enum['RaycastFilterType']['Exclude'];
		TABLE_TableIndirection["rayParams%0"]['IgnoreWater'] = true;
		local function put(obj, key, val)
			if not obj then
				return;
			end
			safe(function()
				if (obj[key] ~= val) then
					obj[key] = val;
				end
			end);
		end
		local function IsEnemy(plr)
			local mine, theirs = TABLE_TableIndirection["LocalPlayer%0"]['Team'], plr['Team'];
			if (mine and theirs) then
				return mine ~= theirs;
			end
			return true;
		end
		TABLE_TableIndirection["skelR15%0"] = {{LUAOBFUSACTOR_DECRYPT_STR_0("\55\86\80\164", "\116\127\51\49\192"),LUAOBFUSACTOR_DECRYPT_STR_0("\46\16\67\248\252\42\13\9\19\92", "\98\123\96\51\157\142\126")},{LUAOBFUSACTOR_DECRYPT_STR_0("\248\238\182\203\52\249\241\180\221\41", "\70\173\158\198\174"),LUAOBFUSACTOR_DECRYPT_STR_0("\220\48\88\235\226\11\64\252\227\48", "\142\144\95\47")},{LUAOBFUSACTOR_DECRYPT_STR_0("\34\61\64\11\5\25\95\28\4\34", "\110\119\77\48"),LUAOBFUSACTOR_DECRYPT_STR_0("\199\58\34\65\209\251\47\33\71\197\249\50", "\132\139\95\68\53")},{LUAOBFUSACTOR_DECRYPT_STR_0("\201\56\237\48\238\28\242\39\239\39", "\85\156\72\157"),LUAOBFUSACTOR_DECRYPT_STR_0("\73\59\122\41\206\29\154\107\55\111\0\200\37", "\234\27\82\29\65\186\72")},{LUAOBFUSACTOR_DECRYPT_STR_0("\220\202\239\170\54\224\223\236\172\34\226\194", "\99\144\175\137\222"),LUAOBFUSACTOR_DECRYPT_STR_0("\124\113\138\21\21\74\166\85\102\173\19\52", "\209\48\20\236\97\89\37")},{LUAOBFUSACTOR_DECRYPT_STR_0("\208\68\88\61\110\243\86\91\59\99\238\76", "\34\156\33\62\73"),LUAOBFUSACTOR_DECRYPT_STR_0("\36\119\232\69\32\115\224\85", "\49\104\18\142")},{LUAOBFUSACTOR_DECRYPT_STR_0("\195\236\123\3\229\208\108\27\244\247\93\25\252", "\107\145\133\28"),LUAOBFUSACTOR_DECRYPT_STR_0("\240\87\180\182\214\114\188\169\199\76\146\172\207", "\222\162\62\211")},{LUAOBFUSACTOR_DECRYPT_STR_0("\145\120\9\19\37\175\197\180\116\28\58\35\142", "\170\195\17\110\123\81\227"),LUAOBFUSACTOR_DECRYPT_STR_0("\134\61\231\200\233\156\53\238\196", "\157\212\84\128\160")},{LUAOBFUSACTOR_DECRYPT_STR_0("\165\124\247\64\52\188\225\209\154\124", "\163\233\19\128\37\70\232\142"),LUAOBFUSACTOR_DECRYPT_STR_0("\207\80\58\13\214\69\44\28\241\121\57\30", "\121\131\53\92")},{LUAOBFUSACTOR_DECRYPT_STR_0("\82\195\92\133\108\248\68\146\109\195", "\224\30\172\43"),LUAOBFUSACTOR_DECRYPT_STR_0("\55\174\120\214\249\48\183\111\219\255\41\162\120", "\141\101\199\31\190")},{LUAOBFUSACTOR_DECRYPT_STR_0("\119\66\5\211\239\169\191\94\85\47\194\221", "\207\59\39\99\167\186\217"),LUAOBFUSACTOR_DECRYPT_STR_0("\43\67\189\70\100\242\183\238\21\106\190\85", "\139\103\38\219\50\40\157\192")},{LUAOBFUSACTOR_DECRYPT_STR_0("\202\189\48\214\202\183\33\199\244\148\51\197", "\162\134\216\86"),LUAOBFUSACTOR_DECRYPT_STR_0("\18\234\81\77\22\77\254\187", "\207\94\143\55\57\80\34\145")},{LUAOBFUSACTOR_DECRYPT_STR_0("\16\216\36\114\164\110\7\169\39\195\15\127\183", "\217\66\177\67\26\208\59\119"),LUAOBFUSACTOR_DECRYPT_STR_0("\17\215\205\162\68\198\247\52\219\216\134\85\237", "\152\67\190\170\202\48\138")},{LUAOBFUSACTOR_DECRYPT_STR_0("\233\32\82\248\207\5\90\231\222\59\121\245\220", "\144\187\73\53"),LUAOBFUSACTOR_DECRYPT_STR_0("\36\178\61\223\182\149\25\180\46", "\211\118\219\90\183\194")}};
		TABLE_TableIndirection["skelR6%0"] = {{LUAOBFUSACTOR_DECRYPT_STR_0("\208\168\137\239", "\145\152\205\232\139\58"),LUAOBFUSACTOR_DECRYPT_STR_0("\135\253\172\172\84", "\110\211\146\222\223\59\200")},{LUAOBFUSACTOR_DECRYPT_STR_0("\103\91\240\28\77", "\34\51\52\130\111"),LUAOBFUSACTOR_DECRYPT_STR_0("\226\48\62\215\66\29\69\195", "\55\174\85\88\163\98\92")},{LUAOBFUSACTOR_DECRYPT_STR_0("\249\71\20\150\57", "\86\173\40\102\229"),LUAOBFUSACTOR_DECRYPT_STR_0("\54\173\72\133\16\228\110\159\9", "\237\100\196\47")},{LUAOBFUSACTOR_DECRYPT_STR_0("\120\67\153\185\56", "\116\44\44\235\202\87\232"),LUAOBFUSACTOR_DECRYPT_STR_0("\47\210\80\49\66\158\247\4", "\146\99\183\54\69\98\210")},{LUAOBFUSACTOR_DECRYPT_STR_0("\211\240\167\182\51", "\215\135\159\213\197\92"),LUAOBFUSACTOR_DECRYPT_STR_0("\129\172\239\228\167\229\196\233\180", "\140\211\197\136")}};
		TABLE_TableIndirection["MAX_SKEL%0"] = #TABLE_TableIndirection["skelR15%0"];
		local function findPart(char, name)
			TABLE_TableIndirection["p%0"] = safe(function()
				return char:FindFirstChild(name);
			end);
			if (TABLE_TableIndirection["p%0"] and TABLE_TableIndirection["p%0"]:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\18\205\47\113\252\49\222\40", "\172\80\172\92\20"))) then
				return TABLE_TableIndirection["p%0"];
			end
			TABLE_TableIndirection["nn%0"] = name:gsub(LUAOBFUSACTOR_DECRYPT_STR_0("\91\105\154", "\232\126\26\177\120\16\169\163"), "");
			if (TABLE_TableIndirection["nn%0"] ~= name) then
				TABLE_TableIndirection["p%0"] = safe(function()
					return char:FindFirstChild(TABLE_TableIndirection["nn%0"]);
				end);
				if (TABLE_TableIndirection["p%0"] and TABLE_TableIndirection["p%0"]:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\206\231\162\118\114\206\164\248", "\214\140\134\209\19\34\175"))) then
					return TABLE_TableIndirection["p%0"];
				end
			end
			return nil;
		end
		local function getSkelPart(info, name)
			TABLE_TableIndirection["c%0"] = info['skelCache'][name];
			if (TABLE_TableIndirection["c%0"] and TABLE_TableIndirection["c%0"]['Parent']) then
				return TABLE_TableIndirection["c%0"];
			end
			TABLE_TableIndirection["p%0"] = findPart(info.char, name);
			if TABLE_TableIndirection["p%0"] then
				info['skelCache'][name] = TABLE_TableIndirection["p%0"];
			end
			return TABLE_TableIndirection["p%0"];
		end
		local function getRigType(char)
			if char:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\97\55\184\175\70\19\167\184\71\40", "\202\52\71\200")) then
				return LUAOBFUSACTOR_DECRYPT_STR_0("\220\25\32", "\231\142\40\21");
			end
			if char:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\68\61\215\25\93", "\180\16\82\165\106\50\99")) then
				return LUAOBFUSACTOR_DECRYPT_STR_0("\13\3", "\99\95\53\31\158");
			end
			return nil;
		end
		local function CreateInfo(plr)
			if TABLE_TableIndirection["data%0"][plr] then
				return;
			end
			TABLE_TableIndirection["box%0"] = newDrawing(LUAOBFUSACTOR_DECRYPT_STR_0("\193\59\101\80\224\47", "\49\146\74\16"));
			if TABLE_TableIndirection["box%0"] then
				TABLE_TableIndirection["box%0"]['Visible'] = false;
				TABLE_TableIndirection["box%0"]['Thickness'] = 1.5;
				TABLE_TableIndirection["box%0"]['Filled'] = false;
			end
			TABLE_TableIndirection["name%0"] = newDrawing(LUAOBFUSACTOR_DECRYPT_STR_0("\208\84\146\78", "\226\132\49\234\58"));
			if TABLE_TableIndirection["name%0"] then
				TABLE_TableIndirection["name%0"]['Visible'] = false;
				TABLE_TableIndirection["name%0"]['Size'] = 14;
				TABLE_TableIndirection["name%0"]['Center'] = true;
				TABLE_TableIndirection["name%0"]['Outline'] = true;
			end
			TABLE_TableIndirection["tracer%0"] = newDrawing(LUAOBFUSACTOR_DECRYPT_STR_0("\246\113\190\225", "\56\186\24\208\132\122\153\114"));
			if TABLE_TableIndirection["tracer%0"] then
				TABLE_TableIndirection["tracer%0"]['Visible'] = false;
				TABLE_TableIndirection["tracer%0"]['Thickness'] = 1.5;
			end
			TABLE_TableIndirection["hBg%0"] = newDrawing(LUAOBFUSACTOR_DECRYPT_STR_0("\239\31\46\84", "\226\163\118\64\49"));
			if TABLE_TableIndirection["hBg%0"] then
				TABLE_TableIndirection["hBg%0"]['Visible'] = false;
				TABLE_TableIndirection["hBg%0"]['Thickness'] = 4;
				TABLE_TableIndirection["hBg%0"]['Color'] = Color3.fromRGB(20, 20, 20);
			end
			TABLE_TableIndirection["hp%0"] = newDrawing(LUAOBFUSACTOR_DECRYPT_STR_0("\213\197\49\187", "\125\153\172\95\222"));
			if TABLE_TableIndirection["hp%0"] then
				TABLE_TableIndirection["hp%0"]['Visible'] = false;
				TABLE_TableIndirection["hp%0"]['Thickness'] = 2;
			end
			TABLE_TableIndirection["hDot%0"] = newDrawing(LUAOBFUSACTOR_DECRYPT_STR_0("\88\207\241\206\225\223", "\131\27\166\131\173\141\186"));
			if TABLE_TableIndirection["hDot%0"] then
				TABLE_TableIndirection["hDot%0"]['Visible'] = false;
				TABLE_TableIndirection["hDot%0"]['Filled'] = true;
				TABLE_TableIndirection["hDot%0"]['Radius'] = 3;
			end
			TABLE_TableIndirection["hpText%0"] = newDrawing(LUAOBFUSACTOR_DECRYPT_STR_0("\199\118\95\51", "\71\147\19\39"));
			if TABLE_TableIndirection["hpText%0"] then
				TABLE_TableIndirection["hpText%0"]['Visible'] = false;
				TABLE_TableIndirection["hpText%0"]['Size'] = 12;
				TABLE_TableIndirection["hpText%0"]['Center'] = false;
				TABLE_TableIndirection["hpText%0"]['Outline'] = true;
			end
			TABLE_TableIndirection["skel%0"] = {};
			for i = 1, TABLE_TableIndirection["MAX_SKEL%0"] do
				TABLE_TableIndirection["l%0"] = newDrawing(LUAOBFUSACTOR_DECRYPT_STR_0("\41\51\232\168", "\66\101\90\134\205\211\138\154"));
				if TABLE_TableIndirection["l%0"] then
					TABLE_TableIndirection["l%0"]['Visible'] = false;
					TABLE_TableIndirection["l%0"]['Thickness'] = 1.2;
				end
				TABLE_TableIndirection["skel%0"][i] = TABLE_TableIndirection["l%0"];
			end
			TABLE_TableIndirection["data%0"][plr] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\62\67\97", "\71\124\44\25\204\229")]=TABLE_TableIndirection["box%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\60\251\36\65", "\217\114\154\73\36\162")]=TABLE_TableIndirection["name%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\8\183\187\174\4\154", "\96\92\197\218\205\97\232")]=TABLE_TableIndirection["tracer%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\22\15\189\129\235\54\40\187", "\159\94\106\220\237")]=TABLE_TableIndirection["hBg%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\133\31\5\79\185\18", "\35\205\122\100")]=TABLE_TableIndirection["hp%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\138\92\6\67\134\86\19", "\39\194\57\103")]=TABLE_TableIndirection["hDot%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\138\235\8\84\30\184", "\174\194\155\92\49\102\204")]=TABLE_TableIndirection["hpText%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\247\131\92\123", "\142\164\232\57\23\231\170")]=TABLE_TableIndirection["skel%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\167\171\206\233\1", "\114\215\202\188\157")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\34\174\247\92\145\130\232\141\52", "\229\81\197\146\48\210\227\139")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\145\90\84\109\221", "\54\226\50\59\26\179\155\61")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\198\63\43\76\59\195\45\44", "\127\170\94\88\56")]=-1,[LUAOBFUSACTOR_DECRYPT_STR_0("\236\198\167\214\144\45", "\198\128\167\212\162\216\93\153")]=-1,[LUAOBFUSACTOR_DECRYPT_STR_0("\166\59\247\202\153\47\226\216\163\34", "\190\202\90\132")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\129\203\122\210\172\34", "\70\231\185\19\183\194")]=false};
			task.spawn(function()
				local ok, res = pcall(function()
					return TABLE_TableIndirection["LocalPlayer%0"]:IsFriendsWith(plr.UserId);
				end);
				TABLE_TableIndirection["i%0"] = TABLE_TableIndirection["data%0"][plr];
				if TABLE_TableIndirection["i%0"] then
					TABLE_TableIndirection["i%0"]['friend'] = (ok and res) or false;
				end
			end);
		end
		local function HideInfo(info)
			if (not info or not info['shown']) then
				return;
			end
			info['shown'] = false;
			put(info.Box, LUAOBFUSACTOR_DECRYPT_STR_0("\237\201\247\173\177\215\197", "\211\187\160\132\196"), false);
			put(info.Name, LUAOBFUSACTOR_DECRYPT_STR_0("\26\137\252\244\74\176\247", "\146\76\224\143\157\40\220"), false);
			put(info.Tracer, LUAOBFUSACTOR_DECRYPT_STR_0("\109\118\165\123\164\53\251", "\158\59\31\214\18\198\89"), false);
			put(info.HealthBg, LUAOBFUSACTOR_DECRYPT_STR_0("\107\0\84\3\95\5\66", "\106\61\105\39"), false);
			put(info.Health, LUAOBFUSACTOR_DECRYPT_STR_0("\211\183\40\230\1\206\119", "\18\133\222\91\143\99\162"), false);
			put(info.HeadDot, LUAOBFUSACTOR_DECRYPT_STR_0("\65\54\191\87\219\48\70", "\178\23\95\204\62\185\92\35"), false);
			put(info.HpText, LUAOBFUSACTOR_DECRYPT_STR_0("\23\255\204\255\95\45\243", "\61\65\150\191\150"), false);
			for _, l in ipairs(info.Skel) do
				put(l, LUAOBFUSACTOR_DECRYPT_STR_0("\124\220\154\176\213\13\207", "\170\42\181\233\217\183\97"), false);
			end
		end
		local function RemoveInfo(plr)
			TABLE_TableIndirection["info%0"] = TABLE_TableIndirection["data%0"][plr];
			if not TABLE_TableIndirection["info%0"] then
				return;
			end
			for _, k in ipairs({LUAOBFUSACTOR_DECRYPT_STR_0("\238\116\247", "\43\172\27\143\181\18"),LUAOBFUSACTOR_DECRYPT_STR_0("\253\40\170\188", "\29\179\73\199\217"),LUAOBFUSACTOR_DECRYPT_STR_0("\77\179\124\206\124\179", "\173\25\193\29"),LUAOBFUSACTOR_DECRYPT_STR_0("\114\117\86\19\185\2\244\127", "\24\58\16\55\127\205\106\182"),LUAOBFUSACTOR_DECRYPT_STR_0("\143\2\214\85\52\175", "\64\199\103\183\57"),LUAOBFUSACTOR_DECRYPT_STR_0("\12\74\82\93\215\43\91", "\147\68\47\51\57"),LUAOBFUSACTOR_DECRYPT_STR_0("\161\95\40\57\158\84", "\32\233\47\124\92\230")}) do
				safe(function()
					if TABLE_TableIndirection["info%0"][k] then
						TABLE_TableIndirection["info%0"][k]:Remove();
					end
				end);
			end
			for _, l in ipairs(TABLE_TableIndirection["info%0"].Skel) do
				safe(function()
					if l then
						l:Remove();
					end
				end);
			end
			TABLE_TableIndirection["data%0"][plr] = nil;
		end
		local function RefreshInfo(plr, info)
			TABLE_TableIndirection["char%0"] = plr['Character'];
			if ((TABLE_TableIndirection["char%0"] ~= info['char']) or not info['hrp'] or not info['hum'] or not info['hrp']['Parent']) then
				info['char'] = TABLE_TableIndirection["char%0"];
				info['hrp'] = TABLE_TableIndirection["char%0"] and safe(function()
					return TABLE_TableIndirection["char%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\163\84\143\186\178\193\240\143\115\141\180\168\254\248\153\85", "\153\235\33\226\219\220\174"));
				end);
				info['hum'] = TABLE_TableIndirection["char%0"] and safe(function()
					return TABLE_TableIndirection["char%0"]:FindFirstChildOfClass(LUAOBFUSACTOR_DECRYPT_STR_0("\169\72\86\19\143\82\82\22", "\114\225\61\59"));
				end);
				info['parts'] = {};
				info['skelCache'] = {};
			end
		end
		local function GetPart(info, partName)
			TABLE_TableIndirection["p%0"] = info['parts'][partName];
			if (TABLE_TableIndirection["p%0"] and TABLE_TableIndirection["p%0"]['Parent']) then
				return TABLE_TableIndirection["p%0"];
			end
			TABLE_TableIndirection["char%0"] = info['char'];
			if not TABLE_TableIndirection["char%0"] then
				return nil;
			end
			if (partName == LUAOBFUSACTOR_DECRYPT_STR_0("\232\124\54\158\211", "\237\188\19\68")) then
				TABLE_TableIndirection["p%0"] = safe(function()
					return TABLE_TableIndirection["char%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\200\248\254\29\242\201\231\252\11\239", "\128\157\136\142\120")) or TABLE_TableIndirection["char%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\134\10\151\77\161", "\157\210\101\229\62\206\169\50"));
				end);
			else
				TABLE_TableIndirection["p%0"] = safe(function()
					return TABLE_TableIndirection["char%0"]:FindFirstChild(partName) or TABLE_TableIndirection["char%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\101\51\66\179\23\167\16\201\127\41\64\166\41\169\11\217", "\173\45\70\47\210\121\200\121"));
				end);
			end
			info['parts'][partName] = TABLE_TableIndirection["p%0"];
			return TABLE_TableIndirection["p%0"];
		end
		local function IsVisible(cam, part)
			TABLE_TableIndirection["char%0"] = TABLE_TableIndirection["LocalPlayer%0"]['Character'];
			TABLE_TableIndirection["rayParams%0"]['FilterDescendantsInstances'] = (TABLE_TableIndirection["char%0"] and {TABLE_TableIndirection["char%0"],part['Parent']}) or {part['Parent']};
			return safe(function()
				return workspace:Raycast(cam['CFrame'].Position, part['Position'] - cam['CFrame']['Position'], TABLE_TableIndirection["rayParams%0"]) == nil;
			end);
		end
		local function byDist(a, b)
			return a['dist'] < b['dist'];
		end
		local function byHealth(a, b)
			return a['hum']['Health'] < b['hum']['Health'];
		end
		local function byCrosshair(a, b)
			return a['crosshairDist'] < b['crosshairDist'];
		end
		local function FindTarget(cam)
			TABLE_TableIndirection["vp%0"] = cam['ViewportSize'];
			TABLE_TableIndirection["center%0"] = Vector2.new(TABLE_TableIndirection["vp%0"]['X'] / 2, TABLE_TableIndirection["vp%0"]['Y'] / 2);
			TABLE_TableIndirection["count%0"] = 0;
			TABLE_TableIndirection["now%0"] = tick();
			if (TABLE_TableIndirection["Settings%0"]['TargetLock'] and TABLE_TableIndirection["lockedTarget%0"] and TABLE_TableIndirection["lockedTarget%0"]['Parent']) then
				TABLE_TableIndirection["lockedInfo%0"] = TABLE_TableIndirection["data%0"][TABLE_TableIndirection["lockedTarget%0"]];
				if (TABLE_TableIndirection["lockedInfo%0"] and TABLE_TableIndirection["lockedInfo%0"]['hum'] and (TABLE_TableIndirection["lockedInfo%0"]['hum']['Health'] > 0)) then
					TABLE_TableIndirection["part%0"] = GetPart(TABLE_TableIndirection["lockedInfo%0"], TABLE_TableIndirection["Settings%0"].Part);
					if TABLE_TableIndirection["part%0"] then
						local v, on = cam:WorldToViewportPoint(TABLE_TableIndirection["part%0"].Position);
						if (on and (v['Z'] > 0)) then
							TABLE_TableIndirection["d%0"] = (Vector2.new(v.X, v.Y) - TABLE_TableIndirection["center%0"])['Magnitude'];
							if (TABLE_TableIndirection["d%0"] < TABLE_TableIndirection["Settings%0"]['FOV']) then
								if (not TABLE_TableIndirection["Settings%0"]['WallCheck'] or IsVisible(cam, TABLE_TableIndirection["part%0"])) then
									return TABLE_TableIndirection["part%0"], TABLE_TableIndirection["lockedInfo%0"]['hum'];
								end
							end
						end
					end
				end
				TABLE_TableIndirection["lockedTarget%0"] = nil;
			end
			if ((TABLE_TableIndirection["now%0"] - TABLE_TableIndirection["lastTargetSwitch%0"]) < TABLE_TableIndirection["Settings%0"]['TargetSwitchDelay']) then
				return nil, nil;
			end
			for _, plr in ipairs(TABLE_TableIndirection["playerList%0"]) do
				if ((plr ~= TABLE_TableIndirection["LocalPlayer%0"]) and (not TABLE_TableIndirection["Settings%0"]['TeamCheck'] or IsEnemy(plr))) then
					TABLE_TableIndirection["info%0"] = TABLE_TableIndirection["data%0"][plr];
					if (TABLE_TableIndirection["info%0"] and not (TABLE_TableIndirection["Settings%0"]['IgnoreFriends'] and TABLE_TableIndirection["info%0"]['friend'])) then
						RefreshInfo(plr, TABLE_TableIndirection["info%0"]);
						TABLE_TableIndirection["hum%0"] = TABLE_TableIndirection["info%0"]['hum'];
						if (TABLE_TableIndirection["hum%0"] and (TABLE_TableIndirection["hum%0"]['Health'] > 0)) then
							TABLE_TableIndirection["part%0"] = GetPart(TABLE_TableIndirection["info%0"], TABLE_TableIndirection["Settings%0"].Part);
							if TABLE_TableIndirection["part%0"] then
								local v, on = cam:WorldToViewportPoint(TABLE_TableIndirection["part%0"].Position);
								if (on and (v['Z'] > 0)) then
									TABLE_TableIndirection["d%0"] = (Vector2.new(v.X, v.Y) - TABLE_TableIndirection["center%0"])['Magnitude'];
									if (TABLE_TableIndirection["d%0"] < TABLE_TableIndirection["Settings%0"]['FOV']) then
										TABLE_TableIndirection["count%0"] = TABLE_TableIndirection["count%0"] + 1;
										TABLE_TableIndirection["candidates%0"][TABLE_TableIndirection["count%0"]] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\33\190\151\69", "\49\81\223\229")]=TABLE_TableIndirection["part%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\58\147\180", "\149\82\230\217")]=TABLE_TableIndirection["hum%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\60\91\105\190", "\202\88\50\26")]=TABLE_TableIndirection["d%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\54\107\233\196\150\95\52\112\244\243\140\68\33", "\55\85\25\134\183\229")]=TABLE_TableIndirection["d%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\107\56\7", "\72\27\84\117\207\134")]=plr};
									end
								end
							end
						end
					end
				end
			end
			for i = #TABLE_TableIndirection["candidates%0"], TABLE_TableIndirection["count%0"] + 1, -1 do
				TABLE_TableIndirection["candidates%0"][i] = nil;
			end
			if (TABLE_TableIndirection["count%0"] == 0) then
				return nil, nil;
			end
			if (TABLE_TableIndirection["Settings%0"]['TargetPriority'] == LUAOBFUSACTOR_DECRYPT_STR_0("\135\195\85\49\25\95", "\95\207\166\52\93\109\55\229")) then
				table.sort(TABLE_TableIndirection["candidates%0"], byHealth);
			elseif (TABLE_TableIndirection["Settings%0"]['TargetPriority'] == LUAOBFUSACTOR_DECRYPT_STR_0("\254\209\41\145\251\62\172\212\209", "\205\189\163\70\226\136\86")) then
				table.sort(TABLE_TableIndirection["candidates%0"], byCrosshair);
			else
				table.sort(TABLE_TableIndirection["candidates%0"], byDist);
			end
			TABLE_TableIndirection["checks%0"] = 0;
			for i = 1, TABLE_TableIndirection["count%0"] do
				TABLE_TableIndirection["c%0"] = TABLE_TableIndirection["candidates%0"][i];
				if not TABLE_TableIndirection["Settings%0"]['WallCheck'] then
					TABLE_TableIndirection["lockedTarget%0"] = TABLE_TableIndirection["c%0"]['plr'];
					TABLE_TableIndirection["lastTargetSwitch%0"] = TABLE_TableIndirection["now%0"];
					return TABLE_TableIndirection["c%0"]['part'], TABLE_TableIndirection["c%0"]['hum'];
				end
				if (TABLE_TableIndirection["checks%0"] >= 3) then
					break;
				end
				TABLE_TableIndirection["checks%0"] = TABLE_TableIndirection["checks%0"] + 1;
				if IsVisible(cam, TABLE_TableIndirection["c%0"].part) then
					TABLE_TableIndirection["lockedTarget%0"] = TABLE_TableIndirection["c%0"]['plr'];
					TABLE_TableIndirection["lastTargetSwitch%0"] = TABLE_TableIndirection["now%0"];
					return TABLE_TableIndirection["c%0"]['part'], TABLE_TableIndirection["c%0"]['hum'];
				end
			end
			return nil, nil;
		end
		local function getTracerOrigin(vp)
			if (TABLE_TableIndirection["Settings%0"]['TracerOrigin'] == LUAOBFUSACTOR_DECRYPT_STR_0("\118\222\149", "\139\34\177\229\141\112")) then
				return Vector2.new(vp['X'] / 2, 0);
			elseif (TABLE_TableIndirection["Settings%0"]['TracerOrigin'] == LUAOBFUSACTOR_DECRYPT_STR_0("\14\228\124\176\220\38", "\176\67\141\24\212")) then
				return Vector2.new(vp['X'] / 2, vp['Y'] / 2);
			else
				return Vector2.new(vp['X'] / 2, vp.Y);
			end
		end
		local function distSuffix()
			return ((TABLE_TableIndirection["Settings%0"]['DistanceUnit'] == LUAOBFUSACTOR_DECRYPT_STR_0("\192\205\81\238\60", "\141\179\185\36\138\79\52")) and LUAOBFUSACTOR_DECRYPT_STR_0("\187\40\75\182\255\40", "\195\155\91\63")) or "m";
		end
		local function isOverMenu()
			if (not TABLE_TableIndirection["menuVisible%0"] or not TABLE_TableIndirection["main%0"]) then
				return false;
			end
			TABLE_TableIndirection["mp%0"] = TABLE_TableIndirection["UserInputService%0"]:GetMouseLocation();
			TABLE_TableIndirection["pos%0"] = TABLE_TableIndirection["main%0"]['AbsolutePosition'];
			TABLE_TableIndirection["size%0"] = TABLE_TableIndirection["main%0"]['AbsoluteSize'];
			return (TABLE_TableIndirection["mp%0"]['X'] >= TABLE_TableIndirection["pos%0"]['X']) and (TABLE_TableIndirection["mp%0"]['X'] <= (TABLE_TableIndirection["pos%0"]['X'] + TABLE_TableIndirection["size%0"]['X'])) and (TABLE_TableIndirection["mp%0"]['Y'] >= TABLE_TableIndirection["pos%0"]['Y']) and (TABLE_TableIndirection["mp%0"]['Y'] <= (TABLE_TableIndirection["pos%0"]['Y'] + TABLE_TableIndirection["size%0"]['Y']));
		end
		local function hideAllCursorDrawings()
			if TABLE_TableIndirection["cursorRing%0"] then
				put(TABLE_TableIndirection["cursorRing%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\224\74\220\245\207\223\92", "\57\182\35\175\156\173\179"), false);
			end
			if TABLE_TableIndirection["cursorDot%0"] then
				put(TABLE_TableIndirection["cursorDot%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\235\171\170\214\13\8\189", "\216\189\194\217\191\111\100"), false);
			end
			if TABLE_TableIndirection["cursorHalo%0"] then
				put(TABLE_TableIndirection["cursorHalo%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\155\71\82\125\50\70\168", "\42\205\46\33\20\80"), false);
			end
			for _, l in ipairs(TABLE_TableIndirection["cursorLines%0"]) do
				put(l, LUAOBFUSACTOR_DECRYPT_STR_0("\103\1\58\190\83\4\44", "\215\49\104\73"), false);
			end
			for _, c in ipairs(TABLE_TableIndirection["cursorTrailCircles%0"]) do
				put(c, LUAOBFUSACTOR_DECRYPT_STR_0("\224\29\21\1\212\24\3", "\104\182\116\102"), false);
			end
		end
		local function restoreDefaultMouse()
			if TABLE_TableIndirection["cursorHidesMouse%0"] then
				safe(function()
					TABLE_TableIndirection["UserInputService%0"]['MouseIconEnabled'] = true;
				end);
				TABLE_TableIndirection["cursorHidesMouse%0"] = false;
			end
		end
		local function hideDefaultMouse()
			if not TABLE_TableIndirection["cursorHidesMouse%0"] then
				safe(function()
					TABLE_TableIndirection["UserInputService%0"]['MouseIconEnabled'] = false;
				end);
				TABLE_TableIndirection["cursorHidesMouse%0"] = true;
			end
		end
		local function entryPulse()
			TABLE_TableIndirection["elapsed%0"] = tick() - TABLE_TableIndirection["scriptLoadTime%0"];
			if (TABLE_TableIndirection["elapsed%0"] < 1.2) then
				return 1 + (math.sin(TABLE_TableIndirection["elapsed%0"] * math['pi'] * 2.5) * 0.35 * (1 - (TABLE_TableIndirection["elapsed%0"] / 1.2)));
			end
			return 1;
		end
		local function renderCursor(dt)
			TABLE_TableIndirection["mb%0"] = TABLE_TableIndirection["UserInputService%0"]['MouseBehavior'];
			TABLE_TableIndirection["wantCursor%0"] = TABLE_TableIndirection["Settings%0"]['CustomCursor'] and TABLE_TableIndirection["windowFocused%0"] and not TABLE_TableIndirection["robuxMenuOpen%0"] and (TABLE_TableIndirection["mb%0"] == Enum['MouseBehavior']['Default']) and not isOverMenu() and TABLE_TableIndirection["hasDrawing%0"];
			if not TABLE_TableIndirection["wantCursor%0"] then
				hideAllCursorDrawings();
				if (TABLE_TableIndirection["mb%0"] == Enum['MouseBehavior']['Default']) then
					restoreDefaultMouse();
				else
					TABLE_TableIndirection["cursorHidesMouse%0"] = false;
				end
				TABLE_TableIndirection["trailPositions%0"] = {};
				return;
			end
			hideDefaultMouse();
			TABLE_TableIndirection["mp%0"] = TABLE_TableIndirection["UserInputService%0"]:GetMouseLocation();
			TABLE_TableIndirection["col%0"] = TABLE_TableIndirection["Settings%0"]['CursorColor'] or TABLE_TableIndirection["C%0"]['accent'];
			TABLE_TableIndirection["size%0"] = TABLE_TableIndirection["Settings%0"]['CursorSize'] or 12;
			TABLE_TableIndirection["ePulse%0"] = entryPulse();
			if TABLE_TableIndirection["Settings%0"]['CursorRotate'] then
				TABLE_TableIndirection["cursorAngle%0"] = TABLE_TableIndirection["cursorAngle%0"] + (dt * 1.4);
				if (TABLE_TableIndirection["cursorAngle%0"] > (math['pi'] * 2)) then
					TABLE_TableIndirection["cursorAngle%0"] = TABLE_TableIndirection["cursorAngle%0"] - (math['pi'] * 2);
				end
			end
			TABLE_TableIndirection["pulse%0"] = 1;
			if TABLE_TableIndirection["Settings%0"]['CursorPulse'] then
				TABLE_TableIndirection["cursorPulseT%0"] = TABLE_TableIndirection["cursorPulseT%0"] + dt;
				TABLE_TableIndirection["pulse%0"] = 1 + (math.sin(TABLE_TableIndirection["cursorPulseT%0"] * 6) * 0.12);
			end
			TABLE_TableIndirection["style%0"] = TABLE_TableIndirection["Settings%0"]['CursorStyle'] or LUAOBFUSACTOR_DECRYPT_STR_0("\5\250\243\242\173\48\191\47\250", "\222\70\136\156\129\222\88");
			TABLE_TableIndirection["finalSize%0"] = TABLE_TableIndirection["size%0"] * TABLE_TableIndirection["pulse%0"] * TABLE_TableIndirection["ePulse%0"];
			if (TABLE_TableIndirection["style%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\225\150\139\170\209\140\133\176\208", "\217\162\228\228")) then
				if TABLE_TableIndirection["cursorRing%0"] then
					put(TABLE_TableIndirection["cursorRing%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\158\210\220\209\186\212\192\214", "\184\206\189\175"), TABLE_TableIndirection["mp%0"]);
					put(TABLE_TableIndirection["cursorRing%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\110\79\253\190\217\74", "\188\60\46\153\215\172\57"), TABLE_TableIndirection["finalSize%0"]);
					put(TABLE_TableIndirection["cursorRing%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\32\249\52\81\50\42\17\226\46", "\68\116\145\93\50\89"), 1.5);
					put(TABLE_TableIndirection["cursorRing%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\140\87\166\172\228", "\51\207\56\202\195\150"), TABLE_TableIndirection["col%0"]);
					put(TABLE_TableIndirection["cursorRing%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\137\90\250\77\146\150\255\177\184\70\248\90", "\195\221\40\155\35\225\230\158"), 0.9);
					put(TABLE_TableIndirection["cursorRing%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\240\116\213\80\250\14\195", "\98\166\29\166\57\152"), true);
				end
				for i = 1, 4 do
					TABLE_TableIndirection["line%0"] = TABLE_TableIndirection["cursorLines%0"][i];
					if TABLE_TableIndirection["line%0"] then
						TABLE_TableIndirection["a%0"] = TABLE_TableIndirection["cursorAngle%0"] + ((i - 1) * (math['pi'] / 2));
						TABLE_TableIndirection["r1%0"] = TABLE_TableIndirection["finalSize%0"] * 0.45;
						TABLE_TableIndirection["r2%0"] = TABLE_TableIndirection["finalSize%0"] * 0.95;
						put(TABLE_TableIndirection["line%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\143\0\142\199", "\93\201\114\225\170"), Vector2.new(TABLE_TableIndirection["mp%0"]['X'] + (math.cos(TABLE_TableIndirection["a%0"]) * TABLE_TableIndirection["r1%0"]), TABLE_TableIndirection["mp%0"]['Y'] + (math.sin(TABLE_TableIndirection["a%0"]) * TABLE_TableIndirection["r1%0"])));
						put(TABLE_TableIndirection["line%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\216\239", "\142\140\128\155\136\21\215\165"), Vector2.new(TABLE_TableIndirection["mp%0"]['X'] + (math.cos(TABLE_TableIndirection["a%0"]) * TABLE_TableIndirection["r2%0"]), TABLE_TableIndirection["mp%0"]['Y'] + (math.sin(TABLE_TableIndirection["a%0"]) * TABLE_TableIndirection["r2%0"])));
						put(TABLE_TableIndirection["line%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\117\165\15\93\235\37\253\169\82", "\218\33\205\102\62\128\75\152"), 1.5);
						put(TABLE_TableIndirection["line%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\215\116\82\203\228", "\150\148\27\62\164"), TABLE_TableIndirection["col%0"]);
						put(TABLE_TableIndirection["line%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\20\224\249\201\32\229\239", "\160\66\137\138"), true);
					end
				end
				if TABLE_TableIndirection["cursorDot%0"] then
					put(TABLE_TableIndirection["cursorDot%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\48\204\49\182\43\227\69\126", "\16\96\163\66\223\95\138\42"), TABLE_TableIndirection["mp%0"]);
					put(TABLE_TableIndirection["cursorDot%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\178\213\213\7\207\26", "\105\224\180\177\110\186"), 2);
					put(TABLE_TableIndirection["cursorDot%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\130\5\174\77\50", "\199\193\106\194\34\64\60\91"), TABLE_TableIndirection["col%0"]);
					put(TABLE_TableIndirection["cursorDot%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\9\191\31\175\61\186\9", "\198\95\214\108"), true);
				end
				if TABLE_TableIndirection["cursorHalo%0"] then
					put(TABLE_TableIndirection["cursorHalo%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\44\52\185\137\235\0\255", "\85\122\93\202\224\137\108\154"), false);
				end
			elseif (TABLE_TableIndirection["style%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\182\89\92\172", "\204\228\48\50\203\163")) then
				if TABLE_TableIndirection["cursorRing%0"] then
					put(TABLE_TableIndirection["cursorRing%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\238\184\90\174\27\70\218\54", "\88\190\215\41\199\111\47\181"), TABLE_TableIndirection["mp%0"]);
					put(TABLE_TableIndirection["cursorRing%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\102\54\72\64\101\210", "\190\52\87\44\41\16\161"), TABLE_TableIndirection["finalSize%0"]);
					put(TABLE_TableIndirection["cursorRing%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\119\30\14\183\16\47\25\80\5", "\124\35\118\103\212\123\65"), 2);
					put(TABLE_TableIndirection["cursorRing%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\31\228\160\176\108", "\60\92\139\204\223\30"), TABLE_TableIndirection["col%0"]);
					put(TABLE_TableIndirection["cursorRing%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\18\15\238\131\214\54\28\253\136\203\37\4", "\165\70\125\143\237"), 0.9);
					put(TABLE_TableIndirection["cursorRing%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\130\50\230\77\82\184\62", "\48\212\91\149\36"), true);
				end
				for _, l in ipairs(TABLE_TableIndirection["cursorLines%0"]) do
					put(l, LUAOBFUSACTOR_DECRYPT_STR_0("\114\23\41\13\70\18\63", "\100\36\126\90"), false);
				end
				if TABLE_TableIndirection["cursorDot%0"] then
					put(TABLE_TableIndirection["cursorDot%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\33\203\196\84\2\24\61\60", "\82\113\164\183\61\118\113\82"), TABLE_TableIndirection["mp%0"]);
					put(TABLE_TableIndirection["cursorDot%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\201\67\245\190\177\220", "\138\155\34\145\215\196\175"), 2);
					put(TABLE_TableIndirection["cursorDot%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\151\246\2\205\27", "\160\212\153\110\162\105\91\61"), TABLE_TableIndirection["col%0"]);
					put(TABLE_TableIndirection["cursorDot%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\150\49\185\214\162\52\175", "\191\192\88\202"), true);
				end
				if TABLE_TableIndirection["cursorHalo%0"] then
					put(TABLE_TableIndirection["cursorHalo%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\71\196\250\23\10\192\116", "\172\17\173\137\126\104"), false);
				end
			elseif (TABLE_TableIndirection["style%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\249\115\57", "\120\189\28\77\87\182\131")) then
				if TABLE_TableIndirection["cursorRing%0"] then
					put(TABLE_TableIndirection["cursorRing%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\250\36\2\249\16\244\210", "\183\172\77\113\144\114\152"), false);
				end
				for _, l in ipairs(TABLE_TableIndirection["cursorLines%0"]) do
					put(l, LUAOBFUSACTOR_DECRYPT_STR_0("\203\113\43\224\64\201\8", "\109\157\24\88\137\34\165"), false);
				end
				if TABLE_TableIndirection["cursorDot%0"] then
					put(TABLE_TableIndirection["cursorDot%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\152\78\175\73\166\52\136\166", "\231\200\33\220\32\210\93"), TABLE_TableIndirection["mp%0"]);
					put(TABLE_TableIndirection["cursorDot%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\110\89\66\228\34\79", "\87\60\56\38\141"), 3 * TABLE_TableIndirection["pulse%0"] * TABLE_TableIndirection["ePulse%0"]);
					put(TABLE_TableIndirection["cursorDot%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\227\170\6\53\210", "\90\160\197\106"), TABLE_TableIndirection["col%0"]);
					put(TABLE_TableIndirection["cursorDot%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\213\188\57\127\64\239\176", "\34\131\213\74\22"), true);
				end
				if TABLE_TableIndirection["cursorHalo%0"] then
					put(TABLE_TableIndirection["cursorHalo%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\0\182\5\57\36\176\25\62", "\80\80\217\118"), TABLE_TableIndirection["mp%0"]);
					put(TABLE_TableIndirection["cursorHalo%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\55\73\15\116\16\91", "\29\101\40\107"), TABLE_TableIndirection["finalSize%0"]);
					put(TABLE_TableIndirection["cursorHalo%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\241\253\217\176\22\203\240\195\160", "\125\165\149\176\211"), 1);
					put(TABLE_TableIndirection["cursorHalo%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\106\12\38\238\151", "\229\41\99\74\129"), TABLE_TableIndirection["col%0"]);
					put(TABLE_TableIndirection["cursorHalo%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\7\23\224\37\32\21\224\57\54\11\226\50", "\75\83\101\129"), 0.4);
					put(TABLE_TableIndirection["cursorHalo%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\196\66\82\217\240\71\68", "\176\146\43\33"), true);
				end
			elseif (TABLE_TableIndirection["style%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\139\207\254\2\189", "\27\200\189\145\113\206")) then
				if TABLE_TableIndirection["cursorRing%0"] then
					put(TABLE_TableIndirection["cursorRing%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\150\130\65\162\77\172\142", "\47\192\235\50\203"), false);
				end
				for i = 1, 4 do
					TABLE_TableIndirection["line%0"] = TABLE_TableIndirection["cursorLines%0"][i];
					if TABLE_TableIndirection["line%0"] then
						TABLE_TableIndirection["a%0"] = ((i - 1) * (math['pi'] / 2)) + (math['pi'] / 4);
						TABLE_TableIndirection["r1%0"] = TABLE_TableIndirection["finalSize%0"] * 0.35;
						TABLE_TableIndirection["r2%0"] = TABLE_TableIndirection["finalSize%0"] * 1;
						put(TABLE_TableIndirection["line%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\6\213\21\220", "\233\64\167\122\177\140\188\212"), Vector2.new(TABLE_TableIndirection["mp%0"]['X'] + (math.cos(TABLE_TableIndirection["a%0"]) * TABLE_TableIndirection["r1%0"]), TABLE_TableIndirection["mp%0"]['Y'] + (math.sin(TABLE_TableIndirection["a%0"]) * TABLE_TableIndirection["r1%0"])));
						put(TABLE_TableIndirection["line%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\123\123", "\144\47\20\150\32\139\220"), Vector2.new(TABLE_TableIndirection["mp%0"]['X'] + (math.cos(TABLE_TableIndirection["a%0"]) * TABLE_TableIndirection["r2%0"]), TABLE_TableIndirection["mp%0"]['Y'] + (math.sin(TABLE_TableIndirection["a%0"]) * TABLE_TableIndirection["r2%0"])));
						put(TABLE_TableIndirection["line%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\4\42\180\250\209\142\225\35\49", "\132\80\66\221\153\186\224"), 1.5);
						put(TABLE_TableIndirection["line%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\101\160\40\24\169", "\219\38\207\68\119"), TABLE_TableIndirection["col%0"]);
						put(TABLE_TableIndirection["line%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\59\31\25\56\23\128\8", "\236\109\118\106\81\117"), true);
					end
				end
				if TABLE_TableIndirection["cursorDot%0"] then
					put(TABLE_TableIndirection["cursorDot%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\221\60\213\38\186\228\60\200", "\206\141\83\166\79"), TABLE_TableIndirection["mp%0"]);
					put(TABLE_TableIndirection["cursorDot%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\223\168\217\195\235\254", "\158\141\201\189\170"), 1.5);
					put(TABLE_TableIndirection["cursorDot%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\52\191\245\180\95", "\45\119\208\153\219"), TABLE_TableIndirection["col%0"]);
					put(TABLE_TableIndirection["cursorDot%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\226\80\183\28\17\216\92", "\115\180\57\196\117"), true);
				end
				if TABLE_TableIndirection["cursorHalo%0"] then
					put(TABLE_TableIndirection["cursorHalo%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\4\117\67\253\82\200\47", "\160\82\28\48\148\48\164\74"), false);
				end
			end
			if TABLE_TableIndirection["Settings%0"]['CursorTrail'] then
				table.insert(TABLE_TableIndirection["trailPositions%0"], 1, TABLE_TableIndirection["mp%0"]);
				while #TABLE_TableIndirection["trailPositions%0"] > 5 do
					table.remove(TABLE_TableIndirection["trailPositions%0"]);
				end
				for i = 1, #TABLE_TableIndirection["cursorTrailCircles%0"] do
					TABLE_TableIndirection["circle%0"] = TABLE_TableIndirection["cursorTrailCircles%0"][i];
					TABLE_TableIndirection["pos%0"] = TABLE_TableIndirection["trailPositions%0"][i + 1];
					if (TABLE_TableIndirection["circle%0"] and TABLE_TableIndirection["pos%0"]) then
						TABLE_TableIndirection["alpha%0"] = 1 - (i / (#TABLE_TableIndirection["cursorTrailCircles%0"] + 1));
						put(TABLE_TableIndirection["circle%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\243\223\174\47\46\4\204\222", "\109\163\176\221\70\90"), TABLE_TableIndirection["pos%0"]);
						put(TABLE_TableIndirection["circle%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\224\64\51\93\102\33", "\82\178\33\87\52\19"), TABLE_TableIndirection["finalSize%0"] * 0.6 * TABLE_TableIndirection["alpha%0"]);
						put(TABLE_TableIndirection["circle%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\120\170\225\121\119\66\167\251\105", "\28\44\194\136\26"), 1);
						put(TABLE_TableIndirection["circle%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\95\118\75\9\100", "\174\28\25\39\102\22\234\59"), TABLE_TableIndirection["col%0"]);
						put(TABLE_TableIndirection["circle%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\253\91\17\214\221\150\200\91\21\214\205\159", "\230\169\41\112\184\174"), TABLE_TableIndirection["alpha%0"] * 0.7);
						put(TABLE_TableIndirection["circle%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\252\205\102\183\16\24\214", "\47\170\164\21\222\114\116\179"), true);
					elseif TABLE_TableIndirection["circle%0"] then
						put(TABLE_TableIndirection["circle%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\203\142\158\223\255\139\136", "\182\157\231\237"), false);
					end
				end
			else
				for _, c in ipairs(TABLE_TableIndirection["cursorTrailCircles%0"]) do
					put(c, LUAOBFUSACTOR_DECRYPT_STR_0("\195\243\31\169\247\246\9", "\192\149\154\108"), false);
				end
			end
		end
		TABLE_TableIndirection["fovPulseT%0"] = 0;
		for _, plr in ipairs(TABLE_TableIndirection["playerList%0"]) do
			if (plr ~= TABLE_TableIndirection["LocalPlayer%0"]) then
				CreateInfo(plr);
			end
		end
		track(TABLE_TableIndirection["Players%0"]['PlayerAdded']:Connect(function(plr)
			if (plr ~= TABLE_TableIndirection["LocalPlayer%0"]) then
				CreateInfo(plr);
			end
			TABLE_TableIndirection["playerList%0"] = TABLE_TableIndirection["Players%0"]:GetPlayers();
		end));
		track(TABLE_TableIndirection["Players%0"]['PlayerRemoving']:Connect(function(plr)
			if (TABLE_TableIndirection["lockedTarget%0"] == plr) then
				TABLE_TableIndirection["lockedTarget%0"] = nil;
			end
			RemoveInfo(plr);
			task.defer(function()
				TABLE_TableIndirection["playerList%0"] = TABLE_TableIndirection["Players%0"]:GetPlayers();
			end);
		end));
		pcall(function()
			TABLE_TableIndirection["RunService%0"]:UnbindFromRenderStep(LUAOBFUSACTOR_DECRYPT_STR_0("\207\248\244\52\11\63\18\240\246\233\51\14\34\4\233", "\97\153\153\135\64\93\86"));
		end);
		TABLE_TableIndirection["RunService%0"]:BindToRenderStep(LUAOBFUSACTOR_DECRYPT_STR_0("\48\95\193\60\207\32\152\208\9\80\193\27\237\44\155", "\185\102\62\178\72\153\73\235"), Enum['RenderPriority']['Camera']['Value'] + 1, function(dt)
			if TABLE_TableIndirection["unloaded%0"] then
				return;
			end
			TABLE_TableIndirection["cam%0"] = workspace['CurrentCamera'];
			if not TABLE_TableIndirection["cam%0"] then
				return;
			end
			renderCursor(dt);
			if (TABLE_TableIndirection["Settings%0"]['WalkOn'] or TABLE_TableIndirection["Settings%0"]['JumpOn'] or TABLE_TableIndirection["Settings%0"]['HipOn']) then
				TABLE_TableIndirection["myHum%0"] = getHum();
				if TABLE_TableIndirection["myHum%0"] then
					if (TABLE_TableIndirection["Settings%0"]['WalkOn'] and (TABLE_TableIndirection["myHum%0"]['WalkSpeed'] ~= TABLE_TableIndirection["Settings%0"]['WalkSpeed'])) then
						TABLE_TableIndirection["myHum%0"]['WalkSpeed'] = TABLE_TableIndirection["Settings%0"]['WalkSpeed'];
					end
					if TABLE_TableIndirection["Settings%0"]['JumpOn'] then
						safe(function()
							TABLE_TableIndirection["myHum%0"]['UseJumpPower'] = true;
							TABLE_TableIndirection["myHum%0"]['JumpPower'] = TABLE_TableIndirection["Settings%0"]['JumpPower'];
						end);
					end
					if (TABLE_TableIndirection["Settings%0"]['HipOn'] and (TABLE_TableIndirection["myHum%0"]['HipHeight'] ~= TABLE_TableIndirection["Settings%0"]['HipHeight'])) then
						TABLE_TableIndirection["myHum%0"]['HipHeight'] = TABLE_TableIndirection["Settings%0"]['HipHeight'];
					end
				end
			end
			if TABLE_TableIndirection["Settings%0"]['HitboxOn'] then
				TABLE_TableIndirection["hitboxTick%0"] = TABLE_TableIndirection["hitboxTick%0"] + dt;
				if (TABLE_TableIndirection["hitboxTick%0"] >= 0.2) then
					TABLE_TableIndirection["hitboxTick%0"] = 0;
					for _, plr in ipairs(TABLE_TableIndirection["playerList%0"]) do
						if ((plr ~= TABLE_TableIndirection["LocalPlayer%0"]) and plr['Character']) then
							TABLE_TableIndirection["char%0"] = plr['Character'];
							if (TABLE_TableIndirection["Settings%0"]['HitboxPart'] == LUAOBFUSACTOR_DECRYPT_STR_0("\92\191\42\182", "\210\20\218\75")) then
								TABLE_TableIndirection["h%0"] = TABLE_TableIndirection["char%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\160\248\6\119", "\84\232\157\103\19\60\121"));
								if (TABLE_TableIndirection["h%0"] and TABLE_TableIndirection["h%0"]:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\62\114\97\70\44\114\96\87", "\35\124\19\18"))) then
									if not TABLE_TableIndirection["hitboxOriginals%0"][TABLE_TableIndirection["h%0"]] then
										TABLE_TableIndirection["hitboxOriginals%0"][TABLE_TableIndirection["h%0"]] = TABLE_TableIndirection["h%0"]['Size'];
									end
									TABLE_TableIndirection["ns%0"] = TABLE_TableIndirection["hitboxOriginals%0"][TABLE_TableIndirection["h%0"]] * TABLE_TableIndirection["Settings%0"]['HitboxSize'];
									if (TABLE_TableIndirection["h%0"]['Size'] ~= TABLE_TableIndirection["ns%0"]) then
										safe(function()
											TABLE_TableIndirection["h%0"]['Size'] = TABLE_TableIndirection["ns%0"];
										end);
									end
								end
							elseif (TABLE_TableIndirection["Settings%0"]['HitboxPart'] == LUAOBFUSACTOR_DECRYPT_STR_0("\198\92\16\223", "\55\132\51\116\166")) then
								TABLE_TableIndirection["torso%0"] = TABLE_TableIndirection["char%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\253\44\173\113\22\10\242\218\47\178", "\157\168\92\221\20\100\94")) or TABLE_TableIndirection["char%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\252\222\231\12\21", "\22\168\177\149\127\122\185"));
								if (TABLE_TableIndirection["torso%0"] and TABLE_TableIndirection["torso%0"]:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\149\166\41\79\207\182\181\46", "\159\215\199\90\42"))) then
									if not TABLE_TableIndirection["hitboxOriginals%0"][TABLE_TableIndirection["torso%0"]] then
										TABLE_TableIndirection["hitboxOriginals%0"][TABLE_TableIndirection["torso%0"]] = TABLE_TableIndirection["torso%0"]['Size'];
									end
									TABLE_TableIndirection["ns%0"] = TABLE_TableIndirection["hitboxOriginals%0"][TABLE_TableIndirection["torso%0"]] * TABLE_TableIndirection["Settings%0"]['HitboxSize'];
									if (TABLE_TableIndirection["torso%0"]['Size'] ~= TABLE_TableIndirection["ns%0"]) then
										safe(function()
											TABLE_TableIndirection["torso%0"]['Size'] = TABLE_TableIndirection["ns%0"];
										end);
									end
								end
							else
								for _, p in ipairs(TABLE_TableIndirection["char%0"]:GetDescendants()) do
									if (p:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\16\206\221\35\195\51\221\218", "\147\82\175\174\70")) and (p['Name'] ~= LUAOBFUSACTOR_DECRYPT_STR_0("\63\151\0\61\79\24\139\9\14\78\24\150\61\61\83\3", "\33\119\226\109\92"))) then
										if not TABLE_TableIndirection["hitboxOriginals%0"][p] then
											TABLE_TableIndirection["hitboxOriginals%0"][p] = p['Size'];
										end
										TABLE_TableIndirection["ns%0"] = TABLE_TableIndirection["hitboxOriginals%0"][p] * TABLE_TableIndirection["Settings%0"]['HitboxSize'];
										if (p['Size'] ~= TABLE_TableIndirection["ns%0"]) then
											safe(function()
												p['Size'] = TABLE_TableIndirection["ns%0"];
											end);
										end
									end
								end
							end
						end
					end
				end
			end
			TABLE_TableIndirection["vp%0"] = TABLE_TableIndirection["cam%0"]['ViewportSize'];
			if (TABLE_TableIndirection["vp%0"] ~= TABLE_TableIndirection["lastVp%0"]) then
				TABLE_TableIndirection["lastVp%0"] = TABLE_TableIndirection["vp%0"];
				put(TABLE_TableIndirection["FOVCircle%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\138\137\105\240\239\179\137\116", "\155\218\230\26\153"), Vector2.new(TABLE_TableIndirection["vp%0"]['X'] / 2, TABLE_TableIndirection["vp%0"]['Y'] / 2));
			end
			TABLE_TableIndirection["circle%0"] = TABLE_TableIndirection["Settings%0"]['FOVShape'] == LUAOBFUSACTOR_DECRYPT_STR_0("\53\27\9\192\26\23", "\163\118\114\123");
			TABLE_TableIndirection["fovPulseT%0"] = TABLE_TableIndirection["fovPulseT%0"] + dt;
			TABLE_TableIndirection["fovPulseAmt%0"] = 0;
			if TABLE_TableIndirection["Settings%0"]['FOVPulse'] then
				TABLE_TableIndirection["fovPulseAmt%0"] = math.sin(TABLE_TableIndirection["fovPulseT%0"] * 3) * 4;
			end
			put(TABLE_TableIndirection["FOVCircle%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\212\239\227\185\183\238\227", "\213\130\134\144\208"), TABLE_TableIndirection["Settings%0"]['ShowFOV'] and TABLE_TableIndirection["circle%0"]);
			put(TABLE_TableIndirection["FOVCircle%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\201\61\25\61\80\106", "\73\155\92\125\84\37\25\61"), TABLE_TableIndirection["Settings%0"]['FOV'] + TABLE_TableIndirection["fovPulseAmt%0"]);
			put(TABLE_TableIndirection["FOVCircle%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\98\205\225\220\92", "\46\33\162\141\179"), TABLE_TableIndirection["Settings%0"].FOVColor);
			put(TABLE_TableIndirection["FOVSquare%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\106\165\190\52\42\80\169", "\72\60\204\205\93"), TABLE_TableIndirection["Settings%0"]['ShowFOV'] and not TABLE_TableIndirection["circle%0"]);
			TABLE_TableIndirection["fovSize%0"] = (TABLE_TableIndirection["Settings%0"]['FOV'] + TABLE_TableIndirection["fovPulseAmt%0"]) * 2;
			put(TABLE_TableIndirection["FOVSquare%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\151\205\216\177", "\78\196\164\162\212\40"), Vector2.new(TABLE_TableIndirection["fovSize%0"], TABLE_TableIndirection["fovSize%0"]));
			put(TABLE_TableIndirection["FOVSquare%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\107\194\218\87\230\192\175\169", "\199\59\173\169\62\146\169\192"), Vector2.new((TABLE_TableIndirection["vp%0"]['X'] / 2) - (TABLE_TableIndirection["Settings%0"]['FOV'] + TABLE_TableIndirection["fovPulseAmt%0"]), (TABLE_TableIndirection["vp%0"]['Y'] / 2) - (TABLE_TableIndirection["Settings%0"]['FOV'] + TABLE_TableIndirection["fovPulseAmt%0"])));
			put(TABLE_TableIndirection["FOVSquare%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\20\170\176\172\37", "\195\87\197\220"), TABLE_TableIndirection["Settings%0"].FOVColor);
			if TABLE_TableIndirection["Settings%0"]['Crosshair'] then
				put(TABLE_TableIndirection["crosshair%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\129\254\178\186\193\117\243\58", "\84\209\145\193\211\181\28\156"), Vector2.new(TABLE_TableIndirection["vp%0"]['X'] / 2, TABLE_TableIndirection["vp%0"]['Y'] / 2));
				put(TABLE_TableIndirection["crosshair%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\242\236\34\135\213", "\167\177\131\78\232"), TABLE_TableIndirection["Settings%0"].FOVColor);
				put(TABLE_TableIndirection["crosshair%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\158\4\152\78\6\68\11", "\165\200\109\235\39\100\40\110"), true);
			else
				put(TABLE_TableIndirection["crosshair%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\191\115\242\33\17\133\127", "\115\233\26\129\72"), false);
			end
			if TABLE_TableIndirection["Settings%0"]['Aimbot'] then
				TABLE_TableIndirection["aimTimer%0"] = TABLE_TableIndirection["aimTimer%0"] + dt;
				if (TABLE_TableIndirection["aimTimer%0"] >= (1 / TABLE_TableIndirection["Settings%0"]['ScanRate'])) then
					TABLE_TableIndirection["aimTimer%0"] = 0;
					currentTarget, currentHum = FindTarget(TABLE_TableIndirection["cam%0"]);
				end
				if (currentTarget and currentTarget['Parent'] and currentHum and (currentHum['Health'] > 0)) then
					TABLE_TableIndirection["tgt%0"] = currentTarget['Position'];
					if (TABLE_TableIndirection["Settings%0"]['Prediction'] > 0) then
						TABLE_TableIndirection["vel%0"] = currentTarget['AssemblyLinearVelocity'] or Vector3['zero'];
						TABLE_TableIndirection["tgt%0"] = TABLE_TableIndirection["tgt%0"] + (TABLE_TableIndirection["vel%0"] * TABLE_TableIndirection["Settings%0"]['Prediction'] * 0.1);
					end
					TABLE_TableIndirection["goal%0"] = CFrame.new(TABLE_TableIndirection["cam%0"]['CFrame'].Position, TABLE_TableIndirection["tgt%0"]);
					if (TABLE_TableIndirection["Settings%0"]['Smooth'] < 1) then
						TABLE_TableIndirection["cam%0"]['CFrame'] = TABLE_TableIndirection["cam%0"]['CFrame']:Lerp(TABLE_TableIndirection["goal%0"], TABLE_TableIndirection["Settings%0"].Smooth);
					else
						TABLE_TableIndirection["cam%0"]['CFrame'] = TABLE_TableIndirection["goal%0"];
					end
				else
					currentTarget = nil;
					currentHum = nil;
				end
			else
				currentTarget = nil;
				currentHum = nil;
				TABLE_TableIndirection["aimTimer%0"] = 1;
				TABLE_TableIndirection["lockedTarget%0"] = nil;
			end
			TABLE_TableIndirection["espOn%0"] = TABLE_TableIndirection["Settings%0"]['ESP'];
			TABLE_TableIndirection["origin%0"] = TABLE_TableIndirection["cam%0"]['CFrame']['Position'];
			TABLE_TableIndirection["tracerOrigin%0"] = getTracerOrigin(TABLE_TableIndirection["vp%0"]);
			TABLE_TableIndirection["suffix%0"] = distSuffix();
			for _, plr in ipairs(TABLE_TableIndirection["playerList%0"]) do
				if (plr ~= TABLE_TableIndirection["LocalPlayer%0"]) then
					TABLE_TableIndirection["info%0"] = TABLE_TableIndirection["data%0"][plr];
					if TABLE_TableIndirection["info%0"] then
						TABLE_TableIndirection["shown%0"] = false;
						if (TABLE_TableIndirection["espOn%0"] and (TABLE_TableIndirection["Settings%0"]['TeamShow'] or IsEnemy(plr))) then
							RefreshInfo(plr, TABLE_TableIndirection["info%0"]);
							local hrp, hum = TABLE_TableIndirection["info%0"]['hrp'], TABLE_TableIndirection["info%0"]['hum'];
							if (hrp and hum and (hum['Health'] > 0)) then
								TABLE_TableIndirection["hp%0"] = hrp['Position'];
								TABLE_TableIndirection["dist%0"] = (TABLE_TableIndirection["hp%0"] - TABLE_TableIndirection["origin%0"])['Magnitude'];
								if (TABLE_TableIndirection["dist%0"] <= TABLE_TableIndirection["Settings%0"]['MaxDist']) then
									local pos, on = TABLE_TableIndirection["cam%0"]:WorldToViewportPoint(TABLE_TableIndirection["hp%0"]);
									if (on and (pos['Z'] > 0)) then
										TABLE_TableIndirection["shown%0"] = true;
										TABLE_TableIndirection["info%0"]['shown'] = true;
										TABLE_TableIndirection["headV%0"] = TABLE_TableIndirection["cam%0"]:WorldToViewportPoint(TABLE_TableIndirection["hp%0"] + Vector3.new(0, 2.5, 0));
										TABLE_TableIndirection["legV%0"] = TABLE_TableIndirection["cam%0"]:WorldToViewportPoint(TABLE_TableIndirection["hp%0"] - Vector3.new(0, 3, 0));
										TABLE_TableIndirection["height%0"] = math.abs(TABLE_TableIndirection["headV%0"]['Y'] - TABLE_TableIndirection["legV%0"]['Y']);
										TABLE_TableIndirection["width%0"] = TABLE_TableIndirection["height%0"] / 1.5;
										TABLE_TableIndirection["left%0"] = pos['X'] - (TABLE_TableIndirection["width%0"] / 2);
										put(TABLE_TableIndirection["info%0"].Box, LUAOBFUSACTOR_DECRYPT_STR_0("\75\7\205\130", "\132\24\110\183\231"), Vector2.new(TABLE_TableIndirection["width%0"], TABLE_TableIndirection["height%0"]));
										put(TABLE_TableIndirection["info%0"].Box, LUAOBFUSACTOR_DECRYPT_STR_0("\158\126\19\186\78\189\121\77", "\35\206\17\96\211\58\212\22"), Vector2.new(TABLE_TableIndirection["left%0"], TABLE_TableIndirection["headV%0"].Y));
										put(TABLE_TableIndirection["info%0"].Box, LUAOBFUSACTOR_DECRYPT_STR_0("\16\193\133\54\154", "\169\83\174\233\89\232\216\200"), TABLE_TableIndirection["Settings%0"].BoxColor);
										put(TABLE_TableIndirection["info%0"].Box, LUAOBFUSACTOR_DECRYPT_STR_0("\106\27\72\52\186\199\236", "\118\60\114\59\93\216\171\137"), TABLE_TableIndirection["Settings%0"].Boxes);
										TABLE_TableIndirection["rounded%0"] = math.floor(TABLE_TableIndirection["dist%0"]);
										if ((TABLE_TableIndirection["info%0"]['lastDist'] ~= TABLE_TableIndirection["rounded%0"]) or (TABLE_TableIndirection["info%0"]['lastSuffix'] ~= TABLE_TableIndirection["suffix%0"])) then
											TABLE_TableIndirection["info%0"]['lastDist'] = TABLE_TableIndirection["rounded%0"];
											TABLE_TableIndirection["info%0"]['lastSuffix'] = TABLE_TableIndirection["suffix%0"];
											put(TABLE_TableIndirection["info%0"].Name, LUAOBFUSACTOR_DECRYPT_STR_0("\102\204\92\240", "\220\50\169\36\132"), plr['Name'] .. LUAOBFUSACTOR_DECRYPT_STR_0("\177\188", "\209\145\231\108") .. TABLE_TableIndirection["rounded%0"] .. TABLE_TableIndirection["suffix%0"] .. "]");
										end
										put(TABLE_TableIndirection["info%0"].Name, LUAOBFUSACTOR_DECRYPT_STR_0("\105\46\27\4\204\204\45\87", "\66\57\65\104\109\184\165"), Vector2.new(pos.X, TABLE_TableIndirection["headV%0"]['Y'] - 18));
										put(TABLE_TableIndirection["info%0"].Name, LUAOBFUSACTOR_DECRYPT_STR_0("\158\4\246\81\247", "\133\221\107\154\62"), TABLE_TableIndirection["Settings%0"].NameColor);
										put(TABLE_TableIndirection["info%0"].Name, LUAOBFUSACTOR_DECRYPT_STR_0("\237\23\166\232\69\206\52", "\81\187\126\213\129\39\162"), TABLE_TableIndirection["Settings%0"].Names);
										put(TABLE_TableIndirection["info%0"].Tracer, LUAOBFUSACTOR_DECRYPT_STR_0("\163\163\34\249", "\196\229\209\77\148"), TABLE_TableIndirection["tracerOrigin%0"]);
										put(TABLE_TableIndirection["info%0"].Tracer, LUAOBFUSACTOR_DECRYPT_STR_0("\115\218", "\173\39\181\17\124\61\146"), Vector2.new(pos.X, TABLE_TableIndirection["legV%0"].Y));
										put(TABLE_TableIndirection["info%0"].Tracer, LUAOBFUSACTOR_DECRYPT_STR_0("\89\211\255\45\154", "\232\26\188\147\66"), TABLE_TableIndirection["Settings%0"].TracerColor);
										put(TABLE_TableIndirection["info%0"].Tracer, LUAOBFUSACTOR_DECRYPT_STR_0("\35\232\245\18\113\25\228", "\19\117\129\134\123"), TABLE_TableIndirection["Settings%0"].Tracers);
										if TABLE_TableIndirection["Settings%0"]['Health'] then
											TABLE_TableIndirection["ratio%0"] = math.clamp(hum['Health'] / math.max(hum.MaxHealth, 1), 0, 1);
											TABLE_TableIndirection["bx%0"] = TABLE_TableIndirection["left%0"] - 5;
											TABLE_TableIndirection["bottom%0"] = TABLE_TableIndirection["headV%0"]['Y'] + TABLE_TableIndirection["height%0"];
											put(TABLE_TableIndirection["info%0"].HealthBg, LUAOBFUSACTOR_DECRYPT_STR_0("\5\17\198\27", "\67\67\99\169\118\84"), Vector2.new(TABLE_TableIndirection["bx%0"], TABLE_TableIndirection["bottom%0"] + 1));
											put(TABLE_TableIndirection["info%0"].HealthBg, LUAOBFUSACTOR_DECRYPT_STR_0("\54\37", "\214\98\74\133\47\51\214\153"), Vector2.new(TABLE_TableIndirection["bx%0"], TABLE_TableIndirection["headV%0"]['Y'] - 1));
											put(TABLE_TableIndirection["info%0"].Health, LUAOBFUSACTOR_DECRYPT_STR_0("\44\92\127\121", "\55\106\46\16\20\19"), Vector2.new(TABLE_TableIndirection["bx%0"], TABLE_TableIndirection["bottom%0"]));
											put(TABLE_TableIndirection["info%0"].Health, LUAOBFUSACTOR_DECRYPT_STR_0("\125\180", "\115\41\219\210\80\86\94"), Vector2.new(TABLE_TableIndirection["bx%0"], TABLE_TableIndirection["bottom%0"] - (TABLE_TableIndirection["height%0"] * TABLE_TableIndirection["ratio%0"])));
											if (TABLE_TableIndirection["info%0"]['lastHp'] ~= TABLE_TableIndirection["ratio%0"]) then
												TABLE_TableIndirection["info%0"]['lastHp'] = TABLE_TableIndirection["ratio%0"];
												put(TABLE_TableIndirection["info%0"].Health, LUAOBFUSACTOR_DECRYPT_STR_0("\131\70\229\21\192", "\91\192\41\137\122\178"), Color3.fromHSV(TABLE_TableIndirection["ratio%0"] * 0.33, 0.9, 1));
											end
											put(TABLE_TableIndirection["info%0"].HealthBg, LUAOBFUSACTOR_DECRYPT_STR_0("\97\44\217\225\85\41\207", "\136\55\69\170"), true);
											put(TABLE_TableIndirection["info%0"].Health, LUAOBFUSACTOR_DECRYPT_STR_0("\213\244\3\51\212\255\40", "\173\131\157\112\90\182\147\77"), true);
										else
											put(TABLE_TableIndirection["info%0"].HealthBg, LUAOBFUSACTOR_DECRYPT_STR_0("\44\31\51\14\24\26\37", "\103\122\118\64"), false);
											put(TABLE_TableIndirection["info%0"].Health, LUAOBFUSACTOR_DECRYPT_STR_0("\198\225\3\205\242\177\245", "\221\144\136\112\164\144"), false);
										end
										if TABLE_TableIndirection["Settings%0"]['HealthNums'] then
											put(TABLE_TableIndirection["info%0"].HpText, LUAOBFUSACTOR_DECRYPT_STR_0("\109\56\97\176", "\196\57\93\25"), tostring(math.floor(hum['Health'] + 0.5)));
											put(TABLE_TableIndirection["info%0"].HpText, LUAOBFUSACTOR_DECRYPT_STR_0("\250\67\163\140\91\195\67\190", "\47\170\44\208\229"), Vector2.new(TABLE_TableIndirection["left%0"] - 30, TABLE_TableIndirection["headV%0"]['Y'] + (TABLE_TableIndirection["height%0"] / 2)));
											put(TABLE_TableIndirection["info%0"].HpText, LUAOBFUSACTOR_DECRYPT_STR_0("\107\77\178\21\9", "\87\40\34\222\122\123\135"), TABLE_TableIndirection["Settings%0"].NameColor);
											put(TABLE_TableIndirection["info%0"].HpText, LUAOBFUSACTOR_DECRYPT_STR_0("\119\52\146\60\195\220\68", "\176\33\93\225\85\161"), true);
										else
											put(TABLE_TableIndirection["info%0"].HpText, LUAOBFUSACTOR_DECRYPT_STR_0("\148\16\158\221\123\174\28", "\25\194\121\237\180"), false);
										end
										if TABLE_TableIndirection["Settings%0"]['HeadDot'] then
											local headS, headOn = TABLE_TableIndirection["cam%0"]:WorldToViewportPoint(TABLE_TableIndirection["hp%0"] + Vector3.new(0, 1.5, 0));
											if (headOn and (headS['Z'] > 0)) then
												put(TABLE_TableIndirection["info%0"].HeadDot, LUAOBFUSACTOR_DECRYPT_STR_0("\132\184\42\38\18\67\187\185", "\42\212\215\89\79\102"), Vector2.new(headS.X, headS.Y));
												put(TABLE_TableIndirection["info%0"].HeadDot, LUAOBFUSACTOR_DECRYPT_STR_0("\148\94\40\31\221", "\151\215\49\68\112\175\46\39"), TABLE_TableIndirection["Settings%0"].BoxColor);
												put(TABLE_TableIndirection["info%0"].HeadDot, LUAOBFUSACTOR_DECRYPT_STR_0("\112\116\165\69\143\74\120", "\237\38\29\214\44"), true);
											else
												put(TABLE_TableIndirection["info%0"].HeadDot, LUAOBFUSACTOR_DECRYPT_STR_0("\32\47\100\15\113\74\176", "\225\118\70\23\102\19\38\213"), false);
											end
										else
											put(TABLE_TableIndirection["info%0"].HeadDot, LUAOBFUSACTOR_DECRYPT_STR_0("\22\83\78\43\91\248\181", "\208\64\58\61\66\57\148"), false);
										end
										if (TABLE_TableIndirection["Settings%0"]['Skeleton'] and TABLE_TableIndirection["info%0"]['char']) then
											TABLE_TableIndirection["rig%0"] = getRigType(TABLE_TableIndirection["info%0"].char);
											TABLE_TableIndirection["pairs2%0"] = ((TABLE_TableIndirection["rig%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\219\239\243", "\36\137\222\198")) and TABLE_TableIndirection["skelR15%0"]) or ((TABLE_TableIndirection["rig%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\211\162", "\41\129\148\130\66\168\194\98")) and TABLE_TableIndirection["skelR6%0"]) or nil;
											if TABLE_TableIndirection["pairs2%0"] then
												for i = 1, TABLE_TableIndirection["MAX_SKEL%0"] do
													TABLE_TableIndirection["line%0"] = TABLE_TableIndirection["info%0"]['Skel'][i];
													TABLE_TableIndirection["pair%0"] = TABLE_TableIndirection["pairs2%0"][i];
													if (TABLE_TableIndirection["line%0"] and TABLE_TableIndirection["pair%0"]) then
														TABLE_TableIndirection["fromP%0"] = getSkelPart(TABLE_TableIndirection["info%0"], TABLE_TableIndirection["pair%0"][1]);
														TABLE_TableIndirection["toP%0"] = getSkelPart(TABLE_TableIndirection["info%0"], TABLE_TableIndirection["pair%0"][2]);
														if (TABLE_TableIndirection["fromP%0"] and TABLE_TableIndirection["toP%0"]) then
															local a, aOn = TABLE_TableIndirection["cam%0"]:WorldToViewportPoint(TABLE_TableIndirection["fromP%0"].Position);
															local b, bOn = TABLE_TableIndirection["cam%0"]:WorldToViewportPoint(TABLE_TableIndirection["toP%0"].Position);
															if (aOn and bOn and (a['Z'] > 0) and (b['Z'] > 0)) then
																put(TABLE_TableIndirection["line%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\55\56\142\29", "\204\113\74\225\112\35\72\16"), Vector2.new(a.X, a.Y));
																put(TABLE_TableIndirection["line%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\69\17", "\128\17\126\97\64\132\223\211"), Vector2.new(b.X, b.Y));
																put(TABLE_TableIndirection["line%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\153\137\49\7\168", "\104\218\230\93"), TABLE_TableIndirection["Settings%0"].BoxColor);
																put(TABLE_TableIndirection["line%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\69\53\193\127\113\48\215", "\22\19\92\178"), true);
															else
																put(TABLE_TableIndirection["line%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\232\2\80\39\191\189\219", "\209\190\107\35\78\221"), false);
															end
														else
															put(TABLE_TableIndirection["line%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\182\39\197\232\212\140\43", "\182\224\78\182\129"), false);
														end
													elseif TABLE_TableIndirection["line%0"] then
														put(TABLE_TableIndirection["line%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\219\4\182\7\212\60\122", "\36\141\109\197\110\182\80\31"), false);
													end
												end
											else
												for _, l in ipairs(TABLE_TableIndirection["info%0"].Skel) do
													put(l, LUAOBFUSACTOR_DECRYPT_STR_0("\213\3\5\142\28\48\230", "\92\131\106\118\231\126"), false);
												end
											end
										else
											for _, l in ipairs(TABLE_TableIndirection["info%0"].Skel) do
												put(l, LUAOBFUSACTOR_DECRYPT_STR_0("\139\74\45\172\33\177\70", "\67\221\35\94\197"), false);
											end
										end
									end
								end
							end
						end
						if not TABLE_TableIndirection["shown%0"] then
							HideInfo(TABLE_TableIndirection["info%0"]);
						end
					end
				end
			end
		end);
		function Unload()
			if TABLE_TableIndirection["unloaded%0"] then
				return;
			end
			TABLE_TableIndirection["unloaded%0"] = true;
			TABLE_TableIndirection["Settings%0"]['Aimbot'] = false;
			TABLE_TableIndirection["Settings%0"]['Fly'] = false;
			TABLE_TableIndirection["Settings%0"]['NoClip'] = false;
			TABLE_TableIndirection["Settings%0"]['HitboxOn'] = false;
			restoreHitboxes();
			safe(function()
				TABLE_TableIndirection["UserInputService%0"]['MouseIconEnabled'] = true;
			end);
			TABLE_TableIndirection["cursorHidesMouse%0"] = false;
			pcall(function()
				TABLE_TableIndirection["RunService%0"]:UnbindFromRenderStep(LUAOBFUSACTOR_DECRYPT_STR_0("\115\189\51\78\115\181\51\83\74\178\51\105\81\185\48", "\58\37\220\64"));
			end);
			for _, conn in ipairs(TABLE_TableIndirection["connections%0"]) do
				pcall(function()
					conn:Disconnect();
				end);
			end
			TABLE_TableIndirection["connections%0"] = {};
			safe(function()
				if TABLE_TableIndirection["FOVCircle%0"] then
					TABLE_TableIndirection["FOVCircle%0"]:Remove();
				end
			end);
			safe(function()
				if TABLE_TableIndirection["FOVSquare%0"] then
					TABLE_TableIndirection["FOVSquare%0"]:Remove();
				end
			end);
			safe(function()
				if TABLE_TableIndirection["crosshair%0"] then
					TABLE_TableIndirection["crosshair%0"]:Remove();
				end
			end);
			safe(function()
				if TABLE_TableIndirection["cursorRing%0"] then
					TABLE_TableIndirection["cursorRing%0"]:Remove();
				end
			end);
			safe(function()
				if TABLE_TableIndirection["cursorDot%0"] then
					TABLE_TableIndirection["cursorDot%0"]:Remove();
				end
			end);
			safe(function()
				if TABLE_TableIndirection["cursorHalo%0"] then
					TABLE_TableIndirection["cursorHalo%0"]:Remove();
				end
			end);
			for _, l in ipairs(TABLE_TableIndirection["cursorLines%0"]) do
				safe(function()
					if l then
						l:Remove();
					end
				end);
			end
			for _, c in ipairs(TABLE_TableIndirection["cursorTrailCircles%0"]) do
				safe(function()
					if c then
						c:Remove();
					end
				end);
			end
			TABLE_TableIndirection["hrp%0"] = getHrp();
			if TABLE_TableIndirection["hrp%0"] then
				for _, n in ipairs({LUAOBFUSACTOR_DECRYPT_STR_0("\234\141\231\24\130\165\207\133\251\2\167\138\208\149\214\58", "\204\188\236\148\108\212"),LUAOBFUSACTOR_DECRYPT_STR_0("\232\221\76\231\194\27\18\187\209\210\76\213\248\11\35\149", "\210\190\188\63\147\148\114\97")}) do
					safe(function()
						TABLE_TableIndirection["i%0"] = TABLE_TableIndirection["hrp%0"]:FindFirstChild(n);
						if TABLE_TableIndirection["i%0"] then
							TABLE_TableIndirection["i%0"]:Destroy();
						end
					end);
				end
			end
			TABLE_TableIndirection["list%0"] = {};
			for plr in pairs(TABLE_TableIndirection["data%0"]) do
				table.insert(TABLE_TableIndirection["list%0"], plr);
			end
			for _, plr in ipairs(TABLE_TableIndirection["list%0"]) do
				RemoveInfo(plr);
			end
			pcall(function()
				TABLE_TableIndirection["gui%0"]:Destroy();
			end);
		end
		return Unload;
	end
	LoadMainHub(function()
		return "i had mercy and there's no keys for now :D";
	end);
end
loadMainScript();
