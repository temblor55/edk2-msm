//
// Storage - SD card
//
Device (SDC2)
{
   Name (_DEP, Package(0x1) {
       \_SB_.PEP0,
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
       })
       Return (RBUF)
   }
   
   Device (EMMC)
   {
       Method (_ADR, 0, NotSerialized)  // _ADR: Address
       {
           Return (0x08)
       }

       Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
       {
           Return (Zero)
       }
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
