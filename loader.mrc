; # Handles loading, unloading, and reloading .mrc (script) files.
;
; 25 Apr 2016
; Harry F.

on *:TEXT:*:*: {
  if ( ($1 == %commandPrefix) || ($1 === $me) && ($nick ison %bAdminChan) ) {

    ; load a script file
    if ( ($2 == load) && ($3 == -rs) && ($4 != $null) ) {
        //load -rs scripts\bacchus-bot\ $+ $4
        msg $chan $4 loaded.
        //msg %bAdminChan $4 loaded ( $+ $nick $+ ).
    }
    
    ;load an ini file
    if ( ($2 == load) && ($3 == -rv) && ($4 != $null) ) {
        //load -rv scripts\bacchus-bot\ $+ $4
        msg $chan $4 loaded.
        //msg %bAdminChan $4 loaded ( $+ $nick $+ ).
    }

    ; reload a script file
    if ( ($2 == reload) && ($3 == -rs) && ($4 != $null) ) {
        //reload -rs scripts\bacchus-bot\ $+ $4
        msg $chan $4 reloaded.
        //msg %bAdminChan $4 reloaded ( $+ $nick $+ ).
    }
    
    ; reload an ini file
    if ( ($2 == reload) && ($3 == -rv) && ($4 != $null) ) {
      //reload -rv scripts\bacchus-bot\ $+ $4
      msg $chan $4 reloaded.
      //msg %bAdminChan $4 reloaded ( $+ $nick $+ ).
    }
    }

    ; unload a script file
    if ( ($2 == unload) && ($3 == -rs) && ($4 != $null) ) {
        //unload -rs scripts\bacchus-bot\ $+ $4
        msg $chan $4 unloaded.
        //msg %bAdminChan $4 unloaded ( $+ $nick $+ ).
    }
      
    ; unload an ini file
    if ( ($2 == unload) && ($3 == -a) && ($4 != $null) ) {
      //unload -a scripts\bacchus-bot\ $+ $4
      msg $chan $4 unloaded.
      //msg %bAdminChan $4 unloaded ( $+ $nick $+ ).
    }
  }
}
