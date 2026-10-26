;; -*- lexical-binding: nil; -*-

;; keymaps
(keymap-global-set "C-S-c" 'compile)
(keymap-set minibuffer-local-completion-map "SPC" 'minibuffer-next-completion)

(keymap-global-set "C-c C-f" 'format-all-region-or-buffer)
