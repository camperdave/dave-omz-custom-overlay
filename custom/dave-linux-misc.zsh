# Dave's random aliases and functions for Linux systems.
# Currently not portable, and useless to most people. Maybe someday I'll fix it?

# Verify we're living in the cygwin world?

if [[ ${$(uname -o)} =~ .*Linux.* ]]; then

    # Path Hax, not needed in Cygwin

    export PATH=$PATH:$HOME/android-sdk-linux_x86/tools:$HOME/android-ndk

    # Clever gedit alias function:
    gedit() {
        command "gedit" "$@" &
    }
    
    # TinyOS useful tool aliases.
    
    alias PrintfClient='java -cp /opt/tinyos-2.1.1/support/sdk/java/tinyos.jar net.tinyos.tools.PrintfClient -comm serial@/dev/mote_ultrasound:telosb'
    
    alias SerialForwarder='java -cp /opt/tinyos-2.1.1/support/sdk/java/tinyos.jar net.tinyos.sf.SerialForwarder -comm serial@/dev/mote_base:telosb'
    
fi

###################################################################################

