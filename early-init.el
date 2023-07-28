;; hide titlebar
(add-to-list 'default-frame-alist '(undecorated . t))
;; keep separate package directories per major/minor version
(let ((path (format "~/.emacs.d/elpa-%s-%s" emacs-major-version emacs-minor-version)))
  (if (file-accessible-directory-p path)
      (setq package-user-dir path)))
