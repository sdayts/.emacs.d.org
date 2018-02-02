(if (file-readable-p "~/.emacs.d/before-init.el")
    (load-file "~/.emacs.d/before-init.el"))

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("org-archive" . "https://orgmode.org/elpa/") t)

(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ace-jump-face-foreground ((t (:inherit ace-jump-face-foreground :height 1.0 :foreground "yellow" :background "black"))))
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 6.0)))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (modern-cpp-font-lock ivy helm-grep vlf ace-window org shell-pop zoom-window yasnippet wrap-region whole-line-or-region which-key try transpose-frame swap-buffers rtags multiple-cursors move-text magit helm-projectile helm expand-region iedit dired+ dired-narrow dired-hacks-utils beacon back-button auto-complete ace-jump-mode use-package))))
