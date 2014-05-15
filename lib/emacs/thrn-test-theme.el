(deftheme thrn-test-theme "Ryan's test theme")
(custom-theme-set-faces
  'thrn-test-theme
  '(default ((t (:foreground "#1c1d6d" :background "#fdfde8"))))
  '(cursor ((t (:background "#26276e"))))
  '(fringe ((t (:background "#969696"))))
  '(mode-line ((t (:foreground "#11154b" :background "#c7b98f"))))
  '(region ((t (:background "#e5c385"))))
  '(font-lock-builtin-face ((t (:foreground "#f820b4"))))
  '(font-lock-comment-face ((t (:foreground "#7d827d"))))
  '(font-lock-function-name-face ((t (:foreground "#9a2850"))))
  '(font-lock-keyword-face ((t (:foreground "#0016d1"))))
  '(font-lock-string-face ((t (:foreground "#127327"))))
  '(font-lock-type-face ((t (:foreground"#14a7c8"))))
  '(font-lock-constant-face ((t (:foreground "#e6690f"))))
  '(font-lock-variable-name-face ((t (:foreground "#7007cf"))))
  '(minibuffer-prompt ((t (:foreground "#315bc9" :bold t))))
  '(font-lock-warning-face ((t (:foreground "red" :bold t))))
)
(provide-theme 'thrn-test-theme)
