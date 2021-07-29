MODULE Module1
    CONST robtarget Target_startReady:=[[-8342.443870434,-7334.357434984,1405.455163628],[0.000274891,0.699600942,-0.714533672,0.000278711],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_start:=[[-8342.443873432,-7334.357409956,651.57846103],[0.000274899,0.69960092,-0.714533694,0.000278721],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_sealReady:=[[-8257.969726023,-10932.292409727,1742.317874966],[0.502885791,0.505428028,0.51013925,-0.481047124],[1,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_sealReady1:=[[6616.120326445,-10986.592188305,1739.084161332],[0.561092786,0.441410304,0.547954235,-0.435979341],[1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_zhuangpei:=[[4208.872625759,-9161.016427698,1739.084162159],[0.025496079,0.70351294,0.012901437,-0.710107771],[0,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_lastPlant:=[[-10221.340835707,-8162.534979915,333.988716945],[0.016402502,-0.99985801,-0.001312444,-0.003632544],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_home:=[[-8920.334418346,-7455.383300392,1517.050948967],[0.011806561,-0.840237226,0.541958687,-0.011949488],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_middle:=[[-9788.192515778,-8153.172743225,1719.996987784],[0.236595362,-0.776287067,0.105878588,0.574622266],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_sealready2:=[[-7698.687854324,-10935.260008413,1739.084171505],[0.437602365,0.549153468,-0.439917465,0.559827887],[1,2,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_zhuangpei2:=[[-10105.616701087,-9109.264093277,1739.084177086],[0.71010544,0.012715223,-0.703516359,0.025560119],[0,2,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    PROC main()
        !do_doubleBeginwelding:=0;
        Reset do_doubleBeginwelding;
        reset do_zhuangpeiStart;
        ConfL\Off;
        set do_lastoi;
        WaitTime 0.2;
        WHILE TRUE DO
            IF di_sealstart=1 THEN
                Path_20;
                sp5:
                WHILE TRUE DO
                    IF di_daole2=1 THEN
                        Set do_doubleBeginwelding;
                        GOTO sp3;
                    ENDIF
                ENDWHILE
                sp3:
                WHILE TRUE DO
                    IF di_weldingFinished=1 THEN
                        MoveJ Target_zhuangpei2,v600,fine,t_smartsucker\WObj:=wobj0;
                        set do_zhuangpeiStart;
                        GOTO sp4;
                    ENDIF
                ENDWHILE
                sp4:
                WHILE TRUE DO
                    IF di_zhuangpeiFinished=1 THEN
                        MoveJ Target_lastPlant,v800,z10,t_smartsucker\WObj:=wobj0;
                        WaitTime 0.5;
                        Reset do_lastoi;
                        WaitTime 0.5;
                        MoveJ Target_home,v800,z10,t_smartsucker\WObj:=wobj0;
                        !GOTO sp5;
                        GOTO sp10;
                    ENDIF
                ENDWHILE
            ENDIF
        ENDWHILE
        !Add your code here
        sp10:
    ENDPROC

    PROC Path_20()
        ConfL\Off;
        MoveJ Target_startReady,v1000,z10,t_smartsucker\WObj:=wobj0;
        MoveJ Target_start,v1000,z10,t_smartsucker\WObj:=wobj0;
        MoveJ Target_startReady,v1000,z10,t_smartsucker\WObj:=wobj0;
        MoveJ Target_middle,v1000,z10,t_smartsucker\WObj:=wobj0;
        MoveJ Target_sealready2,v1000,z10,t_smartsucker\WObj:=wobj0;
    ENDPROC

ENDMODULE