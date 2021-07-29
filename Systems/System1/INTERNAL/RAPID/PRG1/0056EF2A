MODULE Module1
    !CONST robtarget Target_newleft:=[[466.009585668,-200.432308725,503.040070735],[0.499999913,0.5,0.5000001,0.499999987],[-1,-1,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !CONST robtarget Target_newleftready:=[[466.009579015,-200.432303197,614.207668648],[0.499999917,0.499999984,0.500000115,0.499999984],[-1,-1,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_newrightready:=[[466.009589992,431.415278041,643.826762197],[0.499999921,0.499999972,0.500000123,0.499999983],[0,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_newright:=[[466.009587248,431.415272972,503.040060725],[0.499999897,0.500000008,0.500000118,0.499999976],[0,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_newleftready1:=[[369.448814583,-261.801800431,608.946192462],[0.500000776,0.499999898,0.499999933,0.499999393],[-1,-1,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_newleft1:=[[369.448814482,-261.801797883,521.589571879],[0.500000803,0.499999856,0.499999952,0.499999389],[-1,-1,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
	PROC Path_10()
        Set do_ou;
        WaitTime 0.5;
        MoveJ Target_newleftready1,v300,z5,t_gripper\WObj:=wobj0;
	    MoveL Target_newleft1,v300,z5,t_gripper\WObj:=wobj0;
        
        Reset do_ou;
        WaitTime 0.5;
	    MoveJ Target_newleftready1,v300,z5,t_gripper\WObj:=wobj0;
	    MoveL Target_newrightready,v300,fine,t_gripper\WObj:=wobj0;
        MoveL Target_newright,v300,fine,t_gripper\WObj:=wobj0;
        
        Set do_ou;
        WaitTime 0.5;
        MoveL Target_newrightready,v300,fine,t_gripper\WObj:=wobj0;
        
	ENDPROC
    PROC main()
        WHILE TRUE DO
            IF di_checkor=1 THEN
                Path_10;
            ENDIF
        ENDWHILE
    ENDPROC
ENDMODULE