local gears = require("gears")
local lain  = require("lain") local awful = require("awful") local wibox = require("wibox") local naughty = require("naughty")
local dpi   = require("beautiful.xresources").apply_dpi

local os = os
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility
local markup = lain.util.markup

-- ------------------------------------
--       _____     __           
--      / ___/__  / /__  _______
--     / /__/ _ \/ / _ \/ __/_-<
--     \___/\___/_/\___/_/ /___/
--                          
-- -- -- -- -- -- -- -- -- -- -- -- --

local colors                                    = {}
colors.base                                     = "#1e1e2e"
colors.surface                                  = "#313244"
colors.text                                     = "#cdd6f4"
colors.rosewater                                = "#f5e0dc"
colors.flamingo                                 = "#f2cdcd"
colors.pink                                     = "#f5c2e7"
colors.mauve                                    = "#cba6f7"
colors.red                                      = "#f38ba8"
colors.maroon                                   = "#eba0ac"
colors.peach                                    = "#fab387"
colors.yellow                                   = "#f9e2af"
colors.green                                    = "#a6e3a1"
colors.teal                                     = "#94e2d5"
colors.sky                                      = "#89dceb"
colors.sapphire                                 = "#74c7ec"
colors.blue                                     = "#89b4fa"
colors.lavender                                 = "#b4befe"

--------------------------------------------------------------

local theme                                     = {}
theme.default_dir                               = require("awful.util").get_themes_dir() .. "default"
theme.dir                                       = os.getenv("HOME") .. "/.config/awesome/themes/rainbow"
theme.wallpaper                                 = os.getenv("HOME") .. "/Pictures/Wallpapers/mountains.jpg"
theme.font                                      = "Iosevka Nerd Font 10.5"
theme.fg_normal                                 = colors.text
theme.fg_focus                                  = colors.text
theme.fg_urgent                                 = colors.base
theme.bg_normal                                 = colors.base
theme.bg_focus                                  = colors.surface
theme.bg_urgent                                 = colors.peach
theme.border_width                              = dpi(2)
theme.border_normal                             = colors.base
theme.border_focus                              = colors.surface
theme.taglist_fg_focus                          = colors.base
theme.taglist_bg_focus                          = colors.peach
theme.notification_urgent_bg                    = colors.red
theme.menu_height                               = dpi(25)
theme.menu_width                                = dpi(140)
theme.ocol                                      = "<span color='" .. theme.fg_normal .. "'>"
theme.tasklist_sticky                           = theme.ocol .. "  </span>"
theme.tasklist_ontop                            = theme.ocol .. "󱞬  </span>"
theme.tasklist_floating                         = theme.ocol .. "  </span>"
theme.tasklist_maximized_horizontal             = theme.ocol .. "  </span>"
theme.tasklist_maximized_vertical               = ""
theme.tasklist_disable_icon                     = true
theme.awesome_icon                              = theme.dir .."/icons/awesome.png"
theme.menu_submenu                         = "  "
theme.taglist_squares_sel                       = theme.dir .. "/icons/square_sel.png"
theme.taglist_squares_unsel                     = theme.dir .. "/icons/square_unsel.png"
theme.useless_gap                               = dpi(10)
--theme.layout_txt_tile                           = "[t]"
--theme.layout_txt_tileleft                       = "[l]"
--theme.layout_txt_tilebottom                     = "[b]"
--theme.layout_txt_tiletop                        = "[tt]"
--theme.layout_txt_fairv                          = "[fv]"
--theme.layout_txt_fairh                          = "[fh]"
--theme.layout_txt_spiral                         = "[s]"
--theme.layout_txt_dwindle                        = "[d]"
--theme.layout_txt_max                            = "[m]"
--theme.layout_txt_fullscreen                     = "[F]"
--theme.layout_txt_magnifier                      = "[M]"
--theme.layout_txt_floating                       = "[*]"
theme.titlebar_close_button_normal              = theme.default_dir.."/titlebar/close_normal.png"
theme.titlebar_close_button_focus               = theme.default_dir.."/titlebar/close_focus.png"
theme.titlebar_minimize_button_normal           = theme.default_dir.."/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus            = theme.default_dir.."/titlebar/minimize_focus.png"
theme.titlebar_ontop_button_normal_inactive     = theme.default_dir.."/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive      = theme.default_dir.."/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active       = theme.default_dir.."/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active        = theme.default_dir.."/titlebar/ontop_focus_active.png"
theme.titlebar_sticky_button_normal_inactive    = theme.default_dir.."/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive     = theme.default_dir.."/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active      = theme.default_dir.."/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active       = theme.default_dir.."/titlebar/sticky_focus_active.png"
theme.titlebar_floating_button_normal_inactive  = theme.default_dir.."/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive   = theme.default_dir.."/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active    = theme.default_dir.."/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active     = theme.default_dir.."/titlebar/floating_focus_active.png"
theme.titlebar_maximized_button_normal_inactive = theme.default_dir.."/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = theme.default_dir.."/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active   = theme.default_dir.."/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active    = theme.default_dir.."/titlebar/maximized_focus_active.png"

-- lain related
theme.layout_txt_cascade                        = "[cascade]"
theme.layout_txt_cascadetile                    = "[cascadetile]"
theme.layout_txt_centerwork                     = "[centerwork]"
theme.layout_txt_termfair                       = "[termfair]"
theme.layout_txt_centerfair                     = "[centerfair]"

-- Hotkeys

theme.hotkeys_shape = function(cr, w, h)
    gears.shape.rounded_rect(cr, w, h, 10)
end

theme.hotkeys_modifiers_fg = theme.taglist_bg_focus
theme.hotkeys_bg = theme.bg_normal.."AA";
theme.hotkeys_label_bg = theme.taglist_bg_focus;
theme.hotkeys_border_color = theme.border_focus;
theme.hotkeys_group_margin = dpi(20);

-- Notification
theme.notification_shape = function(cr, w, h)
    gears.shape.rounded_rect(cr, w, h, 10)
end
theme.notification_margin = dpi(10)
naughty.config.defaults.margin = theme.notification_margin
theme.notification_opacity = 0.9
theme.notification_bg = theme.bg_normal.."55"
theme.notification_font = theme.font
theme.notification_spacing = dpi(20)
theme.notification_icon_size = dpi(128)

--------------------------------------------------------------------------
--
--  _      ___    __         __    
-- | | /| / /_/__/ /__ ____ / /____
-- | |/ |/ / / _  / _ `/ -_/ __/_-<
-- |__/|__/_/\_,_/\_, /\__/\__/___/
--               /___/             
--
--

-- Textclock
local mytextclock = wibox.widget.textclock(markup(colors.maroon," ") .. markup(theme.fg_normal," %a %b %d ").. "  " ..markup(colors.lavender," ")..markup(theme.fg_normal, " %H:%M  "))
mytextclock.font = theme.font

-- CPU
local cpuicon = wibox.widget.textbox(markup(colors.sapphire,'  '))
local cpu = lain.widget.cpu({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font,theme.fg_normal, cpu_now.usage .. "% "))
    end
})

-- Weather
local weathericon = wibox.widget.textbox(markup(colors.mauve,'  '))
theme.weather = lain.widget.weather({
    city_id = 2643743, -- placeholder (London)
    notification_preset = { font = theme.font, fg = theme.fg_normal },
    weather_na_markup = markup.fontfg(theme.font, theme.fg_normal, "N/A "),
    settings = function()
        descr = weather_now["weather"][1]["description"]:lower()
        units = math.floor(weather_now["main"]["temp"])
        widget:set_markup(markup.fontfg(theme.font, theme.fg_normal ,descr .. "  " .. markup(colors.green," 󰔏 ") .. units .. "°C "))
    end
})

-- Calendar
theme.cal = lain.widget.cal({
    attach_to = { mytextclock },
    notification_preset = {
        font = theme.font,
        fg   = theme.fg_normal,
        bg   = theme.bg_normal.."55"
    }
})

-- Separators
local first = wibox.widget.textbox(markup.font(theme.font, " "))
local spr   = wibox.widget.textbox(markup.font(theme.font,"  "))

-- Systray
theme.bg_systray = theme.bg_normal
theme.systray_icon_spacing = 5
local my_systray = wibox.widget{
  {
        wibox.widget.systray(),
        left   = 10,
        top    = 2,
        bottom = 2,
        right  = 10,
        widget = wibox.container.margin,
    },
    bg = theme.bg_normal,
    widget     = wibox.container.background,
    shape      = gears.shape.rounded_rect,
    shape_clip = true,
}

--------------------------------------------------------------------------

local function update_txt_layoutbox(s)
    -- Writes a string representation of the current layout in a textbox widget
    local txt_l = theme["layout_txt_" .. awful.layout.getname(awful.layout.get(s))] or ""
    s.mytxtlayoutbox:set_text(txt_l)
end

function theme.at_screen_connect(s)
    -- Quake application
    s.quake = lain.util.quake({ app = awful.util.terminal })

    -- Tags
    awful.tag(awful.util.tagnames, s, awful.layout.layouts[1])

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()

    -- Textual layoutbox
    s.mytxtlayoutbox = wibox.widget.textbox(theme["layout_txt_" .. awful.layout.getname(awful.layout.get(s))])
    awful.tag.attached_connect_signal(s, "property::selected", function () update_txt_layoutbox(s) end)
    awful.tag.attached_connect_signal(s, "property::layout", function () update_txt_layoutbox(s) end)
    s.mytxtlayoutbox:buttons(my_table.join(
                           awful.button({}, 1, function() awful.layout.inc(1) end),
                           awful.button({}, 2, function () awful.layout.set( awful.layout.layouts[1] ) end),
                           awful.button({}, 3, function() awful.layout.inc(-1) end),
                           awful.button({}, 4, function() awful.layout.inc(1) end),
                           awful.button({}, 5, function() awful.layout.inc(-1) end)))

    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons)
    -- Create a tasklist widget
    s.mytasklist = awful.widget.tasklist {
        screen          = s,
        filter          = awful.widget.tasklist.filter.currenttags,
        style           = {
          shape = gears.shape.rounded_bar,
        },
        layout          = {
          spacing = 5,
          layout  = wibox.layout.fixed.horizontal
        },
        -- Notice that there is *NO* wibox.wibox prefix, it is a template,
        -- not a widget instance.
        widget_template = {
            {
                {
                    {
                        {
                            id     = "icon_role",
                            widget = wibox.widget.imagebox,
                        },
                        margins = 2,
                        widget  = wibox.container.margin,
                    },
                    {
                        id     = "text_role",
                        widget = wibox.widget.textbox,
                    },
                    layout = wibox.layout.fixed.horizontal,
                },
                left  = 10,
                right = 13,
                widget = wibox.container.margin
            },
            id     = "background_role",
            widget = wibox.container.background,
        },
      }

---------------------------------------------------------------------
--    _      ___ __           
--   | | /| / (_) /  ___ _____
--   | |/ |/ / / _ \/ _ `/ __/
--   |__/|__/_/_.__/\_,_/_/
--                           

    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top", screen = s, height = dpi(30), bg = theme.bg_normal.."CC", fg = theme.fg_normal })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            first,
            s.mytaglist,
            spr,
            s.mytxtlayoutbox,
            --spr,
            s.mypromptbox,
            spr,
        },
        { -- Middle widgets
            layout = wibox.layout.fixed.horizontal,
            s.mytasklist,
        },
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal, 
            spr,
            weathericon,
            theme.weather.widget,
            spr,
            cpuicon,
            cpu.widget,
            spr,
            mytextclock,
            theme.cal.widget,
            spr,
            my_systray,
        },
    }
end

return theme
