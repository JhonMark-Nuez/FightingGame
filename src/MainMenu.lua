MainMenu = {}
require('src/scenes/TestScene')

MainMenu.Selection = {}
MainMenu.Selection.current = 1
MainMenu.Selection.x = 95
MainMenu.Selection.y = 100

function MainMenu.Draw()
    love.graphics.rectangle('line', MainMenu.Selection.x, MainMenu.Selection.y - 13, 100, 40)

    for i = 1, 3 do
        local button_txt = "test"
        if i == 1 then
            button_txt = "PLAY"
        elseif i == 2 then
            button_txt = "OPTIONS"
        elseif i == 3 then
            button_txt = "EXIT"
        end
        love.graphics.print(button_txt, 100, 50 * i + 50)
    end

end

function MainMenu.Update(dt)
    if MainMenu.Selection.current == 1 then
        MainMenu.Selection.y = 100
    elseif MainMenu.Selection.current == 2 then
        MainMenu.Selection.y = 150
    elseif MainMenu.Selection.current == 3 then
        MainMenu.Selection.y = 200
    end

    if MainMenu.Selection.current < 1 then
        MainMenu.Selection.current = 3
    elseif MainMenu.Selection.current > 3 then
        MainMenu.Selection.current = 1
    end

    function love.keypressed(key)
        if key == "down" then
            MainMenu.Selection.current = MainMenu.Selection.current + 1
        end
        if key == "up" then
            MainMenu.Selection.current = MainMenu.Selection.current - 1
        end
        -- if key == ""
    end
end


return MainMenu