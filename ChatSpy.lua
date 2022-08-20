G_1_ = true
G_2_ = true
G_3_ = false
G_4_ = true
G_5_ = {
	Color = Color3.fromRGB(0, 255, 255);
	Font = Enum.Font.SourceSansBold;
	TextSize = 18
}
local L_1_ = game:GetService("StarterGui")
local L_2_ = game:GetService("Players")
local L_3_ = L_2_.LocalPlayer or L_2_:GetPropertyChangedSignal("LocalPlayer"):Wait()
local L_4_ = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
local L_5_ = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
local L_6_ = (_G.chatSpyInstance or 0) + 1
_G.chatSpyInstance = L_6_
local function L_7_func(L_9_arg1, L_10_arg2)
	if _G.chatSpyInstance == L_6_ then
		if L_9_arg1 == L_3_ and L_10_arg2:lower():sub(1, 4) == "/spy" then
			G_1_ = not G_1_
			wait(0.3)
			G_5_.Text = "{SPY "..(G_1_ and "EN" or "DIS").."ABLED}"
			L_1_:SetCore("ChatMakeSystemMessage", G_5_)
		elseif G_1_ and (G_2_ == true or L_9_arg1 ~= L_3_) then
			L_10_arg2 = L_10_arg2:gsub("[\n\r]", ''):gsub("\t", ' '):gsub("[ ]+", ' ')
			local L_11_ = true
			local L_12_ = L_5_.OnClientEvent:Connect(function(L_13_arg1, L_14_arg2)
				if L_13_arg1.SpeakerUserId == L_9_arg1.UserId and L_13_arg1.Message == L_10_arg2:sub(#L_10_arg2 - #L_13_arg1.Message + 1) and (L_14_arg2 == "All" or (L_14_arg2 == "Team" and G_3_ == false and L_2_[L_13_arg1.FromSpeaker].Team == L_3_.Team)) then
					L_11_ = false
				end
			end)
			wait(1)
			L_12_:Disconnect()
			if L_11_ and G_1_ then
				if G_3_ then
					L_4_:FireServer((G_4_ and "/me " or '').."{SPY} ["..L_9_arg1.Name.."]: "..L_10_arg2, "All")
				else
					G_5_.Text = "{SPY} ["..L_9_arg1.Name.."]: "..L_10_arg2
					L_1_:SetCore("ChatMakeSystemMessage", G_5_)
				end
			end
		end
	end
end
for L_15_forvar1, L_16_forvar2 in ipairs(L_2_:GetPlayers()) do
	L_16_forvar2.Chatted:Connect(function(L_17_arg1)
		L_7_func(L_16_forvar2, L_17_arg1)
	end)
end
L_2_.PlayerAdded:Connect(function(L_18_arg1)
	L_18_arg1.Chatted:Connect(function(L_19_arg1)
		L_7_func(L_18_arg1, L_19_arg1)
	end)
end)
G_5_.Text = "{SPY "..(G_1_ and "EN" or "DIS").."ABLED}"
L_1_:SetCore("ChatMakeSystemMessage", G_5_)
if not L_3_.PlayerGui:FindFirstChild("Chat") then
	wait(3)
end
local L_8_ = L_3_.PlayerGui.Chat.Frame
L_8_.ChatChannelParentFrame.Visible = true
L_8_.ChatBarParentFrame.Position = L_8_.ChatChannelParentFrame.Position + UDim2.new(UDim.new(), L_8_.ChatChannelParentFrame.Size.Y)