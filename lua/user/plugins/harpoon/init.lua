return {
  'ThePrimeagen/harpoon',
  event = 'VeryLazy',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = function()
    local wk = require('which-key')
    local hpm = require('harpoon.mark')
    local hpu = require('harpoon.ui')

    local nav = function(index)
      return function()
        hpu.nav_file(index)
      end
    end

    wk.register({
      [',l'] = { hpm.add_file, 'Harpoon Add File' },
      [',L'] = { hpu.toggle_quick_menu, 'Harpoon Toggle Menu' },
      ['<c-1>'] = { nav(1), 'Harpoon Jump to 1st' },
      ['<c-2>'] = { nav(2), 'Harpoon Jump to 2nd' },
      ['<c-3>'] = { nav(3), 'Harpoon Jump to 3rd' },
      ['<c-4>'] = { nav(4), 'Harpoon Jump to 4th' },
    })

    return {
      global_settings = {
        -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
        save_on_toggle = false,

        -- saves the harpoon file upon every change. disabling is unrecommended.
        save_on_change = true,

        -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
        enter_on_sendcmd = false,

        -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
        tmux_autoclose_windows = false,

        -- filetypes that you want to prevent from adding to the harpoon list menu.
        excluded_filetypes = { "harpoon" },

        -- set marks specific to each git branch inside git repository
        mark_branch = false,

        -- enable tabline with harpoon marks
        tabline = false,
        tabline_prefix = "   ",
        tabline_suffix = "   ",
      }
    }
  end
}