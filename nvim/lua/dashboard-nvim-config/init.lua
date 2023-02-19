require('dashboard').setup{
  theme='doom',
  config = {
    header = {
[[=================     ===============     ===============   ========  ========]],
[[\\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //]],
[[||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||]],
[[|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||]],
[[||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||]],
[[|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||]],
[[||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||]],
[[|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||]],
[[||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||]],
[[||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||]],
[[||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||]],
[[||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||]],
[[||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||]],
[[||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||]],
[[||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||]],
[[||.=='    _-'                                                     `' |  /==.||]],
[[=='    _-'                                                            \/   `==]],
[[\   _-'                                                                `-_   /]],
[[`''                                                                      ``']],
 },
    center = {
      {
        icon = ' ',
        icon_hl = 'Title',
        desc = ' Find File          ',
        desc_hl = 'String',
        key = 'a',
        key_hl = 'Number',
        action = 'Telescope find_files'
      },
      {
        icon = ' ',
        desc = ' Search Text        ',
        key = 'b',
        icon_hl = 'Title',
        desc_hl = 'String',
        key_hl = 'Number',
        action = 'Telescope live_grep'
      },
      {
        icon = ' ',
        desc = ' Recent files       ',
        key = 'c',
        icon_hl = 'Title',
        desc_hl = 'String',
        key_hl = 'Number',
        action = 'Telescope oldfiles'
      },
      {
        icon = ' ',
        desc = ' Config             ',
        key = 'e',
        icon_hl = 'Title',
        desc_hl = 'String',
        key_hl = 'Number',
        action = 'edit ~/.config/nvim/init.lua'
      }
    },
    footer = {'Whatever happens, happens 󱓞 '},
  }
}
