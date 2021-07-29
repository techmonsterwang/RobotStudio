MODULE Module1
	CONST robtarget Target_home:=[[7170.97316923,-12950.16899494,2878.433429995],[0.000000041,0.76265703,0.646803103,-0.000000038],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_xiHigh:=[[7773.165207328,-12950.168981427,2912.460316336],[-0.000000048,0.762657032,0.646803101,0.000000008],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_xi:=[[7614.31117411,-12950.16897051,2458.768506451],[0.000000033,0.762657029,0.646803104,0.00000001],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_fangHigh_ini:=[[7773.165258125,-10957.807984539,2621.552550858],[0.000000055,0.76265704,0.646803092,0.00000006],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_fang_ini:=[[7773.165161472,-10957.80789886,2091.479477951],[-0.000000053,0.762657022,0.646803113,0.000000076],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    VAR robtarget Target_fangHigh:=[[7773.165258125,-10957.807984539,2621.552550858],[0.000000055,0.76265704,0.646803092,0.00000006],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	VAR robtarget Target_fang:=[[5893.391191079,-11151.471994685,832.341490552],[0.456143325,0.540709364,0.458571232,0.537846704],[1,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST num dx:=1100;
    CONST num dy:=1100;
    CONST robtarget Target_qilai:=[[7614.311188763,-12950.168971679,2878.433448197],[-0.000000026,0.76265703,0.646803103,-0.000000005],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_shangkong:=[[7609.925292205,-11151.472004993,2878.433398286],[0.00000003,0.762657039,0.646803093,-0.000000056],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_middle:=[[7609.925281985,-11151.472011998,2878.433450424],[0.216022509,0.718864056,0.609662604,0.254716027],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_heng:=[[7609.925265034,-11151.472022811,2878.433466058],[0.456143302,0.540709409,0.458571186,0.537846717],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_middle2:=[[6596.212046361,-11151.472004703,2878.433463501],[0.4561433,0.540709395,0.458571221,0.537846703],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_hengshangkong:=[[5893.391190979,-11151.472036039,2878.433407934],[0.456143303,0.540709407,0.458571228,0.537846682],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_10:=[[5632.867489815,-11151.471983645,832.341681255],[0.456143273,0.540709388,0.458571214,0.537846739],[1,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PROC main()
        !Add your code here
        reg1:=1;
        WHILE TRUE DO
            IF di_startMaduo=1 THEN
                calculate;
                reg1:=reg1+1;
                Path_20;
            ENDIF
        ENDWHILE
    ENDPROC
    PROC calculate()
        TEST reg1
        CASE 1:
            Target_fangHigh:=Offs(Target_fangHigh_ini,0,0,0);
            Target_fang:=Offs(Target_fang,0,0,0);
        CASE 2:
            Target_fangHigh:=Offs(Target_fangHigh_ini,dx,0,0);
            Target_fang:=Offs(Target_fang,dx,0,0);
        CASE 3:
            Target_fangHigh:=Offs(Target_fangHigh_ini,2*dx,0,0);
            Target_fang:=Offs(Target_fang,2*dx,0,0);
        CASE 4:
            Target_fangHigh:=Offs(Target_fangHigh_ini,0,dy,0);
            Target_fang:=Offs(Target_fang,0,dy,0);
        CASE 5:
            Target_fangHigh:=Offs(Target_fangHigh_ini,dx,dy,0);
            Target_fang:=Offs(Target_fang,dx,dy,0);
        CASE 6:
            Target_fangHigh:=Offs(Target_fangHigh_ini,2*dx,dy,0);
            Target_fang:=Offs(Target_fang,2*dx,dy,0);
        DEFAULT:
        ENDTEST
    ENDPROC
    PROC Path_20()
        reSet do_grip;
        WaitTime 0.5;
        
        MoveL Target_home,v1500,z10,smart_high_1\WObj:=wobj0;
        MoveL Target_qilai,v1500,z10,smart_high_1\WObj:=wobj0;
        MoveL Target_xi,v1500,z10,smart_high_1\WObj:=wobj0;
        set do_grip;
        WaitTime 0.5;
        
        MoveJ Target_qilai,v1500,z10,smart_high_1\WObj:=wobj0;
        MoveJ Target_shangkong,v1500,z100,smart_high_1\WObj:=wobj0;
        MoveJ Target_middle,v1500,z10,smart_high_1\WObj:=wobj0;
        MoveJ Target_heng,v1500,z10,smart_high_1\WObj:=wobj0;
        MoveJ Target_middle2,v1500,z10,smart_high_1\WObj:=wobj0;
        MoveJ Target_hengshangkong,v1500,z100,smart_high_1\WObj:=wobj0;
        MoveJ Target_Fang,v1500,z10,smart_high_1\WObj:=wobj0;
        reSet do_grip;
        WaitTime 0.5;
        
        MoveL Target_10,v1000,z100,smart_high_1\WObj:=wobj0;
        MoveJ Target_hengshangkong,v1500,z10,smart_high_1\WObj:=wobj0;
        MoveJ Target_middle2,v1500,z10,smart_high_1\WObj:=wobj0;
        MoveJ Target_heng,v1500,z10,smart_high_1\WObj:=wobj0;
        MoveJ Target_middle,v1500,z10,smart_high_1\WObj:=wobj0;
        MoveJ Target_shangkong,v1500,z10,smart_high_1\WObj:=wobj0;
        MoveJ Target_qilai,v1500,z10,smart_high_1\WObj:=wobj0;
        MoveJ Target_home,v1500,z10,smart_high_1\WObj:=wobj0;
    ENDPROC
ENDMODULE