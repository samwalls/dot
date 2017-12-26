;; SUBLIMITY
(add-to-list 'load-path "~/.dot/emacs/packages/sublimity/")
(require 'sublimity)
(require 'sublimity-map)
(sublimity-mode 1)
(sublimity-map-set-delay nil)
;; END SUBLIMITY

;; GENERAL

(menu-bar-mode -1)
(tool-bar-mode -1)

(defun indent-buffer ()
  "indent current buffer according to major mode"
  (interactive)
  (indent-region (point-min) (point-max)))

(global-set-key (kbd "C-c <tab>") 'indent-buffer)

;; rust config
(add-to-list 'load-path "~/.dot/emacs/modes/rust-mode/")
(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

;; run rustfmt on buffer before save
(add-hook 'before-save-hook #'rust-format-buffer)

;; run rustfmt after C-c <tab>
(add-hook 'rust-mode-hook
	  (lambda ()
	    (local-set-key (kbd "C-c <tab>") #'rust-format-buffer)))

;; END GENERAL

;; THEMES

(setq package-enable-at-startup nil) (package-initialize)
(add-to-list 'custom-theme-load-path "~/.dot/emacs/themes/blackboard-theme")
(add-to-list 'custom-theme-load-path "~/.dot/emacs/themes/carloscuesta-material")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (carloscuesta-material)))
 '(custom-safe-themes
   (quote
    ("aaaa9231a77a2a928f4883c73eaf8f2dab5dc6b5ee5c1f6ff475a30b32e86df5" "4c7a1f0559674bf6d5dd06ec52c8badc5ba6e091f954ea364a020ed702665aa1" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;theme to use
(load-theme 'carloscuesta-material)

;; END THEMES

;; MELPA
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http" "https") "://melpa.org/packages/")))
  (add-to-list 'package-archives (cons "melpa" url) t))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)
;; END MELPA
