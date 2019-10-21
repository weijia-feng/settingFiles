;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (pos-tip fuzzy ac-slime auto-complete-clang auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "DAMA" :slant normal :weight normal :height 180 :width normal)))))


(setq-default c-basic-offset 4)

(setq display-time-world-list '(("Aisa/Tokyo""TOKYO")) )

(add-to-list 'load-path "~/elisp/color-theme-6.6.0")
(require 'color-theme)
(color-theme-initialize)
(color-theme-calm-forest)

;;write in your .emacs.d/init.el
;;----------------------------------------
;;basic customization
(setq inhibit-startup-message t)
(global-linum-mode t)

(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t);;if you have org-mode

(add-to-list 'package-archives
	     '("popkit" . "http://elpa.popkit.org/packages/") t)

(package-initialize)
;;write in your .emacs.d/init.el
;;----------------------------------------
;;ac/auto-complete
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(auto-complete-mode 1)
