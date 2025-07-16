;; line numbers
(display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)

;; disable the fucky wucky UI elements
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(display-splash-screen 0)
(display-startup-screen 0)

;; le splash screen
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
