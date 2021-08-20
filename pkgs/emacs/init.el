(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(setq inhibit-splash-screen 1)

;; melpa
(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(package-initialize)

(defun l ()
  "Carrega sa configuració."
  (interactive)
  (load-file "~/.emacs.d/init.el"))

(defun lc ()
  "Obri s'arxiu de configuració."
  (interactive)
  (find-file "~/.emacs.d/init.el"))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-width-grow-only t)
 '(custom-enabled-themes '(doom-one))
 '(custom-safe-themes
   '("301c167ad6964c5522576bdbacf8dd715eddbc084f4debcee9d48ef7c0fd65bb" "aeb72bd8f4d5797807480acc9d40b280281048e2fda3c85f6736232d4c22a6c2" "166140462f0a55b406724851c1dd4b7e1e39182d948d4be3dbd7a3943bfbd9a7" "d164e4cad5fece1b8930b4ff2bff4de2613dea8c752e199ec92839cefbccf630" "d3663732b9efb26e2366511e71b5059d2747ab9c20ccbc7fb9e76a5c90db3fd1" "a2351f5fd8fe502377c5e992b5399aed4c2423495b884ab5e970682da2fbb31a" "01a7064073e119c629dae5b7f425d210147b97d82e492f2c82145b4e1d9fa75e" "171d1ae90e46978eb9c342be6658d937a83aaa45997b1d7af7657546cae5985b" "6e71846d6770578979c93c42c9e5fb75730a8781f7ae7cf721a0e94a52d0dca9" "27830e6948bdcdce0226d496a0ae4474fc94f7c760752de82baaa16c7c71c622" "931576cf8f93fdd98ce3fa1e5b93991bb55d582d856a0ca52795f46efd0d8915" "c542e691cbc440b9c106a594301e5dd7baf9497825e58b1b14ed1cfd7a41772e" "162b0cd4aa03c124efae6edc1cd6d036e85b720512a4a9704980ea0e54cd6caf" "df21d8cfc66d0dbad35a44116851491f00f50421357fc1f04f73d243b0410316" "1b77a33a8f953e8018bcfc4c79aa1f1825251389fefd7588a26cff34a8d4fd98" "23c37a5ad52a0676f1eff5391486953698e5b535616cfe9acab005a3033911d4" "c0c1891f936e8ec579558a3162e2eef387e781cd65d40af218e9897af193a8c3" "5b04ed3935ff56e4f8b3c49b2e2d003865170c8f7feebce510c6eb363ac24f12" "2586be8af87fb0b982006df5ee6045bae172391240d153b2d5a077e6c4b0735b" "fd638bb24c8d99ad6d822a6ac260bc98cdb6be54c4f2522affc05f0d45d7c3ce" "e73a648635b171521927bdb4c1847590efc7c16739b2d178646f1157468c4845" "7c21eb03ffe441af30fe825eabb240b381d554f695f7c26cc17bf0ac56fac454" "b5fff23b86b3fd2dd2cc86aa3b27ee91513adaefeaa75adc8af35a45ffb6c499" "71e5acf6053215f553036482f3340a5445aee364fb2e292c70d9175fb0cc8af7" "2c49d6ac8c0bf19648c9d2eabec9b246d46cb94d83713eaae4f26b49a8183fc4" "e6ff132edb1bfa0645e2ba032c44ce94a3bd3c15e3929cdf6c049802cf059a2a" "ee9a30ae06edfd3cf8929a29da3c125af14301ea1d72a700290b5c15f999d17d" "12bc0a84a45a6149bc4eaa5fb59beaefd3137d435a7bfa61b56966bd755e4beb" "ab1afc121e776103057f867899b98d6a9eca3a134349a5a1792014b35f55a000" "d5ad56308e3306ee759086d418975e2cef214bc03745468f0908f995f0a02b45" "ffa0e7d9b94b26cb3e7ecb7b6ee7623162db63d2d83f3b83da2f865c4348e372" "b05072434a37de0d2c6645340fc2b94bdc1cd8d35cde92cf32a702de670884a6" "77113617a0642d74767295c4408e17da3bfd9aa80aaa2b4eeb34680f6172d71a" default))
 '(electric-pair-mode t)
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#51afef"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#98be65"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#5f646a"))
 '(key-chord-mode t)
 '(objed-cursor-color "#ff6c6b")
 '(package-selected-packages
   '(emojify markdown-mode pdf-tools company-auctex auctex yasnippet-snippets alert company-emoji visual-fill-column dashboard company-c-headers multiple-cursors which-key evil-anzu org-bullets atom-one-dark-theme magit scss-mode js2-mode all-the-icons-ivy-rich ivy-rich counsel ivy key-chord treemacs-projectile treemacs company-phpactor phpactor flycheck-phpstan flycheck company-php use-package php-mode emmet-mode yasnippet company-web web-mode hl-todo projectile-codesearch projectile doom-modeline general doom-themes evil))
 '(pdf-view-midnight-colors (cons "#bbc2cf" "#282c34"))
 '(rustic-ansi-faces
   ["#282c34" "#ff6c6b" "#98be65" "#ECBE7B" "#51afef" "#c678dd" "#46D9FF" "#bbc2cf"])
 '(tetris-x-colors
   [[229 192 123]
	[97 175 239]
	[209 154 102]
	[224 108 117]
	[152 195 121]
	[198 120 221]
	[86 182 194]])
 '(treemacs-filewatch-mode t)
 '(vc-annotate-background "#282c34")
 '(vc-annotate-color-map
   (list
	(cons 20 "#98be65")
	(cons 40 "#b4be6c")
	(cons 60 "#d0be73")
	(cons 80 "#ECBE7B")
	(cons 100 "#e6ab6a")
	(cons 120 "#e09859")
	(cons 140 "#da8548")
	(cons 160 "#d38079")
	(cons 180 "#cc7cab")
	(cons 200 "#c678dd")
	(cons 220 "#d974b7")
	(cons 240 "#ec7091")
	(cons 260 "#ff6c6b")
	(cons 280 "#d7696a")
	(cons 300 "#af686a")
	(cons 320 "#87666a")
	(cons 340 "#fB6268")
	(cons 360 "#fB6268")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-document-title ((t (:inherit default :weight bold :foreground "#ABB2BF" :family "Sans Serif" :height 2.0 :underline nil))))
 '(org-level-1 ((t (:inherit default :weight bold :foreground "#ABB2BF" :family "Sans Serif" :height 1.75))))
 '(org-level-2 ((t (:inherit default :weight bold :foreground "#ABB2BF" :family "Sans Serif" :height 1.5))))
 '(org-level-3 ((t (:inherit default :weight bold :foreground "#ABB2BF" :family "Sans Serif" :height 1.25))))
 '(org-level-4 ((t (:inherit default :weight bold :foreground "#ABB2BF" :family "Sans Serif" :height 1.1))))
 '(org-level-5 ((t (:inherit default :weight bold :foreground "#ABB2BF" :family "Sans Serif"))))
 '(org-level-6 ((t (:inherit default :weight bold :foreground "#ABB2BF" :family "Sans Serif"))))
 '(org-level-7 ((t (:inherit default :weight bold :foreground "#ABB2BF" :family "Sans Serif"))))
 '(org-level-8 ((t (:inherit default :weight bold :foreground "#ABB2BF" :family "Sans Serif")))))

(package-install-selected-packages)

(require 'calendar)
(setq calendar-week-start-day 1)  ; ho posam en dilluns

(require 'evil)
(evil-mode 1)

(require 'evil-anzu)
(global-anzu-mode)

(set-face-attribute 'anzu-mode-line nil
					:foreground "yellow" :weight 'bold)

(setq anzu-mode-lighter "")
(setq anzu-deactivate-region t)
(setq anzu-search-threshold 1000)
(setq anzu-replace-threshold 50)
(setq anzu-replace-to-string-separator " => ")

(require 'doom-modeline)
(doom-modeline-mode 1)

;; tema
(load-theme 'doom-one t)
;;(load-theme 'atom-one-dark t)
(set-face-attribute 'default nil :font "Hack" :height 110)
(set-frame-parameter (selected-frame) 'alpha '(95 . 90))
(add-to-list 'default-frame-alist '(alpha . (95 . 90)))

;; línies
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time

;; coses
(setq byte-compile-warnings '(cl-functions))

(require 'multiple-cursors)
(global-set-key (kbd "C-S-m e") 'mc/edit-lines)
(global-set-key (kbd "C-S-m n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-S-m p") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-S-m a") 'mc/mark-all-like-this)
(global-unset-key (kbd "M-<down-mouse-1>"))
(global-set-key (kbd "M-<mouse-1>") 'mc/add-cursor-on-click)
(define-key mc/keymap (kbd "<return>") nil) ;; per presionar RET

;; línies
(require 'display-line-numbers)
(defcustom display-line-numbers-exempt-modes '(which-key-mode vterm-mode eshell-mode shell-mode term-mode ansi-term-mode treemacs-mode)
  "Major modes on which to disable the linum mode, exempts them from global requirement."
  :group 'display-line-numbers
  :type 'list
  :version "green")

(defun display-line-numbers--turn-on ()
  "Turn on line numbers but excempting certain majore modes defined in `display-line-numbers-exempt-modes'."
  (if (and
	   (not (member major-mode display-line-numbers-exempt-modes))
	   (not (minibufferp)))
	  (display-line-numbers-mode)))

(global-display-line-numbers-mode)

(setq display-line-numbers-type 'relative)

(set-default 'truncate-lines t)
(setq default-tab-width 4)
(setq tab-width 4)

;; reinici
(defun launch-separate-emacs-in-terminal ()
  "Obri Emacs a un terminal."
  (suspend-emacs "fg ; emacs -nw"))

(defun launch-separate-emacs-under-x ()
  "Obri Emacs a X."
  (call-process "sh" nil nil nil "-c" "emacs &"))

(defun restart-emacs ()
  "Reinicia Emacs."
  (interactive)
  ;; We need the new emacs to be spawned after all kill-emacs-hooks
  ;; have been processed and there is nothing interesting left
  (let ((kill-emacs-hook (append kill-emacs-hook (list (if (display-graphic-p)
														   #'launch-separate-emacs-under-x
														 #'launch-separate-emacs-in-terminal)))))
	(save-buffers-kill-emacs)))

(require 'eshell)
(require 'em-tramp)

(add-to-list 'eshell-modules-list 'eshell-tramp)

(setq eshell-prefer-lisp-functions t)
(setq password-cache t) ; enable password caching
(setq password-cache-expiry 3600) ; for one hour (time in secs)

;; ESHELL
(setq eshell-aliases-file "/home/emacs/.emacs.d/aliases")

(require 'which-key)

(setq which-key-add-column-padding 3)
(which-key-mode +1)

(require 'key-chord)
(require 'general)
(general-evil-setup t)
(key-chord-mode 1)

;;(add-to-list 'display-buffer-alist
;;                    `(,(rx bos "*helm" (* not-newline) "*" eos)
;;                         (display-buffer-in-side-window)
;;                         (inhibit-same-window . t)
;;                         (window-height . 0.3)))

(add-to-list 'display-buffer-alist
			 `(,(rx bos "*eshell" (* not-newline) "*" eos)
			   (display-buffer-in-side-window)
			   (inhibit-same-window . t)
			   (window-height . 0.25)))


(require 'ivy)

(ivy-mode +1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(setq ivy-count-format "(%d/%d) ")
(setq ivy-height 15)

;; icones i que quedi xulo
(use-package all-the-icons-ivy-rich
  :ensure t
  :init (all-the-icons-ivy-rich-mode 1))


(use-package ivy-rich
  :ensure t
  :init
  (ivy-rich-mode +1)
  (setcdr (assq t ivy-format-functions-alist) #'ivy-format-function-line))

(nmap
  ",." 'evil-ex)

(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

(global-set-key (kbd "C-M-k") 'windmove-up)
(global-set-key (kbd "C-M-j") 'windmove-down)
(global-set-key (kbd "C-M-l") 'windmove-right)
(global-set-key (kbd "C-M-h") 'windmove-left)

(global-set-key (kbd "C-S-k") 'kill-current-buffer)

(general-define-key :keymaps 'evil-insert-state-map
					(general-chord "jk") 'evil-normal-state
					(general-chord "kj") 'evil-normal-state
					(general-chord "kw") 'evil-save
					(general-chord ",.") 'evil-ex)

(general-define-key :keymaps 'evil-normal-state-map
		    (general-chord ",.") 'evil-ex)


;;(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "<C-return>") 'compila-latex)

(require 'magit)

(nvmap :prefix "SPC"
  ;;"." 'helm-find-files
  ;;"<SPC>" 'helm-find-files
  "." 'counsel-find-file
  "<SPC>" 'counsel-find-file
  "bn" 'next-buffer
  "bp" 'previous-buffer
  ;;"B" 'helm-buffers-list
  "B" 'ivy-switch-buffer
  "bk" 'kill-current-buffer
  "qq" 'kill-emacs
  "qr" 'restart-emacs

  ;; TODO: sessions
  "qs" 'my-desktop-save
  "qS" 'my-desktop-save-and-clear
  "ql" 'my-desktop-change

  ;;"x" 'helm-M-x
  "x" 'counsel-M-x

  "p" 'projectile-command-map
  ;"S" 'smudge-command-map
  "bl" 'display-line-numbers-mode  ;; TODO: llevar aixo quan sigui

  "k" 'evil-window-up
  "j" 'evil-window-down
  "l" 'evil-window-right
  "h" 'evil-window-left

  "d" 'evil-window-delete
  "s" 'evil-window-split
  "v" 'evil-window-vsplit

  "w" 'save-buffer
  ;;"of" 'helm-find-files
  "ot" 'eshell

  "oc" 'org-toggle-checkbox
  "ol" 'org-open-at-point

  ;; multiples cursors
  "me" 'mc/edit-lines
  "mn" 'mc/mark-next-like-this
  "mp" 'mc/mark-previous-like-this
  "ma" 'mc/mark-all-like-this
  
  "T" 'treemacs
  "g" 'magit-status

  "tc" 'compila-latex
  "tv" 'TeX-view)


(require 'projectile)
(projectile-global-mode)

(require 'treemacs)
(setq treemacs-width 20)

(add-hook 'nav-mode-hook 'disable-evil-mode)
(evil-set-initial-state 'dired-mode 'emacs)
(evil-set-initial-state 'sunrise-mode 'emacs)
(evil-set-initial-state 'treemacs-mode 'emacs)

(require 'hl-todo)
(hl-todo-mode +1)

;; ORG MODE
(require 'org-bullets)

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(setq org-hide-emphasis-markers t)
(font-lock-add-keywords 'org-mode
						'(("^ *\\([-]\\) "
						   (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(let* ((variable-tuple
		(cond ((x-list-fonts "Hack")         '(:font "Hack"))
			  (nil (warn "Cannot find a Sans Serif Font.  Install Source Sans Pro."))))
	   (base-font-color     (face-foreground 'default nil 'default))
	   (headline           `(:inherit default :weight bold :foreground ,base-font-color)))

  (custom-theme-set-faces
   'user
   `(org-level-8 ((t (,@headline ,@variable-tuple))))
   `(org-level-7 ((t (,@headline ,@variable-tuple))))
   `(org-level-6 ((t (,@headline ,@variable-tuple))))
   `(org-level-5 ((t (,@headline ,@variable-tuple))))
   `(org-level-4 ((t (,@headline ,@variable-tuple))))
   `(org-level-3 ((t (,@headline ,@variable-tuple))))
   `(org-level-2 ((t (,@headline ,@variable-tuple :height 1.1))))
   `(org-level-1 ((t (,@headline ,@variable-tuple :height 1.2))))
   `(org-document-title ((t (,@headline ,@variable-tuple :height 1.5 :underline nil))))))

;; Spotify
;;(require 'smudge)

;;(setq smudge-oauth2-callback-port 8080)
;;(setq smudge-oauth2-client-id "956d511c1f2242888bef2f51513d023c")
;;(setq smudge-oauth2-client-secret "7ca2e5dc5e714692b71ae6f02b07179d")


(setq company-tooltip-margin 2)
;; *** PROGRAMACIÓ ***
(require 'yasnippet)
(yas-global-mode +1)

(require 'web-mode)
(require 'emmet-mode)

(add-to-list 'auto-mode-alist '("\\.ts\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.scss?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))


(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 4)
  (setq web-mode-code-indent-offset 4)
  (setq web-mode-css-indent-offset 4)
  )
(add-hook 'web-mode-hook  'my-web-mode-hook)    

(defun my-web-mode-hook ()
  (hl-todo-mode +1)
  (set (make-local-variable 'company-backends) '(
						 company-css
						 company-web-html
						 company-yasnippet
						 company-files
						 company-phpactor))
  )
(add-hook 'web-mode-hook  'emmet-mode) 
(add-hook 'php-mode-hook  'emmet-mode) 
(add-hook 'css-mode-hook  'emmet-mode)
(add-hook 'sgml-mode-hook  'emmet-mode)

(add-hook 'web-mode-before-auto-complete-hooks
		  '(lambda ()
			 (let ((web-mode-cur-language
					(web-mode-language-at-pos)))
			   (if (string= web-mode-cur-language "php")
				   (yas-activate-extra-mode 'php-mode)
				 (yas-deactivate-extra-mode 'php-mode))
			   (if (string= web-mode-cur-language "css")
				   (setq emmet-use-css-transform t)
				 (setq emmet-use-css-transform nil)))))

(use-package php-mode :ensure t)

;; *** COLORS ***
(defun xah-syntax-color-hex ()
  "Syntax color text of the form 「#ff1100」 and 「#abc」 in current buffer.
URL `http://ergoemacs.org/emacs/emacs_CSS_colors.html'
Version 2017-03-12"
  (interactive)
  (font-lock-add-keywords
   nil
   '(("#[[:xdigit:]]\\{3\\}"
	  (0 (put-text-property
		  (match-beginning 0)
		  (match-end 0)
		  'face (list :background
					  (let* (
							 (ms (match-string-no-properties 0))
							 (r (substring ms 1 2))
							 (g (substring ms 2 3))
							 (b (substring ms 3 4)))
						(concat "#" r r g g b b))))))
	 ("#[[:xdigit:]]\\{6\\}"
	  (0 (put-text-property
		  (match-beginning 0)
		  (match-end 0)
		  'face (list :background (match-string-no-properties 0)))))))
  (font-lock-flush))

;; COMPANY-WEBMODE
(add-hook 'css-mode-hook 'xah-syntax-color-hex)
(add-hook 'php-mode-hook 'xah-syntax-color-hex)
(add-hook 'web-mode-hook 'xah-syntax-color-hex)
(add-hook 'html-mode-hook 'xah-syntax-color-hex)
(add-hook 'lisp-mode-hook 'xah-syntax-color-hex)
(add-hook 'after-init-hook 'global-company-mode)

(global-flycheck-mode)
(global-set-key (kbd "C-c c") 'company-complete)
(global-set-key (kbd "<C-tab>") 'emmet-expand-line)

;; ELISP

;; PHP
(use-package phpactor :ensure t)
(use-package company-phpactor :ensure t)

(defun my-php ()
  "My PHP-mode hook."
  (require 'flycheck-phpstan)
  (flycheck-mode 1)
  (hl-todo-mode +1)
  (add-to-list 'company-backends 'company-yasnippet)
  (add-to-list 'company-backends 'company-files)
  (add-to-list 'company-backends 'company-my-php-backend))

(add-hook 'php-mode-hook 'my-php)
(add-hook 'web-mode-hook 'my-php)

(defun company-my-php-backend (command &optional arg &rest ignored)
  (case command
	(prefix (and (eq major-mode 'php-mode)
				 (company-grab-symbol)))
	(sorted t)
	(candidates (all-completions
				 arg
				 (if (and (boundp 'my-php-symbol-hash)
						  my-php-symbol-hash)
					 my-php-symbol-hash

				   (with-temp-buffer
					 (call-process-shell-command "php -r '$all=get_defined_functions();foreach ($all[\"internal\"] as $fun) { echo $fun . \";\";};'" nil t)
					 (goto-char (point-min))
					 (let ((hash (make-hash-table)))
					   (while (re-search-forward "\\([^;]+\\);" (point-max) t)
						 (puthash (match-string 1) t hash))
					   (setq my-php-symbol-hash hash))))))))


;; parèntesi
(defun electric-pair ()
  "If at end of line, insert character pair without surrounding spaces.  Otherwise, just insert the typed character."
  (interactive)
  (if (eolp) (let (parens-require-spaces) (insert-pair)) 
	(self-insert-command 1)))

;;(add-hook 'python-mode-hook
;;          (lambda ()
;;            (define-key python-mode-map "\"" 'electric-pair)
;;            (define-key python-mode-map "\'" 'electric-pair)
;;            (define-key python-mode-map "(" 'electric-pair)
;;            (define-key python-mode-map "[" 'electric-pair)
;;            (define-key python-mode-map "{" 'electric-pair)))

;;(add-hook 'php-mode-hook
;;          (lambda ()
;;            (define-key python-mode-map "\"" 'electric-pair)
;;            (define-key python-mode-map "\'" 'electric-pair)
;;            (define-key python-mode-map "(" 'electric-pair)
;;            (define-key python-mode-map "[" 'electric-pair)
;;            (define-key python-mode-map "{" 'electric-pair)))

;;(add-hook 'web-mode-hook
;;          (lambda ()
;;            (define-key python-mode-map "\"" 'electric-pair)
;;            (define-key python-mode-map "\'" 'electric-pair)
;;            (define-key python-mode-map "(" 'electric-pair)
;;            (define-key python-mode-map "[" 'electric-pair)
;;            (define-key python-mode-map "{" 'electric-pair)))

(electric-pair-mode +1)

;; scss
(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

;; c++
(add-to-list 'company-backends 'company-c-headers)
(add-to-list 'company-backends 'company-clang)

(setq c-default-style "linux"
      c-basic-offset 4)

(define-key c-mode-map  [(tab)] 'company-complete)
(define-key c++-mode-map  [(tab)] 'company-complete)

;;;
;;; PROVA - SESSIO;;;
(require 'desktop)

(defvar my-desktop-session-dir
  (concat (getenv "HOME") "/.emacs.d/desktop-sessions/")
  "*Directory to save desktop sessions in")

(defvar my-desktop-session-name-hist nil
  "Desktop session name history")

(defun my-desktop-save (&optional name)
  "Save desktop by name."
  (interactive)
  (unless name
    (setq name (my-desktop-get-session-name "Save session" t)))
  (when name
    (make-directory (concat my-desktop-session-dir name) t)
    (desktop-save (concat my-desktop-session-dir name) t)))

(defun my-desktop-save-current ()
  "Desa l'escriptori actual"
  (interactive)
  (setq name (my-desktop-get-current-name))
  (unless name
	(message "No hi ha cap sessió carregada"))
  (when name
	(my-desktop-save name)
	(message (concat "Sessió desada: " name))))

(defun my-desktop-save-and-clear ()
  "Save and clear desktop."
  (interactive)
  (call-interactively 'my-desktop-save)
  (desktop-clear)
  (setq desktop-dirname nil))

(defun my-desktop-read (&optional name)
  "Read desktop by name."
  (interactive)
  (unless name
    (setq name (my-desktop-get-session-name "Load session")))
  (when name
    (desktop-clear)
    (desktop-read (concat my-desktop-session-dir name))))

(defun my-desktop-change (&optional name)
  "Change desktops by name."
  (interactive)
  (let ((name (my-desktop-get-current-name)))
    (when name
      (my-desktop-save name))
    (call-interactively 'my-desktop-read)))

(defun my-desktop-name ()
  "Return the current desktop name."
  (interactive)
  (let ((name (my-desktop-get-current-name)))
    (if name
        (message (concat "Desktop name: " name))
      (message "No named desktop loaded"))))

(defun my-desktop-get-current-name ()
  "Get the current desktop name."
  (when desktop-dirname
    (let ((dirname (substring desktop-dirname 0 -1)))
      (when (string= (file-name-directory dirname) my-desktop-session-dir)
        (file-name-nondirectory dirname)))))

(defun my-desktop-get-session-name (prompt &optional use-default)
  "Get a session name."
  (let* ((default (and use-default (my-desktop-get-current-name)))
         (full-prompt (concat prompt (if default
                                         (concat " (default " default "): ")
                                       ": "))))
    (completing-read full-prompt (and (file-exists-p my-desktop-session-dir)
                                      (delete ".." (delete "." (directory-files my-desktop-session-dir))))
                     nil nil nil my-desktop-session-name-hist default)))

(defun my-desktop-kill-emacs-hook ()
  "Save desktop before killing emacs."
  (when (file-exists-p (concat my-desktop-session-dir "Darrera sessió"))
    (setq desktop-file-modtime
          (nth 5 (file-attributes (desktop-full-file-name (concat my-desktop-session-dir "Darrera sessió"))))))
  (my-desktop-save "Darrera sessió"))

(add-hook 'kill-emacs-hook 'my-desktop-kill-emacs-hook)

;; dashboard
(require 'dashboard)
(dashboard-setup-startup-hook)

(setq dashboard-banner-logo-title "Benvingut a Emacs!")
(setq dashboard-center-content t)
(setq dashboard-startup-banner 'logo)

(setq sessions (delete ".." (delete "." (directory-files my-desktop-session-dir))))

(defun dashboard-sessions (list-size)
  (dashboard-insert-section
   "Sessions:"
   (dashboard-subseq sessions 0 list-size)
   list-size
   "s"
   `(lambda (&rest ignore) (my-desktop-read ,el))
   el))

(add-to-list 'dashboard-item-generators  '(my-desktop-read . dashboard-sessions))
(add-to-list 'dashboard-items '(my-desktop-read) t)

(setq dashboard-items '(
			(my-desktop-read . 10)
			(recents  . 5)
                        (projects . 5)
                        (agenda . 5)))


;;(global-set-key (kbd "C-c e") 'emojify-insert-emoji)

(defun --set-emoji-font (frame)  
  "Adjust the font settings of FRAME so Emacs can display emoji properly."
  (if (eq system-type 'darwin)
      ;; For NS/Cocoa
      (set-fontset-font t 'symbol (font-spec :family "Apple Color Emoji") frame 'prepend)
    ;; For Linux
    (set-fontset-font t 'symbol (font-spec :family "Noto Color Emoji") frame 'prepend)))

(--set-emoji-font nil)
(add-hook 'after-make-frame-functions '--set-emoji-font)

(setq emojify-company-tooltips-p t)

;; latex
(require 'tex)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

(add-hook 'LaTeX-mode-hook 'turn-on-reftex)

(TeX-source-correlate-mode)
(TeX-PDF-mode)
(setq reftex-plug-into-AUCTeX t)

(add-to-list 'TeX-view-program-list
             '("Zathura"
               ("zathura "
                (mode-io-correlate " --synctex-forward %n:0:%b -x \"emacsclient +%{line} %{input}\" ")
                " %o")
               "zathura"))
(add-to-list 'TeX-view-program-selection
             '(output-pdf "Zathura"))

(add-hook 'LaTeX-mode-hook 'company-auctex-init)

(defun revert-all-pdf-no-confirm ()
  "Revert all file buffers, without confirmation.
Buffers visiting files that no longer exist are ignored.
Files that are not readable (including do not exist) are ignored.
Other errors while reverting a buffer are reported only as messages."
  (interactive)
  (let (file)
    (dolist (buf  (buffer-list))
      (setq file  (buffer-file-name buf))
      (when (and file  (file-readable-p file) (cl-search ".pdf" file))
        (with-current-buffer buf
          (with-demoted-errors "Error: %S" (revert-buffer t t)))))))

(defun compila-latex()
  (interactive)
  (save-buffer)
  (TeX-command-master)
  (TeX-view))
  ;(setq f (buffer-file-name (window-buffer (minibuffer-selected-window))))
  ;(with-temp-buffer
	;(shell-command (concat "zathura '" f "'") t))
  ;(revert-all-pdf-no-confirm))


;; markdown
(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

(emojify-mode +1)

(provide 'init)
;;; init.el ends here
