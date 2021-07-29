MODULE Module1
	CONST robtarget Target_uplift:=[[-12589.309726704,-9190.521376415,1712.069415819],[0.009839725,0.707654941,0.009856677,-0.706420916],[-1,-3,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_grip:=[[-12589.309750978,-9190.521380799,1135.491361336],[0.009839667,0.707654928,0.009856738,-0.706420929],[-1,-3,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_zhuangpReady:=[[-10907.155257024,-9328.443285102,1659.249727107],[0.704690997,-0.099204935,0.696125198,-0.094755946],[1,-3,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_end:=[[-10759.889772571,-9328.982937667,1659.249559352],[0.704690955,-0.099204569,0.696125357,-0.09475547],[1,-3,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_middle1:=[[-12405.99722391,-9874.387042407,1712.069542517],[0.251694663,0.661287425,0.25213423,-0.660134129],[0,-3,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_middle2:=[[-10817.252159991,-9995.326501296,1712.069542517],[0.669742795,0.225274886,0.670912777,-0.224881879],[1,-3,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_zhuangpeiready:=[[-11135.800414713,-9167.133368739,1550.221562264],[0.704690717,-0.09920442,0.696125382,-0.094757209],[1,-3,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_newend:=[[-10923.585301805,-9167.911204469,1550.221650034],[0.704690694,-0.099204456,0.696125391,-0.094757273],[1,-3,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    

    PROC main()
        ConfL\Off;
        !Add your code here
        !di_crossExecute:=0;
        Reset do_zhuangpeiFinished;
        WaitTime 0.2;
        WHILE TRUE DO
            IF di_zhuangpeiStart=1 THEN
                Path_23;
                GOTO sp6;
            ENDIF
        ENDWHILE
        sp6:
    ENDPROC
    PROC Path_23()
        MoveJ Target_uplift,v1000,z100,t_smart_crucifix\WObj:=wobj0;
        WaitTime 0.5;
        MoveL Target_grip,v1000,z100,t_smart_crucifix\WObj:=wobj0;
        WaitTime 0.5;
        MoveJ Target_uplift,v1000,z100,t_smart_crucifix\WObj:=wobj0;
        MoveJ Target_middle1,v800,fine,t_smart_crucifix\WObj:=wobj0;
        MoveJ Target_middle2,v800,fine,t_smart_crucifix\WObj:=wobj0;
        MoveJ Target_zhuangpeiready,v800,fine,t_smart_crucifix\WObj:=wobj0;
        WaitTime 0.5;
        MoveJ Target_newend,v800,fine,t_smart_crucifix\WObj:=wobj0;
        set do_zhuangpeiStart;!?attancher_4?1,????;
        Set do_zhuangpeiFinished;
        WaitTime 0.5;
        MoveJ Target_zhuangpeiready,v800,fine,t_smart_crucifix\WObj:=wobj0;
        WaitTime 0.5;
        MoveJ Target_middle2,v800,fine,t_smart_crucifix\WObj:=wobj0;
        MoveJ Target_middle1,v800,fine,t_smart_crucifix\WObj:=wobj0;
        MoveJ Target_uplift,v1000,z100,t_smart_crucifix\WObj:=wobj0;
    ENDPROC
ENDMODULE