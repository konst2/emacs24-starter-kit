(starter-kit-install-if-needed 'git-gutter)

(global-git-gutter-mode +1)
(git-gutter:linum-setup)

(custom-set-variables
 '(git-gutter:update-interval 2))
