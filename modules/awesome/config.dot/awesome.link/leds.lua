-- See https://bbs.archlinux.org/viewtopic.php?id=68511
myledbox = widget({ type = "textbox" })

function run_leds()
        local filedescripter = io.popen('leds')
        local value = filedescripter:read()
        filedescripter:close()
        return value
end

mytimer = timer({ timeout = 1 })
mytimer:add_signal("timeout", function() myledbox.text = run_leds() end)
mytimer:start()
