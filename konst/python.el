; для включения:
; установка jedi - pip install rope_py3k
; pyflake  -- pip install pyflake
; pyvenv-workon

(starter-kit-load "python")

; jedi  + pyvenv
(starter-kit-install-if-needed 'jedi 'pyvenv 'flycheck 'flycheck-pyflakes)

(pyvenv-mode 1)

;;; jedi

(add-hook 'python-mode-hook 'jedi:ac-setup)
(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'auto-complete-mode)

;; pyflake
(require 'flycheck-pyflakes)
(add-hook 'python-mode-hook 'flycheck-mode)
