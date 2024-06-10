//
// Storage - SD card
//
Device (SDC2)
{
	Name (_DEP, Package (0x02)  // _DEP: Dependencies
	{
		\_SB.PEP0, 
		\_SB.GIO0
	})
	Name (_HID, "QCOM2466")  // _HID: Hardware ID
	Alias (\_SB.PSUB, _SUB)
	Name (_CID, "ACPIQCOM2466")  // _CID: Compatible ID
	Name (_UID, One)  // _UID: Unique ID
	Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
	Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
	{
		Name (RBUF, ResourceTemplate ()
		{
			Memory32Fixed (ReadWrite,
				0x08804000,         // Address Base
				0x00001000,         // Address Length
				)
			Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
			{
				0x000000EC,
			}
			GpioInt (Level, ActiveLow, SharedAndWake, PullUp, 0x7530,
				"\\_SB.GIO0", 0x00, ResourceConsumer, ,
				)
				{   // Pin list
					0x00C0
				}
			GpioIo (Shared, PullUp, 0x0000, 0x0000, IoRestrictionNone,
				"\\_SB.GIO0", 0x00, ResourceConsumer, ,
				)
				{   // Pin list
					0x007E
				}
		})
		Return (RBUF) /* \_SB_.SDC2._CRS.RBUF */
	}

	Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
	{
	}

	Method (_STA, 0, NotSerialized)  // _STA: Status
	{
		Return (0x0F)
	}
}
