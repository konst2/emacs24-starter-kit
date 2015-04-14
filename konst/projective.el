;; работа с проектами
(starter-kit-install-if-needed 'grizzl 'projectile 'neotree)

(projectile-global-mode)
; открываем файлы через grizzl
(setq projectile-completion-system 'grizzl)
;(define-key projectile-mode-map (kbd "C-p") 'projectile-switch-project)
;(define-key projectile-mode-map (kbd "C-<f7>") 'projectile-find-dir)
;(define-key projectile-mode-map (kbd "<M-f7>") 'projectile-find-file)
;(define-key projectile-mode-map (kbd "M-S-<f7>") 'projectile-grep)
(global-unset-key (kbd "C-p"))
(global-set-key (kbd "C-p") 'projectile-switch-project)
(global-unset-key (kbd "C-<f7>"))
(global-set-key (kbd "C-<f7>") 'projectile-find-dir)
(global-unset-key (kbd "M-<f7>"))
(global-set-key (kbd "M-<f7>") 'projectile-find-file)
(global-unset-key (kbd "M-S-<f7>"))
(global-set-key (kbd "M-S-<f7>") 'projectile-grep)

; project-explorer (from melpa repo)
; пока удалён и закоментирован
; this for project root from projectile in project explorer
;(setq pe/project-root-function 'projectile-project-root)
;(global-set-key (kbd "<f12>") 'project-explorer-toggle)
; открываем project-explorer при входе в проект через projectile
;(setq projectile-switch-project-action 'project-explorer-toggle)

; neotree
(global-set-key (kbd "<f12>") 'neotree-toggle)
; открываем project-explorer при входе в проект через projectile
(setq projectile-switch-project-action 'neotree-projectile-action)

