
(setq visible-bell t)
(setq ring-bell-function 'ignore)

;; バックアップファイルを作らない
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq make-backup-files nil)
(setq create-lockfiles nil)
;; 終了時にオートセーブファイルを消す
(setq delete-auto-save-files t)
;; ツールバーを消す
(tool-bar-mode 0)
;;スタートアップページを表示しない
(setq inhibit-startup-message t)
;;ファイルを開くときに大文字小文字の違いを無視
(setq read-buffer-completion-ignore-case t)    ;; バッファ名
(setq read-file-name-completion-ignore-case t) ;; ファイル名
;; C-k で行末の改行も消去
(setq kill-whole-line t)
;;コンパイル画面でスクロールする
;;(setq compilation-scroll-output t)
;;対応する括弧を挿入
(defun electric-pair ()
  "Insert character pair without sournding spaces"
  (interactive)
  (let (parens-require-spaces)
    (insert-pair)))
;; C-x bでミニバッファにバッファ候補を表示
(iswitchb-mode 1)
(iswitchb-default-keybindings)
