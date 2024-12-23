//===========================================================================
//                           <oem_resources.asl>
// DESCRIPTION
//   This file contans the resources needed by oem drivers.
//
//===========================================================================


Scope(\_SB_.PEP0) 
{
	
    // OEM 
    Method(OPMD)
    {
        Return(OPCC)
    }	
	
    Name(OPCC,
    Package (){ 
        Package ()
        {
            "DEVICE", 
            "\\_SB.ADSP.SLM1.ADCM.AUDD.SPK1", 
            Package()
            { 
                "DSTATE",
                0x0, // D0 state
                
                // interrupt configuration
                package()
                {
                    "TLMMGPIO", // TLMMGPIO resource tas2559-irq-gpio
                    package()
                    {                                    
                        11,  // PIN number = 24
                        0,   // State: NOT active = 0x0
                        0,   // Function select = 0
                        0,   // direction = Input.
                        3,   // Pull Up 
                        0,   // Drive Strength: 0x0 = 2mA
                    },
                },
                package()
                {
                    "TLMMGPIO", // TLMMGPIO resource tas2560-irq-gpio
                    package()
                    {                                    
                        30,  // PIN number = 30
                        0,   // State: NOT active = 0x0
                        0,   // Function select = 0
                        0,   // direction = Input.
                        3,   // Pull Up 
                        0,   // Drive Strength: 0x0 = 2mA
                    },
                },

                // Drive RESET Line High
                package()
                {
                    "TLMMGPIO", // TLMMGPIO resource tas2559-reset-gpio 
                    package()
                    {                                    
                        12,  // PIN number = 14
                        1,   // State: active = 0x1
                        0,   // Function select = 0
                        1,   // direction = O/P
                        0,   //  Pull none 
                        0,   // Drive Strength: 0x0 = 2mA
                    },
                },
                package()
                {
                    "TLMMGPIO", // TLMMGPIO resource tas2560-reset-gpio 
                    package()
                    {                                    
                        76,  // PIN number = 25
                        1,   // State: active = 0x1
                        0,   // Function select = 0
                        1,   // direction = O/P
                        0,   //  Pull none 
                        0,   // Drive Strength: 0x0 = 2mA
                    },
                },
            },
            Package()
            {
                "DSTATE",
                0x3, // D3 state    
                
                // RESET pin - power save mode 
                package()
                {
                    "TLMMGPIO", // TLMMGPIO resource tas2559-reset-gpio
                    package()
                    {                                    
                        12,  // PIN number = 14
                        0,   // State: NOT active = 0x0
                        0,   // Function select = 0
                        1,   // direction = Output.
                        0,   // NO Pull 
                        0,   // Drive Strength: 0x0 = 2mA
                    },
                },
                package()
                {
                    "TLMMGPIO", // TLMMGPIO resource tas2560-reset-gpio
                    package()
                    {                                    
                        76,  // PIN number = 25
                        0,   // State: NOT active = 0x0
                        0,   // Function select = 0
                        1,   // direction = Output.
                        0,   // NO Pull 
                        0,   // Drive Strength: 0x0 = 2mA
                    },
                },

                // INT configuration - power save mode
                package()
                {
                    "TLMMGPIO", // TLMMGPIO resource tas2559-irq-gpio
                    package()
                    {                                    
                        11,  // PIN number = 24
                        0,   // State: NOT active = 0x0
                        0,   // Function select = 0
                        0,   // direction = Input.
                        1,   // Pull Down 
                        0,   // Drive Strength: 0x0 = 2mA
                    },
                },
                package()
                {
                    "TLMMGPIO", // TLMMGPIO resource tas2560-irq-gpio
                    package()
                    {                                    
                        30,  // PIN number = 30
                        0,   // State: NOT active = 0x0
                        0,   // Function select = 0
                        0,   // direction = Input.
                        1,   // Pull Down 
                        0,   // Drive Strength: 0x0 = 2mA
                    },
                },
            }
        }
    })
}
