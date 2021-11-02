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
 (setq doom-font (font-spec :family "CodeNewRoman Nerd Font Mono" :size 16 :weight 'normal)
       doom-variable-pitch-font (font-spec :family "CodeNewRoman Nerd Font Mono" :size 16))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


(defun colemak-config ()
;; colemak configured
;; Save and quit
(define-key evil-normal-state-map "S" 'evil-write)

;; undo 
(define-key evil-normal-state-map "l" 'evil-undo)

;; insert 
(define-key evil-normal-state-map "k" 'evil-insert)
(define-key evil-normal-state-map "K" 'evil-insert-line)
(define-key evil-visual-state-map "k" evil-inner-text-objects-map)
(define-key evil-visual-state-map "K" 'evil-insert)

;; unei for hjkl
(define-key evil-normal-state-map "u" nil)
(define-key evil-normal-state-map "n" nil) 
(define-key evil-normal-state-map "e" nil)
(define-key evil-normal-state-map "i" nil) 
(define-key evil-normal-state-map "N" nil)
(define-key evil-normal-state-map "I" nil) 
(define-key evil-motion-state-map "e" 'evil-next-visual-line)
(define-key evil-motion-state-map "u" 'evil-previous-visual-line)
(define-key evil-motion-state-map "n" 'evil-backward-char)
(define-key evil-motion-state-map "i" 'evil-forward-char)
(define-key evil-motion-state-map "I" 'evil-end-of-line)
(define-key evil-motion-state-map "N" 'evil-beginning-of-line)
(define-key evil-visual-state-map "e" 'evil-next-visual-line)
(define-key evil-visual-state-map "u" 'evil-previous-visual-line)
(define-key evil-visual-state-map "n" 'evil-backward-char)
(define-key evil-visual-state-map "i" 'evil-forward-char)

;; searsh
(define-key evil-normal-state-map "=" nil)
(define-key evil-normal-state-map "-" nil) 
(define-key evil-motion-state-map "=" 'evil-search-next)
(define-key evil-motion-state-map "-" 'evil-search-previous)

(define-key evil-normal-state-map "j" nil)
(define-key evil-normal-state-map "J" nil) 
(define-key evil-motion-state-map "j" 'evil-forward-word-end)
(define-key evil-motion-state-map "J" 'evil-forward-WORD-end)

;; window manage
(define-prefix-command 'evil-window-map)
(define-key evil-window-map "n" 'evil-window-left)
(define-key evil-window-map "N" 'evil-window-move-far-left)
(define-key evil-window-map "e" 'evil-window-down)
(define-key evil-window-map "E" 'evil-window-move-very-bottom)
(define-key evil-window-map "u" 'evil-window-up)
(define-key evil-window-map "U" 'evil-window-move-very-top)
(define-key evil-window-map "i" 'evil-window-right)
(define-key evil-window-map "I" 'evil-window-move-far-right)
)

(colemak-config)


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
