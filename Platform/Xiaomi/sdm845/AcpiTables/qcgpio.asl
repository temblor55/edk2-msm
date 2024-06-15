//
// TLMM controller.
//
Device (GIO0)
{
	Name (_HID, "QCOM0217") // _HID: Hardware ID
	Alias(\_SB.PSUB, _SUB)
	Name (_UID, 0) // _UID: Unique ID

	Method (_CRS, 0x0, NotSerialized) // _CRS: Current Resource Settings
	{
		Name (RBUF, ResourceTemplate ()
		{
		   // TLMM register address space
			Memory32Fixed (ReadWrite, 0x03400000, 0x00C00000)

			// Summary Interrupt shared by all banks
			Interrupt(ResourceConsumer, Level, ActiveHigh, Shared, , , ) {240}
			Interrupt(ResourceConsumer, Level, ActiveHigh, Shared, , , ) {240}
			Interrupt(ResourceConsumer, Level, ActiveHigh, Shared, , , ) {240}
			Interrupt(ResourceConsumer, Edge, ActiveHigh, Shared, , , ) {648} // For PDC  Wake up ::TLMM GPIo 126 SD Card Detection
			Interrupt(ResourceConsumer, Edge, ActiveBoth, Shared, , , ) {568} // For PDC  Wake up ::TLMM GPIo 54 
			Interrupt(ResourceConsumer, Edge, ActiveBoth, Shared, , , ) {646} // For PDC  Wake up ::TLMM GPIo 124, Hall sensor used for lid
		})
		Return (RBUF) /* \_SB_.GIO0._CRS.RBUF */
	}
	// ACPI method to return Num pins
	Method(OFNI, 0x0, NotSerialized) 
	{
		Name(RBUF, Buffer(0x02)
		{
			0x96,  // 0: TOTAL_GPIO_PINS
			0x00   // 1: TOTAL_GPIO_PINS
		})
		Return (RBUF) /* \_SB_.GIO0.OFNI.RBUF */
	}
	
	Name(GABL, Zero)
	Method(_REG, 0x2, NotSerialized)
	{
		If ((Arg0 == 0x08))
		{
			GABL = Arg1
		}
	} 
}
