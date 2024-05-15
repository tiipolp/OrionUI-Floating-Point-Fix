local L_1_ = game:GetService("ScriptContext")
local L_2_ = game:GetService("UserInputService")
local L_3_ = game:GetService("TweenService")
local L_4_ = game:GetService("RunService")
local L_5_ = game:GetService("Players").LocalPlayer
local L_6_ = L_5_:GetMouse()
local L_7_ = game:GetService("HttpService")
local L_8_ = game:GetService("CoreGui")
local L_9_ = game:GetService("Debris")
if getfenv().getconnections then
	for L_33_forvar1, L_34_forvar2 in next, getfenv().getconnections(L_1_.Error) do
		L_34_forvar2:Disable()
	end
end
local L_10_ = {
	Elements = {},
	ThemeObjects = {},
	Connections = {},
	Flags = {},
	Themes = {
		Default = {
			Main = Color3.fromRGB(25, 25, 25),
			Second = Color3.fromRGB(32, 32, 32),
			Stroke = Color3.fromRGB(60, 60, 60),
			Divider = Color3.fromRGB(60, 60, 60),
			Text = Color3.fromRGB(240, 240, 240),
			TextDark = Color3.fromRGB(150, 150, 150)
		}
	},
	SelectedTheme = "Default",
	Folder = nil,
	SaveCfg = false
}
local L_11_ = [[
    {
      "icons": {
        "aperture": "rbxassetid://7733666258",
        "bug": "rbxassetid://7733701545",
        "chevrons-down-up": "rbxassetid://7733720483",
        "clock-6": "rbxassetid://8997384977",
        "egg": "rbxassetid://8997385940",
        "external-link": "rbxassetid://7743866903",
        "lightbulb-off": "rbxassetid://7733975123",
        "file-check-2": "rbxassetid://7733779610",
        "settings": "rbxassetid://7734053495",
        "crown": "rbxassetid://7733765398",
        "coins": "rbxassetid://7743866529",
        "battery": "rbxassetid://7733674820",
        "flashlight-off": "rbxassetid://7733798799",
        "camera-off": "rbxassetid://7733919260",
        "function-square": "rbxassetid://7733799682",
        "mountain-snow": "rbxassetid://7743870286",
        "gamepad": "rbxassetid://7733799901",
        "gift": "rbxassetid://7733946818",
        "globe": "rbxassetid://7733954760",
        "option": "rbxassetid://7734021300",
        "hand": "rbxassetid://7733955740",
        "hard-hat": "rbxassetid://7733955850",
        "hash": "rbxassetid://7733955906",
        "server": "rbxassetid://7734053426",
        "align-horizontal-space-around": "rbxassetid://8997381738",
        "highlighter": "rbxassetid://7743868648",
        "bike": "rbxassetid://7733678330",
        "home": "rbxassetid://7733960981",
        "image": "rbxassetid://7733964126",
        "indent": "rbxassetid://7733964452",
        "infinity": "rbxassetid://7733964640",
        "inspect": "rbxassetid://7733964808",
        "alert-triangle": "rbxassetid://7733658504",
        "align-start-horizontal": "rbxassetid://8997381965",
        "figma": "rbxassetid://7743867310",
        "pin": "rbxassetid://8997386648",
        "corner-up-right": "rbxassetid://7733764915",
        "list-x": "rbxassetid://7743869517",
        "monitor-off": "rbxassetid://7734000184",
        "chevron-first": "rbxassetid://8997383275",
        "package-search": "rbxassetid://8997386448",
        "pencil": "rbxassetid://7734022107",
        "cloud-fog": "rbxassetid://7733920317",
        "grip-horizontal": "rbxassetid://7733955302",
        "align-center-vertical": "rbxassetid://8997380737",
        "outdent": "rbxassetid://7734021384",
        "more-vertical": "rbxassetid://7734006187",
        "package-plus": "rbxassetid://8997386355",
        "bluetooth": "rbxassetid://7733687147",
        "pen-tool": "rbxassetid://7734022041",
        "person-standing": "rbxassetid://7743871002",
        "tornado": "rbxassetid://7743873633",
        "phone-incoming": "rbxassetid://7743871120",
        "phone-off": "rbxassetid://7734029534",
        "dribbble": "rbxassetid://7733770843",
        "at-sign": "rbxassetid://7733673907",
        "edit-2": "rbxassetid://7733771217",
        "sheet": "rbxassetid://7743871876",
        "tv": "rbxassetid://7743874674",
        "headphones": "rbxassetid://7733956063",
        "qr-code": "rbxassetid://7743871575",
        "reply": "rbxassetid://7734051594",
        "rewind": "rbxassetid://7734051670",
        "bell-off": "rbxassetid://7733675107",
        "file-check": "rbxassetid://7733779668",
        "quote": "rbxassetid://7734045100",
        "rotate-ccw": "rbxassetid://7734051861",
        "library": "rbxassetid://7743869054",
        "clock-1": "rbxassetid://8997383694",
        "on-charge": "rbxassetid://7734021231",
        "video-off": "rbxassetid://7743876466",
        "save": "rbxassetid://7734052335",
        "arrow-left-circle": "rbxassetid://7733673056",
        "screen-share": "rbxassetid://7734052814",
        "clock-3": "rbxassetid://8997384456",
        "help-circle": "rbxassetid://7733956210",
        "server-crash": "rbxassetid://7734053281",
        "bluetooth-searching": "rbxassetid://7733914320",
        "equal": "rbxassetid://7733771811",
        "shield-close": "rbxassetid://7734056470",
        "phone": "rbxassetid://7734032056",
        "type": "rbxassetid://7743874740",
        "file-x-2": "rbxassetid://7743867554",
        "sidebar": "rbxassetid://7734058260",
        "sigma": "rbxassetid://7734058345",
        "smartphone-charging": "rbxassetid://7734058894",
        "arrow-left": "rbxassetid://7733673136",
        "framer": "rbxassetid://7733799486",
        "currency": "rbxassetid://7733765592",
        "star": "rbxassetid://7734068321",
        "stretch-horizontal": "rbxassetid://8997387754",
        "smile": "rbxassetid://7734059095",
        "subscript": "rbxassetid://8997387937",
        "sun": "rbxassetid://7734068495",
        "switch-camera": "rbxassetid://7743872492",
        "table": "rbxassetid://7734073253",
        "tag": "rbxassetid://7734075797",
        "cross": "rbxassetid://7733765224",
        "gem": "rbxassetid://7733942651",
        "link": "rbxassetid://7733978098",
        "terminal": "rbxassetid://7743872929",
        "thermometer-sun": "rbxassetid://7734084018",
        "share-2": "rbxassetid://7734053595",
        "timer-off": "rbxassetid://8997388325",
        "megaphone": "rbxassetid://7733993049",
        "timer-reset": "rbxassetid://7743873336",
        "phone-forwarded": "rbxassetid://7734027345",
        "unlock": "rbxassetid://7743875263",
        "trello": "rbxassetid://7743873996",
        "camera": "rbxassetid://7733708692",
        "triangle": "rbxassetid://7743874367",
        "truck": "rbxassetid://7743874482",
        "file-output": "rbxassetid://7733788742",
        "gamepad-2": "rbxassetid://7733799795",
        "network": "rbxassetid://7734021047",
        "users": "rbxassetid://7743876054",
        "electricity-off": "rbxassetid://7733771563",
        "book": "rbxassetid://7733914390",
        "clock-9": "rbxassetid://8997385485",
        "corner-down-left": "rbxassetid://7733764327",
        "locate-fixed": "rbxassetid://7733992424",
        "bar-chart": "rbxassetid://7733674319",
        "shield-check": "rbxassetid://7734056411",
        "signal-low": "rbxassetid://8997387189",
        "reply-all": "rbxassetid://7734051524",
        "zoom-in": "rbxassetid://7743878977",
        "grip-vertical": "rbxassetid://7733955410",
        "ticket": "rbxassetid://7734086558",
        "smartphone": "rbxassetid://7734058979",
        "arrow-big-right": "rbxassetid://7733671493",
        "tv-2": "rbxassetid://7743874599",
        "flashlight": "rbxassetid://7733798851",
        "database": "rbxassetid://7743866778",
        "plus-square": "rbxassetid://7734040369",
        "align-justify": "rbxassetid://7733661326",
        "clipboard-list": "rbxassetid://7733920117",
        "github": "rbxassetid://7733954058",
        "columns": "rbxassetid://7733757178",
        "arrow-big-down": "rbxassetid://7733668653",
        "cloud-off": "rbxassetid://7733745572",
        "target": "rbxassetid://7743872758",
        "skip-back": "rbxassetid://7734058404",
        "x-circle": "rbxassetid://7743878496",
        "clock-10": "rbxassetid://8997383876",
        "align-right": "rbxassetid://7733663582",
        "clock-5": "rbxassetid://8997384798",
        "bell-plus": "rbxassetid://7733675181",
        "battery-medium": "rbxassetid://7733674731",
        "arrow-down": "rbxassetid://7733672933",
        "inbox": "rbxassetid://7733964370",
        "cast": "rbxassetid://7733919326",
        "gift-card": "rbxassetid://7733945018",
        "webcam": "rbxassetid://7743877896",
        "folder-minus": "rbxassetid://7733799022",
        "scan-line": "rbxassetid://8997386772",
        "shovel": "rbxassetid://7734056878",
        "download-cloud": "rbxassetid://7733770689",
        "list-checks": "rbxassetid://7743869317",
        "file-text": "rbxassetid://7733789088",
        "codesandbox": "rbxassetid://7733752575",
        "laptop-2": "rbxassetid://7733965313",
        "podcast": "rbxassetid://7734042234",
        "log-out": "rbxassetid://7733992677",
        "thumbs-up": "rbxassetid://7743873212",
        "timer": "rbxassetid://7743873443",
        "text-cursor": "rbxassetid://8997388195",
        "file-search": "rbxassetid://7733788966",
        "thermometer": "rbxassetid://7734084149",
        "bluetooth-off": "rbxassetid://7733914252",
        "refresh-cw": "rbxassetid://7734051052",
        "clipboard-check": "rbxassetid://7733919947",
        "languages": "rbxassetid://7733965249",
        "asterisk": "rbxassetid://7733673800",
        "superscript": "rbxassetid://8997388036",
        "user-check": "rbxassetid://7743875503",
        "move-diagonal": "rbxassetid://7743870505",
        "copy": "rbxassetid://7733764083",
        "bot": "rbxassetid://7733916988",
        "alarm-minus": "rbxassetid://7733656164",
        "log-in": "rbxassetid://7733992604",
        "maximize": "rbxassetid://7733992982",
        "align-horizontal-space-between": "rbxassetid://8997381854",
        "brush": "rbxassetid://7733701455",
        "equal-not": "rbxassetid://7733771726",
        "upload": "rbxassetid://7743875428",
        "minus-circle": "rbxassetid://7733998053",
        "graduation-cap": "rbxassetid://7733955058",
        "edit-3": "rbxassetid://7733771361",
        "check": "rbxassetid://7733715400",
        "scissors": "rbxassetid://7734052570",
        "info": "rbxassetid://7733964719",
        "align-horizonal-distribute-start": "rbxassetid://8997381290",
        "book-open": "rbxassetid://7733687281",
        "divide-circle": "rbxassetid://7733769152",
        "file": "rbxassetid://7733793319",
        "clock-2": "rbxassetid://8997384295",
        "corner-right-up": "rbxassetid://7733764680",
        "clover": "rbxassetid://7733747233",
        "expand": "rbxassetid://7733771982",
        "gauge": "rbxassetid://7733799969",
        "phone-outgoing": "rbxassetid://7743871253",
        "shield-alert": "rbxassetid://7734056326",
        "paperclip": "rbxassetid://7734021680",
        "arrow-big-left": "rbxassetid://7733911731",
        "album": "rbxassetid://7733658133",
        "bookmark": "rbxassetid://7733692043",
        "check-circle-2": "rbxassetid://7733710700",
        "list-ordered": "rbxassetid://7743869411",
        "delete": "rbxassetid://7733768142",
        "axe": "rbxassetid://7733674079",
        "radio": "rbxassetid://7743871662",
        "octagon": "rbxassetid://7734021165",
        "git-commit": "rbxassetid://7743868360",
        "shirt": "rbxassetid://7734056672",
        "corner-right-down": "rbxassetid://7733764605",
        "trending-down": "rbxassetid://7743874143",
        "airplay": "rbxassetid://7733655834",
        "repeat": "rbxassetid://7734051454",
        "layers": "rbxassetid://7743868936",
        "chevron-right": "rbxassetid://7733717755",
        "chevrons-right": "rbxassetid://7733919682",
        "folder-plus": "rbxassetid://7733799092",
        "alarm-check": "rbxassetid://7733655912",
        "arrow-up-right": "rbxassetid://7733673646",
        "user-plus": "rbxassetid://7743875759",
        "file-minus": "rbxassetid://7733936115",
        "cloud-drizzle": "rbxassetid://7733920226",
        "stretch-vertical": "rbxassetid://8997387862",
        "align-vertical-distribute-start": "rbxassetid://8997382428",
        "unlink": "rbxassetid://7743875149",
        "wand": "rbxassetid://8997388430",
        "regex": "rbxassetid://7734051188",
        "command": "rbxassetid://7733924046",
        "haze": "rbxassetid://7733955969",
        "trash": "rbxassetid://7743873871",
        "battery-full": "rbxassetid://7733674503",
        "flag-triangle-left": "rbxassetid://7733798509",
        "server-off": "rbxassetid://7734053361",
        "loader-2": "rbxassetid://7733989869",
        "monitor-speaker": "rbxassetid://7743869988",
        "shuffle": "rbxassetid://7734057059",
        "tablet": "rbxassetid://7743872620",
        "cloud-moon": "rbxassetid://7733920519",
        "clipboard-x": "rbxassetid://7733734668",
        "pocket": "rbxassetid://7734042139",
        "watch": "rbxassetid://7743877668",
        "file-plus": "rbxassetid://7733788885",
        "locate": "rbxassetid://7733992469",
        "share": "rbxassetid://7734053697",
        "thermometer-snowflake": "rbxassetid://7743873074",
        "volume-1": "rbxassetid://7743877081",
        "arrow-left-right": "rbxassetid://8997382869",
        "coffee": "rbxassetid://7733752630",
        "chevron-last": "rbxassetid://8997383390",
        "cloud-hail": "rbxassetid://7733920444",
        "alarm-clock-off": "rbxassetid://7733656003",
        "pound-sterling": "rbxassetid://7734042354",
        "tent": "rbxassetid://7734078943",
        "toggle-left": "rbxassetid://7734091286",
        "dollar-sign": "rbxassetid://7733770599",
        "sunrise": "rbxassetid://7743872365",
        "sunset": "rbxassetid://7734070982",
        "code": "rbxassetid://7733749837",
        "thumbs-down": "rbxassetid://7734084236",
        "trending-up": "rbxassetid://7743874262",
        "clock-12": "rbxassetid://8997384150",
        "rocking-chair": "rbxassetid://7734051769",
        "check-square": "rbxassetid://7733919526",
        "cpu": "rbxassetid://7733765045",
        "palette": "rbxassetid://7734021595",
        "minimize-2": "rbxassetid://7733997870",
        "cloud-sun": "rbxassetid://7733746880",
        "copyleft": "rbxassetid://7733764196",
        "archive": "rbxassetid://7733911621",
        "building": "rbxassetid://7733701625",
        "image-minus": "rbxassetid://7733963797",
        "italic": "rbxassetid://7733964917",
        "link-2-off": "rbxassetid://7733975283",
        "sort-asc": "rbxassetid://7734060715",
        "underline": "rbxassetid://7743874904",
        "gitlab": "rbxassetid://7733954246",
        "file-minus-2": "rbxassetid://7733936010",
        "play-circle": "rbxassetid://7734037784",
        "clock-8": "rbxassetid://8997385352",
        "file-input": "rbxassetid://7733935917",
        "beaker": "rbxassetid://7733674922",
        "shopping-bag": "rbxassetid://7734056747",
        "navigation": "rbxassetid://7734020989",
        "moon": "rbxassetid://7743870134",
        "align-vertical-space-between": "rbxassetid://8997382793",
        "glasses": "rbxassetid://7733954403",
        "clipboard-copy": "rbxassetid://7733920037",
        "feather": "rbxassetid://7733777166",
        "skip-forward": "rbxassetid://7734058495",
        "wind": "rbxassetid://7743878264",
        "frown": "rbxassetid://7733799591",
        "move-vertical": "rbxassetid://7743870608",
        "umbrella": "rbxassetid://7743874820",
        "package": "rbxassetid://7734021469",
        "chevrons-up": "rbxassetid://7733723433",
        "download": "rbxassetid://7733770755",
        "eye": "rbxassetid://7733774602",
        "files": "rbxassetid://7743867811",
        "arrow-down-right": "rbxassetid://7733672831",
        "code-2": "rbxassetid://7733920644",
        "wrap-text": "rbxassetid://8997388548",
        "file-digit": "rbxassetid://7733935829",
        "x-square": "rbxassetid://7743878737",
        "clipboard": "rbxassetid://7733734762",
        "maximize-2": "rbxassetid://7733992901",
        "send": "rbxassetid://7734053039",
        "alarm-clock": "rbxassetid://7733656100",
        "sliders": "rbxassetid://7734058803",
        "refresh-ccw": "rbxassetid://7734050715",
        "music": "rbxassetid://7734020554",
        "banknote": "rbxassetid://7733674153",
        "hard-drive": "rbxassetid://7733955793",
        "search": "rbxassetid://7734052925",
        "layout-list": "rbxassetid://7733970442",
        "edit": "rbxassetid://7733771472",
        "contrast": "rbxassetid://7733764005",
        "wifi": "rbxassetid://7743878148",
        "swiss-franc": "rbxassetid://7734071038",
        "ghost": "rbxassetid://7743868000",
        "laptop": "rbxassetid://7733965386",
        "clock-4": "rbxassetid://8997384603",
        "layout-dashboard": "rbxassetid://7733970318",
        "align-vertical-justify-end": "rbxassetid://8997382584",
        "circle": "rbxassetid://7733919881",
        "file-x": "rbxassetid://7733938136",
        "award": "rbxassetid://7733673987",
        "corner-left-down": "rbxassetid://7733764448",
        "arrow-up-left": "rbxassetid://7733673539",
        "carrot": "rbxassetid://8997382987",
        "globe-2": "rbxassetid://7733954611",
        "compass": "rbxassetid://7733924216",
        "git-branch": "rbxassetid://7733949149",
        "vibrate": "rbxassetid://7743876302",
        "pause-circle": "rbxassetid://7734021767",
        "minus-square": "rbxassetid://7743869899",
        "mic-off": "rbxassetid://7743869714",
        "arrow-down-circle": "rbxassetid://7733671763",
        "move-horizontal": "rbxassetid://7734016210",
        "chrome": "rbxassetid://7733919783",
        "radio-receiver": "rbxassetid://7734045155",
        "shield": "rbxassetid://7734056608",
        "image-plus": "rbxassetid://7733964016",
        "more-horizontal": "rbxassetid://7734006080",
        "slash": "rbxassetid://8997387644",
        "divide": "rbxassetid://7733769365",
        "view": "rbxassetid://7743876754",
        "list": "rbxassetid://7743869612",
        "printer": "rbxassetid://7734042580",
        "corner-left-up": "rbxassetid://7733764536",
        "meh": "rbxassetid://7733993147",
        "copyright": "rbxassetid://7733764275",
        "align-end-vertical": "rbxassetid://8997380907",
        "heart": "rbxassetid://7733956134",
        "lock": "rbxassetid://7733992528",
        "align-center": "rbxassetid://7733909776",
        "signal-high": "rbxassetid://8997387110",
        "upload-cloud": "rbxassetid://7743875358",
        "arrow-up-circle": "rbxassetid://7733673466",
        "git-branch-plus": "rbxassetid://7743868200",
        "align-vertical-justify-center": "rbxassetid://8997382502",
        "screen-share-off": "rbxassetid://7734052653",
        "git-pull-request": "rbxassetid://7733952287",
        "flag": "rbxassetid://7733798691",
        "star-half": "rbxassetid://7734068258",
        "minus": "rbxassetid://7734000129",
        "mountain": "rbxassetid://7734008868",
        "volume": "rbxassetid://7743877487",
        "mouse-pointer-2": "rbxassetid://7734010405",
        "package-x": "rbxassetid://8997386545",
        "indian-rupee": "rbxassetid://7733964536",
        "speaker": "rbxassetid://7734063416",
        "flame": "rbxassetid://7733798747",
        "circle-slashed": "rbxassetid://8997383530",
        "crop": "rbxassetid://7733765140",
        "clock-11": "rbxassetid://8997384034",
        "stop-circle": "rbxassetid://7734068379",
        "align-horizontal-justify-end": "rbxassetid://8997381549",
        "power-off": "rbxassetid://7734042423",
        "bell-minus": "rbxassetid://7733675028",
        "undo": "rbxassetid://7743874974",
        "link-2": "rbxassetid://7743869163",
        "lightbulb": "rbxassetid://7733975185",
        "shrink": "rbxassetid://7734056971",
        "mail": "rbxassetid://7733992732",
        "pause": "rbxassetid://7734021897",
        "bold": "rbxassetid://7733687211",
        "calendar": "rbxassetid://7733919198",
        "x-octagon": "rbxassetid://7743878618",
        "russian-ruble": "rbxassetid://7734052248",
        "file-code": "rbxassetid://7733779730",
        "life-buoy": "rbxassetid://7733973479",
        "import": "rbxassetid://7733964240",
        "video": "rbxassetid://7743876610",
        "clock-7": "rbxassetid://8997385147",
        "align-center-horizontal": "rbxassetid://8997380477",
        "bell": "rbxassetid://7733911828",
        "move-diagonal-2": "rbxassetid://7734013178",
        "message-circle": "rbxassetid://7733993311",
        "skull": "rbxassetid://7734058599",
        "battery-charging": "rbxassetid://7733674402",
        "ruler": "rbxassetid://7734052157",
        "binary": "rbxassetid://7733678388",
        "cloud-rain-wind": "rbxassetid://7733746456",
        "briefcase": "rbxassetid://7733919017",
        "terminal-square": "rbxassetid://7734079055",
        "scale": "rbxassetid://7734052454",
        "lasso": "rbxassetid://7733967892",
        "piggy-bank": "rbxassetid://7734034513",
        "battery-low": "rbxassetid://7733674589",
        "arrow-up": "rbxassetid://7733673717",
        "list-plus": "rbxassetid://7733984995",
        "bookmark-plus": "rbxassetid://7734111084",
        "box-select": "rbxassetid://7733696665",
        "filter": "rbxassetid://7733798407",
        "play": "rbxassetid://7743871480",
        "align-vertical-space-around": "rbxassetid://8997382708",
        "calculator": "rbxassetid://7733919105",
        "bell-ring": "rbxassetid://7733675275",
        "plane": "rbxassetid://7734037723",
        "plus-circle": "rbxassetid://7734040271",
        "power": "rbxassetid://7734042493",
        "phone-missed": "rbxassetid://7734029465",
        "percent": "rbxassetid://7743870852",
        "jersey-pound": "rbxassetid://7733965029",
        "mouse-pointer": "rbxassetid://7743870392",
        "box": "rbxassetid://7733917120",
        "separator-vertical": "rbxassetid://7734053213",
        "snowflake": "rbxassetid://7734059180",
        "sort-desc": "rbxassetid://7743871973",
        "flag-triangle-right": "rbxassetid://7733798634",
        "bar-chart-2": "rbxassetid://7733674239",
        "hand-metal": "rbxassetid://7733955664",
        "map": "rbxassetid://7733992829",
        "eye-off": "rbxassetid://7733774495",
        "align-end-horizontal": "rbxassetid://8997380820",
        "cloud-rain": "rbxassetid://7733746651",
        "contact": "rbxassetid://7743866666",
        "signal": "rbxassetid://8997387546",
        "mouse-pointer-click": "rbxassetid://7734010488",
        "settings-2": "rbxassetid://8997386997",
        "sidebar-open": "rbxassetid://7734058165",
        "unlink-2": "rbxassetid://7743875069",
        "pause-octagon": "rbxassetid://7734021827",
        "user-minus": "rbxassetid://7743875629",
        "cloud": "rbxassetid://7733746980",
        "arrow-right-circle": "rbxassetid://7733673229",
        "align-horizonal-distribute-center": "rbxassetid://8997381028",
        "fast-forward": "rbxassetid://7743867090",
        "volume-2": "rbxassetid://7743877250",
        "grab": "rbxassetid://7733954884",
        "arrow-right": "rbxassetid://7733673345",
        "chevron-down": "rbxassetid://7733717447",
        "volume-x": "rbxassetid://7743877381",
        "cloud-snow": "rbxassetid://7733746798",
        "car": "rbxassetid://7733708835",
        "bluetooth-connected": "rbxassetid://7734110952",
        "CD": "rbxassetid://7734110220",
        "cookie": "rbxassetid://8997385628",
        "message-square": "rbxassetid://7733993369",
        "repeat-1": "rbxassetid://7734051342",
        "codepen": "rbxassetid://7733920768",
        "voicemail": "rbxassetid://7743876916",
        "text-cursor-input": "rbxassetid://8997388094",
        "package-check": "rbxassetid://8997386143",
        "shopping-cart": "rbxassetid://7734056813",
        "corner-down-right": "rbxassetid://7733764385",
        "folder-open": "rbxassetid://8997386062",
        "charge": "rbxassetid://8997383136",
        "layout-grid": "rbxassetid://7733970390",
        "clock": "rbxassetid://7733734848",
        "corner-up-left": "rbxassetid://7733764800",
        "align-horizontal-justify-start": "rbxassetid://8997381652",
        "git-merge": "rbxassetid://7733952195",
        "verified": "rbxassetid://7743876142",
        "redo": "rbxassetid://7743871739",
        "hexagon": "rbxassetid://7743868527",
        "square": "rbxassetid://7743872181",
        "align-horizontal-justify-center": "rbxassetid://8997381461",
        "chevrons-up-down": "rbxassetid://7733723321",
        "bus": "rbxassetid://7733701715",
        "file-plus-2": "rbxassetid://7733788816",
        "alarm-plus": "rbxassetid://7733658066",
        "divide-square": "rbxassetid://7733769261",
        "pie-chart": "rbxassetid://7734034378",
        "signal-zero": "rbxassetid://8997387434",
        "hammer": "rbxassetid://7733955511",
        "history": "rbxassetid://7733960880",
        "align-vertical-justify-start": "rbxassetid://8997382639",
        "flask-round": "rbxassetid://7733798957",
        "wifi-off": "rbxassetid://7743878056",
        "zoom-out": "rbxassetid://7743879082",
        "toggle-right": "rbxassetid://7743873539",
        "monitor": "rbxassetid://7734002839",
        "x": "rbxassetid://7743878857",
        "align-horizonal-distribute-end": "rbxassetid://8997381144",
        "user": "rbxassetid://7743875962",
        "sprout": "rbxassetid://7743872071",
        "move": "rbxassetid://7743870731",
        "gavel": "rbxassetid://7733800044",
        "package-minus": "rbxassetid://8997386266",
        "drumstick": "rbxassetid://8997385789",
        "forward": "rbxassetid://7733799371",
        "sidebar-close": "rbxassetid://7734058092",
        "electricity": "rbxassetid://7733771628",
        "plus": "rbxassetid://7734042071",
        "pipette": "rbxassetid://7743871384",
        "cloud-lightning": "rbxassetid://7733741741",
        "lasso-select": "rbxassetid://7743868832",
        "phone-call": "rbxassetid://7734027264",
        "droplet": "rbxassetid://7733770982",
        "key": "rbxassetid://7733965118",
        "map-pin": "rbxassetid://7733992789",
        "navigation-2": "rbxassetid://7734020942",
        "list-minus": "rbxassetid://7733980795",
        "chevron-up": "rbxassetid://7733919605",
        "layout-template": "rbxassetid://7733970494",
        "no_entry": "rbxassetid://7734021118",
        "scan": "rbxassetid://8997386861",
        "arrow-big-up": "rbxassetid://7733671663",
        "bookmark-minus": "rbxassetid://7733689754",
        "activity": "rbxassetid://7733655755",
        "grid": "rbxassetid://7733955179",
        "user-x": "rbxassetid://7743875879",
        "alert-circle": "rbxassetid://7733658271",
        "menu": "rbxassetid://7733993211",
        "form-input": "rbxassetid://7733799275",
        "rss": "rbxassetid://7734052075",
        "loader": "rbxassetid://7733992358",
        "align-vertical-distribute-end": "rbxassetid://8997382326",
        "strikethrough": "rbxassetid://7734068425",
        "mic": "rbxassetid://7743869805",
        "landmark": "rbxassetid://7733965184",
        "crosshair": "rbxassetid://7733765307",
        "alert-octagon": "rbxassetid://7733658335",
        "anchor": "rbxassetid://7733911490",
        "separator-horizontal": "rbxassetid://7734053146",
        "chevron-left": "rbxassetid://7733717651",
        "flask-conical": "rbxassetid://7733798901",
        "wallet": "rbxassetid://7743877573",
        "euro": "rbxassetid://7733771891",
        "trash-2": "rbxassetid://7743873772",
        "check-circle": "rbxassetid://7733919427",
        "layout": "rbxassetid://7733970543",
        "droplets": "rbxassetid://7733771078",
        "align-start-vertical": "rbxassetid://8997382085",
        "rotate-cw": "rbxassetid://7734051957",
        "minimize": "rbxassetid://7733997941",
        "arrow-down-left": "rbxassetid://7733672282",
        "signal-medium": "rbxassetid://8997387319",
        "align-vertical-distribute-center": "rbxassetid://8997382212",
        "image-off": "rbxassetid://7733963907",
        "cloudy": "rbxassetid://7733747106",
        "align-left": "rbxassetid://7733911357",
        "film": "rbxassetid://7733942579",
        "chevrons-down": "rbxassetid://7733720604",
        "pointer": "rbxassetid://7734042307",
        "folder": "rbxassetid://7733799185",
        "chevrons-left": "rbxassetid://7733720701",
        "shield-off": "rbxassetid://7734056540",
        "wrench": "rbxassetid://7743878358"
      }
    }
]]
pcall(function()
	L_11_ = game:HttpGet("https://raw.githubusercontent.com/ttwizz/Documents/master/icons.json", true)
end)
L_11_ = L_7_:JSONDecode(L_11_).icons
local L_12_ = Instance.new("ScreenGui")
L_12_.Name = string.lower(string.reverse(string.sub(L_7_:GenerateGUID(false), 1, 8)))
if getfenv().syn then
	getfenv().syn.protect_gui(L_12_)
	L_12_.Parent = L_8_
else
	xpcall(function()
		L_12_.Parent = getfenv().gethui() or L_8_
	end, function()
		L_12_.DisplayOrder = 9e8
		L_12_.ResetOnSpawn = false
		L_12_.Parent = L_5_:WaitForChild("PlayerGui", math.huge)
	end)
end
local L_13_ = L_12_.Parent
function L_10_:IsRunning()
	return L_12_.Parent == L_13_
end
local function L_14_func(L_35_arg1, L_36_arg2)
	if not L_10_:IsRunning() then
		return
	end
	local L_37_ = L_35_arg1:Connect(L_36_arg2)
	table.insert(L_10_.Connections, L_37_)
	return L_37_
end
task.spawn(function()
	while L_10_:IsRunning() do
		task.wait()
	end
	for L_38_forvar1, L_39_forvar2 in next, L_10_.Connections do
		L_39_forvar2:Disconnect()
	end
end)
local function L_15_func(L_40_arg1, L_41_arg2)
	pcall(function()
		local L_42_, L_43_, L_44_, L_45_ = false, nil
		L_14_func(L_40_arg1.InputBegan, function(L_46_arg1)
			if L_46_arg1.UserInputType == Enum.UserInputType.MouseButton1 or L_46_arg1.UserInputType == Enum.UserInputType.Touch then
				L_42_ = true
				L_44_ = L_46_arg1.Position
				L_45_ = L_41_arg2.Position
				L_46_arg1.Changed:Connect(function()
					if L_46_arg1.UserInputState == Enum.UserInputState.End then
						L_42_ = false
					end
				end)
			end
		end)
		L_14_func(L_40_arg1.InputChanged, function(L_47_arg1)
			if L_47_arg1.UserInputType == Enum.UserInputType.MouseMovement or L_47_arg1.UserInputType == Enum.UserInputType.Touch then
				L_43_ = L_47_arg1
			end
		end)
		L_14_func(L_2_.InputChanged, function(L_48_arg1)
			if L_48_arg1 == L_43_ and L_42_ then
				local L_49_ = L_48_arg1.Position - L_44_
				L_41_arg2.Position = UDim2.new(L_45_.X.Scale, L_45_.X.Offset + L_49_.X, L_45_.Y.Scale, L_45_.Y.Offset + L_49_.Y)
			end
		end)
	end)
end
local function L_16_func(L_50_arg1, L_51_arg2, L_52_arg3)
	local L_53_ = Instance.new(L_50_arg1)
	for L_54_forvar1, L_55_forvar2 in next, L_51_arg2 or {} do
		L_53_[L_54_forvar1] = L_55_forvar2
	end
	for L_56_forvar1, L_57_forvar2 in next, L_52_arg3 or {} do
		L_57_forvar2.Parent = L_53_
	end
	return L_53_
end
local function L_17_func(L_58_arg1, L_59_arg2)
	L_10_.Elements[L_58_arg1] = function(...)
		return L_59_arg2(...)
	end
end
local function L_18_func(L_60_arg1, ...)
	return L_10_.Elements[L_60_arg1](...)
end
local function L_19_func(L_61_arg1, L_62_arg2)
	for L_63_forvar1, L_64_forvar2 in next, L_62_arg2 do
		L_61_arg1[L_63_forvar1] = L_64_forvar2
	end
	return L_61_arg1
end
local function L_20_func(L_65_arg1, L_66_arg2)
	for L_67_forvar1, L_68_forvar2 in next, L_66_arg2 do
		L_68_forvar2.Parent = L_65_arg1
	end
	return L_65_arg1
end
local function L_21_func(L_69_arg1, L_70_arg2)
	local L_71_ = math.floor(L_69_arg1 / L_70_arg2 + (math.sign(L_69_arg1) * 0.5)) * L_70_arg2
	if L_71_ < 0 then
		L_71_ = L_71_ + L_70_arg2
	end
	return L_71_
end
local function L_22_func(L_72_arg1)
	if L_72_arg1:IsA("Frame") or L_72_arg1:IsA("TextButton") then
		return "BackgroundColor3"
	end
	if L_72_arg1:IsA("ScrollingFrame") then
		return "ScrollBarImageColor3"
	end
	if L_72_arg1:IsA("UIStroke") then
		return "Color"
	end
	if L_72_arg1:IsA("TextLabel") or L_72_arg1:IsA("TextBox") then
		return "TextColor3"
	end
	if L_72_arg1:IsA("ImageLabel") or L_72_arg1:IsA("ImageButton") then
		return "ImageColor3"
	end
end
local function L_23_func(L_73_arg1, L_74_arg2)
	if not L_10_.ThemeObjects[L_74_arg2] then
		L_10_.ThemeObjects[L_74_arg2] = {}
	end
	table.insert(L_10_.ThemeObjects[L_74_arg2], L_73_arg1)
	L_73_arg1[L_22_func(L_73_arg1)] = L_10_.Themes[L_10_.SelectedTheme][L_74_arg2]
	return L_73_arg1
end
local function L_24_func()
	for L_75_forvar1, L_76_forvar2 in next, L_10_.ThemeObjects do
		for L_77_forvar1, L_78_forvar2 in next, L_76_forvar2 do
			L_78_forvar2[L_22_func(L_78_forvar2)] = L_10_.Themes[L_10_.SelectedTheme][L_75_forvar1]
		end
	end
end
local function L_25_func(L_79_arg1)
	return {
		R = L_79_arg1.R * 255,
		G = L_79_arg1.G * 255,
		B = L_79_arg1.B * 255
	}
end
local function L_26_func(L_80_arg1)
	return Color3.fromRGB(L_80_arg1.R, L_80_arg1.G, L_80_arg1.B)
end
local function L_27_func(L_81_arg1)
	local L_82_ = L_7_:JSONDecode(L_81_arg1)
	for L_83_forvar1, L_84_forvar2 in next, L_82_ do
		if L_10_.Flags[L_83_forvar1] then
			task.spawn(function()
				if L_10_.Flags[L_83_forvar1].Type == "Colorpicker" then
					L_10_.Flags[L_83_forvar1]:Set(L_26_func(L_84_forvar2))
				else
					L_10_.Flags[L_83_forvar1]:Set(L_84_forvar2)
				end
			end)
		end
	end
end
local function L_28_func(L_85_arg1)
	local L_86_ = {}
	for L_87_forvar1, L_88_forvar2 in next, L_10_.Flags do
		if L_88_forvar2.Save then
			if L_88_forvar2.Type == "Colorpicker" then
				L_86_[L_87_forvar1] = L_25_func(L_88_forvar2.Value)
			else
				L_86_[L_87_forvar1] = L_88_forvar2.Value
			end
		end
	end
	if getfenv().writefile then
		getfenv().writefile(string.format("%s/%s.txt", L_10_.Folder, L_85_arg1), L_7_:JSONEncode(L_86_))
	end
end
local L_29_ = {
	Enum.UserInputType.MouseButton1,
	Enum.UserInputType.MouseButton2,
	Enum.UserInputType.MouseButton3,
	Enum.UserInputType.Touch
}
local L_30_ = {
	Enum.KeyCode.Unknown,
	Enum.KeyCode.W,
	Enum.KeyCode.A,
	Enum.KeyCode.S,
	Enum.KeyCode.D,
	Enum.KeyCode.Up,
	Enum.KeyCode.Left,
	Enum.KeyCode.Down,
	Enum.KeyCode.Right,
	Enum.KeyCode.Slash,
	Enum.KeyCode.Tab,
	Enum.KeyCode.Backspace,
	Enum.KeyCode.Escape
}
local function L_31_func(L_89_arg1, L_90_arg2)
	for L_91_forvar1, L_92_forvar2 in next, L_89_arg1 do
		if L_92_forvar2 == L_90_arg2 then
			return true
		end
	end
end
L_17_func("Corner", function(L_93_arg1, L_94_arg2)
	local L_95_ = L_16_func("UICorner", {
		CornerRadius = UDim.new(L_93_arg1 or 0, L_94_arg2 or 10)
	})
	return L_95_
end)
L_17_func("Stroke", function(L_96_arg1, L_97_arg2)
	local L_98_ = L_16_func("UIStroke", {
		Color = L_96_arg1 or Color3.fromRGB(255, 255, 255),
		Thickness = L_97_arg2 or 1
	})
	return L_98_
end)
L_17_func("List", function(L_99_arg1, L_100_arg2)
	local L_101_ = L_16_func("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(L_99_arg1 or 0, L_100_arg2 or 0)
	})
	return L_101_
end)
L_17_func("Padding", function(L_102_arg1, L_103_arg2, L_104_arg3, L_105_arg4)
	local L_106_ = L_16_func("UIPadding", {
		PaddingBottom = UDim.new(0, L_102_arg1 or 4),
		PaddingLeft = UDim.new(0, L_103_arg2 or 4),
		PaddingRight = UDim.new(0, L_104_arg3 or 4),
		PaddingTop = UDim.new(0, L_105_arg4 or 4)
	})
	return L_106_
end)
L_17_func("TFrame", function()
	local L_107_ = L_16_func("Frame", {
		BackgroundTransparency = 1
	})
	return L_107_
end)
L_17_func("Frame", function(L_108_arg1)
	local L_109_ = L_16_func("Frame", {
		BackgroundColor3 = L_108_arg1 or Color3.fromRGB(255, 255, 255),
		BorderSizePixel = 0
	})
	return L_109_
end)
L_17_func("RoundFrame", function(L_110_arg1, L_111_arg2, L_112_arg3)
	local L_113_ = L_16_func("Frame", {
		BackgroundColor3 = L_110_arg1 or Color3.fromRGB(255, 255, 255),
		BorderSizePixel = 0
	}, {
		L_16_func("UICorner", {
			CornerRadius = UDim.new(L_111_arg2, L_112_arg3)
		})
	})
	return L_113_
end)
L_17_func("Button", function()
	local L_114_ = L_16_func("TextButton", {
		Text = "",
		AutoButtonColor = false,
		BackgroundTransparency = 1,
		BorderSizePixel = 0
	})
	return L_114_
end)
L_17_func("ScrollFrame", function(L_115_arg1, L_116_arg2)
	local L_117_ = L_16_func("ScrollingFrame", {
		BackgroundTransparency = 1,
		MidImage = "rbxassetid://7445543667",
		BottomImage = "rbxassetid://7445543667",
		TopImage = "rbxassetid://7445543667",
		ScrollBarImageColor3 = L_115_arg1,
		BorderSizePixel = 0,
		ScrollBarThickness = L_116_arg2,
		CanvasSize = UDim2.new(0, 0, 0, 0)
	})
	return L_117_
end)
L_17_func("Image", function(L_118_arg1)
	local L_119_ = L_16_func("ImageLabel", {
		Image = L_118_arg1,
		BackgroundTransparency = 1
	})
	if L_11_[L_118_arg1] then
		L_119_.Image = L_11_[L_118_arg1]
	end
	return L_119_
end)
L_17_func("ImageButton", function(L_120_arg1)
	local L_121_ = L_16_func("ImageButton", {
		Image = L_120_arg1,
		BackgroundTransparency = 1
	})
	return L_121_
end)
L_17_func("Label", function(L_122_arg1, L_123_arg2, L_124_arg3)
	local L_125_ = L_16_func("TextLabel", {
		Text = L_122_arg1 or "",
		TextColor3 = Color3.fromRGB(240, 240, 240),
		TextTransparency = L_124_arg3 or 0,
		TextSize = L_123_arg2 or 15,
		Font = Enum.Font.Gotham,
		RichText = true,
		BackgroundTransparency = 1,
		TextXAlignment = Enum.TextXAlignment.Left
	})
	return L_125_
end)
local L_32_ = L_19_func(L_20_func(L_18_func("TFrame"), {
	L_19_func(L_18_func("List"), {
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		SortOrder = Enum.SortOrder.LayoutOrder,
		VerticalAlignment = Enum.VerticalAlignment.Bottom,
		Padding = UDim.new(0, 5)
	})
}), {
	Position = UDim2.new(1, -25, 1, -25),
	Size = UDim2.new(0, 300, 1, -25),
	AnchorPoint = Vector2.new(1, 1),
	Parent = L_12_
})
function L_10_:MakeNotification(L_126_arg1)
	task.spawn(function()
		L_126_arg1.Name = L_126_arg1.Name or "Notification"
		L_126_arg1.Content = L_126_arg1.Content or "Test"
		L_126_arg1.Image = L_126_arg1.Image or "rbxassetid://4384403532"
		L_126_arg1.Time = L_126_arg1.Time or 15
		local L_127_ = L_19_func(L_18_func("TFrame"), {
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			Parent = L_32_
		})
		local L_128_ = L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(25, 25, 25), 0, 10), {
			Parent = L_127_,
			Size = UDim2.new(1, 0, 0, 0),
			Position = UDim2.new(1, -55, 0, 0),
			BackgroundTransparency = 0,
			AutomaticSize = Enum.AutomaticSize.Y
		}), {
			L_18_func("Stroke", Color3.fromRGB(93, 93, 93), 1.2),
			L_18_func("Padding", 12, 12, 12, 12),
			L_19_func(L_18_func("Image", L_126_arg1.Image), {
				Size = UDim2.new(0, 20, 0, 20),
				ImageColor3 = Color3.fromRGB(240, 240, 240),
				Name = "Icon"
			}),
			L_19_func(L_18_func("Label", L_126_arg1.Name, 15), {
				Size = UDim2.new(1, -30, 0, 20),
				Position = UDim2.new(0, 30, 0, 0),
				Font = Enum.Font.GothamBold,
				Name = "Title"
			}),
			L_19_func(L_18_func("Label", L_126_arg1.Content, 14), {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 25),
				Font = Enum.Font.GothamMedium,
				Name = "Content",
				AutomaticSize = Enum.AutomaticSize.Y,
				TextColor3 = Color3.fromRGB(200, 200, 200),
				TextWrapped = true
			})
		})
		L_3_:Create(L_128_, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {
			Position = UDim2.new(0, 0, 0, 0)
		}):Play()
		task.wait(L_126_arg1.Time - 0.88)
		L_3_:Create(L_128_.Icon, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {
			ImageTransparency = 1
		}):Play()
		L_3_:Create(L_128_, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {
			BackgroundTransparency = 0.6
		}):Play()
		task.wait(0.3)
		L_3_:Create(L_128_.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {
			Transparency = 0.9
		}):Play()
		L_3_:Create(L_128_.Title, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {
			TextTransparency = 0.4
		}):Play()
		L_3_:Create(L_128_.Content, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {
			TextTransparency = 0.5
		}):Play()
		task.wait(0.05)
		L_128_:TweenPosition(UDim2.new(1, 20, 0, 0), "In", "Quint", 0.8, true)
		L_9_:AddItem(L_128_, 1.35)
	end)
end
function L_10_:Init()
	if L_10_.SaveCfg then
		pcall(function()
			if getfenv().isfile and getfenv().readfile then
				if getfenv().isfile(string.format("%s/%s.txt", L_10_.Folder, game.PlaceId)) then
					L_27_func(getfenv().readfile(string.format("%s/%s.txt", L_10_.Folder, game.PlaceId)))
					L_10_:MakeNotification({
						Name = "Configuration",
						Content = string.format("Auto-loaded configuration for the place %s.", game.PlaceId),
						Time = 5
					})
				end
			end
		end)
	end
end
function L_10_:MakeWindow(L_129_arg1)
	local L_130_ = true
	local L_131_ = false
	local L_132_ = false
	local L_133_ = false
	L_129_arg1 = L_129_arg1 or {}
	L_129_arg1.Name = L_129_arg1.Name or "Orion Library"
	L_129_arg1.ConfigFolder = L_129_arg1.ConfigFolder or L_129_arg1.Name
	L_129_arg1.SaveConfig = L_129_arg1.SaveConfig or false
	L_129_arg1.TestMode = L_129_arg1.TestMode or false
	if L_129_arg1.IntroEnabled == nil then
		L_129_arg1.IntroEnabled = true
	end
	L_129_arg1.IntroText = L_129_arg1.IntroText or "Orion Library"
	L_129_arg1.CloseCallback = L_129_arg1.CloseCallback or function()
	end
	L_129_arg1.ShowIcon = L_129_arg1.ShowIcon or false
	L_129_arg1.Icon = L_129_arg1.Icon or "rbxassetid://8834748103"
	L_129_arg1.IntroIcon = L_129_arg1.IntroIcon or "rbxassetid://8834748103"
	L_10_.Folder = L_129_arg1.ConfigFolder
	L_10_.SaveCfg = L_129_arg1.SaveConfig
	if L_129_arg1.SaveConfig then
		if getfenv().isfolder and getfenv().makefolder then
			if not getfenv().isfolder(L_129_arg1.ConfigFolder) then
				getfenv().makefolder(L_129_arg1.ConfigFolder)
			end
		end
	end
	local L_134_ = L_23_func(L_20_func(L_19_func(L_18_func("ScrollFrame", Color3.fromRGB(255, 255, 255), 4), {
		Size = UDim2.new(1, 0, 1, -50)
	}), {
		L_18_func("List"),
		L_18_func("Padding", 8, 0, 0, 8)
	}), "Divider")
	L_14_func(L_134_.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"), function()
		L_134_.CanvasSize = UDim2.new(0, 0, 0, L_134_.UIListLayout.AbsoluteContentSize.Y + 16)
	end)
	local L_135_ = L_20_func(L_19_func(L_18_func("Button"), {
		Size = UDim2.new(0.5, 0, 1, 0),
		Position = UDim2.new(0.5, 0, 0, 0),
		BackgroundTransparency = 1
	}), {
		L_23_func(L_19_func(L_18_func("Image", "rbxassetid://7072725342"), {
			Position = UDim2.new(0, 9, 0, 6),
			Size = UDim2.new(0, 18, 0, 18)
		}), "Text")
	})
	local L_136_ = L_20_func(L_19_func(L_18_func("Button"), {
		Size = UDim2.new(0.5, 0, 1, 0),
		BackgroundTransparency = 1
	}), {
		L_23_func(L_19_func(L_18_func("Image", "rbxassetid://7072719338"), {
			Position = UDim2.new(0, 9, 0, 6),
			Size = UDim2.new(0, 18, 0, 18),
			Name = "Ico"
		}), "Text")
	})
	local L_137_ = L_19_func(L_18_func("TFrame"), {
		Size = UDim2.new(1, 0, 0, 50)
	})
	local L_138_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 10), {
		Size = UDim2.new(0, 150, 1, -50),
		Position = UDim2.new(0, 0, 0, 50)
	}), {
		L_23_func(L_19_func(L_18_func("Frame"), {
			Size = UDim2.new(1, 0, 0, 10),
			Position = UDim2.new(0, 0, 0, 0)
		}), "Second"),
		L_23_func(L_19_func(L_18_func("Frame"), {
			Size = UDim2.new(0, 10, 1, 0),
			Position = UDim2.new(1, -10, 0, 0)
		}), "Second"),
		L_23_func(L_19_func(L_18_func("Frame"), {
			Size = UDim2.new(0, 1, 1, 0),
			Position = UDim2.new(1, -1, 0, 0)
		}), "Stroke"),
		L_134_,
		L_20_func(L_19_func(L_18_func("TFrame"), {
			Size = UDim2.new(1, 0, 0, 50),
			Position = UDim2.new(0, 0, 1, -50)
		}), {
			L_23_func(L_19_func(L_18_func("Frame"), {
				Size = UDim2.new(1, 0, 0, 1)
			}), "Stroke"),
			L_23_func(L_20_func(L_19_func(L_18_func("Frame"), {
				AnchorPoint = Vector2.new(0, 0.5),
				Size = UDim2.new(0, 32, 0, 32),
				Position = UDim2.new(0, 10, 0.5, 0)
			}), {
				L_19_func(L_18_func("Image", string.format("https://www.roblox.com/headshot-thumbnail/image?userId=%s&width=420&height=420&format=png", L_5_.UserId)), {
					Size = UDim2.new(1, 0, 1, 0)
				}),
				L_23_func(L_19_func(L_18_func("Image", "rbxassetid://4031889928"), {
					Size = UDim2.new(1, 0, 1, 0)
				}), "Second"),
				L_18_func("Corner", 1)
			}), "Divider"),
			L_20_func(L_19_func(L_18_func("TFrame"), {
				AnchorPoint = Vector2.new(0, 0.5),
				Size = UDim2.new(0, 32, 0, 32),
				Position = UDim2.new(0, 10, 0.5, 0)
			}), {
				L_23_func(L_18_func("Stroke"), "Stroke"),
				L_18_func("Corner", 1)
			}),
			L_23_func(L_19_func(L_18_func("Label", L_5_.DisplayName, L_129_arg1.TestMode and 14 or 13), {
				Size = UDim2.new(1, -60, 0, 13),
				Position = L_129_arg1.TestMode and UDim2.new(0, 50, 0, 19) or UDim2.new(0, 50, 0, 12),
				Font = Enum.Font.GothamBold,
				ClipsDescendants = true
			}), "Text"),
			L_23_func(L_19_func(L_18_func("Label", "Tester", 12), {
				Size = UDim2.new(1, -60, 0, 12),
				Position = UDim2.new(0, 50, 1, -25),
				Visible = not L_129_arg1.TestMode
			}), "TextDark")
		})
	}), "Second")
	local L_139_ = L_23_func(L_19_func(L_18_func("Label", L_129_arg1.Name, 14), {
		Size = UDim2.new(1, -30, 2, 0),
		Position = UDim2.new(0, 25, 0, -24),
		Font = Enum.Font.GothamBlack,
		TextSize = 20
	}), "Text")
	local L_140_ = L_23_func(L_19_func(L_18_func("Frame"), {
		Size = UDim2.new(1, 0, 0, 1),
		Position = UDim2.new(0, 0, 1, -1)
	}), "Stroke")
	local L_141_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 10), {
		Parent = L_12_,
		Position = UDim2.new(0.5, -307, 0.5, -172),
		Size = UDim2.new(0, 615, 0, 344),
		ClipsDescendants = true
	}), {
		L_20_func(L_19_func(L_18_func("TFrame"), {
			Size = UDim2.new(1, 0, 0, 50),
			Name = "TopBar"
		}), {
			L_139_,
			L_140_,
			L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 7), {
				Size = UDim2.new(0, 70, 0, 30),
				Position = UDim2.new(1, -90, 0, 10)
			}), {
				L_23_func(L_18_func("Stroke"), "Stroke"),
				L_23_func(L_19_func(L_18_func("Frame"), {
					Size = UDim2.new(0, 1, 1, 0),
					Position = UDim2.new(0.5, 0, 0, 0)
				}), "Stroke"),
				L_135_,
				L_136_
			}), "Second")
		}),
		L_137_,
		L_138_
	}), "Main")
	if L_129_arg1.ShowIcon then
		L_139_.Position = UDim2.new(0, 50, 0, -24)
		local L_144_ = L_19_func(L_18_func("Image", L_129_arg1.Icon), {
			Size = UDim2.new(0, 20, 0, 20),
			Position = UDim2.new(0, 25, 0, 15)
		})
		L_144_.Parent = L_141_.TopBar
	end
	L_15_func(L_137_, L_141_)
	L_14_func(L_135_.MouseButton1Up, function()
		L_141_.Visible = false
		L_133_ = true
		L_10_:MakeNotification({
			Name = "Interface Hidden",
			Content = "Tap RightShift to reopen the interface",
			Time = 5
		})
		L_129_arg1.CloseCallback()
	end)
	L_14_func(L_2_.InputBegan, function(L_145_arg1)
		if L_145_arg1.KeyCode == Enum.KeyCode.RightShift and L_133_ then
			L_141_.Visible = true
		end
	end)
	L_14_func(L_136_.MouseButton1Up, function()
		if L_131_ then
			L_3_:Create(L_141_, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
				Size = UDim2.new(0, 615, 0, 344)
			}):Play()
			L_136_.Ico.Image = "rbxassetid://7072719338"
			task.wait(0.02)
			L_141_.ClipsDescendants = false
			L_138_.Visible = true
			L_140_.Visible = true
		else
			L_141_.ClipsDescendants = true
			L_140_.Visible = false
			L_136_.Ico.Image = "rbxassetid://7072720870"
			L_3_:Create(L_141_, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
				Size = UDim2.new(0, L_139_.TextBounds.X + 140, 0, 50)
			}):Play()
			task.wait(0.1)
			L_138_.Visible = false
		end
		L_131_ = not L_131_
	end)
	local function L_142_func()
		L_141_.Visible = false
		local L_146_ = L_19_func(L_18_func("Image", L_129_arg1.IntroIcon), {
			Parent = L_12_,
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.4, 0),
			Size = UDim2.new(0, 28, 0, 28),
			ImageColor3 = Color3.fromRGB(255, 255, 255),
			ImageTransparency = 1
		})
		local L_147_ = L_19_func(L_18_func("Label", L_129_arg1.IntroText, 14), {
			Parent = L_12_,
			Size = UDim2.new(1, 0, 1, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 19, 0.5, 0),
			TextXAlignment = Enum.TextXAlignment.Center,
			Font = Enum.Font.GothamBold,
			TextTransparency = 1
		})
		L_3_:Create(L_146_, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			ImageTransparency = 0,
			Position = UDim2.new(0.5, 0, 0.5, 0)
		}):Play()
		task.wait(0.8)
		L_3_:Create(L_146_, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Position = UDim2.new(0.5, -(L_147_.TextBounds.X / 2), 0.5, 0)
		}):Play()
		task.wait(0.3)
		L_3_:Create(L_147_, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			TextTransparency = 0
		}):Play()
		task.wait(2)
		L_3_:Create(L_147_, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			TextTransparency = 1
		}):Play()
		L_141_.Visible = true
		L_9_:AddItem(L_146_, 0)
		L_9_:AddItem(L_147_, 0)
	end
	if L_129_arg1.IntroEnabled then
		L_142_func()
	end
	local L_143_ = {}
	function L_143_:MakeTab(L_148_arg1)
		L_148_arg1 = L_148_arg1 or {}
		L_148_arg1.Name = L_148_arg1.Name or "Tab"
		L_148_arg1.Icon = L_148_arg1.Icon or ""
		L_148_arg1.TestersOnly = L_148_arg1.TestersOnly or false
		local L_149_ = L_20_func(L_19_func(L_18_func("Button"), {
			Size = UDim2.new(1, 0, 0, 30),
			Parent = L_134_
		}), {
			L_23_func(L_19_func(L_18_func("Image", L_148_arg1.Icon), {
				AnchorPoint = Vector2.new(0, 0.5),
				Size = UDim2.new(0, 18, 0, 18),
				Position = UDim2.new(0, 10, 0.5, 0),
				ImageTransparency = 0.4,
				Name = "Ico"
			}), "Text"),
			L_23_func(L_19_func(L_18_func("Label", L_148_arg1.Name, 14), {
				Size = UDim2.new(1, -35, 1, 0),
				Position = UDim2.new(0, 35, 0, 0),
				Font = Enum.Font.GothamMedium,
				TextTransparency = 0.4,
				Name = "Title"
			}), "Text")
		})
		if L_11_[L_148_arg1.Icon] then
			L_149_.Ico.Image = L_11_[L_148_arg1.Icon]
		end
		local L_150_ = L_23_func(L_20_func(L_19_func(L_18_func("ScrollFrame", Color3.fromRGB(255, 255, 255), 5), {
			Size = UDim2.new(1, -150, 1, -50),
			Position = UDim2.new(0, 150, 0, 50),
			Parent = L_141_,
			Visible = false,
			Name = "ItemContainer"
		}), {
			L_18_func("List", 0, 6),
			L_18_func("Padding", 15, 10, 10, 15)
		}), "Divider")
		L_14_func(L_150_.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"), function()
			L_150_.CanvasSize = UDim2.new(0, 0, 0, L_150_.UIListLayout.AbsoluteContentSize.Y + 30)
		end)
		if L_130_ then
			L_130_ = false
			L_149_.Ico.ImageTransparency = 0
			L_149_.Title.TextTransparency = 0
			L_149_.Title.Font = Enum.Font.GothamBlack
			L_150_.Visible = true
		end
		L_14_func(L_149_.MouseButton1Click, function()
			for L_154_forvar1, L_155_forvar2 in next, L_134_:GetChildren() do
				if L_155_forvar2:IsA("TextButton") then
					L_155_forvar2.Title.Font = Enum.Font.GothamMedium
					L_3_:Create(L_155_forvar2.Ico, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						ImageTransparency = 0.4
					}):Play()
					L_3_:Create(L_155_forvar2.Title, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						TextTransparency = 0.4
					}):Play()
				end
			end
			for L_156_forvar1, L_157_forvar2 in next, L_141_:GetChildren() do
				if L_157_forvar2.Name == "ItemContainer" then
					L_157_forvar2.Visible = false
				end
			end
			L_3_:Create(L_149_.Ico, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
				ImageTransparency = 0
			}):Play()
			L_3_:Create(L_149_.Title, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
				TextTransparency = 0
			}):Play()
			L_149_.Title.Font = Enum.Font.GothamBlack
			L_150_.Visible = true
		end)
		local function L_151_func(L_158_arg1)
			local L_159_ = {}
			function L_159_:AddLabel(L_161_arg1)
				local L_162_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 5), {
					Size = UDim2.new(1, 0, 0, 30),
					BackgroundTransparency = 0.7,
					Parent = L_158_arg1
				}), {
					L_23_func(L_19_func(L_18_func("Label", L_161_arg1, 15), {
						Size = UDim2.new(1, -12, 1, 0),
						Position = UDim2.new(0, 12, 0, 0),
						Font = Enum.Font.GothamBold,
						Name = "Content"
					}), "Text"),
					L_23_func(L_18_func("Stroke"), "Stroke")
				}), "Second")
				local L_163_ = {}
				function L_163_:Set(L_164_arg1)
					L_162_.Content.Text = L_164_arg1
				end
				return L_163_
			end
			function L_159_:AddParagraph(L_165_arg1, L_166_arg2)
				L_165_arg1 = L_165_arg1 or "Text"
				L_166_arg2 = L_166_arg2 or "Content"
				local L_167_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 5), {
					Size = UDim2.new(1, 0, 0, 30),
					BackgroundTransparency = 0.7,
					Parent = L_158_arg1
				}), {
					L_23_func(L_19_func(L_18_func("Label", L_165_arg1, 15), {
						Size = UDim2.new(1, -12, 0, 14),
						Position = UDim2.new(0, 12, 0, 10),
						Font = Enum.Font.GothamBold,
						Name = "Title"
					}), "Text"),
					L_23_func(L_19_func(L_18_func("Label", "", 13), {
						Size = UDim2.new(1, -24, 0, 0),
						Position = UDim2.new(0, 12, 0, 26),
						Font = Enum.Font.GothamMedium,
						Name = "Content",
						TextWrapped = true
					}), "TextDark"),
					L_23_func(L_18_func("Stroke"), "Stroke")
				}), "Second")
				L_14_func(L_167_.Content:GetPropertyChangedSignal("Text"), function()
					L_167_.Content.Size = UDim2.new(1, -24, 0, L_167_.Content.TextBounds.Y)
					L_167_.Size = UDim2.new(1, 0, 0, L_167_.Content.TextBounds.Y + 35)
				end)
				L_167_.Content.Text = L_166_arg2
				local L_168_ = {}
				function L_168_:Set(L_169_arg1)
					L_167_.Content.Text = L_169_arg1
				end
				return L_168_
			end
			function L_159_:AddButton(L_170_arg1)
				L_170_arg1 = L_170_arg1 or {}
				L_170_arg1.Name = L_170_arg1.Name or "Button"
				L_170_arg1.Callback = L_170_arg1.Callback or function()
				end
				L_170_arg1.Icon = L_170_arg1.Icon or "rbxassetid://3944703587"
				local L_171_ = {}
				local L_172_ = L_19_func(L_18_func("Button"), {
					Size = UDim2.new(1, 0, 1, 0)
				})
				local L_173_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 5), {
					Size = UDim2.new(1, 0, 0, 33),
					Parent = L_158_arg1
				}), {
					L_23_func(L_19_func(L_18_func("Label", L_170_arg1.Name, 15), {
						Size = UDim2.new(1, -12, 1, 0),
						Position = UDim2.new(0, 12, 0, 0),
						Font = Enum.Font.GothamBold,
						Name = "Content"
					}), "Text"),
					L_23_func(L_19_func(L_18_func("Image", L_170_arg1.Icon), {
						Size = UDim2.new(0, 20, 0, 20),
						Position = UDim2.new(1, -30, 0, 7)
					}), "TextDark"),
					L_23_func(L_18_func("Stroke"), "Stroke"),
					L_172_
				}), "Second")
				L_14_func(L_172_.MouseEnter, function()
					L_3_:Create(L_173_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(L_10_.Themes[L_10_.SelectedTheme].Second.R * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.G * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.B * 255 + 3)
					}):Play()
				end)
				L_14_func(L_172_.MouseLeave, function()
					L_3_:Create(L_173_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = L_10_.Themes[L_10_.SelectedTheme].Second
					}):Play()
				end)
				L_14_func(L_172_.MouseButton1Up, function()
					L_3_:Create(L_173_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(L_10_.Themes[L_10_.SelectedTheme].Second.R * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.G * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.B * 255 + 3)
					}):Play()
					task.spawn(function()
						L_170_arg1.Callback()
					end)
				end)
				L_14_func(L_172_.MouseButton1Down, function()
					L_3_:Create(L_173_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(L_10_.Themes[L_10_.SelectedTheme].Second.R * 255 + 6, L_10_.Themes[L_10_.SelectedTheme].Second.G * 255 + 6, L_10_.Themes[L_10_.SelectedTheme].Second.B * 255 + 6)
					}):Play()
				end)
				function L_171_:Set(L_174_arg1)
					L_173_.Content.Text = L_174_arg1
				end
				return L_171_
			end
			function L_159_:AddToggle(L_175_arg1)
				L_175_arg1 = L_175_arg1 or {}
				L_175_arg1.Name = L_175_arg1.Name or "Toggle"
				L_175_arg1.Default = L_175_arg1.Default or false
				L_175_arg1.Callback = L_175_arg1.Callback or function()
				end
				L_175_arg1.Color = L_175_arg1.Color or Color3.fromRGB(9, 99, 195)
				L_175_arg1.Flag = L_175_arg1.Flag or nil
				L_175_arg1.Save = L_175_arg1.Save or false
				local L_176_ = {
					Value = L_175_arg1.Default,
					Save = L_175_arg1.Save
				}
				local L_177_ = L_19_func(L_18_func("Button"), {
					Size = UDim2.new(1, 0, 1, 0)
				})
				local L_178_ = L_20_func(L_19_func(L_18_func("RoundFrame", L_175_arg1.Color, 0, 4), {
					Size = UDim2.new(0, 24, 0, 24),
					Position = UDim2.new(1, -24, 0.5, 0),
					AnchorPoint = Vector2.new(0.5, 0.5)
				}), {
					L_19_func(L_18_func("Stroke"), {
						Color = L_175_arg1.Color,
						Name = "Stroke",
						Transparency = 0.5
					}),
					L_19_func(L_18_func("Image", "rbxassetid://3944680095"), {
						Size = UDim2.new(0, 20, 0, 20),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 0.5, 0),
						ImageColor3 = Color3.fromRGB(255, 255, 255),
						Name = "Ico"
					})
				})
				local L_179_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 5), {
					Size = UDim2.new(1, 0, 0, 38),
					Parent = L_158_arg1
				}), {
					L_23_func(L_19_func(L_18_func("Label", L_175_arg1.Name, 15), {
						Size = UDim2.new(1, -12, 1, 0),
						Position = UDim2.new(0, 12, 0, 0),
						Font = Enum.Font.GothamBold,
						Name = "Content"
					}), "Text"),
					L_23_func(L_18_func("Stroke"), "Stroke"),
					L_178_,
					L_177_
				}), "Second")
				function L_176_:Set(L_180_arg1)
					L_176_.Value = L_180_arg1
					L_3_:Create(L_178_, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = L_176_.Value and L_175_arg1.Color or L_10_.Themes.Default.Divider
					}):Play()
					L_3_:Create(L_178_.Stroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						Color = L_176_.Value and L_175_arg1.Color or L_10_.Themes.Default.Stroke
					}):Play()
					L_3_:Create(L_178_.Ico, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						ImageTransparency = L_176_.Value and 0 or 1,
						Size = L_176_.Value and UDim2.new(0, 20, 0, 20) or UDim2.new(0, 8, 0, 8)
					}):Play()
					L_175_arg1.Callback(L_176_.Value)
				end
				L_176_:Set(L_176_.Value)
				L_14_func(L_177_.MouseEnter, function()
					L_3_:Create(L_179_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(L_10_.Themes[L_10_.SelectedTheme].Second.R * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.G * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.B * 255 + 3)
					}):Play()
				end)
				L_14_func(L_177_.MouseLeave, function()
					L_3_:Create(L_179_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = L_10_.Themes[L_10_.SelectedTheme].Second
					}):Play()
				end)
				L_14_func(L_177_.MouseButton1Up, function()
					L_3_:Create(L_179_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(L_10_.Themes[L_10_.SelectedTheme].Second.R * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.G * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.B * 255 + 3)
					}):Play()
					L_28_func(game.PlaceId)
					L_176_:Set(not L_176_.Value)
				end)
				L_14_func(L_177_.MouseButton1Down, function()
					L_3_:Create(L_179_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(L_10_.Themes[L_10_.SelectedTheme].Second.R * 255 + 6, L_10_.Themes[L_10_.SelectedTheme].Second.G * 255 + 6, L_10_.Themes[L_10_.SelectedTheme].Second.B * 255 + 6)
					}):Play()
				end)
				if L_175_arg1.Flag then
					L_10_.Flags[L_175_arg1.Flag] = L_176_
				end
				return L_176_
			end
			function L_159_:AddSlider(L_181_arg1)
				L_181_arg1 = L_181_arg1 or {}
				L_181_arg1.Name = L_181_arg1.Name or "Slider"
				L_181_arg1.Min = L_181_arg1.Min or 0
				L_181_arg1.Max = L_181_arg1.Max or 100
				L_181_arg1.Increment = L_181_arg1.Increment or 1
				L_181_arg1.Default = L_181_arg1.Default or 50
				L_181_arg1.Callback = L_181_arg1.Callback or function()
				end
				L_181_arg1.ValueName = L_181_arg1.ValueName or ""
				L_181_arg1.Color = L_181_arg1.Color or Color3.fromRGB(9, 149, 98)
				L_181_arg1.Flag = L_181_arg1.Flag or nil
				L_181_arg1.Save = L_181_arg1.Save or false
				local L_182_ = {
					Value = L_181_arg1.Default,
					Save = L_181_arg1.Save
				}
				local L_183_ = false
				local L_184_ = L_20_func(L_19_func(L_18_func("RoundFrame", L_181_arg1.Color, 0, 5), {
					Size = UDim2.new(0, 0, 1, 0),
					BackgroundTransparency = 0.3,
					ClipsDescendants = true
				}), {
					L_23_func(L_19_func(L_18_func("Label", "value", 13), {
						Size = UDim2.new(1, -12, 0, 14),
						Position = UDim2.new(0, 12, 0, 6),
						Font = Enum.Font.GothamBold,
						Name = "Value",
						TextTransparency = 0
					}), "Text")
				})
				local L_185_ = L_20_func(L_19_func(L_18_func("RoundFrame", L_181_arg1.Color, 0, 5), {
					Size = UDim2.new(1, -24, 0, 26),
					Position = UDim2.new(0, 12, 0, 30),
					BackgroundTransparency = 0.9
				}), {
					L_19_func(L_18_func("Stroke"), {
						Color = L_181_arg1.Color
					}),
					L_23_func(L_19_func(L_18_func("Label", "value", 13), {
						Size = UDim2.new(1, -12, 0, 14),
						Position = UDim2.new(0, 12, 0, 6),
						Font = Enum.Font.GothamBold,
						Name = "Value",
						TextTransparency = 0.8
					}), "Text"),
					L_184_
				})
				local L_186_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 4), {
					Size = UDim2.new(1, 0, 0, 65),
					Parent = L_158_arg1
				}), {
					L_23_func(L_19_func(L_18_func("Label", L_181_arg1.Name, 15), {
						Size = UDim2.new(1, -12, 0, 14),
						Position = UDim2.new(0, 12, 0, 10),
						Font = Enum.Font.GothamBold,
						Name = "Content"
					}), "Text"),
					L_23_func(L_18_func("Stroke"), "Stroke"),
					L_185_
				}), "Second")
				L_185_.InputBegan:Connect(function(L_187_arg1)
					if L_187_arg1.UserInputType == Enum.UserInputType.MouseButton1 or L_187_arg1.UserInputType == Enum.UserInputType.Touch then
						L_183_ = true
					end
				end)
				L_185_.InputEnded:Connect(function(L_188_arg1)
					if L_188_arg1.UserInputType == Enum.UserInputType.MouseButton1 or L_188_arg1.UserInputType == Enum.UserInputType.Touch then
						L_183_ = false
					end
				end)
				function L_182_:Set(L_189_arg1)
					L_189_arg1 = math.clamp(L_21_func(L_189_arg1, L_181_arg1.Increment), L_181_arg1.Min, L_181_arg1.Max)
					L_3_:Create(L_184_, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Size = UDim2.fromScale((L_189_arg1 - L_181_arg1.Min) / (L_181_arg1.Max - L_181_arg1.Min), 1)
					}):Play()
					L_185_.Value.Text = string.format("%s %s", L_189_arg1, L_181_arg1.ValueName)
					L_184_.Value.Text = string.format("%s %s", L_189_arg1, L_181_arg1.ValueName)
					L_181_arg1.Callback(L_189_arg1)
				end
				L_2_.InputChanged:Connect(function(L_190_arg1)
					if L_183_ and (L_190_arg1.UserInputType == Enum.UserInputType.MouseMovement or L_190_arg1.UserInputType == Enum.UserInputType.Touch) then
						local L_191_ = math.clamp((L_190_arg1.Position.X - L_185_.AbsolutePosition.X) / L_185_.AbsoluteSize.X, 0, 1)
						L_182_:Set(L_181_arg1.Min + ((L_181_arg1.Max - L_181_arg1.Min) * L_191_))
						L_28_func(game.PlaceId)
					end
				end)
				L_182_:Set(L_182_.Value)
				if L_181_arg1.Flag then
					L_10_.Flags[L_181_arg1.Flag] = L_182_
				end
				return L_182_
			end
			function L_159_:AddDropdown(L_192_arg1)
				L_192_arg1 = L_192_arg1 or {}
				L_192_arg1.Name = L_192_arg1.Name or "Dropdown"
				L_192_arg1.Options = L_192_arg1.Options or {}
				L_192_arg1.Default = L_192_arg1.Default or ""
				L_192_arg1.Callback = L_192_arg1.Callback or function()
				end
				L_192_arg1.Flag = L_192_arg1.Flag or nil
				L_192_arg1.Save = L_192_arg1.Save or false
				local L_193_ = {
					Value = L_192_arg1.Default,
					Options = L_192_arg1.Options,
					Buttons = {},
					Toggled = false,
					Type = "Dropdown",
					Save = L_192_arg1.Save
				}
				local L_194_ = 5
				if not table.find(L_193_.Options, L_193_.Value) then
					L_193_.Value = "..."
				end
				local L_195_ = L_18_func("List")
				local L_196_ = L_23_func(L_19_func(L_20_func(L_18_func("ScrollFrame", Color3.fromRGB(40, 40, 40), 4), {
					L_195_
				}), {
					Parent = L_158_arg1,
					Position = UDim2.new(0, 0, 0, 38),
					Size = UDim2.new(1, 0, 1, -38),
					ClipsDescendants = true
				}), "Divider")
				local L_197_ = L_19_func(L_18_func("Button"), {
					Size = UDim2.new(1, 0, 1, 0)
				})
				local L_198_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 5), {
					Size = UDim2.new(1, 0, 0, 38),
					Parent = L_158_arg1,
					ClipsDescendants = true
				}), {
					L_196_,
					L_19_func(L_20_func(L_18_func("TFrame"), {
						L_23_func(L_19_func(L_18_func("Label", L_192_arg1.Name, 15), {
							Size = UDim2.new(1, -12, 1, 0),
							Position = UDim2.new(0, 12, 0, 0),
							Font = Enum.Font.GothamBold,
							Name = "Content"
						}), "Text"),
						L_23_func(L_19_func(L_18_func("Image", "rbxassetid://7072706796"), {
							Size = UDim2.new(0, 20, 0, 20),
							AnchorPoint = Vector2.new(0, 0.5),
							Position = UDim2.new(1, -30, 0.5, 0),
							ImageColor3 = Color3.fromRGB(240, 240, 240),
							Name = "Ico"
						}), "TextDark"),
						L_23_func(L_19_func(L_18_func("Label", "Selected", 13), {
							Size = UDim2.new(1, -40, 1, 0),
							Font = Enum.Font.Gotham,
							Name = "Selected",
							TextXAlignment = Enum.TextXAlignment.Right
						}), "TextDark"),
						L_23_func(L_19_func(L_18_func("Frame"), {
							Size = UDim2.new(1, 0, 0, 1),
							Position = UDim2.new(0, 0, 1, -1),
							Name = "Line",
							Visible = false
						}), "Stroke"),
						L_197_
					}), {
						Size = UDim2.new(1, 0, 0, 38),
						ClipsDescendants = true,
						Name = "F"
					}),
					L_23_func(L_18_func("Stroke"), "Stroke"),
					L_18_func("Corner")
				}), "Second")
				L_14_func(L_195_:GetPropertyChangedSignal("AbsoluteContentSize"), function()
					L_196_.CanvasSize = UDim2.new(0, 0, 0, L_195_.AbsoluteContentSize.Y)
				end)
				local function L_199_func(L_200_arg1)
					for L_201_forvar1, L_202_forvar2 in next, L_200_arg1 do
						local L_203_ = L_23_func(L_19_func(L_20_func(L_18_func("Button", Color3.fromRGB(40, 40, 40)), {
							L_18_func("Corner", 0, 6),
							L_23_func(L_19_func(L_18_func("Label", L_202_forvar2, 13, 0.4), {
								Position = UDim2.new(0, 8, 0, 0),
								Size = UDim2.new(1, -8, 1, 0),
								Name = "Title"
							}), "Text")
						}), {
							Parent = L_196_,
							Size = UDim2.new(1, 0, 0, 28),
							BackgroundTransparency = 1,
							ClipsDescendants = true
						}), "Divider")
						L_14_func(L_203_.MouseButton1Click, function()
							L_193_:Set(L_202_forvar2)
							L_28_func(game.PlaceId)
						end)
						L_193_.Buttons[L_202_forvar2] = L_203_
					end
				end
				function L_193_:Refresh(L_204_arg1, L_205_arg2)
					if L_205_arg2 then
						for L_206_forvar1, L_207_forvar2 in next, L_193_.Buttons do
							L_9_:AddItem(L_207_forvar2, 0)
						end
						table.clear(L_193_.Options)
						table.clear(L_193_.Buttons)
					end
					L_193_.Options = L_204_arg1
					L_199_func(L_193_.Options)
				end
				function L_193_:Set(L_208_arg1)
					if not table.find(L_193_.Options, L_208_arg1) then
						L_193_.Value = "..."
						L_198_.F.Selected.Text = L_193_.Value
						for L_209_forvar1, L_210_forvar2 in next, L_193_.Buttons do
							L_3_:Create(L_210_forvar2, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								BackgroundTransparency = 1
							}):Play()
							L_3_:Create(L_210_forvar2.Title, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								TextTransparency = 0.4
							}):Play()
						end
						return
					end
					L_193_.Value = L_208_arg1
					L_198_.F.Selected.Text = L_193_.Value
					for L_211_forvar1, L_212_forvar2 in next, L_193_.Buttons do
						L_3_:Create(L_212_forvar2, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
							BackgroundTransparency = 1
						}):Play()
						L_3_:Create(L_212_forvar2.Title, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
							TextTransparency = 0.4
						}):Play()
					end
					L_3_:Create(L_193_.Buttons[L_208_arg1], TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundTransparency = 0
					}):Play()
					L_3_:Create(L_193_.Buttons[L_208_arg1].Title, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0
					}):Play()
					return L_192_arg1.Callback(L_193_.Value)
				end
				L_14_func(L_197_.MouseButton1Click, function()
					L_193_.Toggled = not L_193_.Toggled
					L_198_.F.Line.Visible = L_193_.Toggled
					L_3_:Create(L_198_.F.Ico, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = L_193_.Toggled and 180 or 0
					}):Play()
					if #L_193_.Options > L_194_ then
						L_3_:Create(L_198_, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
							Size = L_193_.Toggled and UDim2.new(1, 0, 0, 38 + (L_194_ * 28)) or UDim2.new(1, 0, 0, 38)
						}):Play()
					else
						L_3_:Create(L_198_, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
							Size = L_193_.Toggled and UDim2.new(1, 0, 0, L_195_.AbsoluteContentSize.Y + 38) or UDim2.new(1, 0, 0, 38)
						}):Play()
					end
				end)
				L_193_:Refresh(L_193_.Options, false)
				L_193_:Set(L_193_.Value)
				if L_192_arg1.Flag then
					L_10_.Flags[L_192_arg1.Flag] = L_193_
				end
				return L_193_
			end
			local L_160_ = nil
			function L_159_:AddBind(L_213_arg1)
				L_213_arg1.Name = L_213_arg1.Name or "Bind"
				L_213_arg1.Default = L_213_arg1.Default or Enum.KeyCode.Unknown
				L_213_arg1.Hold = L_213_arg1.Hold or false
				L_213_arg1.Callback = L_213_arg1.Callback or function()
				end
				L_213_arg1.Flag = L_213_arg1.Flag or nil
				L_213_arg1.Save = L_213_arg1.Save or false
				local L_214_ = {
					L_160_,
					Binding = false,
					Type = "Bind",
					Save = L_213_arg1.Save
				}
				local L_215_ = false
				local L_216_ = L_19_func(L_18_func("Button"), {
					Size = UDim2.new(1, 0, 1, 0)
				})
				local L_217_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 4), {
					Size = UDim2.new(0, 24, 0, 24),
					Position = UDim2.new(1, -12, 0.5, 0),
					AnchorPoint = Vector2.new(1, 0.5)
				}), {
					L_23_func(L_18_func("Stroke"), "Stroke"),
					L_23_func(L_19_func(L_18_func("Label", L_213_arg1.Name, 14), {
						Size = UDim2.new(1, 0, 1, 0),
						Font = Enum.Font.GothamBold,
						TextXAlignment = Enum.TextXAlignment.Center,
						Name = "Value"
					}), "Text")
				}), "Main")
				local L_218_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 5), {
					Size = UDim2.new(1, 0, 0, 38),
					Parent = L_158_arg1
				}), {
					L_23_func(L_19_func(L_18_func("Label", L_213_arg1.Name, 15), {
						Size = UDim2.new(1, -12, 1, 0),
						Position = UDim2.new(0, 12, 0, 0),
						Font = Enum.Font.GothamBold,
						Name = "Content"
					}), "Text"),
					L_23_func(L_18_func("Stroke"), "Stroke"),
					L_217_,
					L_216_
				}), "Second")
				L_14_func(L_217_.Value:GetPropertyChangedSignal("Text"), function()
					L_3_:Create(L_217_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						Size = UDim2.new(0, L_217_.Value.TextBounds.X + 16, 0, 24)
					}):Play()
				end)
				L_14_func(L_216_.InputEnded, function(L_219_arg1)
					if L_219_arg1.UserInputType == Enum.UserInputType.MouseButton1 or L_219_arg1.UserInputType == Enum.UserInputType.Touch then
						if L_214_.Binding then
							return
						end
						L_214_.Binding = true
						L_217_.Value.Text = ""
					end
				end)
				function L_214_:Set(L_220_arg1)
					L_214_.Binding = false
					L_214_.Value = L_220_arg1 or L_214_.Value
					L_214_.Value = L_214_.Value.Name or L_214_.Value
					L_217_.Value.Text = L_214_.Value
				end
				L_14_func(L_2_.InputBegan, function(L_221_arg1)
					if L_2_:GetFocusedTextBox() then
						return
					end
					if (L_221_arg1.KeyCode.Name == L_214_.Value or L_221_arg1.UserInputType.Name == L_214_.Value) and not L_214_.Binding then
						if L_213_arg1.Hold then
							L_215_ = true
							L_213_arg1.Callback(L_215_)
						else
							L_213_arg1.Callback()
						end
					elseif L_214_.Binding then
						local L_222_
						pcall(function()
							if not L_31_func(L_30_, L_221_arg1.KeyCode) then
								L_222_ = L_221_arg1.KeyCode
							end
						end)
						pcall(function()
							if L_31_func(L_29_, L_221_arg1.UserInputType) and not L_222_ then
								L_222_ = L_221_arg1.UserInputType
							end
						end)
						L_222_ = L_222_ or L_214_.Value
						L_214_:Set(L_222_)
						L_28_func(game.PlaceId)
					end
				end)
				L_14_func(L_2_.InputEnded, function(L_223_arg1)
					if L_223_arg1.KeyCode.Name == L_214_.Value or L_223_arg1.UserInputType.Name == L_214_.Value then
						if L_213_arg1.Hold and L_215_ then
							L_215_ = false
							L_213_arg1.Callback(L_215_)
						end
					end
				end)
				L_14_func(L_216_.MouseEnter, function()
					L_3_:Create(L_218_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(L_10_.Themes[L_10_.SelectedTheme].Second.R * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.G * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.B * 255 + 3)
					}):Play()
				end)
				L_14_func(L_216_.MouseLeave, function()
					L_3_:Create(L_218_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = L_10_.Themes[L_10_.SelectedTheme].Second
					}):Play()
				end)
				L_14_func(L_216_.MouseButton1Up, function()
					L_3_:Create(L_218_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(L_10_.Themes[L_10_.SelectedTheme].Second.R * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.G * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.B * 255 + 3)
					}):Play()
				end)
				L_14_func(L_216_.MouseButton1Down, function()
					L_3_:Create(L_218_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(L_10_.Themes[L_10_.SelectedTheme].Second.R * 255 + 6, L_10_.Themes[L_10_.SelectedTheme].Second.G * 255 + 6, L_10_.Themes[L_10_.SelectedTheme].Second.B * 255 + 6)
					}):Play()
				end)
				L_214_:Set(L_213_arg1.Default)
				if L_213_arg1.Flag then
					L_10_.Flags[L_213_arg1.Flag] = L_214_
				end
				return L_214_
			end
			function L_159_:AddTextbox(L_224_arg1)
				L_224_arg1 = L_224_arg1 or {}
				L_224_arg1.Name = L_224_arg1.Name or "Textbox"
				L_224_arg1.Default = L_224_arg1.Default or ""
				L_224_arg1.TextDisappear = L_224_arg1.TextDisappear or false
				L_224_arg1.Callback = L_224_arg1.Callback or function()
				end
				local L_225_ = L_19_func(L_18_func("Button"), {
					Size = UDim2.new(1, 0, 1, 0)
				})
				local L_226_ = L_23_func(L_16_func("TextBox", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					TextColor3 = Color3.fromRGB(255, 255, 255),
					PlaceholderColor3 = Color3.fromRGB(210, 210, 210),
					PlaceholderText = "Input",
					Font = Enum.Font.GothamMedium,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextSize = 14,
					ClearTextOnFocus = false
				}), "Text")
				local L_227_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 4), {
					Size = UDim2.new(0, 24, 0, 24),
					Position = UDim2.new(1, -12, 0.5, 0),
					AnchorPoint = Vector2.new(1, 0.5)
				}), {
					L_23_func(L_18_func("Stroke"), "Stroke"),
					L_226_
				}), "Main")
				local L_228_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 5), {
					Size = UDim2.new(1, 0, 0, 38),
					Parent = L_158_arg1
				}), {
					L_23_func(L_19_func(L_18_func("Label", L_224_arg1.Name, 15), {
						Size = UDim2.new(1, -12, 1, 0),
						Position = UDim2.new(0, 12, 0, 0),
						Font = Enum.Font.GothamBold,
						Name = "Content"
					}), "Text"),
					L_23_func(L_18_func("Stroke"), "Stroke"),
					L_227_,
					L_225_
				}), "Second")
				L_14_func(L_226_:GetPropertyChangedSignal("Text"), function()
					L_3_:Create(L_227_, TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						Size = UDim2.new(0, L_226_.TextBounds.X + 16, 0, 24)
					}):Play()
				end)
				L_14_func(L_226_.FocusLost, function()
					L_224_arg1.Callback(L_226_.Text)
					if L_224_arg1.TextDisappear then
						L_226_.Text = ""
					end
				end)
				L_226_.Text = L_224_arg1.Default
				L_14_func(L_225_.MouseEnter, function()
					L_3_:Create(L_228_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(L_10_.Themes[L_10_.SelectedTheme].Second.R * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.G * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.B * 255 + 3)
					}):Play()
				end)
				L_14_func(L_225_.MouseLeave, function()
					L_3_:Create(L_228_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = L_10_.Themes[L_10_.SelectedTheme].Second
					}):Play()
				end)
				L_14_func(L_225_.MouseButton1Up, function()
					L_3_:Create(L_228_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(L_10_.Themes[L_10_.SelectedTheme].Second.R * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.G * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.B * 255 + 3)
					}):Play()
					L_226_:CaptureFocus()
				end)
				L_14_func(L_225_.MouseButton1Down, function()
					L_3_:Create(L_228_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(L_10_.Themes[L_10_.SelectedTheme].Second.R * 255 + 6, L_10_.Themes[L_10_.SelectedTheme].Second.G * 255 + 6, L_10_.Themes[L_10_.SelectedTheme].Second.B * 255 + 6)
					}):Play()
				end)
			end
			function L_159_:AddColorpicker(L_229_arg1)
				L_229_arg1 = L_229_arg1 or {}
				L_229_arg1.Name = L_229_arg1.Name or "Colorpicker"
				L_229_arg1.Default = L_229_arg1.Default or Color3.fromRGB(255, 255, 255)
				L_229_arg1.Callback = L_229_arg1.Callback or function()
				end
				L_229_arg1.Flag = L_229_arg1.Flag or nil
				L_229_arg1.Save = L_229_arg1.Save or false
				local L_230_, L_231_, L_232_ = 1, 1, 1
				local L_233_ = {
					Value = L_229_arg1.Default,
					Toggled = false,
					Type = "Colorpicker",
					Save = L_229_arg1.Save
				}
				local L_234_ = L_16_func("ImageLabel", {
					Size = UDim2.new(0, 18, 0, 18),
					Position = UDim2.new(select(3, L_233_.Value:ToHSV())),
					ScaleType = Enum.ScaleType.Fit,
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					Image = "rbxassetid://4805639000"
				})
				local L_235_ = L_16_func("ImageLabel", {
					Size = UDim2.new(0, 18, 0, 18),
					Position = UDim2.new(0.5, 0, 1 - select(1, L_233_.Value:ToHSV())),
					ScaleType = Enum.ScaleType.Fit,
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					Image = "rbxassetid://4805639000"
				})
				local L_236_ = L_16_func("ImageLabel", {
					Size = UDim2.new(1, -25, 1, 0),
					Visible = false,
					Image = "rbxassetid://4155801252"
				}, {
					L_16_func("UICorner", {
						CornerRadius = UDim.new(0, 5)
					}),
					L_234_
				})
				local L_237_ = L_16_func("Frame", {
					Size = UDim2.new(0, 20, 1, 0),
					Position = UDim2.new(1, -20, 0, 0),
					Visible = false
				}, {
					L_16_func("UIGradient", {
						Rotation = 270,
						Color = ColorSequence.new{
							ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 4)),
							ColorSequenceKeypoint.new(0.2, Color3.fromRGB(234, 255, 0)),
							ColorSequenceKeypoint.new(0.4, Color3.fromRGB(21, 255, 0)),
							ColorSequenceKeypoint.new(0.6, Color3.fromRGB(0, 255, 255)),
							ColorSequenceKeypoint.new(0.8, Color3.fromRGB(0, 17, 255)),
							ColorSequenceKeypoint.new(0.9, Color3.fromRGB(255, 0, 251)),
							ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 4))
						}
					}),
					L_16_func("UICorner", {
						CornerRadius = UDim.new(0, 5)
					}),
					L_235_
				})
				local L_238_ = L_16_func("Frame", {
					Position = UDim2.new(0, 0, 0, 32),
					Size = UDim2.new(1, 0, 1, -32),
					BackgroundTransparency = 1,
					ClipsDescendants = true
				}, {
					L_237_,
					L_236_,
					L_16_func("UIPadding", {
						PaddingLeft = UDim.new(0, 35),
						PaddingRight = UDim.new(0, 35),
						PaddingBottom = UDim.new(0, 10),
						PaddingTop = UDim.new(0, 17)
					})
				})
				local L_239_ = L_19_func(L_18_func("Button"), {
					Size = UDim2.new(1, 0, 1, 0)
				})
				local L_240_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 4), {
					Size = UDim2.new(0, 24, 0, 24),
					Position = UDim2.new(1, -12, 0.5, 0),
					AnchorPoint = Vector2.new(1, 0.5)
				}), {
					L_23_func(L_18_func("Stroke"), "Stroke")
				}), "Main")
				local L_241_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 5), {
					Size = UDim2.new(1, 0, 0, 38),
					Parent = L_158_arg1
				}), {
					L_19_func(L_20_func(L_18_func("TFrame"), {
						L_23_func(L_19_func(L_18_func("Label", L_229_arg1.Name, 15), {
							Size = UDim2.new(1, -12, 1, 0),
							Position = UDim2.new(0, 12, 0, 0),
							Font = Enum.Font.GothamBold,
							Name = "Content"
						}), "Text"),
						L_240_,
						L_239_,
						L_23_func(L_19_func(L_18_func("Frame"), {
							Size = UDim2.new(1, 0, 0, 1),
							Position = UDim2.new(0, 0, 1, -1),
							Name = "Line",
							Visible = false
						}), "Stroke")
					}), {
						Size = UDim2.new(1, 0, 0, 38),
						ClipsDescendants = true,
						Name = "F"
					}),
					L_238_,
					L_23_func(L_18_func("Stroke"), "Stroke")
				}), "Second")
				L_14_func(L_239_.MouseButton1Click, function()
					L_233_.Toggled = not L_233_.Toggled
					L_3_:Create(L_241_, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Size = L_233_.Toggled and UDim2.new(1, 0, 0, 148) or UDim2.new(1, 0, 0, 38)
					}):Play()
					L_236_.Visible = L_233_.Toggled
					L_237_.Visible = L_233_.Toggled
					L_241_.F.Line.Visible = L_233_.Toggled
				end)
				function L_233_:Set(L_245_arg1)
					L_233_.Value = L_245_arg1
					L_240_.BackgroundColor3 = L_233_.Value
					L_229_arg1.Callback(L_233_.Value)
				end
				local function L_242_func()
					L_240_.BackgroundColor3 = Color3.fromHSV(L_230_, L_231_, L_232_)
					L_236_.BackgroundColor3 = Color3.fromHSV(L_230_, 1, 1)
					L_233_:Set(L_240_.BackgroundColor3)
					L_229_arg1.Callback(L_240_.BackgroundColor3)
					L_28_func(game.PlaceId)
				end
				L_230_ = 1 - (math.clamp(L_235_.AbsolutePosition.Y - L_237_.AbsolutePosition.Y, 0, L_237_.AbsoluteSize.Y) / L_237_.AbsoluteSize.Y)
				L_231_ = (math.clamp(L_234_.AbsolutePosition.X - L_236_.AbsolutePosition.X, 0, L_236_.AbsoluteSize.X) / L_236_.AbsoluteSize.X)
				L_232_ = 1 - (math.clamp(L_234_.AbsolutePosition.Y - L_236_.AbsolutePosition.Y, 0, L_236_.AbsoluteSize.Y) / L_236_.AbsoluteSize.Y)
				local L_243_
				L_14_func(L_236_.InputBegan, function(L_246_arg1)
					if L_246_arg1.UserInputType == Enum.UserInputType.MouseButton1 or L_246_arg1.UserInputType == Enum.UserInputType.Touch then
						if L_243_ then
							L_243_:Disconnect()
						end
						L_243_ = L_14_func(L_4_.RenderStepped, function()
							local L_247_ = (math.clamp(L_6_.X - L_236_.AbsolutePosition.X, 0, L_236_.AbsoluteSize.X) / L_236_.AbsoluteSize.X)
							local L_248_ = (math.clamp(L_6_.Y - L_236_.AbsolutePosition.Y, 0, L_236_.AbsoluteSize.Y) / L_236_.AbsoluteSize.Y)
							L_234_.Position = UDim2.new(L_247_, 0, L_248_, 0)
							L_231_ = L_247_
							L_232_ = 1 - L_248_
							L_242_func()
						end)
					end
				end)
				L_14_func(L_236_.InputEnded, function(L_249_arg1)
					if L_249_arg1.UserInputType == Enum.UserInputType.MouseButton1 or L_249_arg1.UserInputType == Enum.UserInputType.Touch then
						if L_243_ then
							L_243_:Disconnect()
						end
					end
				end)
				local L_244_
				L_14_func(L_237_.InputBegan, function(L_250_arg1)
					if L_250_arg1.UserInputType == Enum.UserInputType.MouseButton1 or L_250_arg1.UserInputType == Enum.UserInputType.Touch then
						if L_244_ then
							L_244_:Disconnect()
						end
						L_244_ = L_14_func(L_4_.RenderStepped, function()
							local L_251_ = (math.clamp(L_6_.Y - L_237_.AbsolutePosition.Y, 0, L_237_.AbsoluteSize.Y) / L_237_.AbsoluteSize.Y)
							L_235_.Position = UDim2.new(0.5, 0, L_251_, 0)
							L_230_ = 1 - L_251_
							L_242_func()
						end)
					end
				end)
				L_14_func(L_237_.InputEnded, function(L_252_arg1)
					if L_252_arg1.UserInputType == Enum.UserInputType.MouseButton1 or L_252_arg1.UserInputType == Enum.UserInputType.Touch then
						if L_244_ then
							L_244_:Disconnect()
						end
					end
				end)
				L_233_:Set(L_233_.Value)
				if L_229_arg1.Flag then
					L_10_.Flags[L_229_arg1.Flag] = L_233_
				end
				return L_233_
			end
			return L_159_
		end
		local L_152_ = {}
		local L_153_ = nil
		function L_152_:AddSection(L_253_arg1)
			L_253_arg1.Name = L_253_arg1.Name or "Section"
			local L_254_ = L_20_func(L_19_func(L_18_func("TFrame"), {
				Size = UDim2.new(1, 0, 0, 26),
				Parent = L_150_
			}), {
				L_23_func(L_19_func(L_18_func("Label", L_253_arg1.Name, 14), {
					Size = UDim2.new(1, -12, 0, 16),
					Position = UDim2.new(0, 0, 0, 3),
					Font = Enum.Font.GothamMedium
				}), "TextDark"),
				L_20_func(L_19_func(L_18_func("TFrame"), {
					AnchorPoint = Vector2.new(0, 0),
					Size = UDim2.new(1, 0, 1, -24),
					Position = UDim2.new(0, 0, 0, 23),
					Name = "Holder"
				}), {
					L_18_func("List", 0, 6)
				})
			})
			L_14_func(L_254_.Holder.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"), function()
				L_254_.Size = UDim2.new(1, 0, 0, L_254_.Holder.UIListLayout.AbsoluteContentSize.Y + 31)
				L_254_.Holder.Size = UDim2.new(1, 0, 0, L_254_.Holder.UIListLayout.AbsoluteContentSize.Y)
			end)
			local L_255_ = {}
			for L_256_forvar1, L_257_forvar2 in next, L_151_func(L_254_.Holder) do
				L_255_[L_256_forvar1] = L_257_forvar2
			end
			return L_255_
		end
		for L_258_forvar1, L_259_forvar2 in next, L_151_func(L_150_) do
			L_152_[L_258_forvar1] = L_259_forvar2
		end
		if L_148_arg1.TestersOnly then
			for L_260_forvar1, L_261_forvar2 in next, L_152_ do
				L_152_[L_260_forvar1] = function()
				end
			end
			L_9_:AddItem(L_150_:FindFirstChild("UIListLayout"), 0)
			L_9_:AddItem(L_150_:FindFirstChild("UIPadding"), 0)
			L_20_func(L_19_func(L_18_func("TFrame"), {
				Size = UDim2.new(1, 0, 1, 0),
				Parent = L_153_
			}), {
				L_23_func(L_19_func(L_18_func("Image", "rbxassetid://3610239960"), {
					Size = UDim2.new(0, 18, 0, 18),
					Position = UDim2.new(0, 15, 0, 15),
					ImageTransparency = 0.4
				}), "Text"),
				L_23_func(L_19_func(L_18_func("Label", "Unauthorised Access", 14), {
					Size = UDim2.new(1, -38, 0, 14),
					Position = UDim2.new(0, 38, 0, 18),
					TextTransparency = 0.4
				}), "Text"),
				L_23_func(L_19_func(L_18_func("Image", "rbxassetid://4483345875"), {
					Size = UDim2.new(0, 56, 0, 56),
					Position = UDim2.new(0, 84, 0, 110)
				}), "Text"),
				L_23_func(L_19_func(L_18_func("Label", "Beta Features", 14), {
					Size = UDim2.new(1, -150, 0, 14),
					Position = UDim2.new(0, 150, 0, 112),
					Font = Enum.Font.GothamBold
				}), "Text"),
				L_23_func(L_19_func(L_18_func("Label", "This part of the script is locked to Testers.", 12), {
					Size = UDim2.new(1, -200, 0, 14),
					Position = UDim2.new(0, 150, 0, 138),
					TextWrapped = true,
					TextTransparency = 0.4
				}), "Text")
			})
		end
		return L_152_
	end
	return L_143_
end
function L_10_:Destroy()
	L_9_:AddItem(L_12_, 0)
end
return L_10_