if status is-interactive
    # Commands to run in interactive sessions can go here
    #
    bind \b backward-kill-word
    bind \e\[3\;5~ kill-word
    set -g fish_greeting
end
