MODULE Module1
	!CONST robtarget Target_end_ready:=[[-192.176666874,2554.259483947,1101.127182997],[0.010963807,-0.697694776,0.716284094,0.006236304],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	!CONST robtarget Target_end:=[[-279.505528288,2720.050398553,703.317550396],[0.010963788,-0.697694905,0.716283969,0.006236281],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	!CONST robtarget Target_start_ready:=[[-2100.482710007,1593.32368314,1101.127005458],[0.010963801,-0.697694807,0.716284064,0.006236296],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	!CONST robtarget Target_start:=[[-2137.967485947,1332.925948907,703.317292414],[0.010963794,-0.697694859,0.716284013,0.006236258],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !CONST robtarget Target_newend:=[[-58.611322429,2720.050399773,703.317553468],[0.010963802,-0.697694885,0.716283988,0.006236297],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !CONST robtarget Target_newend_ready:=[[-58.611322797,2720.050403426,1174.347331192],[0.010963808,-0.697694897,0.716283976,0.006236305],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_newstart_ready:=[[-2048.593586613,1332.926086581,1167.201284121],[0.010963789,-0.697694788,0.716284083,0.006236259],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_newstart:=[[-2048.593962209,1332.926269245,636.181140278],[0.010963786,-0.69769468,0.716284188,0.006236257],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_lateend_ready:=[[-107.122546514,2620.061966745,991.636149266],[0.010963723,-0.697694696,0.716284173,0.006236266],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_lateend:=[[-107.122545667,2620.061967376,702.015262338],[0.010963722,-0.697694697,0.716284173,0.006236261],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_lateend_ready1:=[[228.990631203,2736.672481434,1187.499944035],[0.010975138,-0.696380857,0.717561571,0.006216172],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_lateend1:=[[228.990632428,2736.672482028,702.015282559],[0.010975144,-0.696380866,0.717561562,0.006216174],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_newstart_ready1:=[[12374.255932288,1254.726031516,1145.452036648],[0.010974672,-0.696443465,0.717500805,0.006217114],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_newstart1:=[[12374.255915519,1254.726032918,621.83402256],[0.010974663,-0.696443462,0.717500807,0.006217118],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_newstart_ready2:=[[-1794.199625503,1304.524311738,1191.154954012],[0.010975192,-0.696380875,0.717561552,0.006216185],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_newstart2:=[[-1794.199649114,1304.524316623,621.833902841],[0.010975209,-0.696380869,0.717561558,0.006216162],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_lateend_ready5:=[[428.555950188,2721.565752763,1191.154892894],[0.012253831,-0.015762514,0.999796203,-0.002989911],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_lateend5:=[[428.555955652,2721.565780128,615.519969432],[0.012253836,-0.015762494,0.999796203,-0.002989899],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_newstartready5:=[[-1811.140974961,1344.77913559,1191.154907976],[0.012253824,-0.015762705,0.9997962,-0.002989925],[1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_newstart5:=[[-1811.140921129,1344.779123514,635.409981505],[0.012253826,-0.015762773,0.999796199,-0.002989927],[1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_endready6:=[[59.586316376,2716.898142892,1214.78397543],[0.012253846,-0.015762709,0.9997962,-0.002989895],[1,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_end6:=[[59.586316452,2716.898138524,677.728156491],[0.012253845,-0.015762731,0.999796199,-0.002989883],[1,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_startready6:=[[-1836.897328482,1785.245201304,1214.783981155],[0.012253869,-0.015762627,0.999796201,-0.002989928],[1,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_start6:=[[-1836.897349654,1785.245209888,635.996114712],[0.012253844,-0.015762658,0.9997962,-0.002989919],[1,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_start7:=[[-1849.711217024,1785.291885973,587.943084449],[0.012253824,-0.015762607,0.999796201,-0.00298991],[1,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_start8:=[[-1898.247019112,1785.470303777,664.40643591],[0.012253815,-0.015762588,0.999796202,-0.002989911],[1,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    PROC main()
        !Add your code here
        !di_bianwei:=0;
        WHILE TRUE DO
           IF di_bianwei=1 THEN
               Path_80;
           ENDIF
        ENDWHILE
    ENDPROC
    PROC Path_80()
        reSet do_oi;
        WaitTime 0.1;
        MoveJ Target_endready6,v800,z10,t_smartsucker\WObj:=wobj0;
        MoveL Target_end6,v800,z10,t_smartsucker\WObj:=wobj0;
        set do_oi;
        WaitTime 0.5;
        MoveJ Target_endready6,v800,z10,t_smartsucker\WObj:=wobj0;
        MoveJ Target_startready6,v800,z10,t_smartsucker\WObj:=wobj0;
        MoveL Target_start8,v800,z10,t_smartsucker\WObj:=wobj0;
        WaitTime 0.5;
        reset do_oi;
        MoveJ Target_startready6,v800,z10,t_smartsucker\WObj:=wobj0;
    ENDPROC
ENDMODULE