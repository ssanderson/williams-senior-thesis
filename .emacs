;; Get marmalade package repo.
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives 
	       '("marmalade" . "http://marmalade-repo.org/packages/")))

;; Make emacs use the system shell path variables when in OSX.
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-view-program-list (quote (("open" "open %o"))))
 '(TeX-view-program-selection (quote (((output-dvi style-pstricks) "dvips and gv") (output-dvi "xdvi") (output-pdf "open") (output-html "xdg-open"))))
 '(exec-path (quote ("/usr/bin" "/usr/local/bin" "/bin" "/usr/sbin" "/sbin" "/Applications/Emacs.app/Contents/MacOS/bin" "/usr/texbin")))
 '(gud-gdb-command-name "gdb --annotate=1")
 '(large-file-warning-threshold nil)
 '(send-mail-function (quote sendmail-send-it))
 '(transient-mark-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(fset 'nosetools-trace
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("import nose.tools; nose.tools.set_trace()" 0 "%d")) arg)))

(global-set-key (kbd "C-x p") 'nosetools-trace)

(fset 'tex-skip-line
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("\\vspace{\\baselineskip}" 0 "%d")) arg)))

(global-set-key (kbd "C-c C-t C-l") 'tex-skip-line)



	     
