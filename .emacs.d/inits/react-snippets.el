(require 'yasnippet)

(defvar react-snippets-root
  (file-name-directory (or load-file-name (buffer-file-name))))

;;;###autoload
(defun react-snippets-initialize ()
  (let ((snippets-dir (expand-file-name "snippets" react-snippets-root)))
    (when (boundp 'yas-snippet-dirs)
      (add-to-list 'yas-snippet-dirs snippets-dir t))
    (yas/load-directory snippets-dir)))

;;;###autoload
(eval-after-load 'yasnippet
  '(react-snippets-initialize))

(provide 'react-snippets)
