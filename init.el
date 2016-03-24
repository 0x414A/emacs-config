
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)

;; Paths
(add-to-list 'load-path "~/.emacs.d/settings")

;; Settings
(load "settings.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
	("99953b61ecd4c3e414a177934e888ce9ee12782bbaf2125ec2385d5fd732cbc2" "d8f76414f8f2dcb045a37eb155bfaa2e1d17b6573ed43fb1d18b936febc7bbc2" "eed08a0a26717add8c52c30c90c489d8830c0a1eb6e8b92706065d61507b1fa3" default)))
 '(package-selected-packages
   (quote
	(ujelly-theme zenburn-theme yaml-mode web-mode web spacemacs-theme spaceline spacegray-theme smartparens seti-theme scss-mode rust-mode rspec-mode robe rbenv python-mode pkgbuild-mode pallet noctilux-theme neotree monky markdown-mode magit lua-mode julia-mode js2-mode indent-guide haskell-mode flx-ido fiplr exec-path-from-shell evil-leader evil-escape enh-ruby-mode dockerfile-mode deft cython-mode coffee-mode base16-theme auto-complete ag))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
