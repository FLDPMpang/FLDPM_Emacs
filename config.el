;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "FLDPMpang"
      user-mail-address "frozenpang@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "CodeNewRoman Nerd Font Mono" :size 22))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)


;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

(setq fcitx-remote-command "fcitx5-remote")

;; (add-to-list 'initial-frame-alist 'fullboth)
(add-hook 'window-setup-hook #'toggle-frame-maximized)
;; (remove-hook 'doom-first-buffer-hook #'smartparens-global-mode)




;; colemak configured
(defun colemak-config ()
  ;; Unbinds
  ;; undo
  (map! :m "l" nil
        :n "l" 'evil-undo)
  ;; insert
  (map!   :m "k" nil
          :m "K" nil
          :n "k" 'evil-insert
          :n "K" 'evil-insert-line
          :v "k" evil-inner-text-objects-map
          :v "K" 'evil-insert)
  ;; noremal and visual
  (map!   :m "n" nil
          :m "e" nil
          :nv "u" nil
          :nv "i" nil
          :m "N" nil
          :m "E" nil
          :nv "U" nil
          :nv "I" nil
          :v "e" 'evil-next-visual-line
          :v "u" 'evil-previous-visual-line
          :v "n" 'evil-backward-char
          :v "i" 'evil-forward-char)
  ;; motion
  (map!   :m "h" nil
          :m "j" nil
          :m "H" nil
          :m "J" nil
          :m "ge" nil
          :m "gE" nil
          :m "gj" nil
          :m "gJ" nil
          :m "gj" 'evil-backward-word-end
          :m "gJ" 'evil-backward-WORD-end
          :m "gE" 'evil-previous-visual-line
          :m "ge" 'evil-next-visual-line
          :m "e" 'evil-next-visual-line
          :m "u" 'evil-previous-visual-line
          :m "n" 'evil-backward-char
          :m "i" 'evil-forward-char
          :m "I" 'evil-end-of-line
          :m "N" 'evil-beginning-of-line
          :m "h" 'evil-ex-search-next
          :m "H" 'evil-ex-search-previous
          :m "j" 'evil-forward-word-end
          :m "J" 'evil-forward-WORD-end)

  ;; Operator-Pending statea
  (define-key evil-operator-state-map "i" nil)



  ;; window manage
  (define-key evil-window-map "b" 'evil-window-bottom-right)
  (define-key evil-window-map "c" 'evil-window-delete)
  (define-key evil-window-map "n" 'evil-window-left);;h
  (define-key evil-window-map "N" 'evil-window-move-far-left)
  (define-key evil-window-map "e" 'evil-window-down);;j
  (define-key evil-window-map "E" 'evil-window-move-very-bottom)
  (define-key evil-window-map "u" 'evil-window-up);;k
  (define-key evil-window-map "U" 'evil-window-move-very-top)
  (define-key evil-window-map "i" 'evil-window-right);;l
  (define-key evil-window-map "I" 'evil-window-move-far-right)
  (define-key evil-window-map "h" 'evil-window-new)
  (define-key evil-window-map "o" 'delete-other-windows)
  (define-key evil-window-map "p" 'evil-window-mru)
  (define-key evil-window-map "q" 'evil-quit)
  (define-key evil-window-map "r" 'evil-window-rotate-downwards)
  (define-key evil-window-map "R" 'evil-window-rotate-upwards)
  (define-key evil-window-map "s" 'evil-window-split)
  (define-key evil-window-map "S" 'evil-window-split)
  (define-key evil-window-map "t" 'evil-window-top-left)
  (define-key evil-window-map "v" 'evil-window-vsplit)
  (define-key evil-window-map "w" 'evil-window-next)
  (define-key evil-window-map "W" 'evil-window-prev)
  (define-key evil-window-map "+" 'evil-window-increase-height)
  (define-key evil-window-map "-" 'evil-window-decrease-height)
  (define-key evil-window-map "_" 'evil-window-set-height)
  (define-key evil-window-map "<" 'evil-window-decrease-width)
  (define-key evil-window-map ">" 'evil-window-increase-width)
  (define-key evil-window-map "=" 'balance-windows)
  (define-key evil-window-map "|" 'evil-window-set-width)
  (define-key evil-window-map "\C-b" 'evil-window-bottom-right)
  (define-key evil-window-map "\C-c" 'evil-window-delete)
  (define-key evil-window-map (kbd "C-S-h") 'evil-window-move-far-left)
  (define-key evil-window-map (kbd "C-S-j") 'evil-window-move-very-bottom)
  (define-key evil-window-map (kbd "C-S-k") 'evil-window-move-very-top)
  (define-key evil-window-map (kbd "C-S-l") 'evil-window-move-far-right)
  (define-key evil-window-map "\C-n" 'evil-window-new)
  (define-key evil-window-map "\C-o" 'delete-other-windows)
  (define-key evil-window-map "\C-p" 'evil-window-mru)
  (define-key evil-window-map "\C-r" 'evil-window-rotate-downwards)
  (define-key evil-window-map (kbd "C-S-r") 'evil-window-rotate-upwards)
  (define-key evil-window-map "\C-s" 'evil-window-split)
  (define-key evil-window-map (kbd "C-S-s") 'evil-window-split)
  (define-key evil-window-map "\C-t" 'evil-window-top-left)
  (define-key evil-window-map "\C-v" 'evil-window-vsplit)
  (define-key evil-window-map "\C-w" 'evil-window-next)
  (define-key evil-window-map (kbd "C-S-W") 'evil-window-prev)
  (define-key evil-window-map "\C-_" 'evil-window-set-height)
  (define-key evil-window-map "\C-f" 'ffap-other-window))

(after! evil
  (colemak-config)
  )


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(after! org

  ;; If you use `org' and don't want your org files in the default location below,
  ;; change `org-directory'. It must be set before org loads!
  (setq org-directory "~/org/")
  (setq org-capture-templates nil)
  (setq org-capture-templates '(
                                ("t" "Task" entry (file+headline "~/org/task.org" "Task" )
                                 "* TODO [#B] %i%? \nDEADLINE: %u " :empty-lines 1)
                                ("s" "School" entry (file+headline "~/org/task.org" "School" )
                                 "* TODO [#B] %i%? \nSCHEDULED: %U " :empty-lines 1)
                                ("w" "Work" entry (file+headline "~/org/task.org" "Work" )
                                 "* TODO [#B] %i%? \nSCHEDULED: %U " :empty-lines 1)
                                ("p" "Project" entry (file "~/org/project.org" )
                                 "* TODO  %i%?" :empty-lines 1)
                                ("n" "Routine" entry (file "~/org/routine.org")
                                 "* TODO [#C] %i%?" :empty-lines 1)
                                ("a" "Plan" entry (file "~/org/plan.org")
                                 "* TODO [#C] %i%?" :empty-lines 1)
                                ))
  )
