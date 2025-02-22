local platform = require('utils.platform')

local options = {
    default_prog = {},
    launch_menu = {},
}

if platform.is_win then -- 如果是windows系统
    options.default_prog = { 'nu' }
    options.launch_menu = {
        { label = 'NuShell',        args = { 'nu' } },
        {
            label = 'Git Bash',
            args = { 'D:\\Git\\Git\\bin\\bash.exe', '-l' },
        },
        { label = 'PowerShell',     args = { 'powershell' } },
        { label = 'Command Prompt', args = { 'cmd' } },
        --   { label = 'Msys2', args = { 'ucrt64.cmd' } },
    }
elseif platform.is_mac then -- 如果是mac系统
    options.default_prog = { '/opt/homebrew/bin/fish', '-l' }
    options.launch_menu = {
        { label = 'Fish',    args = { '/opt/homebrew/bin/fish', '-l' } },
        { label = 'Bash',    args = { 'bash', '-l' } },
        { label = 'Nushell', args = { '/opt/homebrew/bin/nu', '-l' } },
        { label = 'Zsh',     args = { 'zsh', '-l' } },
    }
elseif platform.is_linux then -- 如果是linux系统
    options.default_prog = { 'bash', '-l' }
    options.launch_menu = {
        { label = 'Zsh',  args = { 'zsh', '-l' } },
        { label = 'Bash', args = { 'bash', '-l' } },
    }
end

return options
