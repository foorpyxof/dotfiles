;; -*- lexical-binding: nil; -*-

;; multiple-cursors

(keymap-global-set "C-S-m" 'mc/mark-more-like-this-extended)
(keymap-global-set "C-S-j" 'mc/mark-next-lines)
(keymap-global-set "C-S-k" 'mc/mark-previous-lines)

(keymap-global-set "C-S-e" 'mc/mark-next-symbol-like-this)
(keymap-global-set "C-S-a" 'mc/mark-previous-symbol-like-this)
