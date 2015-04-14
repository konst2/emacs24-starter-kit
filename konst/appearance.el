; выключаем tool-bar
(tool-bar-mode -1)
; выключаем menu-bar
(menu-bar-mode -1)

; номера строк
;(setq linum-format "%d ")
;(global-linum-mode 1)
; только для питона
(defun my-python-mode-hook () 
  (linum-mode 1)) 
(add-hook 'python-mode-hook 'my-python-mode-hook) 

;; F1 включает и отключает меню. Полезно для исследования новых режимов Emacs.
;; C–, C-+ и C-= уменьшают и увеличивают размер шрифта в буфере.

;; отключаем scrool-bar
(scroll-bar-mode -1)

 ;; Show column-number in the mode line
(column-number-mode 1)
