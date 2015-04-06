(starter-kit-load "python")

; jedi  + pyvenv
(starter-kit-install-if-needed 'jedi 'pyvenv)

; для включения:
; установка jedi - pip install rope_py3k
; pyvenv-workon
; jedi-mode
(pyvenv-mode 1)

;;; Require

(autoload 'jedi:setup "jedi" nil t)
(autoload 'jedi:ac-setup "jedi" nil t)
(autoload 'jedi:tooltip-method "jedi" nil t)

;;; Code:

(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'auto-complete-mode)
