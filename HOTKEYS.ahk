~r::
	ic()
	SendInput t
	SendInput {up}
	SendInput {enter}
return

~y::
	ic()
	if(IsPlayerDriver())
	{
		if(GetVehicleLockState() == 0)
			SendChat("/lock")
		if(GetVehicleEngineState() == 0)
		{
			sleep 500
			SendChat("/engine")
			if((A_Hour >= 20 || A_Hour <= 07) && GetVehicleLightState() == 0)
			{
				sleep 500
				SendChat("/lights")
			}
		}
		if(GetVehicleEngineState() == 1)
		{
			SendChat("/engine")
			if(GetVehicleLightState() == 1)
			{
				sleep 500
				SendChat("/lights")
			}
		}
	}
return

~x::
	ic()
	if(IsPlayerInAnyVehicle())
	{
		SendChat("/lock")
		SetTimer, LockCheck, 5000
	}
	else
		SendChat("/carlock")
return

~^o::
	ic()
	SendChat("/cargo")
return

o::
	ic()
	SendChat("/opencargo")
return

~j::
	ic()
	if(GetPlayerInteriorId() == 0)
		SendChat("/enter")
	else
		SendChat("/exit")
return

~Numpad1::
	SendChat("/drugs buy 60")
return

~Numpad2::
	SendChat("/drugprice")
return

~Numpad4::
	if(A_Hour >= 10 && A_Hour <20)
		SendChat("Guten Tag, wie kann ich Ihnen helfen?")
	if(A_Hour >= 20)
		SendChat("Guten Abend, wie kann ich Ihnen hefen?")
	if(A_Hour >= 00 && A_Hour <05)
		SendChat("Wie kann ich Ihnen helfen?")
	if(A_Hour >= 05 && A_Hour <10)
		SendChat("Guten Morgen, wie kann ich Ihnen helfen?")
return

~^Numpad4::
	if(A_Hour >= 10 && A_Hour <20)
		SendChat("Ich w�nsche Ihnen noch einen sch�nen Tag.")
	if(A_Hour >= 20)
		SendChat("Ich w�nsche Ihnen noch einen sch�nen Abend.")
	if(A_Hour >= 00 && A_Hour <05)
		SendChat("Auf Wiedersehen.")
	if(A_Hour >= 05 && A_Hour <10)
		SendChat("Ich w�nsche Ihnen noch einen sch�nen Morgen.")
return