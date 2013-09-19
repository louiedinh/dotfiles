(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
;(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; Set default browser to chrome
(setq browse-url-generic-program (executable-find "google-chrome")
      browse-url-browser-function 'browse-url-generic)

;; Allow shell to display colors
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;; Key Customizations
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

; Org Mode

(require 'org-install)

;; Activate org mode
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(add-hook 'org-mode-hook 'turn-on-font-lock)  ; org-mode buffers only

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(transient-mark-mode 1)

;; Configure tags
(setq org-tag-alist '((:startgroup . nil)
		      ("study" . ?s) 
		      ("programming" . ?p)
		      ("writing" . ?w)
		      ("social" . ?o)
		      ("errand" . ?e)
		      ("reading" . ?r)
		      ("listening" . ?l)
		      ("watching" . ?a)
		      (:endgroup . nil)
		      ("weekly_goals" . ?g)
		      ("away" . ?y)))

(setq org-tags-exclude-from-inheritance '("study" "programming" "writing" "social" "errand" "reading" "listening" "watching"))

;; Custom Agenda
(setq org-agenda-custom-commands
'(("l" "My Life in a Buffer"
   ((agenda "")
    (tags-todo "weekly_goals")
    (tags-todo "study")
    (tags-todo "programming")
    (tags-todo "writing")
    (tags-todo "social")
    (tags-todo "errand")
    (tags-todo "reading")
    (tags-todo "listening")
    (tags-todo "watching")))))

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/Dropbox/Org/goals.org" "~/Dropbox/Org/projects.org" "~/Dropbox/Org/humanity.org" "~/Dropbox/Org/todos.org" "~/Dropbox/Org/review.org"))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;;Setup MobileOrg
(setq org-mobile-directory "~/Dropbox/MobileOrg")
;; Set to the location of your Org files on your local system
(setq org-directory "~/Dropbox/Org")
;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "~/Dropbox/Org/mobileorg.org")
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/MobileOrg")

; Custom exporting function
(setq org-marvin-files (quote ("~/Dropbox/Org/index.org" "~/Dropbox/Org/goals.org")))

(defun org-export-marvin 1)

(defun doodlebug (a b c)
 "Nonce function"
 (interactive "sAdjective: \nsNoun: \nsExclamation: \n")
 (message "Its a %s thing, this %s, so it is, %s" a b c))

(global-set-key (kbd "C-c e") 'doodlebug)
