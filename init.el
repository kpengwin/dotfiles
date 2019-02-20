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
   "C-x C-f" 'counsel-find-file))

(general-define-key :prefix "C-c"
		    "a" 'org-agenda
		    "e" 'evil-mode
		    "p" 'show-paren-mode
		    "k" 'kill-buffer-and-window)

;;abo-abo packages
(use-package counsel :ensure t
  :commands (counsel-M-x))
(use-package swiper :ensure t
  :commands (swiper))
(use-package ivy :ensure t)

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

;;Pretty handy
(use-package autopair :ensure t
  :init
  (autopair-global-mode 1)
  (show-paren-mode 1))

(setq custom-file (concat user-emacs-directory "/custom.el"))
(load-file custom-file)








;;;; ---------- Stuff below this line is temporary -----------

(use-package try :ensure t)

