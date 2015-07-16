on run argv
	
	set tmpl to "Templater 2.jsxbin"
	tell application "Finder"
		set current_path to POSIX path of (container of (path to me) as string)
	end tell
	
	set scriptFile to (current_path & tmpl)
	
	display dialog scriptFile
	
	tell application "Adobe After Effects CS5"
		activate
		using terms from application "Adobe After Effects CS5"
			DoScriptFile scriptFile
		end using terms from
	end tell
	
end run

