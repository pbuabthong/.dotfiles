tmux source-file ~/.tmux.conf
tmux new-window -n dev
tmux split-window -v -p 10 -t dev
tmux select-pane -t 1
tmux split-window -h -p 30 -t dev
tmux select-pane -t 0
tmux send-keys 'vim' Enter
