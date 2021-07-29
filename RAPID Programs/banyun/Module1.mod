MODULE Module1
	CONST robtarget Target_leftReady:=[[400.041897963,-184.689689104,511.391554279],[0.499999895,0.500000002,0.500000112,0.499999991],[-1,-1,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_left:=[[505.589112944,-178.460001387,486.812185306],[0.499999912,0.499999985,0.500000117,0.499999986],[-1,-1,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	VAR robtarget Target_rightReady:=[[400.041890322,349.05170978,511.391563933],[0.499999918,0.499999986,0.500000105,0.499999991],[0,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	var robtarget Target_right:=[[528.573984642,349.05170642,511.391579215],[0.499999928,0.499999973,0.500000109,0.49999999],[0,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_rightReady_ini:=[[400.041890322,349.05170978,511.391563933],[0.499999918,0.499999986,0.500000105,0.499999991],[0,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_right_ini:=[[528.573984642,349.05170642,511.391579215],[0.499999928,0.499999973,0.500000109,0.49999999],[0,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    VAR num dx:=-100;
    VAR num dy:=-100;
    VAR num dz:=60;
    
	PROC Path_10()
        set do_ou;
        WaitTime 0.5;
	    MoveJ Target_leftReady,v300,fine,t_gripper\WObj:=wobj0;
	    MoveL Target_left,v300,fine,t_gripper\WObj:=wobj0;
        
        reSet do_ou;
        WaitTime 0.5;
	    MoveJ Target_leftReady,v300,fine,t_gripper\WObj:=wobj0;
	    MoveL Target_rightReady,v300,fine,t_gripper\WObj:=wobj0;
	    MoveL Target_right,v300,fine,t_gripper\WObj:=wobj0;
        
        set do_ou;
        WaitTime 0.5;
	    MoveJ Target_rightReady,v300,fine,t_gripper\WObj:=wobj0;
	ENDPROC
    PROC calculate()
        TEST reg1
        CASE 1:
            Target_rightReady:=Offs(Target_rightReady_ini,0,0,0);
            Target_right:=Offs(Target_right_ini,0,0,0);
        CASE 2:
            Target_rightReady:=Offs(Target_rightReady_ini,dx,0,0);
            Target_right:=Offs(Target_right_ini,dx,0,0);
        CASE 3:
            Target_rightReady:=Offs(Target_rightReady_ini,0,dy,0);
            Target_right:=Offs(Target_right_ini,0,dy,0);
        CASE 4:
            Target_rightReady:=Offs(Target_rightReady_ini,dx,dy,0);
            Target_right:=Offs(Target_right_ini,dx,dy,0);
        CASE 5:
            Target_rightReady:=Offs(Target_rightReady_ini,0,0,dz);
            Target_right:=Offs(Target_right_ini,0,0,dz);
        CASE 6:
            Target_rightReady:=Offs(Target_rightReady_ini,dx,0,dz);
            Target_right:=Offs(Target_right_ini,dx,0,dz);
        CASE 7:
            Target_rightReady:=Offs(Target_rightReady_ini,0,dy,dz);
            Target_right:=Offs(Target_right_ini,0,dy,dz);
        CASE 8:
            Target_rightReady:=Offs(Target_rightReady_ini,dx,dy,dz);
            Target_right:=Offs(Target_right_ini,dx,dy,dz);
        DEFAULT:
        ENDTEST
    ENDPROC
    PROC main()
        reg1:=1;
        WHILE reg1<9 DO
            calculate;
            Path_10;
            reg1:=reg1+1;
        ENDWHILE
    ENDPROC
ENDMODULE