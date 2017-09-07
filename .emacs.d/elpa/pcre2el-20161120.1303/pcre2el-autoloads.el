;;; pcre2el-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "pcre2el" "pcre2el.el" (22943 33477 0 0))
;;; Generated autoloads from pcre2el.el

(defvar pcre-mode nil "\
Non-nil if PCRE mode is enabled.
See the `pcre-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `pcre-mode'.")

(custom-autoload 'pcre-mode "pcre2el" nil)

(autoload 'pcre-mode "pcre2el" "\
Use emulated PCRE syntax for regexps wherever possible.

Advises the `interactive' specs of `read-regexp' and the
following other functions so that they read PCRE syntax and
translate to its Emacs equivalent:

- `align-regexp'
- `find-tag-regexp'
- `sort-regexp-fields'
- `isearch-message-prefix'
- `ibuffer-do-replace-regexp'

Also alters the behavior of `isearch-mode' when searching by regexp.

\(fn &optional ARG)" t nil)

(autoload 'pcre-query-replace-regexp "pcre2el" "\
Perform `query-replace-regexp' using PCRE syntax.

Consider using `pcre-mode' instead of this function.

\(fn)" t nil)

(autoload 'rxt-elisp-to-pcre "pcre2el" "\
Translate REGEXP, a regexp in Emacs Lisp syntax, to Perl-compatible syntax.

Interactively, reads the regexp in one of three ways. With a
prefix arg, reads from minibuffer without string escaping, like
`query-replace-regexp'. Without a prefix arg, uses the text of
the region if it is active. Otherwise, uses the result of
evaluating the sexp before point (which might be a string regexp
literal or an expression that produces a string).

Displays the translated PCRE regexp in the echo area and copies
it to the kill ring.

Emacs regexp features such as syntax classes which cannot be
translated to PCRE will cause an error.

\(fn REGEXP)" t nil)

(autoload 'rxt-elisp-to-rx "pcre2el" "\
Translate REGEXP, a regexp in Emacs Lisp syntax, to `rx' syntax.

See `rxt-elisp-to-pcre' for a description of the interactive
behavior and `rx' for documentation of the S-expression based
regexp syntax.

\(fn REGEXP)" t nil)

(autoload 'rxt-elisp-to-strings "pcre2el" "\
Return a list of all strings matched by REGEXP, an Emacs Lisp regexp.

See `rxt-elisp-to-pcre' for a description of the interactive behavior.

This is useful primarily for getting back the original list of
strings from a regexp generated by `regexp-opt', but it will work
with any regexp without unbounded quantifiers (*, +, {2, } and so
on).

Throws an error if REGEXP contains any infinite quantifiers.

\(fn REGEXP)" t nil)

(autoload 'rxt-toggle-elisp-rx "pcre2el" "\
Toggle the regexp near point between Elisp string and rx syntax.

\(fn)" t nil)

(autoload 'rxt-pcre-to-elisp "pcre2el" "\
Translate PCRE, a regexp in Perl-compatible syntax, to Emacs Lisp.

Interactively, uses the contents of the region if it is active,
otherwise reads from the minibuffer. Prints the Emacs translation
in the echo area and copies it to the kill ring.

PCRE regexp features that cannot be translated into Emacs syntax
will cause an error. See the commentary section of pcre2el.el for
more details.

\(fn PCRE &optional FLAGS)" t nil)

(defalias 'pcre-to-elisp 'rxt-pcre-to-elisp)

(autoload 'rxt-pcre-to-rx "pcre2el" "\
Translate PCRE, a regexp in Perl-compatible syntax, to `rx' syntax.

See `rxt-pcre-to-elisp' for a description of the interactive behavior.

\(fn PCRE &optional FLAGS)" t nil)

(autoload 'rxt-pcre-to-strings "pcre2el" "\
Return a list of all strings matched by PCRE, a Perl-compatible regexp.

See `rxt-elisp-to-pcre' for a description of the interactive
behavior and `rxt-elisp-to-strings' for why this might be useful.

Throws an error if PCRE contains any infinite quantifiers.

\(fn PCRE &optional FLAGS)" t nil)

(autoload 'rxt-explain-elisp "pcre2el" "\
Insert the pretty-printed `rx' syntax for REGEXP in a new buffer.

REGEXP is a regular expression in Emacs Lisp syntax. See
`rxt-elisp-to-pcre' for a description of how REGEXP is read
interactively.

\(fn REGEXP)" t nil)

(autoload 'rxt-explain-pcre "pcre2el" "\
Insert the pretty-printed `rx' syntax for REGEXP in a new buffer.

REGEXP is a regular expression in PCRE syntax. See
`rxt-pcre-to-elisp' for a description of how REGEXP is read
interactively.

\(fn REGEXP &optional FLAGS)" t nil)

(autoload 'rxt-quote-pcre "pcre2el" "\
Return a PCRE regexp which matches TEXT literally.

Any PCRE metacharacters in TEXT will be quoted with a backslash.

\(fn TEXT)" nil nil)

(autoload 'rxt-explain "pcre2el" "\
Pop up a buffer with pretty-printed `rx' syntax for the regex at point.

Chooses regex syntax to read based on current major mode, calling
`rxt-explain-elisp' if buffer is in `emacs-lisp-mode' or
`lisp-interaction-mode', or `rxt-explain-pcre' otherwise.

\(fn)" t nil)

(autoload 'rxt-convert-syntax "pcre2el" "\
Convert regex at point to other kind of syntax, depending on major mode.

For buffers in `emacs-lisp-mode' or `lisp-interaction-mode',
calls `rxt-elisp-to-pcre' to convert to PCRE syntax. Otherwise,
calls `rxt-pcre-to-elisp' to convert to Emacs syntax.

The converted syntax is displayed in the echo area and copied to
the kill ring; see the two functions named above for details.

\(fn)" t nil)

(autoload 'rxt-convert-to-rx "pcre2el" "\
Convert regex at point to RX syntax. Chooses Emacs or PCRE syntax by major mode.

\(fn)" t nil)

(autoload 'rxt-convert-to-strings "pcre2el" "\
Convert regex at point to RX syntax. Chooses Emacs or PCRE syntax by major mode.

\(fn)" t nil)

(autoload 'rxt-mode "pcre2el" "\
Regex translation utilities.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-rxt-mode "pcre2el" "\
Turn on `rxt-mode' in the current buffer.

\(fn)" t nil)

(defvar rxt-global-mode nil "\
Non-nil if Rxt-Global mode is enabled.
See the `rxt-global-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `rxt-global-mode'.")

(custom-autoload 'rxt-global-mode "pcre2el" nil)

(autoload 'rxt-global-mode "pcre2el" "\
Toggle Rxt mode in all buffers.
With prefix ARG, enable Rxt-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Rxt mode is enabled in all buffers where
`turn-on-rxt-mode' would do it.
See `rxt-mode' for more information on Rxt mode.

\(fn &optional ARG)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; pcre2el-autoloads.el ends here