(if (file-readable-p "~/.emacs.d/before-init.el")
    (load-file "~/.emacs.d/before-init.el"))

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("org-archive" . "https://orgmode.org/elpa/") t)
(add-to-list 'package-archives
             '("nongnu" . "https://elpa.nongnu.org/nongnu/"))

(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

(unless (package-installed-p 'quelpa)
  (with-temp-buffer
    (url-insert-file-contents "https://raw.githubusercontent.com/quelpa/quelpa/master/quelpa.el")
    (eval-buffer)
    (quelpa-self-upgrade)))

;; use-package
(quelpa '(quelpa-use-package
          :fetcher git
          :url "https://github.com/quelpa/quelpa-use-package.git"))

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
