;; -*- lexical-binding: nil; -*-

;; eglot
(require 'eglot)
(add-to-list 'eglot-stay-out-of 'font-lock)
(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '(typst-ts-mode . ("tinymist" "lsp"))))

;; company
(global-company-mode)

;; format-all
(setq format-all-formatters
      '(("C" (clang-format)) ("C#" (csharpier))))

(setq flymake-show-diagnostics-at-end-of-line t)

;; treesitter
(require 'treesit)
;; (add-to-list 'treesit-language-source-alist
;;              '(typst "https://github.com/uben0/tree-sitter-typst"))
;; (treesit-install-language-grammar 'typst)
