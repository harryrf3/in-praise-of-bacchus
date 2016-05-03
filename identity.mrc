; Identity commands
;
; Harry F
; 23 Apr 2016

; NickServ Identify
on *:CONNECT: {
  //ns identify %bPass
}

; Manual Identify, just in case something goes wrong.

on *:TEXT:*:*: {
  if ($1 == %commandPrefix) || ($1 == $me) {
    if ($2 == identify) || ($2 == login) {
      //ns identify %bPass
    }
    if ($2 == unidentify) || ($2 == logout) {
      ns logout
    }
  }
}
