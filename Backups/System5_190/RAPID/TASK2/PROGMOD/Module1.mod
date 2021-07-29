MODULE Module1
    VAR syncident sync1;
    VAR syncident sync2;
    VAR syncident sync3;
    PERS tasks all_tasks{2}:=[["T_ROB1"],["T_ROB2"]];
    CONST robtarget Target_home:=[[-24618.0088972,23268.460032016,1310.771979058],[0.249597533,0.967713694,0.022341011,0.027058393],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_each:=[[1488.821715505,604.815762953,808.43175033],[0.018613804,0.980606887,0.156618868,-0.116336539],[-2,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_homea:=[[2104.21710209,1812.045567525,968.869362254],[0.04932532,-0.705384299,0.705384303,0.049325344],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_starta:=[[2071.218093609,1818.903334301,829.202523034],[0.162509265,0.674113438,-0.709538141,-0.125369205],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_enda:=[[2071.218112045,1926.443398952,829.202516811],[0.162509274,0.674113446,-0.709538136,-0.125369178],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_start1:=[[-24612.434267961,2764.284566824,797.406059735],[0.249597595,0.967713676,0.022341177,0.027058331],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_startready:=[[-24691.721128851,22883.625071315,1310.771981822],[0.249597538,0.967713691,0.022341047,0.027058422],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_end1:=[[-24825.627741632,2699.883910256,797.406112383],[0.249597601,0.967713675,0.022341151,0.027058341],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_start:=[[-24691.721142151,22883.625070005,1104.304703471],[0.249597534,0.967713692,0.022341046,0.027058422],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_end:=[[-24920.164988313,22830.514457679,1104.304713189],[0.249597534,0.967713694,0.022341014,0.0270584],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    PROC main()
        WaitTime 1;
        WHILE TRUE DO
            IF di_doubleStartwelding=1 THEN
               Path_10;
               GOTO sp8;
            ENDIF
        ENDWHILE
        sp8:
        !MoveL pHome,v600,fine,tool0\WObj:=wobj0;
        !WaitSyncTask sync1,all_tasks;
        !SyncMoveOn sync2,all_tasks;
	    !MoveL Target_10,v600,fine,tool0\WObj:=wobj0;
	    !MoveL Target_20,v600,fine,tool0\WObj:=wobj0;
        !SyncMoveOff sync3;
    ENDPROC
    PROC Path_10()
        MoveJ Target_home,v600,fine,tWeldGun\WObj:=wobj0;
        WaitSyncTask sync1,all_tasks;
        SyncMoveOn sync2,all_tasks;
        MoveL Target_startready\ID:=9,v600,fine,tWeldGun\WObj:=wobj0;
        MoveL Target_start\ID:=10,v600,fine,tWeldGun\WObj:=wobj0;
        MoveL Target_end\ID:=11,v600,fine,tWeldGun\WObj:=wobj0;
        MoveL Target_startready\ID:=12,v600,fine,tWeldGun\WObj:=wobj0;
        SyncMoveOff sync3;
        MoveL Target_home,v600,fine,tWeldGun\WObj:=wobj0;
    ENDPROC
ENDMODULE