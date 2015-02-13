LockCheck:
	if(IsPlayerDriver()==1)
		SetTimer, LockCheck, 800
	else
		SetTimer, LockCheck, 1500
	if(GetVehicleLockState()==0)
		SendChat("/lock")
return

dr:
	Reload
return

dq:
	ExitApp
return