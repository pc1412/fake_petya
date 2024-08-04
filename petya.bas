DECLARE FUNCTION RCG$ (length!)
DECLARE FUNCTION RandomCodeGenerator$ (length!)
DECLARE SUB PetyaLogo ()
DECLARE SUB PetyaMain ()
DECLARE FUNCTION ptNode! (current.var!, max.var!)
DECLARE SUB title ()
DECLARE FUNCTION DTRIM$ (var!)

CLS
RANDOMIZE TIMER
title
PetyaLogo
PetyaMain

FUNCTION DTRIM$ (var)
    DTRIM$ = RTRIM$(LTRIM$(STR$(var)))
END FUNCTION

SUB PetyaLogo
CLS
     DO
        count = count + 1
        IF count MOD 2 THEN
            COLOR 2, 0
        ELSE
            COLOR 0, 2
        END IF
        
         LOCATE 1, 1: PRINT "                              uu$$$$$$$$$$$uu                                   ";
         LOCATE 2, 1: PRINT "                           uu$$$$$$$$$$$$$$$$$uu                                ";
         LOCATE 3, 1: PRINT "                          u$$$$$$$$$$$$$$$$$$$$$u                               ";
         LOCATE 4, 1: PRINT "                          u$$$$$$$$$$$$$$$$$$$$$$$u                             ";
         LOCATE 5, 1: PRINT "                        u$$$$$$$$$$$$$$$$$$$$$$$$$u                             ";
         LOCATE 6, 1: PRINT "                        u$$$$$$$$$$$$$$$$$$$$$$$$$u                             ";
         LOCATE 7, 1: PRINT "                        u$$$$$$*   *$$$*   *$$$$$$u                             ";
         LOCATE 8, 1: PRINT "                        *$$$$*      u$u       $$$$*                             ";
         LOCATE 9, 1: PRINT "                         $$$u       u$u       u$$$                              ";
        LOCATE 10, 1: PRINT "                         $$$u      u$$$u      u$$$                              ";
        LOCATE 11, 1: PRINT "                          *$$$$uu$$$   $$$u$$$$$*                               ";
        LOCATE 12, 1: PRINT "                           *$$$$$$$*   *$$$$$$$*                                ";
        LOCATE 13, 1: PRINT "                             u$$$$$$$u$$$$$$$u                                  ";
        LOCATE 14, 1: PRINT "                              u$*$*$*$*$*$*$u                                   ";
        LOCATE 15, 1: PRINT "                   uuu        $$u$ $ $ $ $u$$       uuu                         ";
        LOCATE 16, 1: PRINT "                  u$$$$        $$$$$u$u$u$$$       u$$$$                        ";
        LOCATE 17, 1: PRINT "                   $$$$$uu      &$$$$$$$$$*     uu$$$$$$                        ";
        LOCATE 18, 1: PRINT "                 u$$$$$$$$$$$uu    *****    yyyy$$$$$$$$$                       ";
        LOCATE 19, 1: PRINT "                 $$$$***$$$$$$$$$$uuu   uu$$$$$$$$$***$$$*                      ";
        LOCATE 20, 1: PRINT "                  ***      **$$$$$$$$$$$uu **$***                               ";
        LOCATE 21, 1: PRINT "                           uuuu **$$$$$$$$$$uuu                                 ";
        LOCATE 22, 1: PRINT "                  u$$$uuu$$$$$$$$$uu **$$$$$$$$$$$uuu$$$                        ";
        LOCATE 23, 1: PRINT "                  $$$$$$$$$$****           **$$$$$$$$$$$*                       ";
        LOCATE 24, 1: PRINT "                    *$$$$$*                      **$$$$**                       ";
        LOCATE 25, 1: PRINT "                      $$$*     PRESS ANY KEY!      $$$$*                        ";
       
        k$ = INKEY$
       
        z! = TIMER: DO: LOOP UNTIL z! + .15 < TIMER
    LOOP UNTIL k$ <> ""
END SUB

SUB PetyaMain
    COLOR 2, 0
    CLS
   
    LOCATE 1, 1: PRINT " You became victim of the PETYA RANSOMWARE!";
    LOCATE 2, 1: PRINT "‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹";
    LOCATE 4, 1: PRINT " The harddisks of your computer have been encrypted with an military grade";
    LOCATE 5, 1: PRINT " encryption algorithm. There is no way to restore your data without a special";
    LOCATE 6, 1: PRINT " key. You can purchase this key on the darknet page shown in step 2.";
    LOCATE 8, 1: PRINT " To purchase your key and restore your data, please follow these three easy";
    LOCATE 9, 1: PRINT " steps:";
    LOCATE 11, 1: PRINT " 1. Download the Tor Browser at " + CHR$(34) + "https://www.torproject.org/" + CHR$(34) + ". If you need";
    LOCATE 12, 1: PRINT "    help, please google for " + CHR$(34) + "access onion page" + CHR$(34) + ".";
    LOCATE 13, 1: PRINT " 2. Visit one of the following pages with the Tor Browser:";
    LOCATE 15, 1: PRINT "    http://petya3jxfp2f7g3i.onion/6QvDY2";
    LOCATE 16, 1: PRINT "    http://petya3sen7dyko2n.onion/6QvDY2";
    LOCATE 18, 1: PRINT " 3. Enter your personal decryption code there:";
    '                               - 1-   - 2-   - 3-   - 4-   - 5-   - 6-   - 7-   - 8-   - 9-   -10-
    LOCATE 20, 1: PRINT USING "    \    \-\    \-\    \-\    \-\    \-\    \-\    \-\    \-\    \-\    \-"; RCG$(6); RCG$(6); RCG$(6); RCG$(6); RCG$(6); RCG$(6); RCG$(6); RCG$(6); RCG$(6); RCG$(6);
    '                               -11-   -12-   -13-   -14-   -15-   -16-
    LOCATE 21, 1: PRINT USING "    \    \-\    \-\    \-\    \-\    \-\    \"; RCG$(6); RCG$(6); RCG$(6); RCG$(6); RCG$(6); RCG$(6);
    LOCATE 23, 1: PRINT " If you already purchased your key, please enter it below.";
    LOCATE 25, 1: PRINT " Key:";
   
    LINE INPUT in.key$
END SUB

FUNCTION ptNode (current.var, max.var)
    ptNode = INT((current.var / max.var) * 100)
END FUNCTION

FUNCTION RCG$ (length)
    'RCG : Random Code Generator
    num.data$ = "0123456789"
    uchar.data$ = UCASE$("QWERTYUIOPASDFGHJKLZXCVBNM")
    lchar.data$ = LCASE$(uchar.data$)
    data.data$ = uchar.data$ + num.data$ + lchar.data$
    
    FOR i = 1 TO length
        x = INT(RND(1) * LEN(data.data$)) + 1
        k$ = k$ + MID$(data.data$, x, 1)
    NEXT i
   
    RCG$ = k$
END FUNCTION

SUB title
    max = INT(RND(65535) * 524287)
    stop.var = INT(RND(1) * 4097)
     LOCATE 1, 1: PRINT "Repairing file system on C:"
     LOCATE 3, 1: PRINT "The type of the file system is NTFS."
     LOCATE 4, 1: PRINT "One of your disks contains errors and needs to be repaired. This process"
     LOCATE 5, 1: PRINT "may take several hours to complete.It is strongly recommended to let it"
     LOCATE 6, 1: PRINT "complete."
   
     LOCATE 8, 1: PRINT "WARNING: DO NOT TURN OFF YOUR PC! IF YOU ABORT THIS PROCESS, YOU COULD"
     LOCATE 9, 1: PRINT "DESTROY ALL OF YOUR DATA! PLEASE ENSURE THAT YOUR POWER CABLE IS plugged"
    LOCATE 10, 1: PRINT "IN!"
    FOR i = INT(RND(1) * max) TO max
        'pn = INT((i / max) * 100)
        exit.var = exit.var + 1
        LOCATE 12, 1:
        PRINT "CHKDSK is repairing sector " + DTRIM$(i) + " of " + DTRIM$(max) + " (" + DTRIM$(ptNode(i, max)) + "%)"
        IF exit.var = 1023 + stop.var THEN EXIT FOR
    NEXT i
END SUB

