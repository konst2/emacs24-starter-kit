; для включения:
; установка jedi
; rope  - pip install rope_py3k
; pyflake  -- pip install pyflake
; jedi  -- pip install jedi
; pip install epc
; pip install argparse

; pyvenv-workon
; jedi:install-server -- in virtual env 1st time - но для правильной работы лучше
; 
; из venv - pip install -U PATH/TO/EMACS-JEDI/
; (setq jedi:server-command '("PATH/TO/jediepcserver.py"))


(starter-kit-load "python")

; jedi  + pyvenv
(starter-kit-install-if-needed 'jedi 'pyvenv 'flycheck 'flycheck-pyflakes)

(pyvenv-mode 1)

;;; jedi

(add-hook 'python-mode-hook 'jedi:ac-setup)
(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'auto-complete-mode)
(setq jedi:complete-on-dot t) 

;; pyflake
(require 'flycheck-pyflakes)
(add-hook 'python-mode-hook 'flycheck-mode)

;; pdb (для работы в shell на emacs 24.x)
;Type M-x cd to change directory to the location of the program you wish 
;to debug. Type M-x pdb. You'll be prompted with Run pdb (like this): pdb. 
;Enter the name of the program (e.g. test.py).
;At the (Pdb) prompt, type help to learn about how to use pdb.
;Alternatively, you can put
;import pdb;pdb.set_trace()
;right inside your program (e.g. test.py). 
;Now type M-x shell to get a shell prompt. When you run your program, 
;you'll be dumped into pdb at the point where pdb.set_trace() is executed.
