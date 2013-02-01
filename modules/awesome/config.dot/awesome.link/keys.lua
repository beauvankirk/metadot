-- Key bindings
globalkeys = awful.util.table.join(root.keys(),
    awful.key({ modkey, "Control" }, "f", function () awful.util.spawn("firefox") end),
    awful.key({ modkey, "Control" }, "v", function () awful.util.spawn("gvim") end),
    awful.key({ modkey, "Control" }, "m", function () awful.util.spawn("terminal mutt") end),
    awful.key({ modkey, "Control" }, "g", function () awful.util.spawn("gimp") end),
    awful.key({ modkey, "Control" }, "i", function () awful.util.spawn("gqview") end),
    awful.key({ modkey, "Control" }, "a", function () awful.util.spawn("audacious") end),
    awful.key({ modkey, "Control" }, "l", function () awful.util.spawn("xlock") end),
    awful.key({ modkey, "Control" }, "s", function () awful.util.spawn("xsuspend") end),
    awful.key({ modkey, "Control" }, "h", function () awful.util.spawn("xhibernate") end),
    awful.key({ modkey, "Control" }, "k", function () awful.util.spawn("kedpm") end),
    awful.key({ modkey, "Control" }, "c", function () awful.util.spawn("chromium-browser") end),
    awful.key({ modkey, "Control" }, "t", function () awful.util.spawn("thunar") end)
    --awful.key({ modkey, "Control" }, "b", function () awful.util.spawn("terminal irssi") end),
)

-- Set keys
root.keys(globalkeys)