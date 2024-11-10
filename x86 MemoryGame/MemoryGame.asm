; Daniel Wilson
; Memory Game
; Originally Completed For:
; CSC 3000 X00 Advanced Computer Architecture
; 11/9/2024

INCLUDE C:\Irvine\Irvine32.inc          
INCLUDELIB C:\Irvine\Irvine32.lib

.data
title001 BYTE '___  ___                                  _____                      ',0
title002 BYTE '|  \/  |                                 |  __ \                     ',0
title003 BYTE '| .  . | ___ _ __ ___   ___  _ __ _   _  | |  \/ __ _ _ __ ___   ___ ',0
title004 BYTE '| |\/| |/ _ \  _ ` _ \ / _ \|  __| | | | | | __ / _` |  _ ` _ \ / _ \',0
title005 BYTE '| |  | |  __/ | | | | | (_) | |  | |_| | | |_\ \ (_| | | | | | |  __/',0
title006 BYTE '\_|  |_/\___|_| |_| |_|\___/|_|   \__, |  \____/\__,_|_| |_| |_|\___|',0
title007 BYTE '                                   __/ |                             ',0
title008 BYTE '                                  |___/                              ',0


cat001 BYTE  '                                                                               ', 0
cat002 BYTE  '                                                                               ', 0
cat003 BYTE  '                                                                               ', 0
cat004 BYTE  '                                                                               ', 0
cat005 BYTE  '                                        ..                                     ', 0
cat006 BYTE  '                               .       ;xx:                                    ', 0
cat007 BYTE  '                              .:;;:::.x$$$x                                    ', 0
cat008 BYTE  '                            .;++;+xxxx$&$$x.                                   ', 0
cat009 BYTE  '                           ..:x::xx;xXXXxxx;                                   ', 0
cat010 BYTE  '                         .xx+x++xxxx+;++XXXx.                                  ', 0
cat011 BYTE  '                        .;xXX$$$$XxXxxxxxXX+.                                  ', 0
cat012 BYTE  '                         :X$$&$$XXX$$xXXxXx;                                   ', 0
cat013 BYTE  '                          ;x$$$$$$XX$XXXxx+                                    ', 0
cat014 BYTE  '                          ;x$$$$$$XXXxxxx+.                                    ', 0
cat015 BYTE  '                 ...     .xX$&&&$&&&$$$$x;                                     ', 0
cat016 BYTE  '               .;;++:.  .;xX$$$$$$&$$$$$x+.                                    ', 0
cat017 BYTE  '              .;+Xxxx; .;+xxX$$$&&$$$$$xxx;..                                  ', 0
cat018 BYTE  '               ::;X$$$xxxXxxxX$$&$$$Xxxxxx;;;:                                 ', 0
cat019 BYTE  '                  ;x$$$$$XxxXX$XX$$xXxx+xx;;;;:                                ', 0
cat020 BYTE  '                  .;xX$$&X+$x$&&&X$$xxxxxx+;;;::                               ', 0
cat021 BYTE  '                   .xXXX$Xxxx$$$XXXXxx++xx++++;:;.                             ', 0
cat022 BYTE  '                    .;xX$$xxxXX$$xXxxx;++xxx+;;;::                             ', 0
cat023 BYTE  '                      .;xx++xxxx$$XxXx;++x+++++;:;:                            ', 0
cat024 BYTE  '                           .+x+xx$xxx;+;xx;;++;;:;;;:                          ', 0
cat025 BYTE  '                            .:;+$$$Xxx;;;;;++;;;;:;+xx+:.                      ', 0
cat026 BYTE  '                              .;+xXXx++;;;;;;;;;. .;+xxxxxxx++;                ', 0
cat027 BYTE  '                               .;xXx+;;:;;+++++;     ..;;;;..                  ', 0
cat028 BYTE  '                               .;xxxxx;;;;+xx++;                               ', 0
cat029 BYTE  '                               .+Xxxx+:  .;xxxx;                               ', 0
cat030 BYTE  '                                +xxxx;     xxXx+.                              ', 0
cat031 BYTE  '                               .;xxx+:     ;X$X+.                              ', 0
cat032 BYTE  '                             .;:xxxx;      :$$$x.                              ', 0
cat033 BYTE  '                             ;:+xxx+.     .XxXx;                               ', 0
cat034 BYTE  '                              .+xx+;.     .x$X+;                               ', 0
cat035 BYTE  '                              ;;;;;:.     .....                                ', 0
cat036 BYTE  '                             ;+++;;;..                                         ', 0
cat037 BYTE  '                             .:;;;:.                                           ', 0
cat038 BYTE  '                                                                               ', 0
cat039 BYTE  '                                                                               ', 0
deer001 BYTE  '                                                                               ', 0
deer002 BYTE  '                                                                               ', 0
deer003 BYTE  '                                                                               ', 0
deer004 BYTE  '                                                                               ', 0
deer005 BYTE  '                                                                               ', 0
deer006 BYTE  '                                                  .+.               .          ', 0
deer007 BYTE  '                                                   .+;;         .;x+.          ', 0
deer008 BYTE  '                                                    ++;$+     ;x+x+:           ', 0
deer009 BYTE  '                                                      .;+;;;++++;;.            ', 0
deer010 BYTE  '                                                        ;;xx+;;+;              ', 0
deer011 BYTE  '                                                        :;;++x++.              ', 0
deer012 BYTE  '                                                       .;:;;;;;;:              ', 0
deer013 BYTE  '                          ....:...                    .;;;+;;;;xX+             ', 0
deer014 BYTE  '                       :;++:;;;;;;;+;;;;;;;;;;;:.. .:++x+++x;  :;              ', 0
deer015 BYTE  '                     .;;+;:;;;;;+xxx++++;+;;;++xxxxxxxxx++x+.                  ', 0
deer016 BYTE  '                    :;+++++++++++xxXxx+;+x+++xxxxxXxXXXxxxx;                   ', 0
deer017 BYTE  '                   ;xxxxxxx+x+;++;+xxx++;;+;++;xxxxxxxxxxx;                    ', 0
deer018 BYTE  '                   X;X+x&$Xx+;+x+x;xXxxx+++x+x++x+++x+xx+                      ', 0
deer019 BYTE  '                   ;+$;;xXXxxxxxxx+xxXXxxxxx;+xxxx+xx;                         ', 0
deer020 BYTE  '                   +X&&xXxxxxxx;xXx;;;xxxx+xxxxx+xx+                           ', 0
deer021 BYTE  '                   .xX&$XXxx+xxx;++;+x+xxxxxx+x++;                             ', 0
deer022 BYTE  '                    ;xXxXXXxx+xx++X+;+x++xx$x+++;                              ', 0
deer023 BYTE  '                    ;;;;XX.xx++++xXx;xxxxXX$x;++.                              ', 0
deer024 BYTE  '                    :;;xx  +xxx+.         ;x++;;                               ', 0
deer025 BYTE  '                    ;+xx  .xxxx:           x+;;;                               ', 0
deer026 BYTE  '                   :+x;  .xxxx:            +x;;;.                              ', 0
deer027 BYTE  '                  :++;  ;xx+;              :x :;;                              ', 0
deer028 BYTE  '                  x++  .x++:               +;  ;;                              ', 0
deer029 BYTE  '                  ;+.   ;x+.               x;  .;                              ', 0
deer030 BYTE  '                 .;:    .+;.               x+  .;.                             ', 0
deer031 BYTE  '                 .;      :+.              .Xx  .;;                             ', 0
deer032 BYTE  '                 .+      .;.               x&x  +x                             ', 0
deer033 BYTE  '                 ;;       +;                    $$x                            ', 0
deer034 BYTE  '                 +;       xx                     ;;:                           ', 0
deer035 BYTE  '                .x;       ;X+                                                  ', 0
deer036 BYTE  '                +$$       .&$X                                                 ', 0
deer037 BYTE  '                :&&x       ;$$x.                                               ', 0
deer038 BYTE  '                  .                                                            ', 0
deer039 BYTE  '                                                                               ', 0
dog001 BYTE  '                                                                               ', 0
dog002 BYTE  '                                                                               ', 0
dog003 BYTE  '                                                                               ', 0
dog004 BYTE  '                                                                               ', 0
dog005 BYTE  '                                                                               ', 0
dog006 BYTE  '                                                                               ', 0
dog007 BYTE  '                                                                               ', 0
dog008 BYTE  '                                                                               ', 0
dog009 BYTE  '                                    ............                               ', 0
dog010 BYTE  '                                 .::;;::.::::....:...                          ', 0
dog011 BYTE  '                               ...;+;;::...:.....::;;:..                       ', 0
dog012 BYTE  '                             .;+..x::;;;:;:;;:;;:.:;x;.;;:                     ', 0
dog013 BYTE  '                           .;;;;;.X;x$$X+;;;;xX$$+.:x;::;;;.                   ', 0
dog014 BYTE  '                            ;+;;;:X;:;;;:::::+x+;::;x+;;;;;;                   ', 0
dog015 BYTE  '                             ;xx:;$;::::::.::;;;:.:;x++:;;;.                   ', 0
dog016 BYTE  '                              .;;;+;::..:;;;..;:.::;;;.;:;                     ', 0
dog017 BYTE  '                               .;x;;...;$xxx:..:.;:;;. ;.                      ', 0
dog018 BYTE  '                               .+x;;..:x$X$X;....::x+;  .                      ', 0
dog019 BYTE  '                        ........:+x+;..+xXXx:..:.::;;:.                        ', 0
dog020 BYTE  '                    ....... .....:+Xxx;x$$$x:.:;;:;;:.                         ', 0
dog021 BYTE  '              ........:.... ...:;::+Xx:;$&$+;..;;;::..                         ', 0
dog022 BYTE  '           ........:;x;.......:;;.:;+;::...;;:;;;:....                         ', 0
dog023 BYTE  '         .......;;;:+x;..... ..:;..;+x++;;;;;;:::......                        ', 0
dog024 BYTE  '         ...::..:;x;x+........::.::::;++;;:;;:;;::......                       ', 0
dog025 BYTE  '        .. .::...:+++:..:... ..;;.:;;;;;;++;;::;:.......                       ', 0
dog026 BYTE  '        . ..:....:;;;:.:::....::;;;.::;;::;;;;:.::::.....                      ', 0
dog027 BYTE  '      ..:...:...:;::...::: ...::;;;;;...:;;;;;:;:.........                     ', 0
dog028 BYTE  '     .. ....:...;;::....:......:;;;;;;::..:;;;;::::::......                    ', 0
dog029 BYTE  '      .    :...:x+:::....  ..::::;;;;::::::;;;:;:::::;;::;:..                  ', 0
dog030 BYTE  '        .:.+++;;;;;+;:..  ........;;;;;;:::;;;:;;;;;;;;;;;;::.                 ', 0
dog031 BYTE  '                     .. ..............xx;;::;::;..;+++;;;;;;:;;..              ', 0
dog032 BYTE  '                       ......:............;;;;;:.:;;;+xxxx;;;:::.....          ', 0
dog033 BYTE  '                       .::.:::.:;:.. ...... .......:....:;xx+;::.......        ', 0
dog034 BYTE  '                             ....;; ..;....                 ..:++::.+;.;;      ', 0
dog035 BYTE  '                                    :x+++xX:.                       .....      ', 0
dog036 BYTE  '                                                                               ', 0
dog037 BYTE  '                                                                               ', 0
dog038 BYTE  '                                                                               ', 0
dog039 BYTE  '                                                                               ', 0
donkey001 BYTE  '                                                                               ', 0
donkey002 BYTE  '                                                                               ', 0
donkey003 BYTE  '                                                                               ', 0
donkey004 BYTE  '                                                                               ', 0
donkey005 BYTE  '                                                                               ', 0
donkey006 BYTE  '                                                                               ', 0
donkey007 BYTE  '                                                                               ', 0
donkey008 BYTE  '                                                                               ', 0
donkey009 BYTE  '                  .                                                            ', 0
donkey010 BYTE  '       :x.       x+                                                            ', 0
donkey011 BYTE  '        xx;  .$$$+x                                                            ', 0
donkey012 BYTE  '         ++x;$X$xx$&$x;                                                        ', 0
donkey013 BYTE  '          :XxX$$;;;xX$$$x+;                                                    ', 0
donkey014 BYTE  '          xX$$x+;x;;;;;+x$$Xx;..............;:::::;:;:::.                      ', 0
donkey015 BYTE  '         :$$XXxX+x+xxxx+++xxxx;;;+x+x++xxx+x+x+x+xxx++;;;::.                   ', 0
donkey016 BYTE  '          x$$xxx;xxx++xxxxxxxx+;;+xx+xxxx+x+x+xXxXxxxx;;:..::                  ', 0
donkey017 BYTE  '          +$xxXXx$$X++xX$xxxx++x++xxXXxxxxxxxxxxxxxxxXx+;;:.;                  ', 0
donkey018 BYTE  '          .;..;;:$$$Xxx$XxxxxxX$$XxXXXxxxx+x+xxxx+xXxxxxxx;;x;                 ', 0
donkey019 BYTE  '          :+.:    .X$X$$$XxXxXX$$$X$$$X$Xxxx+xxx+++xxxxxx+;.;;                 ', 0
donkey020 BYTE  '           $$x       ;xxXXXxxXXXX$X$$$$$$XXXxXxxxxxXXxx;+;  ;;                 ', 0
donkey021 BYTE  '                       .xX$Xx$$$XxXX$$$$$$$$XXxx+;+xXXx;:   ;x                 ', 0
donkey022 BYTE  '                        .+x$$$X$Xx;++xxxxx+xx+;;+.;xx+x;.    X.                ', 0
donkey023 BYTE  '                           xXXx    :;;;;;::;::.    .+x:..    xx.               ', 0
donkey024 BYTE  '                           ;Xx;                     :++;:+:   $X.              ', 0
donkey025 BYTE  '                           .Xx+                      .xxx;xX.  x$+             ', 0
donkey026 BYTE  '                            $x+                       ;+xXx;.   xX:            ', 0
donkey027 BYTE  '                            X$X.                       X$$X;     +x;           ', 0
donkey028 BYTE  '                            .$$.                       x$x;                    ', 0
donkey029 BYTE  '                             x$;                      :$$;.                    ', 0
donkey030 BYTE  '                             .$x                      $$x:                     ', 0
donkey031 BYTE  '                             :&&.                    +&$X:                     ', 0
donkey032 BYTE  '                            ;&&$                    X$xXx:                     ', 0
donkey033 BYTE  '                            ;;:                        .:.                     ', 0
donkey034 BYTE  '                                                                               ', 0
donkey035 BYTE  '                                                                               ', 0
donkey036 BYTE  '                                                                               ', 0
donkey037 BYTE  '                                                                               ', 0
donkey038 BYTE  '                                                                               ', 0
donkey039 BYTE  '                                                                               ', 0
hummingbird001 BYTE  '                                                                               ', 0
hummingbird002 BYTE  '                                                                               ', 0
hummingbird003 BYTE  '                                                                               ', 0
hummingbird004 BYTE  '                                                                               ', 0
hummingbird005 BYTE  '                                                                               ', 0
hummingbird006 BYTE  '                                                                               ', 0
hummingbird007 BYTE  '                                                                 .:;;.         ', 0
hummingbird008 BYTE  '                                                           .:+x;.              ', 0
hummingbird009 BYTE  '                                              .;;;;;;::;+x;.                   ', 0
hummingbird010 BYTE  '       ;+x++++;;:.                          ;;;.;$X;Xx::.                      ', 0
hummingbird011 BYTE  '       .xxxxxx++++++++;:.                  ++;;;+x;  .;                        ', 0
hummingbird012 BYTE  '         +xxxxxxxx+xxxxxxxx+:.            ;+;;:;x;. .:;                        ', 0
hummingbird013 BYTE  '          .;xxxxxxxxxxxx+xx+xx+x;;.       xx;;:;+;.....                        ', 0
hummingbird014 BYTE  '             .+xxxxxxxxx+++;+;++xx+xx;    xx+;:;;:.....                        ', 0
hummingbird015 BYTE  '                xxxx+++;++;+;;;;;xx+++x+;..xx;::::..::.                        ', 0
hummingbird016 BYTE  '             .:;xXX$XXxxxxxx+++;;;;xx+;+x;;;;;::::....:                        ', 0
hummingbird017 BYTE  '     .;+xxxxxxxxxxxxxXXXxxx+++;;;;;;;+;:;+;..::;..::.:;                        ', 0
hummingbird018 BYTE  '    .xxxxxxx+xxx+xxxx++;xx+++xx+;;;;;::..;;;.:;:;::::.;.                       ', 0
hummingbird019 BYTE  '       .;+xxxxxx+;;;;xx+;++xxxxxx+;;;:::...;;::;;;:::::.                       ', 0
hummingbird020 BYTE  '                       .;+xx++Xxxx+;+;;;::.;;:++:;;+;;:.                       ', 0
hummingbird021 BYTE  '                              .;xXxx;+;;+++;:;;;.;;;;;:                        ', 0
hummingbird022 BYTE  '                                  :Xx;xXxX+:;;;;;:;;:::                        ', 0
hummingbird023 BYTE  '                                     ;xx+;;;..:;;;;:+;                         ', 0
hummingbird024 BYTE  '                                    .xx+;;:;::;:;;:;;                          ', 0
hummingbird025 BYTE  '                                    xxx;+;::;:;:;+:;                           ', 0
hummingbird026 BYTE  '                                   +++;;;;;;:.:;:;.                            ', 0
hummingbird027 BYTE  '                                   xx;;:;;:.;x;+;.                             ', 0
hummingbird028 BYTE  '                                  ++;:;;;;;:++X;                               ', 0
hummingbird029 BYTE  '                                  x++;;;:;++;x+x                               ', 0
hummingbird030 BYTE  '                                 .x+;;;;;:.   .;.                              ', 0
hummingbird031 BYTE  '                                 ;x+;:;:       .                               ', 0
hummingbird032 BYTE  '                                 x+;;;                                         ', 0
hummingbird033 BYTE  '                                xX;:                                           ', 0
hummingbird034 BYTE  '                               XX;                                             ', 0
hummingbird035 BYTE  '                              x;;                                              ', 0
hummingbird036 BYTE  '                            .;;:                                               ', 0
hummingbird037 BYTE  '                           ..:                                                 ', 0
hummingbird038 BYTE  '                                                                               ', 0
hummingbird039 BYTE  '                                                                               ', 0
pig001 BYTE  '                                                                               ', 0
pig002 BYTE  '                                                                               ', 0
pig003 BYTE  '                                                                               ', 0
pig004 BYTE  '                                                 .              .              ', 0
pig005 BYTE  '                                                .:;;.           .              ', 0
pig006 BYTE  '                                               ..:;x;.        .;:              ', 0
pig007 BYTE  '                                              ....:xx:.      :;:.:             ', 0
pig008 BYTE  '                                              :...:x+:::;;;;;:::.:   .::       ', 0
pig009 BYTE  '            ..;;;;;;;;;;;;::;::..             .:..:Xx;::;;;;;;;;;::;:;:.:.     ', 0
pig010 BYTE  '         .;;;;;;;;;;::;;:;;;;;;;;;;;:;:;;;;;;+;;::;;;::;;+x+;;:;;;;xx:.::.     ', 0
pig011 BYTE  '       :;;;;:;;;;;:::::::::::::::;;;;;;++xXXxxxx+xxX+;:;+;:;;::;x;+++x+;;      ', 0
pig012 BYTE  '     .;;;;:::::;;;::::::::::::::;;;;;;;;;;+xxx+;;:;;+;:;;::...;Xx++;;;;:       ', 0
pig013 BYTE  '    :;;;::::.:::;;:;::::::::::::;;;;:::.::::::.....:;;;;;:::...:;;;;;;:        ', 0
pig014 BYTE  '   .;;;;;;::.:.:;;;;:;::::;:;::;;;;:::.::::.........;+;;;;::...:::;::;.        ', 0
pig015 BYTE  '   ;;;;;;:::.:..:;;;;;;::;:;;:;;;;;;;:.:::..........;;;;;;::::::;;;;;;         ', 0
pig016 BYTE  '   ;;;;;:::.....:;;;;;;:;;;;;;;;;;;;;:::::.........;;;;;;;;;;;;;;;;;:          ', 0
pig017 BYTE  '   ;;;;;;:::....:;;;;;;;;;;;;;;;;;;;;;::::.........;;;;;;;;;;;;;;;:            ', 0
pig018 BYTE  '   ;+;;;:::::...:;;;;;;;;;;;;;;;;;;;;:;;::::.....:..:;;;;;;;;;;;.              ', 0
pig019 BYTE  '   .;;;;;:::;:;::;;;;;;;;;;;;;;;;;;;;;;:::::...::::::;;;;;;;;;;:               ', 0
pig020 BYTE  '    ;;;;:::::::;+;;;;;;;;;;;;;;;;;+;;;;;::::::::;;;;;;;;;;:;;;:                ', 0
pig021 BYTE  '    .;;;:::::::x$$X+;;;+;;;;;;;;;;;++;;;::.::..::::::;;;;:;:::                 ', 0
pig022 BYTE  '     ;;;;:::::;xxXx++;;;+;;;;;;;;;;++;;;;:.....::::::;;:;::::.                 ', 0
pig023 BYTE  '      ;;;:::::;xxxxxx..;;;;;;;;;;;;+++;;;;;;;;;::::::::::..:.                  ', 0
pig024 BYTE  '       ;;;::::+Xxxxx;       .;;;;;;;;+;;::::;;;;;;;+;;;;:::.                   ', 0
pig025 BYTE  '        ;;;::;+xXXxx                ;+;::..:;;;:..;;++;;;:..                   ', 0
pig026 BYTE  '        .;;:.:+xxxx.                .;;;:...       :+;:...:                    ', 0
pig027 BYTE  '        .;;:.;+xxx;                 .;;;;:.        ;;:::...                    ', 0
pig028 BYTE  '         ;;:::+xx:                   ;;;;:.        ;:::...                     ', 0
pig029 BYTE  '          ;::;;++                    ;;;:..        ;;:...                      ', 0
pig030 BYTE  '          ;:::++x.                   :;::..        ;;....                      ', 0
pig031 BYTE  '          .:.:;+x.                    ::...        .;..:                       ', 0
pig032 BYTE  '          .;.:;+x;                    .:.:          ::.:                       ', 0
pig033 BYTE  '          .;::;++x                    ::..          .;:..                      ', 0
pig034 BYTE  '          :+;;:;xXX                   ;:...         .;;.:                      ', 0
pig035 BYTE  '           :;x$:....                 .+;:..         .;+;:.                     ', 0
pig036 BYTE  '             ...                     ..;:;;         ;x;;;x.                    ', 0
pig037 BYTE  '                                       :++x.          :x+xX.                   ', 0
pig038 BYTE  '                                                                               ', 0
pig039 BYTE  '                                                                               ', 0
rabbit001 BYTE  '                                                                               ', 0
rabbit002 BYTE  '         .;:                                                                   ', 0
rabbit003 BYTE  '        .+;::x;                                 ;;;;;+;                        ', 0
rabbit004 BYTE  '         ++;;;;xx.                          .xx;;;;;;+x:                       ', 0
rabbit005 BYTE  '          ;;;;;;:;X:                      .;;;;;;;;;;+x.                       ', 0
rabbit006 BYTE  '          ;+;;;;;::X$;                   +;;;::;;;;;+x+                        ', 0
rabbit007 BYTE  '           ++;;::;::X$X:               :X;:::;;;;;;;xx                         ', 0
rabbit008 BYTE  '           .+;;;;;::;$$$x.            ;$x:::;;;;;;+xx;                         ', 0
rabbit009 BYTE  '            .+;;;;;;:+$$$x:          +$X;::;;;;;++xx;                          ', 0
rabbit010 BYTE  '             :+;;;;;::x$$$$;       .x$$x::;;;+++++x;                           ', 0
rabbit011 BYTE  '              :+;;;+;:+$$$$$:     .X$X$+:+;;+x++xx;                            ', 0
rabbit012 BYTE  '               .+;;;x;;X$$&$$;.  .x$$$$x;+xxx;+xx:                             ', 0
rabbit013 BYTE  '                 .+x+x+X$$Xx$$$Xx+x$$$$XxX$xxxx;                               ', 0
rabbit014 BYTE  '                   .;xxxxx+x+xxx+xx+x$$$x$xx+.                                 ', 0
rabbit015 BYTE  '                    .xx;;;++xxx;x;++x+x$X$x;:;;;:.                             ', 0
rabbit016 BYTE  '                     :;+xxx+++++xxx+;;x$Xx;;;;;;;;;;:.                         ', 0
rabbit017 BYTE  '                     .xx+x;++x++xxx;xxxXxx;::;;;:;;:::;.                       ', 0
rabbit018 BYTE  '                     XX+xxxx+xxxxx;$&xXxx+;;;;;;;;;;;;;;:.                     ', 0
rabbit019 BYTE  '                     x++x++++xx+x++X$xXXxx;;xxxx+;;;;;;;;;:.                   ', 0
rabbit020 BYTE  '                    ;+:;;+;xx+x++;+X$XxXXxx+Xxxxxxx;+++;;;;::                  ', 0
rabbit021 BYTE  '                   ;x;;;++xxx++;++xxXXxxxxxx$Xxxxxxx++++;;;;;;.                ', 0
rabbit022 BYTE  '                  ;;;;+xxX$Xxxxxx;;xxxxxxxxx$Xx+xxXxx+;;;+;;;;:.               ', 0
rabbit023 BYTE  '                 .;;;;;;xXXXx+xxx+++Xxxxx+x+xXx+xx$$xx+;;;;;;;;:               ', 0
rabbit024 BYTE  '                 .;;;x;:;xx++:+Xxx+;xxxxx++xxxxx+x$xxx++;;;;;++;:              ', 0
rabbit025 BYTE  '                  .;;xx;;+$x+xXXx+;+x++x+;+xxxx++x$Xxx++++;;;;++;              ', 0
rabbit026 BYTE  '                    :;;;;;++;xxx+;::;;;;;;+Xxx+++xxXXxx;;;;;;;;x+.             ', 0
rabbit027 BYTE  '                   ..;;:.      ..;;;++++xxXxxx+++xxxx+x;;;;;++;;;:             ', 0
rabbit028 BYTE  '                    .:;+;+;+x+;+xxxXxxxxX$X$xx+;xxxxxxx+;;;++;;;;:             ', 0
rabbit029 BYTE  '                     :;;++x++xx++x+xx$$$$$xxxxx++xxXxxx+;;;+;;;;;:             ', 0
rabbit030 BYTE  '                      :;+++x+x+xxxxxxxxxxxXXxx+++xXxxx;;;;+;;;;;;;             ', 0
rabbit031 BYTE  '                       :;;++;;;;+x$Xxx++xxx++xxxXXXxx+;;;;;;:;;++;.            ', 0
rabbit032 BYTE  '                         :;;;;;xxxxxxx$$xx++x+xx$XXxx;;;x+;;+++x+;.            ', 0
rabbit033 BYTE  '                          ;xx;;;;;++++++x+++xx$$$Xxx++xxxx;;:;+++;.            ', 0
rabbit034 BYTE  '                          .xxxXxxx+;++X$XxxX$$$$XXxxX$$$$x+;;;;+++.            ', 0
rabbit035 BYTE  '                          :xX$$$&&$$XX$$$$$&&&$$$$$$$$$x+;;;;+;;;;.            ', 0
rabbit036 BYTE  '                        ..;xxX$$&&&$$$&&&&&&&$$$$$XXx;+;;;;;:::;;;.            ', 0
rabbit037 BYTE  '                         :xxx$$$$$$$&&&&&&&$$$$$$$$x;+x;xx+x++xXX;..           ', 0
rabbit038 BYTE  '                        .;;;xXx+x$$$&&&&&&$$$$$$$$$X;x;;xXx++;xx;.             ', 0
rabbit039 BYTE  '                           ....:;;++xxxxxxxxxxx++;+xxxxxXX$Xx;:.               ', 0
racoon001 BYTE  '                                                                               ', 0
racoon002 BYTE  '                     .;::;:.      ..::::;;                                     ', 0
racoon003 BYTE  '                      ;xxxxxx+xxxxxx++xXx;                                     ', 0
racoon004 BYTE  '                      .;x+;;++;+xxxxxXX+:.                                     ', 0
racoon005 BYTE  '                     .;;;;.;x..;;;+xx++;:;                                     ', 0
racoon006 BYTE  '                      ;.:;.x;.;;.::;;x;+;.                                     ', 0
racoon007 BYTE  '                      +X$$XXx$$$$$+:.::+;.                                     ', 0
racoon008 BYTE  '                     .$$$XXXXX$$$$$$$$x;;.                                     ', 0
racoon009 BYTE  '                     .xX;;X+::x$$$$$$$x;:.                                     ', 0
racoon010 BYTE  '                     .:;;$$X:...;;+xXXx;:                                      ', 0
racoon011 BYTE  '                      .;+x$X;..;x$&$$x;;;.                                     ', 0
racoon012 BYTE  '                      .;+xXXXXXX$$$$xxx+;.                                     ', 0
racoon013 BYTE  '                     .;;;xX$$XxxxxxXxx;;;;:                                    ', 0
racoon014 BYTE  '                     ;+;+xxXXxXxxxx+x+;;;;;.                                   ', 0
racoon015 BYTE  '                    .;;;;++xXXxxx+;+++++;;;;:                                  ', 0
racoon016 BYTE  '                    ;;;;;++xx+xx;+;;;;;;;;;;;.                                 ', 0
racoon017 BYTE  '                   .;;;++xxxx+++;+;;++x++;;;;:.                                ', 0
racoon018 BYTE  '                  .;;;;+Xx+;;;;;;;;;+xx;;;;;;::                                ', 0
racoon019 BYTE  '                 .:;+xxxXXx;;;;;;;;++;xx+;;+;;;.                               ', 0
racoon020 BYTE  '                .:;+x+;x;+;;;;;;;;;++;+xx++;+;;;:.                             ', 0
racoon021 BYTE  '               .:;+++;;;xxx+;;;+;+;;;;+;;;;;;;;;;..                            ', 0
racoon022 BYTE  '               .:;++;;;;;+;;;+x+x+;;;+;;;;;;xxxx;:.                            ', 0
racoon023 BYTE  '               .;;+++;;;+;:::;xxxx+;:;;;;;;;x++x+;:                            ', 0
racoon024 BYTE  '              .;+xx++x;;;;;;;:;xxx+;:::;;;;x+++;;;:.                           ', 0
racoon025 BYTE  '              :;xXXXxxxxxxx;;;++xx;;;;x+;+xxx+x;;;:                            ', 0
racoon026 BYTE  '             .;+xxxxX$$XxxxXxxxxxXx+xx+;+xx+++++;;:                            ', 0
racoon027 BYTE  '              ;xxxxxXxxxx$XxX$X$$$xx++;+xxx++xxxx;                             ', 0
racoon028 BYTE  '               ;xxxXXXxx++xX$XxXxx+;;;+xxxx+xxXxx+...::++;:.....               ', 0
racoon029 BYTE  '                .xxXXXxxxxxXxxxxxx+;;+x++xxxXXXXxxx;;;x$Xx;;::::.              ', 0
racoon030 BYTE  '                  +xX$$$Xxxx+xxxxx++xXXxxxX$XXxXXx+;;xX$$Xx;:..                ', 0
racoon031 BYTE  '                  ;X$$$$$xxxxx++x+;x$$$X$x$XxxxX$xx+xxX$$$x;.                  ', 0
racoon032 BYTE  '                  +x;+;+xxXxx+++;;+;;;;x$$$$$XxxXXx;;;+xx;:.                   ', 0
racoon033 BYTE  '              ;xxXX$X$$X+x:.     .$x+++;+;;;;;;;;+xxx+;;;:                     ', 0
racoon034 BYTE  '            .x$$$$$X+.             xxxXx$;                                     ', 0
racoon035 BYTE  '                                     ...                                       ', 0
racoon036 BYTE  '                                                                               ', 0
racoon037 BYTE  '                                                                               ', 0
racoon038 BYTE  '                                                                               ', 0
racoon039 BYTE  '                                                                               ', 0
rino001 BYTE  '                                                                               ', 0
rino002 BYTE  '                                            ..                                 ', 0
rino003 BYTE  '                                          ...::.                               ', 0
rino004 BYTE  '                          .;.        .....;::+xxxx                             ', 0
rino005 BYTE  '                   ..... .;xx;... . .......:;$&&Xx:                            ', 0
rino006 BYTE  '                ...;:.  ..::;xX+++;;..::.....x&&$x;..                          ', 0
rino007 BYTE  '               ...;..... ....:;xXXx;:......:;xXX+;:....                        ', 0
rino008 BYTE  '               .:;;;;..;;;:.......;;;;::.:::;++x;..:....                       ', 0
rino009 BYTE  '              .:;;.;.:;x;;...... :;;:::..::;;;;;;..::....                      ', 0
rino010 BYTE  '              .:;....:::::..:....:;...:...:;;;;;;::::.....                     ', 0
rino011 BYTE  '             .:;;.....:.....:....:........:.:;;+;+;;;:.....                    ', 0
rino012 BYTE  '             :;;;:...::.;;.:...+;:.   .......::;;xx;;::.:..                    ', 0
rino013 BYTE  '             ;;;;+:;;;::x;;;;..:Xx;;:. .....::;:;x+;+;::;:..                   ', 0
rino014 BYTE  '             ;++;;xx;;;;;$+;.:;;.x+x;;;...;;:;;:;x++x;;;;;::                   ', 0
rino015 BYTE  '             ;+xx+;+x;;+;+$x;:;:.;xx++:.::;x;::::;+Xx;;;;;;:                   ', 0
rino016 BYTE  '             :+xxx++xx+;;;;$$x;;+x;..:::.;x+;:::;++xxx+;;;;;                   ', 0
rino017 BYTE  '             .+xXXx;;xxx;x;x$$$xxxx;:.:;;;x;;:::;+x+xxxx++;;                   ', 0
rino018 BYTE  '              :xxx+X;;+Xxxx+;$$$$x+;;;;;;++;;;;;+xxXxx+;;;:                    ', 0
rino019 BYTE  '              .;;xxX$x++xxxxx$$$$$$x++;;;;;+xxxxxxX$$$$$$$x                    ', 0
rino020 BYTE  '               ;;x$&&&;xxxx$$$XX$$X$x+;;;;x+x$X$X$$&$$$Xx                      ', 0
rino021 BYTE  '               ;xx$$&:  .x$$$$x+xxXx;+;;x+xxx$$$$$&$$Xxx.                      ', 0
rino022 BYTE  '               ;xx$$&.     .X&xxxxXx;+;Xx+xX$$$$$$$$$Xx+                       ', 0
rino023 BYTE  '               ;+xX$$.      $$$xxX$XXXxx+;x .$&&&&$$$Xx.                       ', 0
rino024 BYTE  '               ;+X$&$.     +$$Xx$$$$$$$$XXx   $&&$$$$;                         ', 0
rino025 BYTE  '               :x$$$$      XXX$$$$+xX$$$$Xx. x$$$$$X.                          ', 0
rino026 BYTE  '               .;X$$x      ;$$$$$x  ;xX$XXx; $$$$$X:                           ', 0
rino027 BYTE  '               :;xX$x       ;XxX$;   ;x$$Xxx X$$$$x                            ', 0
rino028 BYTE  '              .+++X$X       .xxx$x    ;xxxxx x$$$$;                            ', 0
rino029 BYTE  '              ;Xx+xX$$;     xxxXXXXx  ;+x+xx;x$$$$x                            ', 0
rino030 BYTE  '              :;:;;xxx;    ;XxxX$$$Xx;xx++++xxX$xXxx                           ', 0
rino031 BYTE  '                                   ;xx+xxxx$XX$X&$XX;                          ', 0
rino032 BYTE  '                                    ..........                                 ', 0
rino033 BYTE  '                                                                               ', 0
rino034 BYTE  '                                                                               ', 0
rino035 BYTE  '                                                                               ', 0
rino036 BYTE  '                                                                               ', 0
rino037 BYTE  '                                                                               ', 0
rino038 BYTE  '                                                                               ', 0
rino039 BYTE  '                                                                               ', 0
zebra001 BYTE  '                                                                               ', 0
zebra002 BYTE  '               .;.                                                             ', 0
zebra003 BYTE  '          ..;..:;++                                                            ', 0
zebra004 BYTE  '          :. .:+.;X;;.                                                         ', 0
zebra005 BYTE  '         ::..;;:...::;+:.                                                      ', 0
zebra006 BYTE  '        ;;;:.;;;;.;:;; x;:.                                                    ', 0
zebra007 BYTE  '       +;:;:x+;x+;:+:x:;.;.;.                                                  ', 0
zebra008 BYTE  '      .;xX+.;+;;;x;X.xx;;; ;.:                                                 ', 0
zebra009 BYTE  '      ;;;:.;:;+;:Xx+xxX.X;;x:;:                                                ', 0
zebra010 BYTE  '     :.;;;..X++;;xXxX$;$$;+;.;; :.x;+X;+.:   ..:;;;+xx+;;X$$x.                 ', 0
zebra011 BYTE  '    :::;+;;+.;x:;;$x$X;$$.$X.;: ;:x+x:x;$:XX.xXx.+xx.:x$$$;..;Xx:              ', 0
zebra012 BYTE  '   ++::+++++;;;  .x;$;X$;;$$.;. ;;x;x.X.X;;X;x$;.$$;:$$$;.:X$$$$Xx             ', 0
zebra013 BYTE  '  ;$+;.;;;x+.      +:x$$.$$:.;:.X:$+x.X.xx.xx.xx:$X.x$$::x$$$x:::;;            ', 0
zebra014 BYTE  '  .$&$X$Xx;         :;:.x$X.xx.+;;$+X.x+.$.;X.;$x+;;&&;:x&$;...;X$$;           ', 0
zebra015 BYTE  '    +XX$$.            .:$x.XX.;x.$::$.xx.$;.$x.$$:;&&;;$&X;.:x$$$x;.           ', 0
zebra016 BYTE  '                      ;..;$$.;X.x:$+;xx:.$:.XX.x$:;&x;$$+X&$$+:::;+            ', 0
zebra017 BYTE  '                       .....;$.X:X:$x+X.:X..$+.x$:;&;;&x$+:..+$$$x:            ', 0
zebra018 BYTE  '                       ;...+x.x:.;$$$Xx:.+..X:.+$:+&:xxx$&::$+;xx$.            ', 0
zebra019 BYTE  '                        .+x.:;:x..x$$+;:.:..$::+$:++;x$$&&$;:::::;.            ', 0
zebra020 BYTE  '                          .;;.:::+$xX;;x;;;XX::x;;;;;+xxX$; +;:xx$.            ', 0
zebra021 BYTE  '                          ..:;;:x$x;.               .;;xxx+ .xX$$$.            ', 0
zebra022 BYTE  '                          ;...;;x+;X:                 ;+;+xx:;xx$$.            ', 0
zebra023 BYTE  '                          :+.:X.Xx++.                  .;;xx+x+$X&.            ', 0
zebra024 BYTE  '                           ;.;x xx++                     ;;xx.;+x$.            ', 0
zebra025 BYTE  '                           ;:;. ;xxx                     ;;+  .+xx             ', 0
zebra026 BYTE  '                           ;;;. ;+xx                   .;+:    :+              ', 0
zebra027 BYTE  '                           ;:;  .+x:                  ;xx:     ;x              ', 0
zebra028 BYTE  '                           ;;.   ;+.                 +xXx      +x.             ', 0
zebra029 BYTE  '                           ;:    :+.                .$$x       x$X             ', 0
zebra030 BYTE  '                          .;;    :x:                 xX;       $$.             ', 0
zebra031 BYTE  '                         ;+XX   :xXx                          ;x$;             ', 0
zebra032 BYTE  '                       :+$X    x$$.                                            ', 0
zebra033 BYTE  '                      ::;;    .:;x                                             ', 0
zebra034 BYTE  '                              ...                                              ', 0
zebra035 BYTE  '                                                                               ', 0
zebra036 BYTE  '                                                                               ', 0
zebra037 BYTE  '                                                                               ', 0
zebra038 BYTE  '                                                                               ', 0
zebra039 BYTE  '                                                                               ', 0
catSmall001  BYTE  "        ..x         ",0
catSmall002  BYTE  "      ;XXxx.        ",0
catSmall003  BYTE  "    . :$$$+         ",0
catSmall004  BYTE  "    :$xX$Xx;        ",0
catSmall005  BYTE  "     .+x$x++;       ",0
catSmall006  BYTE  "        ++;+..;:    ",0
catSmall007  BYTE  "        x: x:       ",0
catSmall008  BYTE  "       .+. .        ",0
deerSmall001  BYTE  "             ;  ..  ",0
deerSmall002  BYTE  "              .+:   ",0
deerSmall003  BYTE  "     .;;++;++xx;    ",0
deerSmall004  BYTE  "    .xxxxxx+++      ",0
deerSmall005  BYTE  "     ;xx+++x.       ",0
deerSmall006  BYTE  "    .;+.   :.       ",0
deerSmall007  BYTE  "    . :    ;.       ",0
deerSmall008  BYTE  "    ;  ;            ",0
dogSmall001  BYTE  "         :....      ",0
dogSmall002  BYTE  "       ;:+;;;+;.    ",0
dogSmall003  BYTE  "        +:X::;      ",0
dogSmall004  BYTE  "   ..;..:;:::.      ",0
dogSmall005  BYTE  "  ..::..;;;;:..     ",0
dogSmall006  BYTE  "  ..:....;;;:;;:    ",0
dogSmall007  BYTE  "        .::.   ..:: ",0
dogSmall008  BYTE  "                    ",0
donkeySmall001  BYTE  "  ;:+.              ",0
donkeySmall002  BYTE  "  ;xx+x+;;;+++:.    ",0
donkeySmall003  BYTE  "  .:.XXX$$Xxxxx.    ",0
donkeySmall004  BYTE  "       x.::: ;...   ",0
donkeySmall005  BYTE  "       +      x...  ",0
donkeySmall006  BYTE  "       +     :+     ",0
donkeySmall007  BYTE  "                    ",0
donkeySmall008  BYTE  "                    ",0
hummingbirdSmall001  BYTE  "  xx;:.    ;;:      ",0
hummingbirdSmall002  BYTE  "   .+++;++;;:.      ",0
hummingbirdSmall003  BYTE  " .;+;;xx+;.;;;      ",0
hummingbirdSmall004  BYTE  "         ;+:;;      ",0
hummingbirdSmall005  BYTE  "         ;;;:       ",0
hummingbirdSmall006  BYTE  "        .;.         ",0
hummingbirdSmall007  BYTE  "       ..           ",0
hummingbirdSmall008  BYTE  "                    ",0
pigSmall001  BYTE  "            :+  :   ",0
pigSmall002  BYTE  " .:;;::;;;+x;;;;++: ",0
pigSmall003  BYTE  " ;::;;:;;::..;;:;;  ",0
pigSmall004  BYTE  " ;::;;;;;;:::;;;.   ",0
pigSmall005  BYTE  " :;;x;;;;;;;:;:.    ",0
pigSmall006  BYTE  "  :;;    ::  ;.     ",0
pigSmall007  BYTE  "  .;.    ..  :      ",0
pigSmall008  BYTE  "  .;.    ..  .;     ",0
rabbitSmall001  BYTE  "  :.        .:      ",0
rabbitSmall002  BYTE  "  .;;x    ::;+      ",0
rabbitSmall003  BYTE  "   .;;$. X;++       ",0
rabbitSmall004  BYTE  "     ;+x+xX;.       ",0
rabbitSmall005  BYTE  "     ;+xxXxx+;;.    ",0
rabbitSmall006  BYTE  "    :;xx+xxxxx+;.   ",0
rabbitSmall007  BYTE  "     :.:;;xxxx;;;   ",0
rabbitSmall008  BYTE  "      ;;xxxxxx;;;   ",0
racoonSmall001  BYTE  "     .++xx;         ",0
racoonSmall002  BYTE  "     :XX$x:         ",0
racoonSmall003  BYTE  "     .xx$x:         ",0
racoonSmall004  BYTE  "     ;+x+;;:        ",0
racoonSmall005  BYTE  "    :++;;;x;.       ",0
racoonSmall006  BYTE  "   .x+;;x;;+;       ",0
racoonSmall007  BYTE  "    xXxXx+xxx.;:.   ",0
racoonSmall008  BYTE  "    +xx;;xxXx++.    ",0
rinoSmall001  BYTE  "    ...;;..;X.      ",0
rinoSmall002  BYTE  "   ..::..:.;;:.     ",0
rinoSmall003  BYTE  "   ;+;x:;;.;;+;.    ",0
rinoSmall004  BYTE  "   .x+xXx;;;+x+     ",0
rinoSmall005  BYTE  "    x+ xxxxX$$.     ",0
rinoSmall006  BYTE  "    x: xX;X+$       ",0
rinoSmall007  BYTE  "    :: :;++x$:      ",0
rinoSmall008  BYTE  "                    ",0
zebraSmall001  BYTE  "   .;.              ",0
zebraSmall002  BYTE  " .;;++;.            ",0
zebraSmall003  BYTE  " :+;:xx;;+++x;+x+   ",0
zebraSmall004  BYTE  "      +;;x;x+xXx;.  ",0
zebraSmall005  BYTE  "      .:++;+;;X:X   ",0
zebraSmall006  BYTE  "       ;+.    .+x   ",0
zebraSmall007  BYTE  "       ..    .: +   ",0
zebraSmall008  BYTE  "      ;.x       .   ",0
cardSmall001  BYTE  "    |=========|     ",0
cardSmall002  BYTE  "    |:::::::::|     ",0
cardSmall003  BYTE  "    |:::::::::|     ",0
cardSmall004  BYTE  "    |:::::::::|     ",0
cardSmall005  BYTE  "    |:::::::::|     ",0
cardSmall006  BYTE  "    |:::::::::|     ",0
cardSmall007  BYTE  "    |:::::::::|     ",0
cardSmall008  BYTE  "    |=========|     ",0
                    
instructions001 BYTE "Players will take turns 'turning over' cards.",0
instructions002 BYTE "The player that guesses the most correct pairs will win the game!",0
instructions004 BYTE "Enter a number greater than 20 at the start of your turn to toggle the card numbered display!",0
instructions003 BYTE "Please make the window full-screen now.",0

playerOneNamePrompt BYTE "Player One-- Please Enter Your Name: ",0
playerTwoNamePrompt BYTE "Player Two-- Please Enter Your Name: ",0

playerTurnPromptOne BYTE ", please enter the first number corrosponding to a card on the board: ",0
playerTurnPromptTwo BYTE ", please enter the second number corrosponding to a card on the board: ",0

numDisplayPrompt BYTE "NUMBERS HAVE BEEN DISPLAYED/HIDDEN. Please enter first number corrosponding to a card on the board: ",0

winMessage BYTE " WON!",0

replayMessage BYTE "Would you like to play again? (Y/N): ",0

displayArray BYTE 20 DUP(0)					; array to display card images, initialized to 0
distributedCardArray BYTE 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10		; array of distributed cards (two occurrences of each number)
currentRow BYTE 0							; holds the current row for displaying images
currentCol BYTE 0							; holds the current column for displaying images
currentRowTemp BYTE 0						; temporary storage for row during large image display
currentColTemp BYTE 0						; temporary storage for column during large image display		
selectedImageOne BYTE ?						; stores the first selected image (for a turn)
selectedImageTwo BYTE ?						; stores the second selected image (for a turn)
playerOneName BYTE 20 DUP(0)				; array to store player one's name
playerTwoName BYTE 20 DUP(0)				; array to store player two's name
currentPlayerTurn BYTE 1					; stores which player's turn it is (initialized to 1 for player 1)
rawInputOne DWORD ?							; stores the raw input for player one's card selection
rawInputTwo DWORD ?							; stores the raw input for player two's card selection
numDisplayFlag BYTE 1						; flag to control whether card numbers are displayed or not
playerOneScore BYTE 0						; stores the score for player one
playerTwoScore BYTE 0						; stores the score for player two
gameEndFlag BYTE 0							; flag to indicate if the game has ended
replayFlag BYTE 0							; flag to control if the game should be replayed

.code
main proc
	startGame:								; start of the game
	mov replayFlag, 0						; reset replay flag to 0
	call printTitle							; display the title of the game
	call printInstructions					; display game instructions
	call collectNames						; prompt players to input their names
	call distributeCards					; shuffle and distribute the cards

	gameLoop:								; main game loop
	call displayCards						; display the cards on the screen
	cmp numDisplayFlag, 1					; check if number display is enabled
	jne noDisplayNumbers					; jump if numbers are not displayed
	call displayNumbers						; display the card numbers
	noDisplayNumbers:						
	call collectTurnInput					; collect input for the current player's turn
	call processTurn						; process the player's turn
	call showLargeImages					; show the selected images in larger format
	call switchPlayer						; switch to the other player's turn
	call checkWin							; check if there is a winner
	cmp gameEndFlag, 1						; check if the game has ended
	jne gameLoop							; if not, continue the game loop
	; game has ended
	call replayPrompt						; prompt to replay the game
	cmp replayFlag, 1						; check if the replay flag is set
	je startGame							; if yes, restart the game

	exitProgram:							; exit the program
	mov dl, 200								; set cursor position
	mov dh, 200
	call Gotoxy
	exit
main endp

printAnimal PROC
	; assume esi contains starting location
	mov ecx, 39								; loop counter (each image 39 strings)

	printLoop:
											; print string pointer to by esi
	mov edx, esi
	call WriteString
	inc currentRowTemp						; increment row position
	mov dl, currentColTemp					; set the column position
	mov dh, currentRowTemp					; set the row position
	call Gotoxy
											; move to next string by incrementing esi by length of string
											; each string is 80 bytes long (79 + null)
	lea esi, [esi + 80]
											; decrement loop counter and repeat until ecx is 0
	loop printLoop

	ret
printAnimal ENDP

printAnimalSmall PROC
	pushad									; preserve registers
	; assume first address is loaded in esi
	mov ecx, 8								; loop for 8 lines
	mov esi, edx							; load address of small image
	mov ah, currentRow						; initialize row

	printLoop:								
	mov edx, esi							; print string at esi
	call WriteString
	add ah, 1								; increment row for next print
	mov dl, currentCol						; set column
	mov dh, ah								; set row
	call Gotoxy

	lea esi, [esi + 21]						; move to next string (21 bytes long)
	loop printLoop

	popad									; restore registers
	ret
printAnimalSmall ENDP

displayCards PROC
	lea esi, displayArray					; load address of display array
	mov ecx, 20								; set loop counter for 20 cards
	mov currentRow, 0						; initialize row
	mov currentCol, 0						; initialize column
		
	displayLoop:
	pushad
	cmp byte ptr [esi], 0					; check if value is 0
	je loadImageZero						; jump to loadImageZero if true
											; check for other values (1-10)
	cmp byte ptr [esi], 1
	je loadImageOne

	cmp byte ptr [esi], 2
	je loadImageTwo

	cmp byte ptr [esi], 3
	je loadImageThree

	cmp byte ptr [esi], 4
	je loadImageFour

	cmp byte ptr [esi], 5
	je loadImageFive

	cmp byte ptr [esi], 6
	je loadImageSix

	cmp byte ptr [esi], 7
	je loadImageSeven

	cmp byte ptr [esi], 8
	je loadImageEight

	cmp byte ptr [esi], 9
	je loadImageNine

	cmp byte ptr [esi], 10
	je loadImageTen
											; load corrosponding image
	loadImageZero:
		lea edx, cardSmall001
		call printAnimalSmall
		jmp nextImage

	loadImageOne:
		mov eax, green
		call SetTextColor
		lea edx, catSmall001
		call printAnimalSmall
		mov eax, white
		call SetTextColor
		jmp nextImage

	loadImageTwo:
		mov eax, green
		call SetTextColor
		lea edx, deerSmall001
		call printAnimalSmall
		mov eax, white
		call SetTextColor
		jmp nextImage

	loadImageThree:
		mov eax, green
		call SetTextColor
		lea edx, dogSmall001
		call printAnimalSmall
		mov eax, white
		call SetTextColor
		jmp nextImage

	loadImageFour:
		mov eax, green
		call SetTextColor
		lea edx, donkeySmall001
		call printAnimalSmall
		mov eax, white
		call SetTextColor
		jmp nextImage

	loadImageFive:
		mov eax, green
		call SetTextColor
		lea edx, hummingbirdSmall001
		call printAnimalSmall
		mov eax, white
		call SetTextColor
		jmp nextImage

	loadImageSix:
		mov eax, green
		call SetTextColor
		lea edx, pigSmall001
		call printAnimalSmall
		mov eax, white
		call SetTextColor
		jmp nextImage

	loadImageSeven:
		mov eax, green
		call SetTextColor
		lea edx, rabbitSmall001
		call printAnimalSmall
		mov eax, white
		call SetTextColor
		jmp nextImage

	loadImageEight:
		mov eax, green
		call SetTextColor
		lea edx, racoonSmall001
		call printAnimalSmall
		mov eax, white
		call SetTextColor
		jmp nextImage

	loadImageNine:
		mov eax, green
		call SetTextColor
		lea edx, rinoSmall001
		call printAnimalSmall
		mov eax, white
		call SetTextColor
		jmp nextImage

	loadImageTen:
		mov eax, green
		call SetTextColor
		lea edx, zebraSmall001
		call printAnimalSmall
		mov eax, white
		call SetTextColor
		jmp nextImage

	nextImage:
	popad									; restore registers
	inc esi									; move to next card
	add currentCol, 20						; move to the next column
	cmp ecx, 16								; check if we need a new row
	je newRow
	cmp ecx, 11								; check if we need a new row
	je newRow
	cmp ecx, 6								; check if we need a new row
	je newRow
	cmp ecx, 1								; check if we need a new row
	je newRow
	jmp continueNextImage

	newRow:
	add currentRow, 9						; move to the next row
	mov currentCol, 0						; reset column

	continueNextImage:
	mov dh,	currentRow						; update row for printing
	mov dl, currentCol						; update column for printing
	call Gotoxy
	dec ecx									; decrement loop counter
	cmp ecx, 0								; check if loop ends
	jg displayLoop

	ret
displayCards ENDP

showLargeImages PROC
	pushad
	call Clrscr								; clear the screen
	mov dl, currentRowTemp					; set initial position for large images
	mov dh, currentColTemp
	call Gotoxy
											; (select and load large format image)
	cmp selectedImageOne, 1
	je selImageOne

	cmp selectedImageOne, 2
	je selImageTwo

	cmp selectedImageOne, 3
	je selImageThree

	cmp selectedImageOne, 4
	je selImageFour

	cmp selectedImageOne, 5
	je selImageFive

	cmp selectedImageOne, 6
	je selImageSix

	cmp selectedImageOne, 7
	je selImageSeven

	cmp selectedImageOne, 8
	je selImageEight

	cmp selectedImageOne, 9
	je selImageNine

	cmp selectedImageOne, 10
	je selImageTen

	selImageOne:
	lea esi, cat001
	call printAnimal
	jmp nextImage

	selImageTwo:
	lea esi, deer001
	call printAnimal
	jmp nextImage

	selImageThree:
	lea esi, dog001
	call printAnimal
	jmp nextImage

	selImageFour:
	lea esi, donkey001
	call printAnimal
	jmp nextImage

	selImageFive:
	lea esi, hummingbird001
	call printAnimal
	jmp nextImage

	selImageSix:
	lea esi, pig001
	call printAnimal
	jmp nextImage

	selImageSeven:
	lea esi, rabbit001
	call printAnimal
	jmp nextImage

	selImageEight:
	lea esi, racoon001
	call printAnimal
	jmp nextImage

	selImageNine:
	lea esi, rino001
	call printAnimal
	jmp nextImage

	selImageTen:
	lea esi, zebra001
	call printAnimal
	jmp nextImage

	nextImage:								; repeat for second image
	mov currentColTemp, 79
	mov dl, currentColTemp
	mov currentRowTemp, 0
	mov dh, currentRowTemp
	call Gotoxy

	cmp selectedImageTwo, 1
	je selImageOneFinal

	cmp selectedImageTwo, 2
	je selImageTwoFinal

	cmp selectedImageTwo, 3
	je selImageThreeFinal

	cmp selectedImageTwo, 4
	je selImageFourFinal

	cmp selectedImageTwo, 5
	je selImageFiveFinal

	cmp selectedImageTwo, 6
	je selImageSixFinal

	cmp selectedImageTwo, 7
	je selImageSevenFinal

	cmp selectedImageTwo, 8
	je selImageEightFinal

	cmp selectedImageTwo, 9
	je selImageNineFinal

	cmp selectedImageTwo, 10
	je selImageTenFinal

	selImageOneFinal:
	lea esi, cat001
	call printAnimal
	jmp endImageDisplay

	selImageTwoFinal:
	lea esi, deer001
	call printAnimal
	jmp endImageDisplay

	selImageThreeFinal:
	lea esi, dog001
	call printAnimal
	jmp endImageDisplay

	selImageFourFinal:
	lea esi, donkey001
	call printAnimal
	jmp endImageDisplay

	selImageFiveFinal:
	lea esi, hummingbird001
	call printAnimal
	jmp endImageDisplay

	selImageSixFinal:
	lea esi, pig001
	call printAnimal
	jmp endImageDisplay

	selImageSevenFinal:
	lea esi, rabbit001
	call printAnimal
	jmp endImageDisplay

	selImageEightFinal:
	lea esi, racoon001
	call printAnimal
	jmp endImageDisplay

	selImageNineFinal:
	lea esi, rino001
	call printAnimal
	jmp endImageDisplay

	selImageTenFinal:
	lea esi, zebra001
	call printAnimal
	jmp endImageDisplay

	endImageDisplay:						; delay and clean up
	invoke Sleep, 3000						; wait 3 seconds
	call Clrscr
	mov currentRowTemp, 0					; reset row
	mov currentColTemp, 0					; reset column
	popad
	ret
showLargeImages ENDP

printTitle PROC
	lea esi, title001			; load the title string
	mov ecx, 8					; loop for 8 lines

	printLoop:
								; print string pointer to by esi
	mov edx, esi				; print title string
	call WriteString
	call Crlf					; move to the next line
	lea esi, [esi + 70]			; move to the next title string
								; decrement loop counter and repeat until ecx is 0
	loop printLoop
	ret
printTitle ENDP

printInstructions PROC
	call Crlf
	mov edx, OFFSET instructions001
	call WriteString
	call Crlf
	mov edx, OFFSET instructions002
	call WriteString
	call Crlf
	mov eax, magenta
	call SetTextColor
	mov edx, OFFSET instructions004
	call WriteString
	call Crlf
	mov eax, red
	call SetTextColor
	mov edx, OFFSET instructions003
	call WriteString
	call Crlf
	mov eax, white
	call SetTextColor

	ret
printInstructions ENDP

collectNames PROC
	call Crlf
	mov edx, OFFSET playerOneNamePrompt		; prompt for player one's name
	call WriteString
	mov edx, OFFSET playerOneName
	mov ecx, 20
	call ReadString							; read player one's name
	call Crlf
	mov edx, OFFSET playerTwoNamePrompt		; prompt for player two's name
	call WriteString
	mov edx, OFFSET playerTwoName
	mov ecx, 20
	call ReadString							; read player two's name
	ret
collectNames ENDP

switchPlayer proc
									; switch to the other player
    cmp currentPlayerTurn, 1        ; is it player 1 now?
    je switchToPlayer2              ; if yes, change to player 2
    mov currentPlayerTurn, 1        ; if not, set it to player 1
    jmp endSwitchPlayer             ; jump to the end of proc

    switchToPlayer2:
    mov currentPlayerTurn, 2        ; swith to player 2

    endSwitchPlayer:
    ret
switchPlayer endp

collectTurnInput PROC
	mov dl, 0
	mov dh, 37
	call Gotoxy

	cmp currentPlayerTurn, 1
	jne promptPlayer2
	lea edx, playerOneName
	call WriteString
	jmp continueToPromptMoveOne

	promptPlayer2:
	lea edx, playerTwoName
	call WriteString
	jmp continueToPromptMoveOne

	continueToPromptMoveOne:
	mov edx, OFFSET playerTurnPromptOne
	call WriteString
	call ReadInt

	; check if player is enabling/disabling number display
	cmp eax, 20
	jg toggleNums
	jmp noToggleNums

	toggleNums:
	mov edx, OFFSET numDisplayPrompt
	call WriteString
	cmp numDisplayFlag, 1
	je setNumDisplayFlagZero
	mov numDisplayFlag, 1
	jmp collectInputAfterToggleNums
	setNumDisplayFlagZero:
	mov numDisplayFlag, 0
	collectInputAfterToggleNums:
	call ReadInt

	noToggleNums:
	mov rawInputOne, eax
	call Crlf
	
	cmp currentPlayerTurn, 1
	jne promptTwoPlayer2
	lea edx, playerOneName
	call WriteString
	jmp continueToPromptMoveTwo

	promptTwoPlayer2:
	lea edx, playerTwoName
	call WriteString
	jmp continueToPromptMoveTwo

	continueToPromptMoveTwo:
	mov edx, OFFSET playerTurnPromptTwo
	call WriteString
	call ReadInt
	mov rawInputTwo, eax
	

	ret
collectTurnInput ENDP

distributeCards PROC
	call Randomize
							; shuffle array 100 times
	mov ecx, 100
	shuffleLoop:
							; generate two random indices to swap
	mov eax, 20
	call RandomRange
	mov edx, eax			; edx = first index
	mov eax, 20
	call RandomRange
	mov esi, eax			; esi = second index

							; swap the values
	mov al, [distributedCardArray + edx]
	mov bl, [distributedCardArray + esi]
	mov [distributedCardArray + edx], bl
	mov [distributedCardArray + esi], al

	loop shuffleLoop
	ret
distributeCards ENDP

processTurn PROC
	mov eax, rawInputOne
	dec eax					; get 0 based index
	lea esi, distributedCardArray
	movzx eax, byte ptr [esi + eax]
	mov selectedImageOne, al
	
	mov eax, rawInputTwo
	dec eax					; get 0 based index
	movzx eax, byte ptr [esi + eax]
	mov selectedImageTwo, al

							; check if match
	mov al, selectedImageOne
	mov bl, selectedImageTwo
	cmp al, bl
	je win
	jmp endTurnProcessing

	win:
	mov eax, rawInputOne
	dec eax
	lea edi, displayArray
	mov bl, selectedImageOne
	mov [edi + eax], bl

	mov eax, rawInputTwo
	dec eax
	mov bl, selectedImageTwo
	mov [edi + eax], bl

	cmp currentPlayerTurn, 1
	jne addScorePlayerTwo
	inc playerOneScore
	jmp endTurnProcessing

	addScorePlayerTwo:
	inc playerTwoScore

	endTurnProcessing:

	ret
processTurn ENDP

displayNumbers PROC
	mov cl, 0		; card index
	mov eax, 1
	mov dl, 8
	mov dh, 3
	displayLoop:
	call Gotoxy
	call WriteInt
	cmp eax, 5		; check if new row
	je newRow
	cmp eax, 10
	je newRow
	cmp eax, 15
	je newRow
	jmp continueToNextNumber

	newRow:
	add dh, 9
	mov dl, 9
	jmp startRow

	continueToNextNumber:
	add dl, 20
	startRow:
	inc eax
	inc cl
	cmp cl, 20
	jl displayLoop


	ret
displayNumbers ENDP

checkWin PROC
	mov al, playerOneScore
	mov bl, playerTwoScore
	add al, bl
	cmp al, 10
	je endGame
	jmp endCheckWin

	endGame:
	call Clrscr

	mov eax, blue
	call SetTextColor

	;call GetMaxXY
	;mov al, dl
	;mov bl, 2
	;div bl
	;mov dl, al
	
	;mov al, dh
	;mov bl, 2
	;div bl
	;mov dh, al

	;call Gotoxy

	mov gameEndFlag, 1
	mov playerOneScore, al
	mov playerTwoScore, bl
	cmp al, bl
	jg playerOneWin
	; player Two Wins
	mov edx, OFFSET playerTwoName
	call WriteString
	jmp continueWinDisplay

	playerOneWin:
	mov edx, OFFSET playerOneName
	call WriteString
	jmp continueWinDisplay

	continueWinDisplay:
	add dh, 5
	mov edx, OFFSET winMessage
	call WriteString


	endCheckWin:
	ret
checkWin ENDP

replayPrompt PROC
	call Crlf
	mov edx, OFFSET replayMessage
	call WriteString
	call ReadChar
	cmp al, 'y'
	je setPlayAgainFlag
	cmp al, 'Y'
	je setPlayAgainFlag
	jmp endPrompt

	setPlayAgainFlag:
	mov replayFlag, 1
	call Clrscr
	mov playerOneScore, 0
	mov playerTwoScore, 0
	; reset the display array
	lea esi, displayArray
	mov ecx, 20
	xor al, al
	resetDisplayLoop:
	mov [esi], al
	inc esi
	loop resetDisplayLoop

	endPrompt:
	ret
replayPrompt ENDP

end main