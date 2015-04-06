;; ---- keys --------------------------------------------------------

; arrows (ALT)
;       i
;    j  k  l
(global-unset-key (kbd "M-k"))
(global-unset-key (kbd "M-l"))
(global-unset-key (kbd "M-j"))
(global-unset-key (kbd "M-i"))
(global-set-key (kbd "M-k") 'next-line)
(global-set-key (kbd "M-l") 'forward-char)
(global-set-key (kbd "M-j") 'left-char)
(global-set-key (kbd "M-i") 'previous-line)

; quick moves (ALT+SHIFT)
;         i
;      j  k  l
(global-unset-key (kbd "M-K"))
(global-unset-key (kbd "M-L"))
(global-unset-key (kbd "M-J"))
(global-unset-key (kbd "M-I"))
(global-set-key (kbd "M-I") 'scroll-down-command)
(global-set-key (kbd "M-K") 'scroll-up-command)
(global-set-key (kbd "M-L") 'move-end-of-line)
(global-set-key (kbd "M-J") 'move-beginning-of-line)


; very quick moves (ALT)
;    u     o

(global-unset-key (kbd "M-u"))
(global-unset-key (kbd "M-o"))
(global-set-key (kbd "M-o") 'right-word)
(global-set-key (kbd "M-u") 'left-word)

;; Editing
;;
;; Delete
(global-unset-key (kbd "M-f"))
(global-set-key (kbd "M-f") 'delete-forward-char)
 
;; Backspace
(global-unset-key (kbd "M-d"))
(global-set-key (kbd "M-d") 'delete-backward-char)
 
;; Enter
(global-unset-key (kbd "M-n"))
(global-unset-key (kbd "M-m"))
(global-set-key (kbd "M-m") 'Custom-newline)
(global-set-key (kbd "M-n") 'Custom-newline)
;(global-set-key (kbd "M-n") 'reindent-then-newline-and-indent)

 
;; select
(global-unset-key (kbd "M-SPC"))
(global-set-key (kbd "M-SPC") 'set-mark-command)
 
;; copy
(global-unset-key (kbd "M-c"))
(global-set-key (kbd "M-c") 'kill-ring-save)
 
;; cut
(global-unset-key (kbd "M-x"))
(global-set-key (kbd "M-x") 'kill-region)
 
;; delete line
(global-unset-key (kbd "M-y"))
(global-set-key (kbd "M-y") 'kill-whole-line)

;; insert-paste
(global-unset-key (kbd "M-v"))
(global-set-key (kbd "M-v") 'yank)
 
;; undo
(global-unset-key (kbd "M-z"))
(global-set-key (kbd "M-z") 'undo)
 
;; save file
(global-unset-key (kbd "M-s"))
(global-set-key (kbd "M-s") 'save-buffer)
 
;; open
(global-unset-key (kbd "C-o"))
(global-set-key (kbd "C-o") 'find-file)
 
;; execute command
(global-unset-key (kbd "<f5>"))
(global-set-key (kbd "<f5>") 'execute-extended-command) 

; plugin bs on Alt+b - list of open buffers
(require 'bs)
(setq bs-configurations
      '(("files" "^\\*scratch\\*" nil nil bs-visits-non-file bs-sort-buffer-interns-are-last)))
(global-set-key (kbd "M-b") 'bs-show)
; list all buffers
(global-unset-key (kbd "C-b"))
(global-set-key (kbd "C-b") 'list-buffers) 

;; move by buffers
;; next buffer
(global-unset-key (kbd "M-w"))
(global-set-key (kbd "M-w") 'next-buffer)

 

;;------------------------------------------ WINDOWS (WIN key)
;
(global-unset-key (kbd "s-1"))
(global-unset-key (kbd "s-2"))
(global-unset-key (kbd "s-3"))
(global-unset-key (kbd "s-0"))
(global-set-key (kbd "s-1") 'delete-other-windows)
(global-set-key (kbd "s-2") 'split-window-below)
(global-set-key (kbd "s-3") 'split-window-right)
(global-set-key (kbd "s-0") 'delete-window)

;; change window size (CTRL+shift) 
(defun my-enlarge-vert ()
(interactive)
(enlarge-window 2))
 
(defun my-shrink-vert ()
(interactive)
(enlarge-window -2))
 
(defun my-enlarge-horz ()
(interactive)
(enlarge-window-horizontally 2))
 
(defun my-shrink-horz ()
(interactive)
(enlarge-window-horizontally -2))
 
(global-unset-key (kbd "s-k"))
(global-set-key (kbd "s-k") 'my-shrink-vert)
(global-unset-key (kbd "s-i"))
(global-set-key (kbd "s-i") 'my-enlarge-vert)
(global-unset-key (kbd "s-j"))
(global-set-key (kbd "s-j") 'my-shrink-horz)
(global-unset-key (kbd "s-l"))
(global-set-key (kbd "s-l") 'my-enlarge-horz) 

;; next window
(global-unset-key (kbd "s-w"))
(global-set-key (kbd "s-w") 'other-window)

;; C-s и C-r привязаны к поиску по регэкспу вперёд и назад. C-M-s и C-M-r ищут просто текст, без регекспов
