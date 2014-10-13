;; # Load bindings config
(live-load-config-file "bindings.el")

(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . js2-mode))

(require 'css-mode)
(add-to-list 'auto-mode-alist '("\\.less\\'" . css-mode))

;; # WebMode
(live-load-config-file "web-mode.el")
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(defun web-mode-hook ()
  "Hooks for Web mode."
  (local-set-key (kbd "RET") 'newline-and-indent)
  (setq web-mode-script-padding 0)
  (setq web-mode-style-padding 0))

(add-hook 'web-mode-hook  'web-mode-hook)

;; # Molokai theme
(live-load-config-file "color-theme-molokai.el")
(color-theme-molokai)

;; # Js2Mode
(defun js2-mode-hook ()
  (setq js2-basic-offset 2)
  (setq tab-width 2))

(add-hook 'js2-mode-hook  'js2-mode-hook)

;; # General

;; If using GUI restore session
(if window-system
  (desktop-save-mode t))

;; Larger font
(live-set-default-darwin-font "Menlo-14")

;; No welcome message
(setq initial-scratch-message "")

;; Disable emacs live font animation
(setq live-disable-zone t)

;; Hide messages buffer
(setq message-log-max nil)
(kill-buffer "*Messages*")

;; Hide compile log
(kill-buffer "*Compile-Log*")
