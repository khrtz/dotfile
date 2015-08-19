
;;yes-noの選択肢をy-nにする
(fset 'yes-or-no-p 'y-or-n-p)
;;C-kで行全体を削除
(setq kill-whole-line t)
;;ファイルを再読み込み
(defun revert-buffer-no-confirm ()
  "Revert buffer without confirmation."
  (interactive) (revert-buffer t t))

(global-set-key (kbd "C-c C-r") 'revert-buffer-no-confirm)
