;; ~next-slide
;; ~prev-slide

(defun ~next-slide ()
  "Advance to the next slide."
  (interactive)
  
  (find-file
   (first (file-expand-wildcards (format "%s%s-*"
                                         (~current-dir)
                                         (+ 1 (string-to-number
                                               (first 
                                                (split-string (~current-file-name-without-extension)
                                                              "-")))))))))
