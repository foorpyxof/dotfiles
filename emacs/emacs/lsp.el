;; -*- lexical-binding: nil; -*-

;; eglot
(require 'eglot)
(add-to-list 'eglot-stay-out-of 'font-lock)

;; company
(global-company-mode)

;; format-all
(setq format-all-formatters
      '(("C" (clang-format))))
