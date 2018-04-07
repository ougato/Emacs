
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(when (>= emacs-major-version 24)
    (require 'package)
    (package-initialize)
    (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
    )

(require 'cl)

;; add whatever packages you want here
(defvar zilongshanren/packages '(
				 company
				 monokai-theme
				 hungry-delete
				 ) "Default packages")

(setq package-selected-packages zilongshanren/packages)

(defun zilongshanren/packages-installed-p ()
  (loop for pkg in zilongshanren/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (zilongshanren/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg zilongshanren/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; close tool bar
(tool-bar-mode -1)
;; close scroll bar
(scroll-bar-mode -1)
;; show line number
(global-linum-mode t)
;; F2 to init.el file method
(setq inhibit-splash-screen t)
(defun open-init-file()
    (interactive)
    (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "<f2>") 'open-init-file)
;; complement input
(global-company-mode t)

(setq make-backup-files nil)

(require 'org)

(setq org-src-fontify-natively t)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(delete-selection-mode t)
;; all screen
(setq initial-frame-alist (quote ((fullscreen . maximized))))
;; open file log
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(load-theme 'monokai t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8ed752276957903a270c797c4ab52931199806ccd9f0c3bb77f6f4b9e71b9272" default)))
)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
