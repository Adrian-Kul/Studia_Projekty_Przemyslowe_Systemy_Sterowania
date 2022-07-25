
PROGRAM _CYCLIC
	(* Insert code here *)
	
	IF IO_Stop = TRUE THEN
		IO_Start := FALSE;
	END_IF;
	
	(* PID parameters *)
	PID_parametry.invert  := TrybPracy; //tryb revers gdy TRYB = ON
	PID_parametry.enable  := IO_Start;
	PID_parametry.enter   := paraEnter; 
	PID_parametry.Kp       := Kp;
	PID_parametry.Tn       := Ti;
	PID_parametry.Tv       := Td;
	PID_parametry.Tf       := 0.1*Td;
	PID_parametry();		(* LCRPIDpara function block call *)
	paraEnter := TRUE;

	(* PID controller *)
	PID_zawor.enable := IO_Start;
	
	TrybManual := NOT TrybAuto; 
	IF TrybAuto = TRUE THEN
		PID_zawor.mode   := LCRPID_MODE_AUTO;
	ELSE
		PID_zawor.mode   := LCRPID_MODE_MAN;
		PID_zawor.Y_man  := CV_zadane;
	END_IF;
	
	PID_zawor.ident  := PID_parametry.ident;  (* ident of PIDpara -> provides parameters (Kp, Tn, Tv, ...) *)
	PID_zawor.W      := IO_PoziomZadany; //wczytanie SP - wartosci zadanej
	PID_zawor.X      := IO_PoziomZbiornik; //wczytanie PV - wartosci regulowanej
	PID_zawor();	(* LCRPID function block call *)
	
	IO_ZaworCV := PID_zawor.Y; //ustawienie CV - wartosci sterowanej
		
	licz := licz +1;
	 
END_PROGRAM
