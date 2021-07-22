-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/jack/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/jack/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/jack/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/jack/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/jack/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  Colorizer = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22core.iv-colorizer\frequire\0" },
    loaded = true,
    path = "/home/jack/.local/share/nvim/site/pack/packer/start/Colorizer"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/jack/.local/share/nvim/site/pack/packer/start/coc.nvim"
  },
  ["ctrlp.vim"] = {
    loaded = true,
    path = "/home/jack/.local/share/nvim/site/pack/packer/start/ctrlp.vim"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22core.iv-dashboard\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/jack/.local/share/nvim/site/pack/packer/opt/dashboard-nvim"
  },
  ["goyo.vim"] = {
    loaded = true,
    path = "/home/jack/.local/share/nvim/site/pack/packer/start/goyo.vim"
  },
  ["i3config.vim"] = {
    loaded = true,
    path = "/home/jack/.local/share/nvim/site/pack/packer/start/i3config.vim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/jack/.local/share/nvim/site/pack/packer/start/nerdcommenter"
  },
  ["nord-vim"] = {
    loaded = true,
    path = "/home/jack/.local/share/nvim/site/pack/packer/start/nord-vim"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23core.iv-bufferline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/jack/.local/share/nvim/site/pack/packer/opt/nvim-bufferline.lua"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21core.iv-nvimtree\frequire\0" },
    loaded = true,
    path = "/home/jack/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/jack/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/jack/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/jack/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/jack/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/jack/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/jack/.local/share/nvim/site/pack/packer/start/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/home/jack/.local/share/nvim/site/pack/packer/start/vim-airline-themes"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/jack/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-multiple-cursors"] = {
    loaded = true,
    path = "/home/jack/.local/share/nvim/site/pack/packer/start/vim-multiple-cursors"
  },
  ["vim-mundo"] = {
    loaded = true,
    path = "/home/jack/.local/share/nvim/site/pack/packer/start/vim-mundo"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/home/jack/.local/share/nvim/site/pack/packer/start/vim-polyglot"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/jack/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-terminal"] = {
    loaded = true,
    path = "/home/jack/.local/share/nvim/site/pack/packer/start/vim-terminal"
  },
  vimwiki = {
    loaded = true,
    path = "/home/jack/.local/share/nvim/site/pack/packer/start/vimwiki"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21core.iv-nvimtree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: Colorizer
time([[Config for Colorizer]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22core.iv-colorizer\frequire\0", "config", "Colorizer")
time([[Config for Colorizer]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'dashboard-nvim', 'nvim-bufferline.lua'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end