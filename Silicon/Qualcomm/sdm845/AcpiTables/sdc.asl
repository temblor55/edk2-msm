//
// Storage - SD card
//
Device (SDC2)
{
   Name (_DEP, Package(0x2) {
       \_SB_.PEP0,
       \_SB_.GIO0
   })

   Name (_HID, "QCOM2466")
   Alias(\_SB.PSUB, _SUB)
   Name (_CID, "ACPI\QCOM2466")
   Name (_UID, 1)
   Name (_CCA, 0)
     
   Method (_CRS, 0x0, NotSerialized) {
       Name (RBUF, ResourceTemplate ()
       {
           // SDCC2 register address space
           Memory32Fixed (ReadWrite, 0x8804000, 0x00001000)

           Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive, , , ) {236}

           // Card detect GPIO
           GpioInt(Level, ActiveLow, SharedAndWake, PullDown, 30000, "\\_SB.GIO0", ,) {192}
           GpioIo(Shared, PullDown, 0, 0, IoRestrictionNone, "\\_SB.GIO0", 0, ResourceConsumer, ,) {126}
       })
       Return (RBUF)
   }
   
   Method(_DIS)
   {
      // Place holder to allow disable
   }
   Method (_STA) 
   {
       Return(0xF)
   }
}
