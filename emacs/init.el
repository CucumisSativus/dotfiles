;; global variables
(setq
 inhibit-startup-screen t
 create-lockfiles nil
 make-backup-files nil
 column-number-mode t
 scroll-error-top-bottom t
 show-paren-delay 0.5
 use-package-always-ensure t
 sentence-end-double-space nil)

;; buffer local variables
(setq-default
 indent-tabs-mode nil
 tab-width 2
 c-basic-offset 2)

;; modes
(electric-indent-mode 0)

;; global keybindings
(global-unset-key (kbd "C-z"))

;; the package manager
(require 'package)
(setq
 package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                    ("org" . "http://orgmode.org/elpa/")
                    ("melpa" . "http://melpa.org/packages/")
                    ("melpa-stable" . "http://stable.melpa.org/packages/"))
 package-archive-priorities '(("melpa-stable" . 1)))

(package-initialize)
;; line number
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))
;; packages
(when (not package-archive-contents)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
;; evil
(use-package evil
  :demand)
(require 'evil)
(evil-mode 1)

;; neo tree
(use-package neotree
  :pin melpa-stable)
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; solarized
(use-package solarized-theme
   :pin melpa-stable)
(require 'solarized-theme)

;; haskell mode
(use-package haskell-mode
   :pin melpa-stable)
(require 'haskell-mode)
;; line numbers
(setq global-linum-mode t)

;; clipboard
(setq x-select-enable-clipboard t)
;; syntax highlightning
(global-font-lock-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (rainbow-blocks rust-mode haskell-mode use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
