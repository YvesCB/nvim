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
local package_path_str = "C:\\Users\\Yves\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\Yves\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\Yves\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\Yves\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\Yves\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
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
  ["auto-pairs"] = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["lightline.vim"] = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lightline.vim",
    url = "https://github.com/itchyny/lightline.vim"
  },
  neoformat = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neoformat",
    url = "https://github.com/sbdchd/neoformat"
  },
  neoterm = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neoterm",
    url = "https://github.com/kassio/neoterm"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rust.vim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\rust.vim",
    url = "https://github.com/rust-lang/rust.vim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-code-dark"] = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-code-dark",
    url = "https://github.com/tomasiser/vim-code-dark"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gitbranch"] = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-gitbranch",
    url = "https://github.com/itchyny/vim-gitbranch"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-highlightedyank"] = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-highlightedyank",
    url = "https://github.com/machakann/vim-highlightedyank"
  },
  ["vim-javascript"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-javascript",
    url = "https://github.com/pangloss/vim-javascript"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-maximizer",
    url = "https://github.com/szw/vim-maximizer"
  },
  ["vim-multiple-cursors"] = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-multiple-cursors",
    url = "https://github.com/terryma/vim-multiple-cursors"
  },
  ["vim-ragtag"] = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-ragtag",
    url = "https://github.com/tpope/vim-ragtag"
  },
  ["vim-sneak"] = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-sneak",
    url = "https://github.com/justinmk/vim-sneak"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "C:\\Users\\Yves\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType rust ++once lua require("packer.load")({'rust.vim'}, { ft = "rust" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'vim-javascript'}, { ft = "javascript" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: C:\Users\Yves\AppData\Local\nvim-data\site\pack\packer\opt\vim-javascript\ftdetect\flow.vim]], true)
vim.cmd [[source C:\Users\Yves\AppData\Local\nvim-data\site\pack\packer\opt\vim-javascript\ftdetect\flow.vim]]
time([[Sourcing ftdetect script at: C:\Users\Yves\AppData\Local\nvim-data\site\pack\packer\opt\vim-javascript\ftdetect\flow.vim]], false)
time([[Sourcing ftdetect script at: C:\Users\Yves\AppData\Local\nvim-data\site\pack\packer\opt\vim-javascript\ftdetect\javascript.vim]], true)
vim.cmd [[source C:\Users\Yves\AppData\Local\nvim-data\site\pack\packer\opt\vim-javascript\ftdetect\javascript.vim]]
time([[Sourcing ftdetect script at: C:\Users\Yves\AppData\Local\nvim-data\site\pack\packer\opt\vim-javascript\ftdetect\javascript.vim]], false)
time([[Sourcing ftdetect script at: C:\Users\Yves\AppData\Local\nvim-data\site\pack\packer\opt\rust.vim\ftdetect\rust.vim]], true)
vim.cmd [[source C:\Users\Yves\AppData\Local\nvim-data\site\pack\packer\opt\rust.vim\ftdetect\rust.vim]]
time([[Sourcing ftdetect script at: C:\Users\Yves\AppData\Local\nvim-data\site\pack\packer\opt\rust.vim\ftdetect\rust.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
