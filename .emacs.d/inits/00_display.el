(defface hlline-face
  '((((class color)
      (background dark))
     (:background "dark slate gray"))
    (((class color)
      (background light))
     (:background  "#98FB98"))
    (t
     ()))
  "*Face used by hl-line.")
(setq hl-line-face 'hlline-face)
(global-hl-line-mode)

(require 'linum)
(global-linum-mode t)

;; 対応する括弧を光らせる。
(show-paren-mode t)

;;; スクロールバー消す
;;(set-scroll-bar-mode 'nil)
