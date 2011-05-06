# Dave's random aliases and functions for cygwin systems.
# Currently not portable, and useless to most people. Maybe someday I'll fix it?

# Verify we're living in the cygwin world?

if [[ ${$(uname -o)} =~ .*Cygwin.* ]]; then

    n++() {
        command '/cygdrive/c/Program Files (x86)/Notepad++/notepad++.exe' "$@" &
    }

fi

###################################################################################

