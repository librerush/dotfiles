;;;  -*- lexical-binding: t; -*-

(require 'package)

(customize-set-variable 'package-archives
                        `(,@package-archives
                          ("melpa" . "https://melpa.org/packages/")
			  ("org" . "https://orgmode.org/elpa/")
			  ))
(customize-set-variable 'package-enable-at-startup nil)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(use-package tool-bar
  :config
  (tool-bar-mode -1))

(use-package scroll-bar
  :config
  (scroll-bar-mode -1))

(use-package menu-bar
  :config
  (menu-bar-mode -1))

(use-package frame
  :bind
  ("C-z" . nil)
  :hook
  (prog-mode . display-line-numbers-mode))

(use-package mule
  :config
  (prefer-coding-system 'utf-8)
  (set-language-environment "UTF-8")
  (set-terminal-coding-system 'utf-8))

(use-package simple
  :config
  (column-number-mode t)
  (line-number-mode t))

(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn t))

(use-package rainbow-delimiters
  :ensure t
  :hook
  (prog-mode . rainbow-delimiters-mode))

(use-package smartparens
  :ensure t
  :hook ((emacs-lisp-mode . smartparens-mode)
         (scheme-mode . smartparens-mode)
	 (racket-mode . smartparens-mode)
	 (haskell-mode . smartparens-mode)
	 (c-mode . smartparens-mode)
	 (python-mode . smartparens-mode)))

(use-package smart-comment
  :ensure t
  :bind ("M-;" . smart-comment))

(use-package neotree
  :ensure t
  :config
  (global-set-key [f8] 'neotree-toggle))

(use-package git-gutter
  :ensure t
  :config
  (global-git-gutter-mode +1))

(use-package company
  :ensure t
  :hook
  (prog-mode . global-company-mode))

(use-package flycheck
  :ensure t
  :hook
  (prog-mode . global-flycheck-mode))

(use-package anaconda-mode
  :ensure t
  :hook
  ((python-mode . anaconda-mode)
  (python-mode . anaconda-eldoc-mode)))

(use-package company-anaconda
  :ensure t
  :after (company anaconda-mode)
  :no-require t
  :config
  (add-to-list 'company-backends 'company-anaconda))

(use-package geiser
  :ensure t)

(use-package haskell-mode
  :ensure t)

(use-package company-c-headers
  :ensure t
  :after company
  :config
  (add-to-list 'company-backends 'company-c-headers))

(use-package fish-mode
  :ensure t)

(use-package fish-completion
  :ensure t
  :config
  (fish-completion-mode))

(use-package nix-mode
  :ensure t)

(use-package magit
  :ensure t)

(use-package hackernews
  :ensure t)

(use-package lastfm
  :ensure t)

(use-package vuiet
  :ensure t)

;;; init.el ends here
