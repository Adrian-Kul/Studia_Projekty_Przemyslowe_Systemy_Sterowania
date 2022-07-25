

PROGRAM _INIT
	(* Insert code here *)
	(* Init variables *)
	licz := 0;
	IO_PoziomZadany    := 0.0;
	IO_Start         := FALSE;
	paraEnter	  := FALSE;
	TrybPracy := TRUE;
	IO_Reset;
	IO_Stop;
	CV_zadane := 0;
	
	(* PID parameters *)
	// W = SP, X - PV, Y - CV
	PID_parametry.WX_max   := 10.0; //wartosc max zadana - SP
	PID_parametry.WX_min   := 0.0;
	PID_parametry.invert   := FALSE;
	PID_parametry.deadband := 0.0;
	PID_parametry.dY_max   := 0.0;
	PID_parametry.Kp       := 1;
	Kp := 1;
	PID_parametry.Tn       := 1;
	Ti := 1;
	PID_parametry.Tv       := 1;
	Td := 1;
	PID_parametry.Tf       := 0.1;
	PID_parametry.Kw       := 1.0;           
	PID_parametry.Kfbk     := 0.0;		(* windup damping disabled *)
	PID_parametry.fbk_mode := LCRPID_FBK_MODE_INTERN;
	PID_parametry.d_mode   := LCRPID_D_MODE_E;
	
	(* Parameters for PID controller *)
	PID_zawor.Y_max  := 10.0; //
	PID_zawor.Y_min  := 0.0;
	PID_zawor.A      := 0.0;  //feed forward - wartosc do przodu
	PID_zawor.Y_man  := 0.0;
	PID_zawor.Y_fbk  := 0.0;
	PID_zawor.hold_I := FALSE;
	PID_zawor.mode   := LCRPID_MODE_AUTO;

	
END_PROGRAM