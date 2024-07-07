(deftheme GayTheme
  "Created 2022-02-13.")

(setq foreground "#e4ab72")		;e4ab72 ababab
(setq background "#3c2718")		;2c1d13 2a1c11 291c11 281b10 242424
;; (setq background "#332233")		;2c1d13 2a1c11 291c11 281b10 242424

(setq dimDark "#221610") 		;1c130a 302015 151515 1c130a
(setq dimBright "#593b25")		;593b25 392518 3f2b20 353535
(setq dimSemi "#8b5742")		;593b25 392518 3f2b20 353535
(setq dimSuperb "#a8704f")		;"#a8704f" 78503f 656565

(setq redNormal "#c05044")
(setq greenNormal "#609055")
(setq yellowNormal "#c08033")
(setq blueNormal "#5599bb")

(setq redBright "#f06054")			;Used for LaTeX!
;; (setq greenBright)
(setq yellowBright "#d7953a")
(setq blueBright "#77bbf0")

;; (setq redDim)
;; (setq greenDim)
(setq yellowDim "#c07023")	;c07023
(setq blueDim "#ab9075")		;often used for comments 668899 ab9075

(setq redMegad "#682b13")
(setq greenMegad "#384b13")
(setq greenMegad "#384b13")

(setq gayestColor "#502020")		;502020

(setq redBlock "#503024")
(setq greenBlock "#80b065")
(setq yellowBlock "#d09043")
(setq blueBlock "#77aadd")


;;#78503f
(setq redBack "#98503f")
(setq greenBack "#68703f")
(setq yellowBack "#78602f")
(setq blueBack "#40506f")



(set-fontset-font "fontset-default" 'unicode (font-spec :name "Unifont" :size 16) nil 'prepend)

(set-fontset-font t 'greek "Cozette Vector-9")

(set-face-attribute 'fixed-pitch nil :family "Cozette Vector")


(custom-set-faces
  `(minimap-active-region-background
    ((((background dark)) (:background ,dimDark))
      (t (:background ,redBack))
    "Face for the active region in the minimap.
By default, this is only a different background color."
    :group 'minimap)))


(custom-theme-set-variables
 'GayTheme)

(custom-theme-set-faces
   'GayTheme

   ;; Unifont
   ;; `(default ((t (:background ,background :foreground ,foreground :height 120 :family "unifont"))))
   ;; termsyn

   `(default ((t (:background ,background :foreground ,foreground :height 90 :family "Cozette Vector"))))
   '(cursor ((t (:background "orange3"))))
   '(fixed-pitch ((t (:family "Unifont"))))
   '(variable-pitch ((t (:family "Cozette" :height 90))))
      ;; '(variable-pitch ((t (:family "Unifont" :height 100))))
   
   `(hl-line ((t (:overline ,dimSuperb :underline ,dimSemi :background ,greenBack))))
   
   '(escape-glyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
   '(homoglyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
   '(minibuffer-prompt ((((class color) (min-colors 257)) (:foreground "#8ec07c")) 
                        (((class color) (min-colors 256)) (:foreground "#8ec07c")) 
                        (((class color) (min-colors 16)) (:foreground "brightcyan"))))

   `(minibuffer ((t (:height 200))))
   


   `(parenthesis ((t (:foreground ,dimSemi))))
   
   `(corfu-popupinfo ((t (:height 120 :family "Unifont"))))
   
   `(region ((t (:background ,dimDark
                             ;; :foreground ,dimBright 
                             ))))

   '(shadow ((t (:foreground "#dcafa4"))))

   `(solaire-default-face ((t (:background ,dimBright))))

   `(solaire-treemacs-face ((t (:background "#ff00ff"))))


   
   `(wisp-defined-name-face ((t (:foreground ,greenBlock :weight bold))))
   `(wisp-function-face ((t (:foreground ,yellowBlock))))
   
   
   `(eglot-type-hint-face ((t (:foreground ,blueBlock :family "tamzen"))))
   `(eglot-inlay-hint-face ((t (:foreground ,blueBlock  :family "tamzen"))))

   `(secondary-selection ((t (:extend t :background ,dimBright))))
   `(whitespace-space ((t (:foreground ,dimBright))))
   `(whitespace-newline ((t (:foreground ,dimBright))))
   `(whitespace-tab ((t (:foreground ,dimBright))))
   ;; `(line-number    ((t (:foreground ,dimBright))))
   `(line-number    ((t (:foreground ,dimSuperb :background ,dimBright))))

   `(highlight ((t (:background ,gayestColor))))

   `(font-lock-builtin-face ((t (:foreground ,yellowBright)))) ;#fe8019 dd993a

   '(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
   `(font-lock-comment-face ((t (:foreground ,dimSuperb))))

   `(font-lock-keyword-face ((t (:foreground ,redBright :weight bold))))
   `(font-lock-constant-face ((t (:foreground ,blueBlock)))) ;greenNormal bold
   `(font-lock-function-name-face ((t (:foreground ,greenBlock :weight bold))))

   ;; `(org-block ((t (:extend t :background ,dimBright)))) ; # 1b1010 #2b1b0d 251a0f 42312f 281b11 382618
   `(org-block ((t (:extend t :background ,background)))) ; # 1b1010 #2b1b0d 251a0f 42312f 281b11 382618
   `(org-quote ((t (:extend t :background ,dimBright :foreground ,foreground)))) ; # 1b1010 #2b1b0d 281b11 78503f

   `(org-tag ((t (:extend t :background ,background :foreground ,dimSuperb)))) ; # 1b1010 #2b1b0d 281b11 78503f
   `(org-special-keyword ((t (:extend t :background ,background :foreground ,yellowNormal :weight bold)))) ; # 1b1010 #2b1b0d 281b11 78503f
   `(link                ((t (:extend t :background ,background :foreground ,yellowBright :weight bold :underline t)))) ; # 1b1010 #2b1b0d 281b11 78503f


   `(org-block-begin-line ((t (:extend t
				       :background ,dimBright
				       :foreground ,dimSuperb
				       :family "Cozette"
				       :height 60)))) ;281b11 58402f
   '(org-block-end-line ((t (:inherit org-block-begin-line))))


   `(fringe ((t (:foreground ,blueNormal ;; :background ,background
			     )))) ;b16005 181007
   `(internal-border ((t (:foreground "#00ff00" :background ,dimBright)))) ;00ff00 170f05
   

   ;; `(window-divider ((t (:foreground ,background :background "#ff00ff")))) ;#17005
   ;; `(window-divider-first-pixel ((t (:foreground ,dimDark :background "#ff00ff")))) ;1c130a
   ;; `(window-divider-last-pixel ((t (:foreground ,background :background "#ff00ff")))) ;1f160d


   
   `(window-divider ((t (:foreground ,dimBright :background "#ff00ff")))) ;#17005
   `(window-divider-first-pixel ((t (:foreground ,dimSuperb :background "#ff00ff")))) ;1c130a
   `(window-divider-last-pixel ((t (:foreground ,dimDark :background "#ff00ff")))) ;1f160d
   
   `(vertical-border ((t (:extend t :background ,background :foreground ,dimSuperb)))) ;#1c130a b16005

   `(mode-line-inactive ((t (:foreground ,blueNormal))))



   `(rainbow-delimiters-depth-1-face ((t (:foreground ,redNormal))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,greenNormal))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,yellowNormal))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,blueNormal))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,redNormal))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,greenNormal))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,yellowNormal))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,blueNormal))))

   `(rainbow-delimiters-depth-9-face ((t (:foreground ,greenNormal)))) ; Blue 5599bb

   `(rainbow-blocks-depth-1-face ((t (:foreground ,redNormal))))
   `(rainbow-blocks-depth-2-face ((t (:foreground ,greenNormal))))
   `(rainbow-blocks-depth-3-face ((t (:foreground ,yellowNormal))))
   `(rainbow-blocks-depth-4-face ((t (:foreground ,blueNormal))))
   `(rainbow-blocks-depth-5-face ((t (:foreground ,redNormal))))
   `(rainbow-blocks-depth-6-face ((t (:foreground ,greenNormal))))
   `(rainbow-blocks-depth-7-face ((t (:foreground ,yellowNormal))))
   `(rainbow-blocks-depth-8-face ((t (:foreground ,blueNormal))))

   '(rainbow-blocks-depth-9-face ((t (:foreground "#609055")))) ; green



   '(shr-text ((t (:height 80 :family "termsyn"))))
   '(shr-code ((t (:foreground "#609055" :height 80 :family "termsyn"))))
   '(shr-sup ((t (:foreground "#c05044" :height 80 :family "termsyn"))))
   '(shr-link ((t (:foreground "#c08033" :height 80 :family "termsyn" :weight bold))))

   '(shr-h1 ((t (:foreground "#cc5844" :family "termsyn" :weight bold :underline t)))) ;;red
   '(shr-h2 ((t (:foreground "#cc8833" :family "termsyn" :weight bold :underline t)))) ;;yellow
   '(shr-h3 ((t (:foreground "#669f55" :family "termsyn" :weight bold :underline t)))) ;;green
   '(shr-h4 ((t (:foreground "#c05044" :family "termsyn" :weight bold :underline t)))) ;;red
   '(shr-h5 ((t (:foreground "#c08033" :family "termsyn" :weight bold :underline t)))) ;;yellow
   '(shr-h6 ((t (:foreground "#609055" :family "termsyn" :weight bold :underline t)))) ;;green


   `(corfu-bar ((t (:background ,dimDark :foreground "#00ff00")))) ;181007
   `(corfu-default ((t (:background ,dimBright))))			  ;382618
   `(corfu-current ((t (:background ,blueNormal :foreground ,dimBright)))) ;1c130a 251a0f
   `(corfu-border ((t (:background ,yellowBright :foreground "#00ff00")))) ;181007 00ff00
   `(corfu-complete ((t (:background ,gayestColor :foreground ,gayestColor)))) ;1c130a 251a0f
   `(corfu-doc-terminal-right-margin ((t (:background ,yellowBright))))

   `(font-lock-string-face ((t (:foreground ,blueDim :slant oblique)))) ;bb9570

   `(mini-echo-minibuffer-window ((t (:foreground ,gayestColor :background ,dimBright :height 200))))

   
                                          ; '(beacon-color "ff00ff")
   '(org-ellipsis ((t (:foreground "#fe8019"))))
   '(ivy-current-match ((t (:extend t :background "#552b2b"))))
   '(ivy-highlight-face ((t (:foreground "#d3869b"))))
   '(ivy-minibuffer-match-highlight ((t (:foreground "#8ec07c")))) ;8ec08c

   `(org-table ((t (:foreground ,foreground :background ,dimBright)))) ;; #c05044 #170f05

   `(show-paren-match ((t (:background ,dimSuperb)))) ;#cc8833 403025

   `(highlight-indent-guides-character-face ((t (:foreground ,dimBright))))
   '(highlight-indent-guides-top-character-face ((t (:foreground "#669f55")))) ;#e4ab72 

   ;; '(minibuffer-prompt ((t (:background "#ff00ff")))) ;212121

   `(egog  ((t (:foreground "#ff00ff"))))

   `(helm-header ((t (:foreground "#ddcdcd" ;; :weight bold
                                  :background ,blueBlock))))

   `(helm-selection ((t (:foreground "#ccbcbc"
                                     :weight bold
                                     :background ,yellowDim))))

   `(helm-source-header ((t (:foreground "#ddcdcd" ;; :weight bold
                                         :background ,greenNormal))))

   `(org-hide ((t (:foreground ,dimBright))))
   `(org-modern-indent-bracket-line ((t (:foreground ,dimSemi :background ,dimBright))))
   `(org-level-1 ((t (:foreground ,redNormal    :weight bold :family "Unifont" :height 120 :underline ,redNormal))))
   `(org-level-2 ((t (:foreground ,greenNormal  :weight bold :family "Unifont" :height 120))))
   `(org-level-3 ((t (:foreground ,yellowNormal :weight bold :family "Unifont" :height 120))))
   `(org-level-4 ((t (:foreground ,blueNormal   :weight bold :family "Unifont" :height 120))))
   `(org-level-5 ((t (:foreground ,redNormal    :weight bold :family "Unifont" :height 120))))
   `(org-level-6 ((t (:foreground ,greenNormal  :weight bold :family "Unifont" :height 120))))
   `(org-level-7 ((t (:foreground ,yellowNormal :weight bold :family "Unifont" :height 120))))
   `(org-level-8 ((t (:foreground ,blueNormal   :weight bold :family "Unifont" :height 120))))
   '(org-level-9 ((t (:foreground "#809055"     :weight bold :family "Unifont" :height 120))))

   ;; `(olivetti-fringe ((t (:background "#ff00ff"))))

   `(eros-result-overlay-face ((t (:foreground ,dimSuperb :background ,background))))

   `(org-modern-todo ((t (:foreground ,yellowBright :background ,redBlock))))
   `(org-modern-done ((t (:foreground ,greenBack :background ,dimBright))))
`(org-format-latex-options ((t (:foreground ,blueBright :background "#392518" :scale 1.1 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
              ("begin" "$1" "$" "$$" "\\(" "\\[")))))
   `(org-meta-line ((t (:foreground ,blueNormal :background ,dimBright))))

   `(org-modern-horizontal-rule ((t (:strike-through ,dimSuperb))))
   `(org-format-latex-options ((t (:foreground ,redBright :scale 1.1))))

   `(org-document-info-keyword ((t (:foreground ,dimSuperb))))
   `(org-document-info ((t (:foreground ,yellowBlock))))
   `(org-modern-date-active ((t (:foreground ,yellowBlock))))
   `(org-date ((t (:foreground ,yellowBlock))))
   `(org-document-title ((t (:foreground ,greenNormal))))

   `(egoge-display-time ((t (:foreground ,blueNormal))))
   
      `(org ((t (:background ,foreground))))
  )


(modify-all-frames-parameters
 '((right-divider-width . 16)		;12 16
   (internal-border-width . 16)))	;8 16

(dolist (face '(window-divider
                window-divider-first-pixel
                window-divider-last-pixel))
  (face-spec-reset-face face)
  (set-face-foreground 'fringe (face-attribute 'default :background)))


(set-face-foreground 'fringe background)
(set-face-background 'fringe background)

(setq org-modern-star ["!."
                       "  @." 
                       "    #."
                       "      $."
                       "        %."])

(setq org-modern-block-name
      [("src" ">>" "<<")
       ("example" ">–" "–<")
       ("quote" "\"" "\"")
       ("export" "⏩" "⏪")])

(setq org-modern-todo 't)

(setq org-preview-latex-default-process 'dvisvgm)

(defface egoge-display-time
  `((((type x w32 mac))
     ;; #060525 is the background colour of my default face.
     (:foreground ,yellowBright :inherit bold))
    (((type tty))
     (:foreground ,yellowBright)))
  "Face used to display the time in the mode line.")
;; This causes the current time in the mode line to be displayed in
;; `egoge-display-time-face' to make it stand out visually.
(setq display-time-string-forms
      '((propertize (concat " " 24-hours ":" minutes " ")
                    'face 'egoge-display-time)))


(defun my-god-mode-update-mode-line ()
  (cond
   (god-local-mode
    (set-face-attribute 'mode-line nil
                        :foreground dimSuperb ;;bfa288 b4a288
			:overline dimSuperb
			:underline dimDark
                        :background dimDark) ;;170f05 42312f 1c130a
    (set-face-attribute 'mode-line-inactive nil
                        :foreground dimSuperb ;665c54 ;;78503f 78503f
			:overline dimSuperb
			:underline dimDark
                        :background dimBright)) ;;181007 2f1f1f 3f2b20
   (t
    (set-face-attribute 'mode-line nil
                        :foreground dimBright ;;afa288 afa288
			:overline dimSuperb
			:underline dimDark
                        :background yellowDim) ;;b16005 b16005
    (set-face-attribute 'mode-line-inactive nil
                        :foreground dimSuperb ;;78503f 785035
			:overline dimSuperb
			:underline dimDark
                        :background dimBright)))) ;;181007 2f1f1f 281b11 3f2b20
(add-hook 'post-command-hook 'my-god-mode-update-mode-line)



(provide-theme 'GayTheme)
