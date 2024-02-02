local dap = require('dap')

-- #############################################################################
-- C
dap.adapters.lldb = {
  type = 'executable',
  command = '/usr/bin/lldb-vscode', -- adjust as needed, must be absolute path
  name = 'lldb'
}

dap.configurations.cpp = {
  {
    name = 'Launch',
    type = 'lldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    runInTerminal = true,
    -- console = "externalTerminal", 
    -- externalTerminal = true,
-- -----------------------------------------------------------------------------
-- Command line arguments
-- Comment toggle either statically defined or dynamically sourced arguments

    --args = {} -- statically defined

    -- snip ====================================================================
    -- https://www.reddit.com/r/neovim/comments/pzm3d8/nvimdap_any_way_to_configure_launch_to_ask_for/
    args = function() -- dynamically defined
    local argument_string = vim.fn.input('Program arguments: ')
    -- local argument_string = vim.fn.input('Program arguments: ', vim.fn.getcwd() .. '/', 'file')
      return vim.fn.split(argument_string, " ", true)
    end,
    -- snip ====================================================================
-- -----------------------------------------------------------------------------
  },
}
dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

-- #############################################################################
-- PYTHON
require('dap-python').setup('~/.virtualenvs/debugpy/bin/python') -- python config is provided by dap-python plugin

-- #############################################################################
-- Open dap-ui automatically
-- https://github.com/rcarriga/nvim-dap-ui/blob/master/README.md
-- perhaps preferrable to move this snippet to dap-ui.lua
--
local dapui = require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
-- #############################################################################
-- BASH
dap.adapters.bashdb = {
  type = 'executable';
  command = vim.fn.stdpath("data") .. '/mason/packages/bash-debug-adapter/bash-debug-adapter';
  name = 'bashdb';
}
dap.configurations.sh = {
  {
    type = 'bashdb';
    request = 'launch';
    name = "Launch file";
    showDebugOutput = true;
    pathBashdb = vim.fn.stdpath("data") .. '/mason/packages/bash-debug-adapter/extension/bashdb_dir/bashdb';
    pathBashdbLib = vim.fn.stdpath("data") .. '/mason/packages/bash-debug-adapter/extension/bashdb_dir';
    trace = true;
    file = "${file}";
    program = "${file}";
    cwd = '${workspaceFolder}';
    pathCat = "cat";
    pathBash = "/bin/bash";
    pathMkfifo = "mkfifo";
    pathPkill = "pkill";
    args = {};
    env = {};
    terminalKind = "integrated";
  }
}
-- #############################################################################
