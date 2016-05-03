; ### Note: For commands with " if ($nick ison #[chan-name]) ",
; ###       users will not be able to use these commands unless
; ###       they are members of that selected channel.



on *:TEXT:*:*: {

  if ( ($1 == %commandPrefix) || ($1 === $me) && ($nick ison %bAdminChan) ) {

    ; ### echo command
    if ( ($2 == echo) && ($3 != $null) ) {
      //msg $chan $3-
    }

    ; ### name change
    if ( ($2 == nick) || ($2 == name) && ($3 != $null) ) {
      nick $3
    }

    ; ### join channel
    if ( ($2 == join) && ($3 != $null) ) {
      join $3 $4
      msg %bAdminChan $3 joined ( $+ $nick $+ ).
    }

    ; ### part, leave channel
    if ( ($2 == part) || ($2 == leave) && ($3 != $null) ) {
      part $3
      msg %bAdminChan $3 parted ( $+ $nick $+ ).
    }

    ; ### say, like echo, but takes #channel name as well
    if ( ($2 == say) && ($3-4 != $null) ) {
      msg $3 $4-
    }

    ; ### hop or rejoin command
    if ( ($2 == hop) || ($2 == rejoin) ) {
      hop $chan
    }

    ; ### random, return a random number, letter
    if ( ($2 == random) && ($3-4 != $null) ) {
      msg $chan $rand($3,$4)
    }

    ; ### alive, check if bot is alive
    if ($2 == .) {
      msg $chan .
    }
  }
}
