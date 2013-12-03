((nil . ((org-publish-project-alist
	      . (("github-notes"               ;Used to export .org file
		   :base-directory "~/Sites/Github/_org/"  ;directory holds .org files 
		   :base-extension "org"     ;process .org file only    
		   :publishing-directory "~/Sites/Github/"    ;export destination
					;:publishing-directory "/ssh:user@server" ;export to server
		   :recursive t
		   :publishing-function org-publish-org-to-html
		   :headline-levels 4               ; Just the default for this project.
		   :auto-preamble nil
		   :auto-sitemap nil                  ; Generate sitemap.org automagically...
		   :sitemap-filename "sitemap.org"  ; ... call it sitemap.org (it's the default)...
		   :sitemap-title "Sitemap"         ; ... with title 'Sitemap'.
		   :export-creator-info nil    ; Disable the inclusion of "Created by Org" in the postamble.
		   :export-author-info nil     ; Disable the inclusion of "Author: Your Name" in the postamble.
		   :auto-postamble nil         ; Disable auto postamble 
		   :table-of-contents nil      ; Set this to "t" if you want a table of contents, set to "nil" disables TOC.
		   :section-numbers nil        ; Set this to "t" if you want headings to have numbers.
                   :html-preamble " "          ; Contents of preamble 
		   :html-postamble " "         ; Contents of postamble
		   :style-include-default nil  ;Disable the default css style
		   :body-only t                ; Only export section between <body> and </body>
                   )
		  ("github-static"                ;Used to publish static files
		   :base-directory "~/Sites/Github/_org/assets/"
		   :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
		   :publishing-directory "~/Sites/Github/assets/"
		   :recursive t
		   :publishing-function org-publish-attachment
		   )
		  ("github" :components ("github-notes" "github-static")) ; Combine into one function call, add "org-static" with a space if desired 
		  )))
))