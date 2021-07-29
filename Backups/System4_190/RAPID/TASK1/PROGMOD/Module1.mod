MODULE Module1
	CONST robtarget Target_complexReady:=[[2018.343428387,2018.180780848,1628.638909368],[0.000000063,0.008726457,0.999961924,-0.000000006],[0,-1,-4,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_complex:=[[2018.343471266,2018.180780962,660.111175147],[0.000000038,0.008726447,0.999961924,-0.000000005],[0,-1,-4,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_sealReady2:=[[953.74140183,220.620054174,1722.843950478],[0.564089294,0.438568915,0.551806559,-0.4300815],[-1,-1,-4,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_10:=[[2239.769472868,1352.481042038,1722.843933355],[0.70374322,0.102456139,0.697377862,-0.08895132],[-1,-1,-4,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !***********************************************************
    !
    ! Module:  Module1
    !
    ! Description:
    !   <Insert description here>
    !
    ! Author: HUAWEI
    !
    ! Version: 1.0
    !
    !***********************************************************
    
    
    !***********************************************************
    !
    ! Procedure main
    !
    !   This is the entry point of your program
    !
    !***********************************************************
    PROC main()
        !Add your code here
        reset do_daoweile2;
        !Path_30;
        Set do_daoweile2;
        WaitTime 0.5;
    ENDPROC
    PROC Path_30()
        MoveJ Target_10,v600,fine,t_smart__largestClamp\WObj:=wobj0;
        MoveJ Target_complexReady,v600,fine,t_smart__largestClamp\WObj:=wobj0;
        MoveJ Target_complex,v600,fine,t_smart__largestClamp\WObj:=wobj0;
        MoveJ Target_complexReady,v600,fine,t_smart__largestClamp\WObj:=wobj0;
        MoveJ Target_sealReady2,v600,fine,t_smart__largestClamp\WObj:=wobj0;
    ENDPROC
ENDMODULE