unbind-key -n C-a
set -g prefix ^A
set -g prefix2 F12
bind a send-prefix
# Pane navigation with hjkl
bind-key -n M-h select-pane -L
bind-key -n M-j select-pane -D
bind-key -n M-k select-pane -U
bind-key -n M-l select-pane -R
bind-key -n M-H previous-window
bind-key -n M-L next-window
