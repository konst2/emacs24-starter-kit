; desc and hotkeys on http://web-mode.org/

(starter-kit-install-if-needed 'web-mode)
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
