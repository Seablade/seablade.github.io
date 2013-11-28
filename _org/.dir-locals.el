((nil . ((org-publish-project-alist
	      . (("org-notes"               ;Used to export .org file
		   :base-directory "~/Sites/Github/org/"  ;directory holds .org files 
		   :base-extension "org"     ;process .org file only    
		   :publishing-directory "~/Sites/Github/"    ;export destination
					;:publishing-directory "/ssh:user@server" ;export to server
		   :recursive t
		   :publishing-function org-publish-org-to-html
		   :headline-levels 4               ; Just the default for this project.
		   :auto-preamble nil
		   :auto-sitemap t                  ; Generate sitemap.org automagically...
		   :sitemap-filename "sitemap.org"  ; ... call it sitemap.org (it's the default)...
		   :sitemap-title "Sitemap"         ; ... with title 'Sitemap'.
		   :export-creator-info nil    ; Disable the inclusion of "Created by Org" in the postamble.
		   :export-author-info nil     ; Disable the inclusion of "Author: Your Name" in the postamble.
		   :auto-postamble nil         ; Disable auto postamble 
		   :table-of-contents nil      ; Set this to "t" if you want a table of contents, set to "nil" disables TOC.
		   :section-numbers nil        ; Set this to "t" if you want headings to have numbers.
                   :html-preamble "    
  <span id=\"header\"><h1>Leviathan-AVC</h1></span>
  <hr>"
		   :html-postamble "    
<p class=\"postamble\">Last Updated %d.</p>
<script type=\"text/javascript\"> $( \"body\" ).wrapInner(\"<div class='container'></div>\"); 
                                  $( \"#header\" ).append( $(\".navbar\"))</script> "
		   :style-include-default nil  ;Disable the default css style
		   )
		  ("org-static"                ;Used to publish static files
		   :base-directory "~/Sites/Github/static/"
		   :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
		   :publishing-directory "~/Sites/Github/"
		   :recursive t
		   :publishing-function org-publish-attachment
		   )
		  ("github-blog" :components ("org-notes" "org-static")) ;combine "org-static" and "org-static" into one function call
		  )))
))