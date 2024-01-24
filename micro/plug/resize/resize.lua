local micro = import("micro")
local config = import("micro/config")
local fmt = import("fmt")

function init()
        config.MakeCommand("grow_X", paneGrowX, config.NoComplete)
        config.MakeCommand("shrink_X", paneShrinkX, config.NoComplete)
        config.MakeCommand("grow_Y", paneGrowY, config.NoComplete)
        config.MakeCommand("shrink_Y", paneShrinkY, config.NoComplete)

        config.TryBindKey("Alt-A", "command:shrink_X", false)
        config.TryBindKey("Alt-D", "command:grow_X", false)
        config.TryBindKey("Alt-W", "command:shrink_Y", false)
        config.TryBindKey("Alt-S", "command:grow_Y", false)
end

function resizeX(bp, n)
        local tab = bp:Tab()
        if #tab.Panes < 2 then
                return
        end
        local id = tab.Panes[2]:ID()
        local node = tab:GetNode(id)
        tab.Panes[2]:ResizePane(node.X + n)
end

function resizeY(bp, n)
        local tab = bp:Tab()
        if #tab.Panes < 2 then
                return
        end
        local id = tab.Panes[2]:ID()
        local node = tab:GetNode(id)
        tab.Panes[2]:ResizePane(node.Y + n)
end

function paneGrowX(bp)
        resizeX(bp, 5)
end

function paneShrinkX(bp)
        resizeX(bp, -5)
end

function paneGrowY(bp)
        resizeY(bp, 5)
end

function paneShrinkY(bp)
        resizeY(bp, -5)
end
