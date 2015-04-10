;переключение языка по 
;f1 - английский
;f2 - русский
(defun reset-flyspell-with-new-dict (dict)
  "Set new dictionary and restart flyspell"

  (unless (equal dict ispell-local-dictionary)
    (setq ispell-local-dictionary dict)
    (when flyspell-mode
      (flyspell-mode)
      (flyspell-mode)))

  (when flyspell-mode
    (save-excursion
      (flyspell-region (window-start) (window-end))))

  (message nil))

(global-set-key [(f1)]
                (lambda ()
                  (interactive)
                  ;; (reset-flyspell-with-new-dict "american")
                  (set-cursor-color "#777777")
                  (inactivate-input-method)))

(global-set-key [(f2)]
                (lambda ()
                  (interactive)
                  ;; (reset-flyspell-with-new-dict "russian")
                  (set-cursor-color "#0077AA")
                  (set-input-method 'russian-computer)))


(defun toggle-specified-isearch-input-method (new-input-method)
  "Toggle specified input method in interactive search."
  (interactive)
  (let ((overriding-terminal-local-map nil)))

  (if (eq new-input-method 'default-method)
      (inactivate-input-method)
    (set-input-method new-input-method))

  (setq isearch-input-method-function input-method-function
    isearch-input-method-local-p t)
  (setq input-method-function nil)
  (isearch-update))


(add-hook 'isearch-mode-hook
          (lambda ()
            (define-key isearch-mode-map (kbd "<f1>")
              (lambda ()
                (interactive)
                (set-cursor-color "#777777")
                (toggle-specified-isearch-input-method 'default-method)))

            (define-key isearch-mode-map (kbd "<f2>")
              (lambda ()
                (interactive)
                (set-cursor-color "#0077AA")
                (toggle-specified-isearch-input-method 'russian-computer)))

))
