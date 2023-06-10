Scene_Manager = {}
Scene_Manager.getName = nil

function Scene_Manager.Load(SceneName)
    Scene_Manager.getName = SceneName
end

function Scene_Manager.Draw()
    Scene_Manager.getName.Draw()
end

function Scene_Manager.Update(dt)
    Scene_Manager.getName.Update(dt)
end


return Scene_Manager