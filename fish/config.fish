set -U EDITOR vim
set -U TERM xterm-256color 
set -U VDPAU_DRIVER va_gl

set -l tmp_path $HOME/.local/bin/ $HOME/.cabal/bin/

function in_path
    if test (count $argv) -gt 0
        set -l p $argv[1]
        for var in $PATH
            if test "$p" = "$var"
                return 0
            end
        end
    end
    return 1
end

# add to $PATH
for i in $tmp_path
    in_path $i
    if not test $status -eq 0
        set PATH $i $PATH
    end
end


function ls 
    command ls -a -G $argv
end

# for Nix
function fish
    command bash -cl fish $argv
end

# instead display manager
if test (tty) = "/dev/tty1"
  startx
end



