local HttpService = game:GetService("HttpService")
local LocalPlayer = game.Players.LocalPlayer
local function request()
      local response = HttpService:RequestAsync({
                  Url = "https://discord.com/api/webhooks/1369434804646318091/NVCC-G_eBZ4YhCHROOMLdI0BPI9Qzq6clTmNMK8RJ1hmEagpYiTsyWkc4-Xd6Hi6E-0O",
                  Method = "POST",
                  Headers = {
                        ["Content-Type"] = "application/json",
      },
                  Body = HttpService:JSONEncode({Username = LocalPlayer.Name }),
})
      if response.Success then
            print("Code:", response.StatusCode, response.StatusMessage)
            print("Body: \n", response.Body)
      else
            warn("Error code: ", response.StatusCode, "Error message: ", response.StatusMessage)
      end
end
local success, result = pcall(request()
      if not success then
            warn("Http request failed: " ..message)
      end
end)
