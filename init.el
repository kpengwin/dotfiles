;;;; Emacs config for Kenneth Bruce
;;;; Pieced together from various places

;; Some recommended sane defaults
(setq delete-old-versions -1 )		; delete excess backup versions silently
(setq version-control t )		; use version control
(setq vc-make-backup-files t )		; make backups file even when in version controlled dir
(setq backup-directory-alist `(("." . "~/.emacs.d/backups")) ) ; which directory to put backups file
(setq vc-follow-symlinks t )				       ; don't ask for confirmation when opening symlinked file
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)) ) ;transform backups file name
(setq inhibit-startup-screen t )	; inhibit useless and old-school startup screen
(setq ring-bell-function 'ignore )	; silent bell when you make a mistake
(setq coding-system-for-read 'utf-8 )	; use utf-8 by default
(setq coding-system-for-write 'utf-8 )
(setq sentence-end-double-space nil)	; sentence SHOULD end with only a point.
(setq default-fill-column 80)		; toggle wrapping text at the 80th character
(setq initial-scratch-message "Welcome to Emacs") ; print a default message in the empty scratch buffer opened at startup
(setq mouse-autoselect-window 1)
(setq focus-follows-mouse 1)

;;Other startup commands
(if (display-graphic-p)
    (progn
      (setq initial-frame-alist
            '(
              (tool-bar-lines . 0)
              (width . 212) ; chars
              (height . 60) ; lines
              (left . 50)
              (top . 50)))
      (setq default-frame-alist
            '(
              (tool-bar-lines . 0)
              (width . 212)
              (height . 60)
              (left . 50)
              (top . 50))))
  (progn
    (setq initial-frame-alist '( (tool-bar-lines . 0)))
    (setq default-frame-alist '( (tool-bar-lines . 0)))))
(tool-bar-mode -1)

;;aliases
(defalias 'list-buffers 'ibuffer) ;different interactive buffer option (C-x C-b)

;;custom functions
(defun open-emacs-config ()
  "Open my emacs config for editing"
  (interactive)
  (find-file-other-window user-init-file))

;;fix path for macos
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin:/Library/TeX/texbin"))
(setq exec-path (append exec-path '("/usr/local/bin")))
(setq exec-path (append exec-path '("/Library/TeX/texbin/")))

;;Get our package management up and running
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("org"       . "http://orgmode.org/elpa/")
                         ("gnu"       . "http://elpa.gnu.org/packages/")
                         ("melpa"     . "https://melpa.org/packages/")))
(package-initialize)

;;Bootstrap use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))

;;General is for keybinds
(use-package general :ensure t
  :config
  (general-define-key
   "C-s"     'swiper
   "M-x"     'counsel-M-x
   "C-x b"   'ivy-switch-buffer
   "C-x C-f" 'counsel-find-file)
  (general-define-key :prefix "C-c"
		    "a" 'org-agenda
		    "e" 'evil-mode
		    "p" 'show-paren-mode
		    "k" 'kill-buffer-and-window
		    "cc" 'open-emacs-config
		    "C-f" 'counsel-recentf))


;;abo-abo packages
(use-package counsel :ensure t
  :commands (counsel-M-x))
(use-package swiper :ensure t
  :commands (swiper))
(use-package ivy :ensure t
  :init
  (setq ivy-user-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  :config
  (ivy-mode 1))

;;Helps to figure out what is going on
(use-package which-key :ensure t
  :config
  (which-key-mode))

;;For Lisp coding
(use-package slime :ensure t
  :commands (slime)
  :init
  (setq inferior-lisp-program "/usr/local/bin/sbcl")
  (setq slime-contribs '(slime-fancy)))

;(add-hook 'slime-mode-hook (lambda ()
;			     (define-key slime-mode-map "(" 'electric-pair)
;			     (define-key slime-mode-map "[" 'electric-pair)
;			     (define-key slime-mode-map "{" 'electric-pair)))

(use-package auto-complete :ensure t
  :config
  (ac-config-default))

(use-package ac-slime :ensure t
  :config
  (add-hook 'slime-mode-hook 'set-up-slime-ac)
  (add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
  (eval-after-load "auto-complete"
    '(add-to-list 'ac-modes 'slime-repl-mode)))

;;Because it just makes sense
(use-package evil :ensure t
  :commands (evil-mode))

;;I guess i could be organized
(use-package org :ensure t
  :init
  (setq inhabit-splash-screen t)
  (transient-mark-mode 1)
  (setq org-todo-keywords
	'((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE"))))
(use-package org-bullets :ensure t
  :config (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

;;Pretty handy
(use-package autopair :ensure t
  :init
  (autopair-global-mode 1)
  (show-paren-mode 1))

(setq custom-file (concat user-emacs-directory "/custom.el"))
(load-file custom-file)








;;;; ---------- Stuff below this line is temporary -----------

(use-package try :ensure t)


(use-package ace-window :ensure t
  :init
  (progn
    (global-set-key [remap other-window] 'ace-window)
    (custom-set-faces
     '(aw-leading-char-face
       ((t (:inherit ace-jump-face-foreground :height 3.0)))))))

(use-package smart-mode-line :ensure t
  :config
  (sml/setup))

(use-package smart-mode-line-powerline-theme :ensure t)


(use-package awesome-tab
  :load-path "/Users/kbruce7/.emacs.d/awesome-tab/"
  :config
  (awesome-tab-mode t))
