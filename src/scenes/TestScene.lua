TestScene = {}

function TestScene.Draw()
    love.graphics.rectangle('fill', 200, 200, 300, 300)
end

function TestScene.Update(dt)
    print("Working!!")
    if love.keyboard.isDown("2") then
        Scene_Manager.Load(MainMenu)
    end
end

return TestScene