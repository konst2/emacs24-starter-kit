; выаолняем текущий файл по F8

(defun xah-run-current-file ()
  "Execute the current file.
For example, if the current buffer is the file xx.py, then it'll call 「python xx.py」 in a shell.
The file can be php, perl, python, ruby, javascript, bash, ocaml, vb, elisp.
File suffix is used to determine what program to run.

If the file is modified, ask if you want to save first.

URL `http://ergoemacs.org/emacs/elisp_run_current_file.html'
version 2014-10-28"
  (interactive)
  (let* (
         (ξsuffixMap
          ;; (‹extension› . ‹shell program name›)
          `(
            ;("php" . "php")
            ("pl" . "perl")
            ("py" . "python3")
            ;("py3" . ,(if (string-equal system-type "windows-nt") "c:/Python32/python.exe" "python3"))
            ;("rb" . "ruby")
            ("js" . "node") ; node.js
            ("sh" . "bash")
            ;("clj" . "java -cp /home/xah/apps/clojure-1.6.0/clojure-1.6.0.jar clojure.main")
            ;("ml" . "ocaml")
            ;("vbs" . "cscript")
            ;; ("pov" . "/usr/local/bin/povray +R2 +A0.1 +J1.2 +Am2 +Q9 +H480 +W640")
            ))
         (ξfName (buffer-file-name))
         (ξfSuffix (file-name-extension ξfName))
         (ξprogName (cdr (assoc ξfSuffix ξsuffixMap)))
         (ξcmdStr (concat ξprogName " \""   ξfName "\"")))

    (when (buffer-modified-p)
      (when (y-or-n-p "Buffer modified. Do you want to save first?")
        (save-buffer)))

    (if (string-equal ξfSuffix "el") ; special case for emacs lisp
        (load ξfName)
      (if ξprogName
          (progn
            (message "Running…")
            (shell-command ξcmdStr "*xah-run-current-file output*" ))
        (message "No recognized program file suffix for this file.")))))

(global-set-key (kbd "<f8>") 'xah-run-current-file)
