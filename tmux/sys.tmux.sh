tmux source-file ~/.tmux.conf
tmux new-window -n sys
tmux split-window -v -p 40 -t sys
tmux select-pane -t 1
tmux split-window -h -t sys
tmux select-pane -t 0
tmux send-keys 'htop' Enter
tmux select-pane -t 1
tmux send-keys 'ncdu' Enter
tmux select-pane -t 2
