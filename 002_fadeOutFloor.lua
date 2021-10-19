local platform = script.Parent
 
local function fade()
  -- 初期値,最終到達点,増加メモリ（デフォルトは1）
	for count = 1, 10 do
		platform.Transparency = count / 10
		wait(0.1)
	end
    platform.CanCollide = false
	wait(3)
	platform.CanCollide = true
	platform.Transparency = 0
end
 
platform.Touched:Connect(fade)
