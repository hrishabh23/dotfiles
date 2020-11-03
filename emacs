;; EMACS Configuration File
;; Author: Hrishabh Rajput

(setq user-full-name "Hrishabh Rajput"
      user-mail-address "rajputhrishabh@gmail.com")

;; Load Custom Theme
;(load-file "~/.emacs.d/elpa/monokai-pro-theme-20200525.1430/monokai-pro-theme.el")

;; Font Config
(set-frame-font "Source Code Pro Bold 11" nil t)

;; Disable clutter
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(blink-cursor-mode -1)
(tooltip-mode -1)

;; Turn on highlights and line numbers
(global-hl-line-mode +1)
(line-number-mode t)
(global-display-line-numbers-mode 1)
(column-number-mode t)
(size-indication-mode t)

;; Disable Startup Screen
(setq inhibit-startup-screen t)

;; Free some space on the sides
(set-fringe-mode 0)

;; Tab is 4 characters wide
(setq-default tab-width 4)
;; Insert spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; Fix scrolling in Emacs
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

;; Fix trailing whitespaces when saving
(add-hook 'before-save-hook 'whitespace-cleanup)

;; Cleaner backup files
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Enable visual bell
(setq visible-bell t)

;; Add MELPA Repository
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(monokai-pro))
 '(custom-safe-themes
   '("5846b39f2171d620c45ee31409350c1ccaddebd3f88ac19894ae15db9ef23035" default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
