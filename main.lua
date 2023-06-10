function love.load()
    require('src/SceneManager')
    require('src/MainMenu')

    Scene_Manager.Load(MainMenu)
end

function love.update(dt)
    Scene_Manager.Update(dt)
end

function love.draw()
    Scene_Manager.Draw()
end

