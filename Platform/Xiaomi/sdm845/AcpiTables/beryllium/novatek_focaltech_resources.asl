Scope (PEP0)
        {
            Method (LPMX, 0, NotSerialized)
            {
                Return (LPXC) /* \_SB_.PEP0.LPXC */
            }

            Name (LPXC, Package (0x01)
            {
                Package (0x04)
                {
                    "DEVICE", 
                    "\\_SB.TSC1", 
                    Package (0x08)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x1F, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x03, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x20, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x06)
                            {
                                "PPP_RESOURCE_ID_LDO14_A", 
                                One, 
                                0x001B7740, 
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
                                0x03E8
                            }
                        }, 

                        //Package (0x02)
                        //{
                        //    "TLMMGPIO", 
                        //    Package (0x06)
                        //    {
                        //        0x20, // pin number = 32
                        //        One,  // state: active = 1
                        //        Zero, // function select = 0
                        //        One,  // direction = 0/P
                        //        Zero, // PULLNONE 
                        //        Zero  // Driver string: 0x0 = 2mA
                        //    }
                        //}, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                0x4E20
                            }
                        }
                    }

                    //Package (0x05)
                    //{
                    //    "DSTATE", 
                    //    0x03, 
                    //    Package (0x02)
                    //    {
                    //        "PMICVREGVOTE", 
                    //        Package (0x06)
                    //        {
                    //            "PPP_RESOURCE_ID_LDO14_A", 
                    //            One, 
                    //            Zero, 
                    //            Zero, 
                    //            0x05, 
                    //            Zero
                    //        }
                    //    }, 

                    //    Package (0x02)
                    //    {
                    //        "TLMMGPIO", 
                    //        Package (0x06)
                    //        {
                    //            0x20, 
                    //            Zero, 
                    //            Zero, 
                    //            Zero, 
                    //            One, 
                    //            Zero
                    //        }
                    //    }, 

                    //    Package (0x02)
                    //    {
                    //        "TLMMGPIO", 
                    //        Package (0x06)
                    //        {
                    //            0x1F, 
                    //            Zero, 
                    //            Zero, 
                    //            Zero, 
                    //            One, 
                    //            Zero
                    //        }
                    //    }
                    //}
                }
            })
        }
