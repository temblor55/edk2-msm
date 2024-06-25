Scope (\_SB.PEP0)
{
	Method (FPMX, 0, NotSerialized)
	{
		Return (FPXC) /* \_SB_.PEP0.FPXC */
	}
	
	Name (FPXC, Package (0x01)
	{
		Package (0x04)
		{
			"DEVICE", 
			"\\_SB.FPRT", 
			Package (0x08)
			{
				"DSTATE", 
				Zero, 
				Package (0x02)
				{
					"PMICVREGVOTE", 
					Package (0x06)
					{
						"PPP_RESOURCE_ID_LDO19_A", 
						One, 
						0x002F4D60, 
						One, 
						0x07, 
						Zero
					}
				}, 

				Package (0x02)
				{
					"DELAY", 
					Package (0x01)
					{
						0x0A
					}
				}, 

				Package (0x02)
				{
					"TLMMGPIO", 
					Package (0x06)
					{
						0x79, 
						One, 
						Zero, 
						One, 
						Zero, 
						Zero
					}
				}, 

				Package (0x02)
				{
					"TLMMGPIO", 
					Package (0x06)
					{
						0x68, 
						One, 
						Zero, 
						One, 
						Zero, 
						Zero
					}
				}, 

				Package (0x02)
				{
					"DELAY", 
					Package (0x01)
					{
						One
					}
				}, 

				Package (0x02)
				{
					"TLMMGPIO", 
					Package (0x06)
					{
						0x79, 
						One, 
						Zero, 
						One, 
						One, 
						Zero
					}
				}
			}, 

			Package (0x03)
			{
				"DSTATE", 
				0x03, 
				Package (0x02)
				{
					"PMICVREGVOTE", 
					Package (0x06)
					{
						"PPP_RESOURCE_ID_LDO19_A", 
						One, 
						Zero, 
						Zero, 
						Zero, 
						Zero
					}
				}
			}
		}
	})
}