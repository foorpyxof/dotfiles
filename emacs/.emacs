;; -*- lexical-binding: nil; -*-

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("b0cedf3c6d8fbbf65934e2045dddacff0a031992f2f389215adcb0ca741347c3"
     "e13beeb34b932f309fb2c360a04a460821ca99fe58f69e65557d6c1b10ba18c7"
     default))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(batppuccin company elcord format-all magit markdown-mode markdownfmt
                multiple-cursors phi-search phi-search-dired
                phi-search-mc typst-preview typst-ts-mode yaml
                yaml-mode yasnippet yasnippet-classic-snippets)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(dolist (config-file (file-expand-wildcards "~/.config/emacs/*.el"))
  (load-file config-file)
)

(elcord-mode)
;; (add-hook 'prog-mode-hook 'format-all-mode)
(put 'downcase-region 'disabled nil)

(setq elcord-display-elapsed nil)
(setq elcord-idle-message "emaccing it")
(setq elcord-quiet t)
(setq elcord-refresh-rate 2)
(setq elcord-use-major-mode-as-main-icon t)
