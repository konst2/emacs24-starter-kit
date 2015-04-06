(starter-kit-load "python")

; jedi  + pyvenv
(starter-kit-install-if-needed 'jedi 'pyvenv)

; для включения:
; установка jedi - pip install rope_py3k
; pyflake  -- pip install pyflake
; pyvenv-workon
; jedi-mode
(pyvenv-mode 1)

;;; Code:

(add-hook 'python-mode-hook 'jedi:ac-setup)
(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'auto-complete-mode)
