

(require 'package)
(setq package-user-dir (locate-user-emacs-file "elisp/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")
 (recentf-mode 1) 
(put 'upcase-region 'disabled nil)
