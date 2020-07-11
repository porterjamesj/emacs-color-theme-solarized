(require 'solarized-definitions
         (locate-file "solarized-definitions.el" custom-theme-load-path
                      '("c" "")))

;; we don't need a provide in this file becuase this macro calls
;; `provide-theme' internally
(create-solarized-theme solarized
                        solarized-description (solarized-color-definitions))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))
