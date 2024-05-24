/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLHzc0GM.aml, Wed May 22 16:41:59 2024
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000B144 (45380)
 *     Revision         0x02
 *     Checksum         0xC3
 *     OEM ID           "ALASKA"
 *     OEM Table ID     "A M I "
 *     OEM Revision     0x01072009 (17244169)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("", "DSDT", 2, "ALASKA", "A M I ", 0x01072009)
{
    External (_SB_, DeviceObj)
    External (_SB_.APTS, MethodObj)    // 1 Arguments
    External (_SB_.AWAK, MethodObj)    // 1 Arguments
    External (MPTS, MethodObj)    // 1 Arguments
    External (MWAK, MethodObj)    // 1 Arguments

    Name (ENTK, 0x87)
    Name (EXTK, 0xAA)
    Name (SP1O, 0x2E)
    Name (IOHW, 0x0290)
    Name (IOHB, 0x0290)
    Name (IOHL, 0x10)
    Name (PEBL, 0x08000000)
    Name (ACPM, One)
    Name (CPVD, One)
    Name (SMBB, 0x0B20)
    Name (SMBL, 0x20)
    Name (SMB0, 0x0B00)
    Name (SMBM, 0x10)
    Name (PMBS, 0x0800)
    Name (PMLN, 0xA0)
    Name (SMIO, 0xB2)
    Name (GPBS, Zero)
    Name (GPLN, Zero)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (HPTB, 0xFED00000)
    Name (WDTB, Zero)
    Name (WDTL, Zero)
    Name (GIOB, 0xFED81500)
    Name (IOMB, 0xFED80D00)
    Name (SSMB, 0xFED80200)
    Name (SPMR, 0xFED80300)
    Name (CAFS, 0xBB)
    Name (UTDB, Zero)
    Name (NBTS, 0x5000)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, One)
    Name (SHPC, Zero)
    Name (PEPM, One)
    Name (PEER, One)
    Name (PECS, One)
    Name (ITKE, Zero)
    Name (PEBS, 0xF0000000)
    Name (PELN, 0x08000000)
    Name (SRIO, Zero)
    Name (CSMI, 0x61)
    Name (DSSP, Zero)
    Name (FHPP, One)
    Name (SMIA, 0xB2)
    Name (SMIB, 0xB3)
    Name (OFST, 0x35)
    Name (TRST, 0x02)
    Name (TCMF, Zero)
    Name (TMF1, Zero)
    Name (TMF2, Zero)
    Name (TMF3, Zero)
    Name (TTPF, Zero)
    Name (DTPT, Zero)
    Name (TTDP, One)
    Name (TPMB, 0xCA6DF000)
    Name (TPBS, 0x4000)
    Name (TPMC, 0xCA6E3000)
    Name (TPCS, 0x4000)
    Name (TPMM, 0xFD210510)
    Name (FTPM, 0xFD210510)
    Name (PPIM, 0xCAC97718)
    Name (PPIL, 0x1C)
    Name (AMDT, One)
    Name (TPMF, One)
    Name (PPIV, One)
    Name (AMWV, 0x09)
    Name (SMIM, 0x80000009)
    Name (HIDK, "MSFT0001")
    Name (HIDM, "MSFT0003")
    Name (CIDK, 0x0303D041)
    Name (CIDM, 0x030FD041)
    Name (ATIS, 0xB0)
    Name (MBEC, Zero)
    Name (THPN, Zero)
    Name (ALST, Zero)
    Name (NBTP, 0xFEC30000)
    Name (CNSB, Zero)
    Name (CNPG, Zero)
    Name (SMIP, 0xB2)
    Name (IO1B, Zero)
    Name (IO1L, Zero)
    Name (IO2B, 0x0290)
    Name (IO2L, 0x10)
    Name (IO3B, 0x0200)
    Name (IO3L, 0x20)
    Name (IO4B, Zero)
    Name (IO4L, Zero)
    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        If (Arg0)
        {
            \_SB.DSPI ()
            \_SB.PCI0.NAPE ()
        }

        PXXX (Arg0)
    }

    Name (PICM, Zero)
    Method (PXXX, 1, NotSerialized)
    {
        If (Arg0)
        {
            DBG8 = 0xAA
        }
        Else
        {
            DBG8 = 0xAC
        }

        PICM = Arg0
    }

    Name (OSVR, Ones)
    Method (OSFL, 0, NotSerialized)
    {
        If ((OSVR != Ones))
        {
            Return (OSVR) /* \OSVR */
        }

        If ((PICM == Zero))
        {
            DBG8 = 0xAC
        }

        OSVR = 0x03
        If (CondRefOf (\_OSI, Local0))
        {
            If (_OSI ("Windows 2001"))
            {
                OSVR = 0x04
            }

            If (_OSI ("Windows 2001.1"))
            {
                OSVR = 0x05
            }

            If (_OSI ("FreeBSD"))
            {
                OSVR = 0x06
            }

            If (_OSI ("HP-UX"))
            {
                OSVR = 0x07
            }

            If (_OSI ("OpenVMS"))
            {
                OSVR = 0x08
            }

            If (_OSI ("Windows 2001 SP1"))
            {
                OSVR = 0x09
            }

            If (_OSI ("Windows 2001 SP2"))
            {
                OSVR = 0x0A
            }

            If (_OSI ("Windows 2001 SP3"))
            {
                OSVR = 0x0B
            }

            If (_OSI ("Windows 2006"))
            {
                OSVR = 0x0C
            }

            If (_OSI ("Windows 2006 SP1"))
            {
                OSVR = 0x0D
            }

            If (_OSI ("Windows 2009"))
            {
                OSVR = 0x0E
            }

            If (_OSI ("Windows 2012"))
            {
                OSVR = 0x0F
            }

            If (_OSI ("Windows 2013"))
            {
                OSVR = 0x10
            }
        }
        Else
        {
            If (MCTH (_OS, "Microsoft Windows NT"))
            {
                OSVR = Zero
            }

            If (MCTH (_OS, "Microsoft Windows"))
            {
                OSVR = One
            }

            If (MCTH (_OS, "Microsoft WindowsME: Millennium Edition"))
            {
                OSVR = 0x02
            }

            If (MCTH (_OS, "Linux"))
            {
                OSVR = 0x03
            }

            If (MCTH (_OS, "FreeBSD"))
            {
                OSVR = 0x06
            }

            If (MCTH (_OS, "HP-UX"))
            {
                OSVR = 0x07
            }

            If (MCTH (_OS, "OpenVMS"))
            {
                OSVR = 0x08
            }
        }

        Return (OSVR) /* \OSVR */
    }

    Method (MCTH, 2, NotSerialized)
    {
        If ((SizeOf (Arg0) < SizeOf (Arg1)))
        {
            Return (Zero)
        }

        Local0 = (SizeOf (Arg0) + One)
        Name (BUF0, Buffer (Local0){})
        Name (BUF1, Buffer (Local0){})
        BUF0 = Arg0
        BUF1 = Arg1
        While (Local0)
        {
            Local0--
            If ((DerefOf (BUF0 [Local0]) != DerefOf (BUF1 [Local0]
                )))
            {
                Return (Zero)
            }
        }

        Return (One)
    }

    Name (PRWP, Package (0x02)
    {
        Zero, 
        Zero
    })
    Method (XPRW, 2, NotSerialized)
    {
        PRWP [Zero] = Arg0
        Local0 = (SS1 << One)
        Local0 |= (SS2 << 0x02)
        Local0 |= (SS3 << 0x03)
        Local0 |= (SS4 << 0x04)
        If (((One << Arg1) & Local0))
        {
            PRWP [One] = Arg1
        }
        Else
        {
            Local0 >>= One
            If (((OSFL () == One) || (OSFL () == 0x02)))
            {
                FindSetLeftBit (Local0, PRWP [One])
            }
            Else
            {
                FindSetRightBit (Local0, PRWP [One])
            }
        }

        Return (PRWP) /* \PRWP */
    }

    Name (WAKP, Package (0x02)
    {
        Zero, 
        Zero
    })
    Method (UPWP, 1, NotSerialized)
    {
        If (DerefOf (WAKP [Zero]))
        {
            WAKP [One] = Zero
        }
        Else
        {
            WAKP [One] = Arg0
        }
    }

    OperationRegion (DEB0, SystemIO, 0x80, One)
    Field (DEB0, ByteAcc, NoLock, Preserve)
    {
        DBG8,   8
    }

    OperationRegion (DEB1, SystemIO, 0x90, 0x02)
    Field (DEB1, WordAcc, NoLock, Preserve)
    {
        DBG9,   16
    }

    Name (SS1, Zero)
    Name (SS2, Zero)
    Name (SS3, One)
    Name (SS4, One)
    Name (IOST, 0x0000)
    Name (TOPM, 0x00000000)
    Name (ROMS, 0xFFE00000)
    Name (VGAF, One)
    OperationRegion (DEB2, SystemIO, 0x80, 0x02)
    Field (DEB2, WordAcc, NoLock, Preserve)
    {
        P80H,   16
    }

    Name (OSTY, Ones)
    OperationRegion (ACMS, SystemIO, 0x72, 0x02)
    Field (ACMS, ByteAcc, NoLock, Preserve)
    {
        ACMX,   8, 
        ACMA,   8
    }

    IndexField (ACMX, ACMA, ByteAcc, NoLock, Preserve)
    {
        Offset (0xB9), 
        IMEN,   8
    }

    OperationRegion (PSMI, SystemIO, SMIO, 0x02)
    Field (PSMI, ByteAcc, NoLock, Preserve)
    {
        APMC,   8, 
        APMD,   8
    }

    OperationRegion (PMRG, SystemMemory, 0xFED80300, 0x0100)
    Field (PMRG, AnyAcc, NoLock, Preserve)
    {
            ,   6, 
        HPEN,   1, 
        Offset (0x60), 
        P1EB,   16, 
        Offset (0x78), 
            ,   20, 
        SI3V,   1, 
        Offset (0x80), 
        SI3R,   1, 
        Offset (0xF0), 
            ,   3, 
        RSTU,   1
    }

    OperationRegion (GSMM, SystemMemory, 0xFED80000, 0x1000)
    Field (GSMM, AnyAcc, NoLock, Preserve)
    {
        Offset (0x288), 
            ,   1, 
        CLPS,   1, 
        Offset (0x296), 
            ,   7, 
        TMSE,   1, 
        Offset (0x2B0), 
            ,   2, 
        SLPS,   2, 
        Offset (0x3BB), 
            ,   6, 
        PWDE,   1, 
        Offset (0x3E4), 
        BLNK,   2
    }

    OperationRegion (P1E0, SystemIO, P1EB, 0x04)
    Field (P1E0, ByteAcc, NoLock, Preserve)
    {
        Offset (0x01), 
            ,   6, 
        PEWS,   1, 
        WSTA,   1, 
        Offset (0x03), 
            ,   6, 
        PEWD,   1
    }

    OperationRegion (IOCC, SystemIO, PMBS, 0x80)
    Field (IOCC, ByteAcc, NoLock, Preserve)
    {
        Offset (0x01), 
            ,   2, 
        RTCS,   1
    }

    Method (SPTS, 1, NotSerialized)
    {
        P80H = Arg0
        If ((Arg0 == 0x03))
        {
            BLNK = One
        }

        If (((Arg0 == 0x04) || (Arg0 == 0x05)))
        {
            BLNK = Zero
        }

        If ((Arg0 == 0x03))
        {
            RSTU = Zero
        }

        CLPS = One
        SLPS = One
        PEWS = PEWS /* \PEWS */
        If ((Arg0 == 0x03))
        {
            SLPS = One
        }

        If ((Arg0 == 0x04))
        {
            SLPS = One
            RSTU = One
        }

        If ((Arg0 == 0x05))
        {
            PWDE = One
        }
    }

    Method (SWAK, 1, NotSerialized)
    {
        BLNK = 0x03
        If ((Arg0 == 0x03))
        {
            RSTU = One
        }

        PEWS = PEWS /* \PEWS */
        PEWD = Zero
        If (PICM)
        {
            \_SB.DSPI ()
        }

        If (TMSE)
        {
            TMSE = Zero
        }

        If ((Arg0 == 0x03))
        {
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }

        If ((Arg0 == 0x04))
        {
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }
    }

    Scope (_GPE)
    {
    }

    Scope (\)
    {
        Device (AWW0)
        {
            Name (_HID, EisaId ("PNP0C14") /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, "AWW")  // _UID: Unique ID
            Name (_WDG, Buffer (0x28)
            {
                /* 0000 */  0x13, 0x12, 0x02, 0xC3, 0xBC, 0xD0, 0xA2, 0x41,  // .......A
                /* 0008 */  0xBA, 0x17, 0x81, 0x6C, 0xD5, 0xED, 0x77, 0x44,  // ...l..wD
                /* 0010 */  0x42, 0x43, 0x01, 0x02, 0x21, 0x12, 0x90, 0x05,  // BC..!...
                /* 0018 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,  // f.......
                /* 0020 */  0xC9, 0x06, 0x29, 0x10, 0x4D, 0x4F, 0x01, 0x00   // ..).MO..
            })
            Method (WMBC, 3, NotSerialized)
            {
                Local0 = \_SB.CTRL
                Return (Local0)
            }

            Name (WQMO, Buffer (0x0241)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                /* 0008 */  0x31, 0x02, 0x00, 0x00, 0x9C, 0x04, 0x00, 0x00,  // 1.......
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                /* 0018 */  0x28, 0x5A, 0x82, 0x00, 0x01, 0x06, 0x18, 0x42,  // (Z.....B
                /* 0020 */  0x20, 0xA4, 0x02, 0x89, 0xC0, 0xA1, 0x21, 0x14,  //  .....!.
                /* 0028 */  0x45, 0x01, 0x0C, 0x86, 0xCB, 0x72, 0x20, 0xE4,  // E....r .
                /* 0030 */  0x82, 0x89, 0x09, 0x10, 0x01, 0x21, 0xAF, 0x02,  // .....!..
                /* 0038 */  0x6C, 0x0A, 0x30, 0x09, 0xA2, 0xFE, 0xFD, 0x21,  // l.0....!
                /* 0040 */  0x4A, 0x82, 0x43, 0x09, 0x81, 0x90, 0x44, 0x01,  // J.C...D.
                /* 0048 */  0xE6, 0x05, 0xE8, 0x16, 0x60, 0x58, 0x80, 0x6D,  // ....`X.m
                /* 0050 */  0x01, 0xA6, 0x05, 0x38, 0x86, 0xA4, 0xD2, 0xC0,  // ...8....
                /* 0058 */  0x29, 0x81, 0xA5, 0x40, 0x48, 0xA8, 0x00, 0xE5,  // )..@H...
                /* 0060 */  0x02, 0x7C, 0x0B, 0xD0, 0x8E, 0x28, 0xC9, 0x02,  // .|...(..
                /* 0068 */  0x2C, 0xC3, 0x88, 0xC0, 0xA3, 0x88, 0x6C, 0x34,  // ,.....l4
                /* 0070 */  0x4E, 0x50, 0x36, 0x34, 0x4A, 0x06, 0x84, 0x3C,  // NP64J..<
                /* 0078 */  0x0B, 0xB0, 0x0E, 0x4C, 0x08, 0xEC, 0x5E, 0x80,  // ...L..^.
                /* 0080 */  0x43, 0x01, 0xCE, 0x04, 0x08, 0x13, 0xA0, 0x4C,  // C......L
                /* 0088 */  0x80, 0x31, 0x08, 0x02, 0xD3, 0xD6, 0x70, 0x04,  // .1....p.
                /* 0090 */  0x54, 0x21, 0x98, 0x50, 0xCE, 0x25, 0x52, 0x83,  // T!.P.%R.
                /* 0098 */  0x60, 0x42, 0x09, 0x14, 0x24, 0x4C, 0x6F, 0x28,  // `B..$Lo(
                /* 00A0 */  0x12, 0x07, 0x22, 0x6D, 0x78, 0xC2, 0x6C, 0x4D,  // .."mx.lM
                /* 00A8 */  0x80, 0x45, 0x0C, 0x41, 0x45, 0x08, 0x1A, 0xA1,  // .E.AE...
                /* 00B0 */  0xFD, 0x41, 0x90, 0x58, 0x0B, 0xD6, 0x50, 0x1D,  // .A.X..P.
                /* 00B8 */  0x69, 0x34, 0xA8, 0xE1, 0x25, 0x38, 0x5C, 0x0F,  // i4..%8\.
                /* 00C0 */  0xF5, 0x1C, 0x3B, 0x17, 0x20, 0x7D, 0x92, 0x02,  // ..;. }..
                /* 00C8 */  0x39, 0xC8, 0x73, 0xAB, 0x73, 0x9C, 0x04, 0x24,  // 9.s.s..$
                /* 00D0 */  0x81, 0xB1, 0x12, 0x74, 0x30, 0x70, 0x28, 0xAE,  // ...t0p(.
                /* 00D8 */  0x01, 0x35, 0xE3, 0xE3, 0x65, 0x82, 0xE0, 0x50,  // .5..e..P
                /* 00E0 */  0x43, 0xF4, 0x40, 0xC3, 0x9D, 0xC0, 0x21, 0x32,  // C.@...!2
                /* 00E8 */  0x40, 0xCF, 0xEE, 0x68, 0x30, 0x07, 0x00, 0x8F,  // @..h0...
                /* 00F0 */  0xEC, 0x64, 0xDE, 0x03, 0x4A, 0x15, 0x60, 0x76,  // .d..J.`v
                /* 00F8 */  0xCC, 0x9A, 0x5A, 0x82, 0xE3, 0x31, 0xF4, 0xE9,  // ..Z..1..
                /* 0100 */  0x9E, 0xCF, 0x09, 0x27, 0xB0, 0xFC, 0x41, 0xA0,  // ...'..A.
                /* 0108 */  0x46, 0x66, 0x68, 0xCF, 0xF4, 0xB4, 0x62, 0x86,  // Ffh...b.
                /* 0110 */  0x3C, 0xFC, 0xC3, 0x62, 0x62, 0x21, 0xF4, 0x41,  // <..bb!.A
                /* 0118 */  0xF0, 0x78, 0xE0, 0xFD, 0xFF, 0xC7, 0x03, 0x1E,  // .x......
                /* 0120 */  0xC5, 0x67, 0x02, 0x21, 0xBC, 0x12, 0xC4, 0xF6,  // .g.!....
                /* 0128 */  0x80, 0x12, 0x94, 0x07, 0x8C, 0x1E, 0x90, 0xFD,  // ........
                /* 0130 */  0x0A, 0x40, 0x08, 0x5E, 0xE6, 0x88, 0xE4, 0x14,  // .@.^....
                /* 0138 */  0x41, 0x63, 0xF2, 0xE4, 0x5E, 0x0D, 0x42, 0x3C,  // Ac..^.B<
                /* 0140 */  0x24, 0x14, 0x3E, 0x00, 0xCD, 0xEA, 0x31, 0x81,  // $.>...1.
                /* 0148 */  0x11, 0x14, 0x09, 0x8F, 0x12, 0x03, 0x8F, 0x3A,  // .......:
                /* 0150 */  0x04, 0x44, 0x3E, 0x9A, 0x73, 0x09, 0x7F, 0x34,  // .D>.s..4
                /* 0158 */  0x51, 0x4E, 0xE1, 0x70, 0x7C, 0x62, 0x30, 0x42,  // QN.p|b0B
                /* 0160 */  0xF8, 0x72, 0x0F, 0x0E, 0x44, 0xF3, 0x7C, 0x34,  // .r..D.|4
                /* 0168 */  0x89, 0x33, 0x7A, 0x17, 0xF0, 0xD9, 0x80, 0x1D,  // .3z.....
                /* 0170 */  0x2E, 0x1C, 0x89, 0x42, 0x36, 0x16, 0xEA, 0xA1,  // ...B6...
                /* 0178 */  0x52, 0x61, 0x40, 0x9A, 0x78, 0xDC, 0x98, 0x47,  // Ra@.x..G
                /* 0180 */  0xD1, 0xFB, 0x78, 0x28, 0xCA, 0xEB, 0x01, 0x83,  // ..x(....
                /* 0188 */  0x38, 0x29, 0x8F, 0x4E, 0xF0, 0x14, 0xC2, 0x12,  // 8).N....
                /* 0190 */  0x48, 0xE8, 0x90, 0x3C, 0x02, 0x47, 0x06, 0xA3,  // H..<.G..
                /* 0198 */  0x20, 0x1E, 0xBF, 0xE3, 0x40, 0xC8, 0xC9, 0x51,  //  ...@..Q
                /* 01A0 */  0x00, 0x35, 0x3A, 0xDF, 0x04, 0x3C, 0xAE, 0x53,  // .5:..<.S
                /* 01A8 */  0x3A, 0x8C, 0x03, 0x39, 0x8B, 0x28, 0xAF, 0x0C,  // :..9.(..
                /* 01B0 */  0x26, 0x30, 0xCE, 0x23, 0x03, 0xAC, 0x11, 0x1E,  // &0.#....
                /* 01B8 */  0xCE, 0xD9, 0x79, 0x22, 0x86, 0x33, 0xA4, 0xE1,  // ..y".3..
                /* 01C0 */  0xF8, 0x55, 0xE0, 0x8D, 0x22, 0x01, 0x3F, 0x12,  // .U..".?.
                /* 01C8 */  0xC0, 0xBF, 0x6E, 0xF8, 0x40, 0x70, 0x0A, 0x8F,  // ..n.@p..
                /* 01D0 */  0x1A, 0x6F, 0x19, 0x09, 0x2C, 0xF0, 0x48, 0x00,  // .o..,.H.
                /* 01D8 */  0x0A, 0x20, 0x5F, 0x02, 0xAC, 0xF4, 0x20, 0x40,  // . _... @
                /* 01E0 */  0xE7, 0x10, 0x22, 0x4C, 0x34, 0x13, 0xFC, 0xFF,  // .."L4...
                /* 01E8 */  0xC3, 0x73, 0xC1, 0x63, 0xA5, 0xB2, 0xC6, 0x85,  // .s.c....
                /* 01F0 */  0x1A, 0xAA, 0x4F, 0x07, 0x0C, 0xFB, 0x1D, 0xC0,  // ..O.....
                /* 01F8 */  0xA2, 0x67, 0xA8, 0x1B, 0xC1, 0x41, 0xBD, 0x3D,  // .g...A.=
                /* 0200 */  0x58, 0xA2, 0x53, 0xA9, 0x4E, 0x61, 0x3D, 0x52,  // X.S.Na=R
                /* 0208 */  0x0E, 0x6B, 0xB4, 0xB0, 0x07, 0xFC, 0xE4, 0xE0,  // .k......
                /* 0210 */  0x5B, 0x87, 0x67, 0x66, 0x8C, 0xB0, 0x1E, 0xAD,  // [.gf....
                /* 0218 */  0x15, 0xDA, 0xF4, 0xA9, 0xD1, 0xA8, 0x55, 0x83,  // ......U.
                /* 0220 */  0x32, 0x35, 0xCA, 0x34, 0xA8, 0xD5, 0xA7, 0x52,  // 25.4...R
                /* 0228 */  0x63, 0xC6, 0x4E, 0x22, 0x8E, 0xF1, 0x12, 0xD0,  // c.N"....
                /* 0230 */  0x58, 0x2C, 0x62, 0x39, 0x02, 0xB1, 0x74, 0x0A,  // X,b9..t.
                /* 0238 */  0x19, 0x01, 0x51, 0x10, 0x10, 0x01, 0xF9, 0xFF,  // ..Q.....
                /* 0240 */  0x0F                                             // .
            })
        }
    }

    Scope (_SB)
    {
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {4,5,7,10,11,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Name (PD13, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR13, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x21
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x22
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x23
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x20
            }
        })
        Name (PD14, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKE, 
                Zero
            }
        })
        Name (AR14, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x25
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x26
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x27
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x24
            }
        })
        Name (PD30, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR30, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x29
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x2A
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x2B
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x28
            }
        })
        Name (PD31, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKE, 
                Zero
            }
        })
        Name (AR31, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x2D
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x2E
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x2F
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x2C
            }
        })
        Name (PD00, Package (0x14)
        {
            Package (0x04)
            {
                0x0007FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                LNKB, 
                Zero
            }
        })
        Name (AR00, Package (0x14)
        {
            Package (0x04)
            {
                0x0007FFFF, 
                Zero, 
                Zero, 
                0x22
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                Zero, 
                Zero, 
                0x23
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                One, 
                Zero, 
                0x22
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                0x02, 
                Zero, 
                0x23
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x28
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x29
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x2A
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x2B
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x2B
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                Zero, 
                0x24
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                Zero, 
                0x25
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                Zero, 
                0x26
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                Zero, 
                0x27
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                Zero, 
                0x27
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                Zero, 
                0x20
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                Zero, 
                0x21
            }
        })
        Name (PG22, Package (0x00){})
        Name (AG22, Package (0x00){})
        Name (PG23, Package (0x00){})
        Name (AG23, Package (0x00){})
        Name (PG24, Package (0x00){})
        Name (AG24, Package (0x00){})
        Name (PG26, Package (0x00){})
        Name (AG26, Package (0x00){})
        Name (PG27, Package (0x00){})
        Name (AG27, Package (0x00){})
        Name (PD01, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR01, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x18
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x19
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x1A
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x1B
            }
        })
        Name (PD03, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR03, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x20
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x21
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x22
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x23
            }
        })
        Name (PD04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKH, 
                Zero
            }
        })
        Name (AR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x24
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x25
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x26
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x27
            }
        })
        Name (PD05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x28
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x29
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x2A
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x2B
            }
        })
        Name (PD06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKH, 
                Zero
            }
        })
        Name (AR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x2C
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x2D
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x2E
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x2F
            }
        })
        Name (PD07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x30
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x31
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x32
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x33
            }
        })
        Name (PD08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKH, 
                Zero
            }
        })
        Name (AR08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x34
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x35
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x36
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x37
            }
        })
        Name (PD09, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKF, 
                Zero
            }
        })
        Name (AR09, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x36
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x37
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x34
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x35
            }
        })
        Name (PD0A, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR0A, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x32
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x33
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x30
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x31
            }
        })
        Name (PD0B, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKF, 
                Zero
            }
        })
        Name (AR0B, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x2E
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x2F
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x2C
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x2D
            }
        })
        Name (PD0C, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR0C, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x2A
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x2B
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x28
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x29
            }
        })
        Name (PD0D, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKF, 
                Zero
            }
        })
        Name (AR0D, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x26
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x27
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x24
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x25
            }
        })
        Name (PD0E, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR0E, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x22
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x23
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x20
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x21
            }
        })
        Name (PD0F, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKF, 
                Zero
            }
        })
        Name (AR0F, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x1E
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x1F
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x1C
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x1D
            }
        })
        Name (PD10, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR10, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x1A
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x1B
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x18
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x19
            }
        })
        Name (PD11, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR11, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x19
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x1A
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x1B
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x18
            }
        })
        Name (PD02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKH, 
                Zero
            }
        })
        Name (AR02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x1C
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x1D
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x1E
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x1F
            }
        })
        Name (PG45, Package (0x00){})
        Name (AG45, Package (0x00){})
        Name (PG46, Package (0x00){})
        Name (AG46, Package (0x00){})
        Name (PG47, Package (0x00){})
        Name (AG47, Package (0x00){})
    }

    Scope (_SB)
    {
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00) /* \_SB_.AR00 */
                }

                Return (PD00) /* \_SB_.PD00 */
            }

            Device (AMDN)
            {
                Name (_HID, EisaId ("PNP0C01") /* System Board */)  // _HID: Hardware ID
                Name (_UID, 0xC8)  // _UID: Unique ID
                Name (_STA, 0x0F)  // _STA: Status
                Name (NPTR, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00000000,         // Address Length
                        _Y00)
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    CreateDWordField (NPTR, \_SB.PCI0.AMDN._Y00._LEN, PL)  // _LEN: Length
                    CreateDWordField (NPTR, \_SB.PCI0.AMDN._Y00._BAS, PB)  // _BAS: Base Address
                    PB = PEBS /* \PEBS */
                    PL = PEBL /* \PEBL */
                    Return (NPTR) /* \_SB_.PCI0.AMDN.NPTR */
                }
            }

            Method (NPTS, 1, NotSerialized)
            {
                APTS (Arg0)
            }

            Method (NWAK, 1, NotSerialized)
            {
                AWAK (Arg0)
            }

            Name (CPRB, One)
            Name (LVGA, 0x01)
            Name (STAV, 0x0F)
            Name (BRB, 0x0000)
            Name (BRL, 0x0100)
            Name (IOB, 0x1000)
            Name (IOL, 0xF000)
            Name (MBB, 0xD0000000)
            Name (MBL, 0x2D000000)
            Name (MAB, 0x0000000430000000)
            Name (MAL, 0x0000007BD0000000)
            Name (MAM, 0x0000007FFFFFFFFF)
            Name (CRS1, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x007F,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0080,             // Length
                    ,, _Y01)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x03AF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x03B0,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x03E0,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0918,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y03, TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0x0FFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0300,             // Length
                    ,, _Y02, TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y04, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x02000000,         // Range Minimum
                    0xFFDFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFDE00000,         // Length
                    ,, _Y05, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x02000000,         // Range Minimum
                    0xFFDFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFDE00000,         // Length
                    ,, _Y06, AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x0000000000000000, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000000, // Length
                    ,, _Y07, AddressRangeMemory, TypeStatic)
            })
            Name (CRS2, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0080,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0080,             // Length
                    ,, _Y08)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y0A, TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y09, TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y0B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x80000000,         // Range Minimum
                    0xFFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x80000000,         // Length
                    ,, _Y0C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x80000000,         // Range Minimum
                    0xFFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x80000000,         // Length
                    ,, _Y0D, AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x0000000000000000, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000000, // Length
                    ,, _Y0E, AddressRangeMemory, TypeStatic)
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (STAV) /* \_SB_.PCI0.STAV */
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                If (CPRB)
                {
                    CreateWordField (CRS1, \_SB.PCI0._Y01._MIN, MIN0)  // _MIN: Minimum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y01._MAX, MAX0)  // _MAX: Maximum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y01._LEN, LEN0)  // _LEN: Length
                    MIN0 = BRB /* \_SB_.PCI0.BRB_ */
                    LEN0 = BRL /* \_SB_.PCI0.BRL_ */
                    Local0 = LEN0 /* \_SB_.PCI0._CRS.LEN0 */
                    MAX0 = (MIN0 + Local0--)
                    CreateWordField (CRS1, \_SB.PCI0._Y02._MIN, MIN1)  // _MIN: Minimum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y02._MAX, MAX1)  // _MAX: Maximum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y02._LEN, LEN1)  // _LEN: Length
                    If ((IOB == 0x1000))
                    {
                        Local0 = IOL /* \_SB_.PCI0.IOL_ */
                        MAX1 = (IOB + Local0--)
                        Local0 = (MAX1 - MIN1) /* \_SB_.PCI0._CRS.MIN1 */
                        LEN1 = (Local0 + One)
                    }
                    Else
                    {
                        MIN1 = IOB /* \_SB_.PCI0.IOB_ */
                        LEN1 = IOL /* \_SB_.PCI0.IOL_ */
                        Local0 = LEN1 /* \_SB_.PCI0._CRS.LEN1 */
                        MAX1 = (MIN1 + Local0--)
                    }

                    If (((LVGA == One) || (LVGA == 0x55)))
                    {
                        If (VGAF)
                        {
                            CreateWordField (CRS1, \_SB.PCI0._Y03._MIN, IMN1)  // _MIN: Minimum Base Address
                            CreateWordField (CRS1, \_SB.PCI0._Y03._MAX, IMX1)  // _MAX: Maximum Base Address
                            CreateWordField (CRS1, \_SB.PCI0._Y03._LEN, ILN1)  // _LEN: Length
                            IMN1 = 0x03B0
                            IMX1 = 0x03DF
                            ILN1 = 0x30
                            CreateDWordField (CRS1, \_SB.PCI0._Y04._MIN, VMN1)  // _MIN: Minimum Base Address
                            CreateDWordField (CRS1, \_SB.PCI0._Y04._MAX, VMX1)  // _MAX: Maximum Base Address
                            CreateDWordField (CRS1, \_SB.PCI0._Y04._LEN, VLN1)  // _LEN: Length
                            VMN1 = 0x000A0000
                            VMX1 = 0x000BFFFF
                            VLN1 = 0x00020000
                            VGAF = Zero
                        }
                    }

                    CreateDWordField (CRS1, \_SB.PCI0._Y05._MIN, MIN3)  // _MIN: Minimum Base Address
                    CreateDWordField (CRS1, \_SB.PCI0._Y05._MAX, MAX3)  // _MAX: Maximum Base Address
                    CreateDWordField (CRS1, \_SB.PCI0._Y05._LEN, LEN3)  // _LEN: Length
                    CreateDWordField (CRS1, \_SB.PCI0._Y06._MIN, MIN7)  // _MIN: Minimum Base Address
                    CreateDWordField (CRS1, \_SB.PCI0._Y06._MAX, MAX7)  // _MAX: Maximum Base Address
                    CreateDWordField (CRS1, \_SB.PCI0._Y06._LEN, LEN7)  // _LEN: Length
                    Local0 = (MBB + MBL) /* \_SB_.PCI0.MBL_ */
                    If ((Local0 < NBTP))
                    {
                        MIN3 = MBB /* \_SB_.PCI0.MBB_ */
                        LEN3 = MBL /* \_SB_.PCI0.MBL_ */
                        Local0 = LEN3 /* \_SB_.PCI0._CRS.LEN3 */
                        MAX3 = (MIN3 + Local0--)
                        MIN7 = Zero
                        MAX7 = Zero
                        LEN7 = Zero
                    }
                    Else
                    {
                        MIN3 = MBB /* \_SB_.PCI0.MBB_ */
                        LEN3 = (NBTP - MBB)
                        Local0 = LEN3 /* \_SB_.PCI0._CRS.LEN3 */
                        MAX3 = (MIN3 + Local0--)
                        MIN7 = 0xFEE00000
                        Local0 = (0xFEE00000 - NBTP)
                        LEN7 = (MBL - Local0)
                        LEN7 = (LEN7 - LEN3)
                        Local0 = LEN7 /* \_SB_.PCI0._CRS.LEN7 */
                        MAX7 = (MIN7 + Local0--)
                    }

                    If (MAL)
                    {
                        CreateQWordField (CRS1, \_SB.PCI0._Y07._MIN, MN8)  // _MIN: Minimum Base Address
                        CreateQWordField (CRS1, \_SB.PCI0._Y07._MAX, MX8)  // _MAX: Maximum Base Address
                        CreateQWordField (CRS1, \_SB.PCI0._Y07._LEN, LN8)  // _LEN: Length
                        MN8 = MAB /* \_SB_.PCI0.MAB_ */
                        LN8 = MAL /* \_SB_.PCI0.MAL_ */
                        MX8 = MAM /* \_SB_.PCI0.MAM_ */
                    }

                    Return (CRS1) /* \_SB_.PCI0.CRS1 */
                }
                Else
                {
                    CreateWordField (CRS2, \_SB.PCI0._Y08._MIN, MIN2)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y08._MAX, MAX2)  // _MAX: Maximum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y08._LEN, LEN2)  // _LEN: Length
                    MIN2 = BRB /* \_SB_.PCI0.BRB_ */
                    LEN2 = BRL /* \_SB_.PCI0.BRL_ */
                    Local1 = LEN2 /* \_SB_.PCI0._CRS.LEN2 */
                    MAX2 = (MIN2 + Local1--)
                    CreateWordField (CRS2, \_SB.PCI0._Y09._MIN, MIN4)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y09._MAX, MAX4)  // _MAX: Maximum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y09._LEN, LEN4)  // _LEN: Length
                    MIN4 = IOB /* \_SB_.PCI0.IOB_ */
                    LEN4 = IOL /* \_SB_.PCI0.IOL_ */
                    Local1 = LEN4 /* \_SB_.PCI0._CRS.LEN4 */
                    MAX4 = (MIN4 + Local1--)
                    If (LVGA)
                    {
                        CreateWordField (CRS2, \_SB.PCI0._Y0A._MIN, IMN2)  // _MIN: Minimum Base Address
                        CreateWordField (CRS2, \_SB.PCI0._Y0A._MAX, IMX2)  // _MAX: Maximum Base Address
                        CreateWordField (CRS2, \_SB.PCI0._Y0A._LEN, ILN2)  // _LEN: Length
                        IMN2 = 0x03B0
                        IMX2 = 0x03DF
                        ILN2 = 0x30
                        CreateDWordField (CRS2, \_SB.PCI0._Y0B._MIN, VMN2)  // _MIN: Minimum Base Address
                        CreateDWordField (CRS2, \_SB.PCI0._Y0B._MAX, VMX2)  // _MAX: Maximum Base Address
                        CreateDWordField (CRS2, \_SB.PCI0._Y0B._LEN, VLN2)  // _LEN: Length
                        VMN2 = 0x000A0000
                        VMX2 = 0x000BFFFF
                        VLN2 = 0x00020000
                    }

                    CreateDWordField (CRS2, \_SB.PCI0._Y0C._MIN, MIN5)  // _MIN: Minimum Base Address
                    CreateDWordField (CRS2, \_SB.PCI0._Y0C._MAX, MAX5)  // _MAX: Maximum Base Address
                    CreateDWordField (CRS2, \_SB.PCI0._Y0C._LEN, LEN5)  // _LEN: Length
                    MIN5 = MBB /* \_SB_.PCI0.MBB_ */
                    LEN5 = (NBTP - MBB)
                    Local1 = LEN5 /* \_SB_.PCI0._CRS.LEN5 */
                    MAX5 = (MIN5 + Local1--)
                    CreateDWordField (CRS2, \_SB.PCI0._Y0D._MIN, MIN6)  // _MIN: Minimum Base Address
                    CreateDWordField (CRS2, \_SB.PCI0._Y0D._MAX, MAX6)  // _MAX: Maximum Base Address
                    CreateDWordField (CRS2, \_SB.PCI0._Y0D._LEN, LEN6)  // _LEN: Length
                    MIN6 = (NBTP + NBTS) /* \NBTS */
                    LEN6 = (MBL - NBTS)
                    LEN6 = (LEN6 - LEN5)
                    Local0 = LEN6 /* \_SB_.PCI0._CRS.LEN6 */
                    MAX6 = (MIN6 + Local0--)
                    If (MAL)
                    {
                        CreateQWordField (CRS2, \_SB.PCI0._Y0E._MIN, MN9)  // _MIN: Minimum Base Address
                        CreateQWordField (CRS2, \_SB.PCI0._Y0E._MAX, MX9)  // _MAX: Maximum Base Address
                        CreateQWordField (CRS2, \_SB.PCI0._Y0E._LEN, LN9)  // _LEN: Length
                        MN9 = MAB /* \_SB_.PCI0.MAB_ */
                        LN9 = MAL /* \_SB_.PCI0.MAL_ */
                        MX9 = MAM /* \_SB_.PCI0.MAM_ */
                    }

                    Return (CRS2) /* \_SB_.PCI0.CRS2 */
                }
            }

            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Name (SUPP, Zero)
                Name (CTRL, Zero)
                CreateDWordField (Arg3, Zero, CDW1)
                CreateDWordField (Arg3, 0x04, CDW2)
                CreateDWordField (Arg3, 0x08, CDW3)
                If ((Arg0 == ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */))
                {
                    SUPP = CDW2 /* \_SB_.PCI0._OSC.CDW2 */
                    CTRL = CDW3 /* \_SB_.PCI0._OSC.CDW3 */
                    If (((SUPP & 0x16) != 0x16))
                    {
                        CTRL &= 0x1E
                    }

                    If (!PEHP)
                    {
                        CTRL &= 0x1E
                    }

                    If (!SHPC)
                    {
                        CTRL &= 0x1D
                    }

                    If (!PEPM)
                    {
                        CTRL &= 0x1B
                    }

                    If (!PEER)
                    {
                        CTRL &= 0x15
                    }

                    If (!PECS)
                    {
                        CTRL &= 0x0F
                    }

                    If ((!SRIO && !CNSB))
                    {
                        CTRL &= 0x1A
                    }

                    If ((SHPC == One))
                    {
                        CTRL |= 0x1D
                    }

                    If ((Arg1 != One))
                    {
                        CDW1 |= 0x08
                    }

                    If ((CDW3 != CTRL))
                    {
                        CDW1 |= 0x10
                    }

                    CDW3 = CTRL /* \_SB_.PCI0._OSC.CTRL */
                    Return (Arg3)
                }
                Else
                {
                    CDW1 |= 0x04
                    Return (Arg3)
                }
            }

            OperationRegion (NAPC, PCI_Config, 0xB8, 0x08)
            Field (NAPC, DWordAcc, NoLock, Preserve)
            {
                NAPX,   32, 
                NAPD,   32
            }

            Mutex (NAPM, 0x00)
            Method (NAPE, 0, NotSerialized)
            {
                Acquire (NAPM, 0xFFFF)
                NAPX = 0x14600000
                Local0 = NAPD /* \_SB_.PCI0.NAPD */
                Local0 &= 0xFFFFFFEF
                NAPD = Local0
                Release (NAPM)
            }

            Method (GPTS, 1, NotSerialized)
            {
            }

            Method (GWAK, 1, NotSerialized)
            {
                If (PICM)
                {
                    NAPE ()
                }
            }

            Device (IOMA)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x15)  // _UID: Unique ID
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    Memory32Fixed (ReadOnly,
                        0xFEB80000,         // Address Base
                        0x00080000,         // Address Length
                        )
                })
            }

            Device (D002)
            {
                Name (_ADR, Zero)  // _ADR: Address
            }

            Device (GP12)
            {
                Name (_ADR, 0x00070001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (XPRW (0x19, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR13) /* \_SB_.AR13 */
                    }

                    Return (PD13) /* \_SB_.PD13 */
                }

                Device (D012)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                }
            }

            Device (GP13)
            {
                Name (_ADR, 0x00080001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (XPRW (0x19, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR14) /* \_SB_.AR14 */
                    }

                    Return (PD14) /* \_SB_.PD14 */
                }

                Device (AZAL)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                }

                Device (XHC0)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (XPRW (0x19, 0x04))
                    }
                }

                Device (APSP)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (PSPB, 0xFD200000)
                    Name (_STA, 0x0F)  // _STA: Status
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y0F)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (CRS, \_SB.PCI0.GP13.APSP._Y0F._BAS, PBAS)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.PCI0.GP13.APSP._Y0F._LEN, PLEN)  // _LEN: Length
                        PBAS = PSPB /* \_SB_.PCI0.GP13.APSP.PSPB */
                        PLEN = 0x00100000
                        Return (CRS) /* \_SB_.PCI0.GP13.APSP.CRS_ */
                    }
                }
            }

            Device (GP30)
            {
                Name (_ADR, 0x00080002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (XPRW (0x19, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR30) /* \_SB_.AR30 */
                    }

                    Return (PD30) /* \_SB_.PD30 */
                }

                Device (SATA)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                }
            }

            Device (GP31)
            {
                Name (_ADR, 0x00080003)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (XPRW (0x19, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR31) /* \_SB_.AR31 */
                    }

                    Return (PD31) /* \_SB_.PD31 */
                }

                Device (SAT1)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                }
            }

            Device (D019)
            {
                Name (_ADR, 0x00140000)  // _ADR: Address
            }

            Device (SBRG)
            {
                Name (_ADR, 0x00140003)  // _ADR: Address
                Device (PIC)
                {
                    Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {}
                    })
                }

                Device (DMAD)
                {
                    Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        DMA (Compatibility, BusMaster, Transfer8, )
                            {4}
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0087,             // Range Minimum
                            0x0087,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0089,             // Range Minimum
                            0x0089,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x008F,             // Range Minimum
                            0x008F,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x00,               // Alignment
                            0x20,               // Length
                            )
                    })
                }

                Device (TMR)
                {
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x00,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {}
                    })
                }

                Device (RTC0)
                {
                    Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Name (BUF1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {}
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If ((HPEN == One))
                        {
                            Return (BUF0) /* \_SB_.PCI0.SBRG.RTC0.BUF0 */
                        }

                        Return (BUF1) /* \_SB_.PCI0.SBRG.RTC0.BUF1 */
                    }
                }

                Device (SPKR)
                {
                    Name (_HID, EisaId ("PNP0800") /* Microsoft Sound System Compatible Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                OperationRegion (SMI0, SystemIO, SMIO, One)
                Field (SMI0, ByteAcc, NoLock, Preserve)
                {
                    SMIC,   8
                }

                Scope (\_SB)
                {
                    Scope (PCI0)
                    {
                        Device (S900)
                        {
                            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                            Name (_UID, 0x0700)  // _UID: Unique ID
                            Name (_STA, 0x0F)  // _STA: Status
                            Name (CRS, ResourceTemplate ()
                            {
                                IO (Decode16,
                                    0x0010,             // Range Minimum
                                    0x0010,             // Range Maximum
                                    0x00,               // Alignment
                                    0x10,               // Length
                                    )
                                IO (Decode16,
                                    0x0022,             // Range Minimum
                                    0x0022,             // Range Maximum
                                    0x00,               // Alignment
                                    0x1E,               // Length
                                    )
                                IO (Decode16,
                                    0x0063,             // Range Minimum
                                    0x0063,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0065,             // Range Minimum
                                    0x0065,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0067,             // Range Minimum
                                    0x0067,             // Range Maximum
                                    0x00,               // Alignment
                                    0x09,               // Length
                                    )
                                IO (Decode16,
                                    0x0072,             // Range Minimum
                                    0x0072,             // Range Maximum
                                    0x00,               // Alignment
                                    0x0E,               // Length
                                    )
                                IO (Decode16,
                                    0x0080,             // Range Minimum
                                    0x0080,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0084,             // Range Minimum
                                    0x0084,             // Range Maximum
                                    0x00,               // Alignment
                                    0x03,               // Length
                                    )
                                IO (Decode16,
                                    0x0088,             // Range Minimum
                                    0x0088,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x008C,             // Range Minimum
                                    0x008C,             // Range Maximum
                                    0x00,               // Alignment
                                    0x03,               // Length
                                    )
                                IO (Decode16,
                                    0x0090,             // Range Minimum
                                    0x0090,             // Range Maximum
                                    0x00,               // Alignment
                                    0x10,               // Length
                                    )
                                IO (Decode16,
                                    0x00A2,             // Range Minimum
                                    0x00A2,             // Range Maximum
                                    0x00,               // Alignment
                                    0x1E,               // Length
                                    )
                                IO (Decode16,
                                    0x00B1,             // Range Minimum
                                    0x00B1,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x00E0,             // Range Minimum
                                    0x00E0,             // Range Maximum
                                    0x00,               // Alignment
                                    0x10,               // Length
                                    )
                                IO (Decode16,
                                    0x04D0,             // Range Minimum
                                    0x04D0,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x040B,             // Range Minimum
                                    0x040B,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x04D6,             // Range Minimum
                                    0x04D6,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0C00,             // Range Minimum
                                    0x0C00,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x0C14,             // Range Minimum
                                    0x0C14,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0C50,             // Range Minimum
                                    0x0C50,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x0C52,             // Range Minimum
                                    0x0C52,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0C6C,             // Range Minimum
                                    0x0C6C,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0C6F,             // Range Minimum
                                    0x0C6F,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0CD8,             // Range Minimum
                                    0x0CD8,             // Range Maximum
                                    0x00,               // Alignment
                                    0x08,               // Length
                                    )
                                IO (Decode16,
                                    0x0000,             // Range Minimum
                                    0x0000,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    _Y10)
                                IO (Decode16,
                                    0x0000,             // Range Minimum
                                    0x0000,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    _Y12)
                                IO (Decode16,
                                    0x0000,             // Range Minimum
                                    0x0000,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    _Y11)
                                IO (Decode16,
                                    0x0900,             // Range Minimum
                                    0x0900,             // Range Maximum
                                    0x00,               // Alignment
                                    0x10,               // Length
                                    )
                                IO (Decode16,
                                    0x0910,             // Range Minimum
                                    0x0910,             // Range Maximum
                                    0x00,               // Alignment
                                    0x10,               // Length
                                    )
                                IO (Decode16,
                                    0x0060,             // Range Minimum
                                    0x0060,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    )
                                IO (Decode16,
                                    0x0064,             // Range Minimum
                                    0x0064,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    )
                                Memory32Fixed (ReadWrite,
                                    0x00000000,         // Address Base
                                    0x00000000,         // Address Length
                                    _Y13)
                                Memory32Fixed (ReadWrite,
                                    0xFEC01000,         // Address Base
                                    0x00001000,         // Address Length
                                    )
                                Memory32Fixed (ReadWrite,
                                    0xFEDC0000,         // Address Base
                                    0x00001000,         // Address Length
                                    )
                                Memory32Fixed (ReadWrite,
                                    0xFEE00000,         // Address Base
                                    0x00001000,         // Address Length
                                    )
                                Memory32Fixed (ReadWrite,
                                    0xFED80000,         // Address Base
                                    0x00010000,         // Address Length
                                    )
                                Memory32Fixed (ReadWrite,
                                    0x00000000,         // Address Base
                                    0x00000000,         // Address Length
                                    _Y14)
                                Memory32Fixed (ReadWrite,
                                    0x00000000,         // Address Base
                                    0x00000000,         // Address Length
                                    _Y15)
                                Memory32Fixed (ReadWrite,
                                    0x00000000,         // Address Base
                                    0x00000000,         // Address Length
                                    _Y16)
                            })
                            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                            {
                                CreateWordField (CRS, \_SB.PCI0.S900._Y10._MIN, PBB)  // _MIN: Minimum Base Address
                                CreateWordField (CRS, \_SB.PCI0.S900._Y10._MAX, PBH)  // _MAX: Maximum Base Address
                                CreateByteField (CRS, \_SB.PCI0.S900._Y10._LEN, PML)  // _LEN: Length
                                PBB = PMBS /* \PMBS */
                                PBH = PMBS /* \PMBS */
                                PML = PMLN /* \PMLN */
                                If (SMBB)
                                {
                                    CreateWordField (CRS, \_SB.PCI0.S900._Y11._MIN, SMB1)  // _MIN: Minimum Base Address
                                    CreateWordField (CRS, \_SB.PCI0.S900._Y11._MAX, SMH1)  // _MAX: Maximum Base Address
                                    CreateByteField (CRS, \_SB.PCI0.S900._Y11._LEN, SML1)  // _LEN: Length
                                    SMB1 = SMBB /* \SMBB */
                                    SMH1 = SMBB /* \SMBB */
                                    SML1 = SMBL /* \SMBL */
                                    CreateWordField (CRS, \_SB.PCI0.S900._Y12._MIN, SMBZ)  // _MIN: Minimum Base Address
                                    CreateWordField (CRS, \_SB.PCI0.S900._Y12._MAX, SMH0)  // _MAX: Maximum Base Address
                                    CreateByteField (CRS, \_SB.PCI0.S900._Y12._LEN, SML0)  // _LEN: Length
                                    SMBZ = SMB0 /* \SMB0 */
                                    SMH0 = SMB0 /* \SMB0 */
                                    SML0 = SMBM /* \SMBM */
                                }

                                If (APCB)
                                {
                                    CreateDWordField (CRS, \_SB.PCI0.S900._Y13._BAS, APB)  // _BAS: Base Address
                                    CreateDWordField (CRS, \_SB.PCI0.S900._Y13._LEN, APL)  // _LEN: Length
                                    APB = APCB /* \APCB */
                                    APL = APCL /* \APCL */
                                }

                                CreateDWordField (CRS, \_SB.PCI0.S900._Y14._BAS, SPIB)  // _BAS: Base Address
                                CreateDWordField (CRS, \_SB.PCI0.S900._Y14._LEN, SPIL)  // _LEN: Length
                                SPIB = 0xFEC10000
                                SPIL = 0x1000
                                If (WDTB)
                                {
                                    CreateDWordField (CRS, \_SB.PCI0.S900._Y15._BAS, WDTB)  // _BAS: Base Address
                                    CreateDWordField (CRS, \_SB.PCI0.S900._Y15._LEN, WDTL)  // _LEN: Length
                                    WDTB = \WDTB
                                    WDTL = \WDTL
                                }

                                CreateDWordField (CRS, \_SB.PCI0.S900._Y16._BAS, ROMB)  // _BAS: Base Address
                                CreateDWordField (CRS, \_SB.PCI0.S900._Y16._LEN, ROML)  // _LEN: Length
                                ROMB = 0xFF000000
                                ROML = 0x01000000
                                Return (CRS) /* \_SB_.PCI0.S900.CRS_ */
                            }
                        }
                    }
                }

                Scope (\_SB)
                {
                    Scope (PCI0)
                    {
                        Scope (SBRG)
                        {
                            Method (RRIO, 4, NotSerialized)
                            {
                                Debug = "RRIO"
                            }

                            Method (RDMA, 3, NotSerialized)
                            {
                                Debug = "rDMA"
                            }
                        }
                    }
                }

                Device (SIO1)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y17)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y18)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y19)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y1A)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y1B)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If (((SP1O < 0x03F0) && (SP1O > 0xF0)))
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y17._MIN, GPI0)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y17._MAX, GPI1)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIO1._Y17._LEN, GPIL)  // _LEN: Length
                            GPI0 = SP1O /* \SP1O */
                            GPI1 = SP1O /* \SP1O */
                            GPIL = 0x02
                        }

                        If (IO1B)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y18._MIN, GP10)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y18._MAX, GP11)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIO1._Y18._LEN, GPL1)  // _LEN: Length
                            GP10 = IO1B /* \IO1B */
                            GP11 = IO1B /* \IO1B */
                            GPL1 = IO1L /* \IO1L */
                        }

                        If (IO2B)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y19._MIN, GP20)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y19._MAX, GP21)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIO1._Y19._LEN, GPL2)  // _LEN: Length
                            GP20 = IO2B /* \IO2B */
                            GP21 = IO2B /* \IO2B */
                            GPL2 = IO2L /* \IO2L */
                        }

                        If (IO3B)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y1A._MIN, GP30)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y1A._MAX, GP31)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIO1._Y1A._LEN, GPL3)  // _LEN: Length
                            GP30 = IO3B /* \IO3B */
                            GP31 = IO3B /* \IO3B */
                            GPL3 = IO3L /* \IO3L */
                        }

                        If (IO4B)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y1B._MIN, GP40)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y1B._MAX, GP41)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIO1._Y1B._LEN, GPL4)  // _LEN: Length
                            GP40 = IO4B /* \IO4B */
                            GP41 = IO4B /* \IO4B */
                            GPL4 = IO4L /* \IO4L */
                        }

                        Return (CRS) /* \_SB_.PCI0.SBRG.SIO1.CRS_ */
                    }

                    Name (DCAT, Package (0x15)
                    {
                        0x02, 
                        0x03, 
                        One, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0x05, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0x05, 
                        0xFF, 
                        0x06, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF
                    })
                    Mutex (MUT0, 0x00)
                    Method (ENFG, 1, NotSerialized)
                    {
                        Acquire (MUT0, 0x0FFF)
                        INDX = ENTK /* \ENTK */
                        INDX = ENTK /* \ENTK */
                        LDN = Arg0
                    }

                    Method (EXFG, 0, NotSerialized)
                    {
                        INDX = EXTK /* \EXTK */
                        Release (MUT0)
                    }

                    Method (LPTM, 1, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        Local0 = (OPT0 & 0x02)
                        EXFG ()
                        Return (Local0)
                    }

                    Method (UHID, 1, NotSerialized)
                    {
                        Return (0x0105D041)
                    }

                    OperationRegion (IOID, SystemIO, SP1O, 0x02)
                    Field (IOID, ByteAcc, NoLock, Preserve)
                    {
                        INDX,   8, 
                        DATA,   8
                    }

                    IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x07), 
                        LDN,    8, 
                        Offset (0x21), 
                        SCF1,   8, 
                        SCF2,   8, 
                        SCF3,   8, 
                        SCF4,   8, 
                        SCF5,   8, 
                        SCF6,   8, 
                        Offset (0x2C), 
                        CR2C,   8, 
                        CR2D,   8, 
                        Offset (0x30), 
                        ACTR,   8, 
                        Offset (0x60), 
                        IOAH,   8, 
                        IOAL,   8, 
                        IOH2,   8, 
                        IOL2,   8, 
                        Offset (0x70), 
                        INTR,   4, 
                        INTT,   4, 
                        Offset (0x74), 
                        DMCH,   8, 
                        Offset (0xE0), 
                        RGE0,   8, 
                        RGE1,   8, 
                        RGE2,   8, 
                        RGE3,   8, 
                        RGE4,   8, 
                        RGE5,   8, 
                        RGE6,   8, 
                        RGE7,   8, 
                        RGE8,   8, 
                        RGE9,   8, 
                        Offset (0xF0), 
                        OPT0,   8, 
                        OPT1,   8, 
                        OPT2,   8, 
                        OPT3,   8, 
                        OPT4,   8, 
                        OPT5,   8, 
                        OPT6,   8, 
                        OPT7,   8, 
                        OPT8,   8, 
                        OPT9,   8
                    }

                    Method (CGLD, 1, NotSerialized)
                    {
                        Return (DerefOf (DCAT [Arg0]))
                    }

                    Method (DSTA, 1, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        Local0 = ACTR /* \_SB_.PCI0.SBRG.SIO1.ACTR */
                        Local1 = ((IOAH << 0x08) | IOAL) /* \_SB_.PCI0.SBRG.SIO1.IOAL */
                        EXFG ()
                        If ((Local0 == 0xFF))
                        {
                            Return (Zero)
                        }

                        Local0 &= One
                        If ((Arg0 < 0x10))
                        {
                            IOST |= (Local0 << Arg0)
                        }

                        If (Local0)
                        {
                            Return (0x0F)
                        }
                        ElseIf ((Arg0 < 0x10))
                        {
                            If (((One << Arg0) & IOST))
                            {
                                Return (0x0D)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                        Else
                        {
                            If (Local1)
                            {
                                Return (0x0D)
                            }

                            Return (Zero)
                        }
                    }

                    Method (DCNT, 2, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        If (((DMCH < 0x04) && ((Local1 = (DMCH & 0x03)) != Zero)))
                        {
                            RDMA (Arg0, Arg1, Local1++)
                        }

                        ACTR = Arg1
                        Local1 = (IOAH << 0x08)
                        Local1 |= IOAL
                        RRIO (Arg0, Arg1, Local1, 0x08)
                        EXFG ()
                    }

                    Name (CRS1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x00,               // Length
                            _Y1E)
                        IRQNoFlags (_Y1C)
                            {}
                        DMA (Compatibility, NotBusMaster, Transfer8, _Y1D)
                            {}
                    })
                    CreateWordField (CRS1, \_SB.PCI0.SBRG.SIO1._Y1C._INT, IRQM)  // _INT: Interrupts
                    CreateByteField (CRS1, \_SB.PCI0.SBRG.SIO1._Y1D._DMA, DMAM)  // _DMA: Direct Memory Access
                    CreateWordField (CRS1, \_SB.PCI0.SBRG.SIO1._Y1E._MIN, IO11)  // _MIN: Minimum Base Address
                    CreateWordField (CRS1, \_SB.PCI0.SBRG.SIO1._Y1E._MAX, IO12)  // _MAX: Maximum Base Address
                    CreateByteField (CRS1, \_SB.PCI0.SBRG.SIO1._Y1E._LEN, LEN1)  // _LEN: Length
                    Name (CRS2, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x00,               // Length
                            _Y21)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x00,               // Length
                            _Y22)
                        IRQNoFlags (_Y1F)
                            {}
                        DMA (Compatibility, NotBusMaster, Transfer8, _Y20)
                            {}
                    })
                    CreateWordField (CRS2, \_SB.PCI0.SBRG.SIO1._Y1F._INT, IRQE)  // _INT: Interrupts
                    CreateByteField (CRS2, \_SB.PCI0.SBRG.SIO1._Y20._DMA, DMAE)  // _DMA: Direct Memory Access
                    CreateWordField (CRS2, \_SB.PCI0.SBRG.SIO1._Y21._MIN, IO21)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI0.SBRG.SIO1._Y21._MAX, IO22)  // _MAX: Maximum Base Address
                    CreateByteField (CRS2, \_SB.PCI0.SBRG.SIO1._Y21._LEN, LEN2)  // _LEN: Length
                    CreateWordField (CRS2, \_SB.PCI0.SBRG.SIO1._Y22._MIN, IO31)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI0.SBRG.SIO1._Y22._MAX, IO32)  // _MAX: Maximum Base Address
                    CreateByteField (CRS2, \_SB.PCI0.SBRG.SIO1._Y22._LEN, LEN3)  // _LEN: Length
                    Name (CRS3, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x00,               // Length
                            _Y25)
                        IRQ (Edge, ActiveLow, Shared, _Y23)
                            {}
                        DMA (Compatibility, NotBusMaster, Transfer8, _Y24)
                            {}
                    })
                    CreateWordField (CRS3, \_SB.PCI0.SBRG.SIO1._Y23._INT, IRQT)  // _INT: Interrupts
                    CreateByteField (CRS3, \_SB.PCI0.SBRG.SIO1._Y23._HE, IRQS)  // _HE_: High-Edge
                    CreateByteField (CRS3, \_SB.PCI0.SBRG.SIO1._Y24._DMA, DMAT)  // _DMA: Direct Memory Access
                    CreateWordField (CRS3, \_SB.PCI0.SBRG.SIO1._Y25._MIN, IO41)  // _MIN: Minimum Base Address
                    CreateWordField (CRS3, \_SB.PCI0.SBRG.SIO1._Y25._MAX, IO42)  // _MAX: Maximum Base Address
                    CreateByteField (CRS3, \_SB.PCI0.SBRG.SIO1._Y25._LEN, LEN4)  // _LEN: Length
                    Method (DCRS, 2, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        IO11 = (IOAH << 0x08)
                        IO11 |= IOAL /* \_SB_.PCI0.SBRG.SIO1.IO11 */
                        IO12 = IO11 /* \_SB_.PCI0.SBRG.SIO1.IO11 */
                        LEN1 = 0x08
                        If (INTR)
                        {
                            IRQM = (One << INTR) /* \_SB_.PCI0.SBRG.SIO1.INTR */
                        }
                        Else
                        {
                            IRQM = Zero
                        }

                        If (((DMCH > 0x03) || (Arg1 == Zero)))
                        {
                            DMAM = Zero
                        }
                        Else
                        {
                            Local1 = (DMCH & 0x03)
                            DMAM = (One << Local1)
                        }

                        EXFG ()
                        Return (CRS1) /* \_SB_.PCI0.SBRG.SIO1.CRS1 */
                    }

                    Method (DCR2, 2, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        IO21 = (IOAH << 0x08)
                        IO21 |= IOAL /* \_SB_.PCI0.SBRG.SIO1.IO21 */
                        IO22 = IO21 /* \_SB_.PCI0.SBRG.SIO1.IO21 */
                        LEN2 = 0x08
                        IO31 = (IOH2 << 0x08)
                        IO31 |= IOL2 /* \_SB_.PCI0.SBRG.SIO1.IO31 */
                        IO32 = IO31 /* \_SB_.PCI0.SBRG.SIO1.IO31 */
                        LEN3 = 0x08
                        If (INTR)
                        {
                            IRQE = (One << INTR) /* \_SB_.PCI0.SBRG.SIO1.INTR */
                        }
                        Else
                        {
                            IRQE = Zero
                        }

                        If (((DMCH > 0x03) || (Arg1 == Zero)))
                        {
                            DMAE = Zero
                        }
                        Else
                        {
                            Local1 = (DMCH & 0x03)
                            DMAE = (One << Local1)
                        }

                        EXFG ()
                        Return (CRS2) /* \_SB_.PCI0.SBRG.SIO1.CRS2 */
                    }

                    Method (DCR3, 2, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        IO41 = (IOAH << 0x08)
                        IO41 |= IOAL /* \_SB_.PCI0.SBRG.SIO1.IO41 */
                        IO42 = IO41 /* \_SB_.PCI0.SBRG.SIO1.IO41 */
                        LEN4 = 0x08
                        If (INTR)
                        {
                            IRQT = (One << INTR) /* \_SB_.PCI0.SBRG.SIO1.INTR */
                        }
                        Else
                        {
                            IRQT = Zero
                        }

                        If (((DMCH > 0x03) || (Arg1 == Zero)))
                        {
                            DMAT = Zero
                        }
                        Else
                        {
                            Local1 = (DMCH & 0x03)
                            DMAT = (One << Local1)
                        }

                        EXFG ()
                        Return (CRS3) /* \_SB_.PCI0.SBRG.SIO1.CRS3 */
                    }

                    Method (DSRS, 2, NotSerialized)
                    {
                        If (((Arg1 == 0x02) & LPTM (Arg1)))
                        {
                            DSR2 (Arg0, Arg1)
                        }
                        Else
                        {
                            CreateWordField (Arg0, 0x09, IRQM)
                            CreateByteField (Arg0, 0x0C, DMAM)
                            CreateWordField (Arg0, 0x02, IO11)
                            ENFG (CGLD (Arg1))
                            IOAL = (IO11 & 0xFF)
                            IOAH = (IO11 >> 0x08)
                            If (IRQM)
                            {
                                FindSetRightBit (IRQM, Local0)
                                INTR = (Local0 - One)
                            }
                            Else
                            {
                                INTR = Zero
                            }

                            If (DMAM)
                            {
                                FindSetRightBit (DMAM, Local0)
                                DMCH = (Local0 - One)
                            }
                            Else
                            {
                                DMCH = 0x04
                            }

                            EXFG ()
                            DCNT (Arg1, One)
                            Local2 = Arg1
                            If ((Local2 > Zero))
                            {
                                Local2 -= One
                            }
                        }
                    }

                    Method (DSR2, 2, NotSerialized)
                    {
                        CreateWordField (Arg0, 0x11, IRQE)
                        CreateByteField (Arg0, 0x14, DMAE)
                        CreateWordField (Arg0, 0x02, IO21)
                        CreateWordField (Arg0, 0x0A, IO31)
                        ENFG (CGLD (Arg1))
                        IOAL = (IO21 & 0xFF)
                        IOAH = (IO21 >> 0x08)
                        IOL2 = (IO31 & 0xFF)
                        IOH2 = (IO31 >> 0x08)
                        If (IRQE)
                        {
                            FindSetRightBit (IRQE, Local0)
                            INTR = (Local0 - One)
                        }
                        Else
                        {
                            INTR = Zero
                        }

                        If (DMAE)
                        {
                            FindSetRightBit (DMAE, Local0)
                            DMCH = (Local0 - One)
                        }
                        Else
                        {
                            DMCH = 0x04
                        }

                        EXFG ()
                        DCNT (Arg1, One)
                        Local2 = Arg1
                        If ((Local2 > Zero))
                        {
                            Local2 -= One
                        }
                    }

                    Method (DSR3, 2, NotSerialized)
                    {
                        CreateWordField (Arg0, 0x02, IO41)
                        CreateWordField (Arg0, 0x09, IRQT)
                        CreateByteField (Arg0, 0x0B, IRQS)
                        CreateByteField (Arg0, 0x0D, DMAT)
                        ENFG (CGLD (Arg1))
                        IOAL = (IO41 & 0xFF)
                        IOAH = (IO41 >> 0x08)
                        If (IRQT)
                        {
                            FindSetRightBit (IRQT, Local0)
                            INTR = (Local0 - One)
                        }
                        Else
                        {
                            INTR = Zero
                        }

                        If (DMAT)
                        {
                            FindSetRightBit (DMAT, Local0)
                            DMCH = (Local0 - One)
                        }
                        Else
                        {
                            DMCH = 0x04
                        }

                        EXFG ()
                        DCNT (Arg1, One)
                        Local2 = Arg1
                        If ((Local2 > Zero))
                        {
                            Local2 -= One
                        }
                    }

                    Name (PMFG, Zero)
                    Method (SIOS, 1, NotSerialized)
                    {
                        Debug = "SIOS"
                        If ((0x05 != Arg0))
                        {
                            ENFG (0x0A)
                            If ((Arg0 == One))
                            {
                                OPT6 = Zero
                                OPT7 = Zero
                                If (KBFG)
                                {
                                    OPT6 |= 0x10
                                }
                                Else
                                {
                                    OPT6 &= 0xEF
                                }

                                If (MSFG)
                                {
                                    OPT6 |= 0x20
                                }
                                Else
                                {
                                    OPT6 &= 0xDF
                                }

                                OPT3 = 0xFF
                                OPT4 = 0xFF
                                Local0 = (One | OPT2) /* \_SB_.PCI0.SBRG.SIO1.OPT2 */
                                OPT2 = Local0
                            }

                            If ((Arg0 >= 0x03))
                            {
                                RGE0 &= 0x9F
                                Local0 = RGE3 /* \_SB_.PCI0.SBRG.SIO1.RGE3 */
                                Sleep (0xC8)
                                If (KBFG)
                                {
                                    RGE0 |= 0x41
                                }
                                Else
                                {
                                    RGE0 &= 0xBE
                                }

                                If (MSFG)
                                {
                                    RGE6 &= 0x7F
                                    RGE0 |= 0x22
                                }
                                Else
                                {
                                    RGE0 &= 0xDD
                                }
                            }

                            EXFG ()
                        }
                    }

                    Method (SIOW, 1, NotSerialized)
                    {
                        Debug = "SIOW"
                        ENFG (0x0A)
                        OPT3 = 0xFF
                        OPT6 &= 0xCF
                        OPT2 &= 0xFE
                        RGE0 &= 0xBE
                        RGE0 &= 0xDD
                        EXFG ()
                    }

                    Method (SIOH, 0, NotSerialized)
                    {
                    }
                }

                Device (PS2K)
                {
                    Name (_HID, EisaId ("PNP0303") /* IBM Enhanced Keyboard (101/102-key, PS/2 Mouse) */)  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (LDN, 0x05)
                    Name (_CID, EisaId ("PNP030B"))  // _CID: Compatible ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((IOST & 0x0400))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {1}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IO (Decode16,
                                0x0060,             // Range Minimum
                                0x0060,             // Range Maximum
                                0x00,               // Alignment
                                0x01,               // Length
                                )
                            IO (Decode16,
                                0x0064,             // Range Minimum
                                0x0064,             // Range Maximum
                                0x00,               // Alignment
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {1}
                        }
                        EndDependentFn ()
                    })
                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                        KBFG = Arg0
                    }

                    Scope (\)
                    {
                        Name (KBFG, One)
                    }

                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (XPRW (0x1D, 0x03))
                    }
                }

                Device (PS2M)
                {
                    Name (_HID, EisaId ("PNP0F03") /* Microsoft PS/2-style Mouse */)  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (LDN, 0x05)
                    Name (_CID, EisaId ("PNP0F13") /* PS/2 Mouse */)  // _CID: Compatible ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((IOST & 0x4000))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Name (CRS1, ResourceTemplate ()
                    {
                        IRQNoFlags ()
                            {12}
                    })
                    Name (CRS2, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {12}
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If ((IOST & 0x0400))
                        {
                            Return (CRS1) /* \_SB_.PCI0.SBRG.PS2M.CRS1 */
                        }
                        Else
                        {
                            Return (CRS2) /* \_SB_.PCI0.SBRG.PS2M.CRS2 */
                        }
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IRQNoFlags ()
                                {12}
                        }
                        EndDependentFn ()
                    })
                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                        MSFG = Arg0
                    }

                    Scope (\)
                    {
                        Name (MSFG, One)
                    }

                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (XPRW (0x1D, 0x03))
                    }
                }

                Device (HHMD)
                {
                    Name (_HID, EisaId ("PNP0C08") /* ACPI Core Hardware */)  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (LDN, 0x0B)
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (Zero)
                    }
                }

                Device (SGPI)
                {
                    Name (_HID, EisaId ("PNP0C08") /* ACPI Core Hardware */)  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Name (LDN, 0x09)
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (Zero)
                    }
                }

                Device (ACPI)
                {
                    Name (_HID, EisaId ("PNP0C08") /* ACPI Core Hardware */)  // _HID: Hardware ID
                    Name (_UID, 0x03)  // _UID: Unique ID
                    Name (LDN, 0x0A)
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (Zero)
                    }
                }

                Device (SP80)
                {
                    Name (_HID, EisaId ("PNP0C08") /* ACPI Core Hardware */)  // _HID: Hardware ID
                    Name (_UID, 0x04)  // _UID: Unique ID
                    Name (LDN, 0x14)
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (Zero)
                    }
                }

                Device (SFED)
                {
                    Name (_HID, EisaId ("PNP0C08") /* ACPI Core Hardware */)  // _HID: Hardware ID
                    Name (_UID, 0x05)  // _UID: Unique ID
                    Name (LDN, 0x15)
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (Zero)
                    }
                }

                Device (DSLP)
                {
                    Name (_HID, EisaId ("PNP0C08") /* ACPI Core Hardware */)  // _HID: Hardware ID
                    Name (_UID, 0x06)  // _UID: Unique ID
                    Name (LDN, 0x16)
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (Zero)
                    }
                }
            }

            Device (SDIO)
            {
                Name (_ADR, 0x00140007)  // _ADR: Address
            }

            Device (GPP0)
            {
                Name (_ADR, 0x00010001)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR01) /* \_SB_.AR01 */
                    }

                    Return (PD01) /* \_SB_.PD01 */
                }

                Device (D003)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPP2)
            {
                Name (_ADR, 0x00010003)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR03) /* \_SB_.AR03 */
                    }

                    Return (PD03) /* \_SB_.PD03 */
                }

                Device (D004)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPP3)
            {
                Name (_ADR, 0x00010004)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR04) /* \_SB_.AR04 */
                    }

                    Return (PD04) /* \_SB_.PD04 */
                }

                Device (D005)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPP4)
            {
                Name (_ADR, 0x00010005)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR05) /* \_SB_.AR05 */
                    }

                    Return (PD05) /* \_SB_.PD05 */
                }

                Device (D006)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPP5)
            {
                Name (_ADR, 0x00010006)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR06) /* \_SB_.AR06 */
                    }

                    Return (PD06) /* \_SB_.PD06 */
                }

                Device (D007)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPP6)
            {
                Name (_ADR, 0x00010007)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR07) /* \_SB_.AR07 */
                    }

                    Return (PD07) /* \_SB_.PD07 */
                }

                Device (D008)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPP7)
            {
                Name (_ADR, 0x00020001)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR08) /* \_SB_.AR08 */
                    }

                    Return (PD08) /* \_SB_.PD08 */
                }

                Device (D009)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPP8)
            {
                Name (_ADR, 0x00030001)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR09) /* \_SB_.AR09 */
                    }

                    Return (PD09) /* \_SB_.PD09 */
                }

                Device (X161)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (XPRW (0x10, 0x04))
                    }
                }
            }

            Device (GPP9)
            {
                Name (_ADR, 0x00030002)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0A) /* \_SB_.AR0A */
                    }

                    Return (PD0A) /* \_SB_.PD0A */
                }

                Device (X162)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (XPRW (0x10, 0x04))
                    }
                }
            }

            Device (GPPA)
            {
                Name (_ADR, 0x00030003)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0B) /* \_SB_.AR0B */
                    }

                    Return (PD0B) /* \_SB_.PD0B */
                }

                Device (D00A)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPPB)
            {
                Name (_ADR, 0x00030004)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0C) /* \_SB_.AR0C */
                    }

                    Return (PD0C) /* \_SB_.PD0C */
                }

                Device (D00B)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPPC)
            {
                Name (_ADR, 0x00030005)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0D) /* \_SB_.AR0D */
                    }

                    Return (PD0D) /* \_SB_.PD0D */
                }

                Device (D00C)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPPD)
            {
                Name (_ADR, 0x00030006)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0E) /* \_SB_.AR0E */
                    }

                    Return (PD0E) /* \_SB_.PD0E */
                }

                Device (D00D)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPPE)
            {
                Name (_ADR, 0x00030007)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0F) /* \_SB_.AR0F */
                    }

                    Return (PD0F) /* \_SB_.PD0F */
                }

                Device (D00E)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPPF)
            {
                Name (_ADR, 0x00040001)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR10) /* \_SB_.AR10 */
                    }

                    Return (PD10) /* \_SB_.PD10 */
                }

                Device (D00F)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GP10)
            {
                Name (_ADR, 0x00050001)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR11) /* \_SB_.AR11 */
                    }

                    Return (PD11) /* \_SB_.PD11 */
                }

                Device (D010)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GP11)
            {
                Name (_ADR, 0x00050002)  // _ADR: Address
            }

            Device (GPP1)
            {
                Name (_ADR, 0x00010002)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR02) /* \_SB_.AR02 */
                    }

                    Return (PD02) /* \_SB_.PD02 */
                }

                Device (PTXH)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (XPRW (0x08, 0x04))
                    }

                    Device (RHUB)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        OperationRegion (PDID, PCI_Config, Zero, 0x04)
                        Field (PDID, AnyAcc, NoLock, Preserve)
                        {
                            Offset (0x02), 
                            XDID,   16
                        }

                        Name (PT4, Package (0x16)
                        {
                            0x0A, 
                            0x0B, 
                            0x0C, 
                            0x0D, 
                            0x0E, 
                            0x0F, 
                            0x10, 
                            0x11, 
                            0x0A, 
                            0x0B, 
                            0x0C, 
                            0x0D, 
                            0x0E, 
                            0x0F, 
                            0x10, 
                            0x11, 
                            0x12, 
                            0x13, 
                            0x14, 
                            0x15, 
                            0x16, 
                            0x17
                        })
                        Name (PT2, Package (0x16)
                        {
                            0x0A, 
                            0x0B, 
                            0x0C, 
                            0x0D, 
                            0x0A, 
                            0x0B, 
                            0x0C, 
                            0x0D, 
                            0x0E, 
                            0x0F, 
                            0x10, 
                            0x11, 
                            0x12, 
                            0x13, 
                            0x14, 
                            0x15, 
                            0x16, 
                            0x17, 
                            0x18, 
                            0x19, 
                            0x1A, 
                            0x1B
                        })
                        Name (PT1, Package (0x16)
                        {
                            0x0A, 
                            0x0B, 
                            0x0C, 
                            0x0A, 
                            0x0B, 
                            0x0C, 
                            0x0D, 
                            0x0E, 
                            0x0F, 
                            0x10, 
                            0x11, 
                            0x12, 
                            0x13, 
                            0x14, 
                            0x15, 
                            0x16, 
                            0x17, 
                            0x18, 
                            0x19, 
                            0x1A, 
                            0x1B, 
                            0x1C
                        })
                        Name (USBV, Package (0x16)
                        {
                            One, 
                            One, 
                            One, 
                            One, 
                            One, 
                            One, 
                            One, 
                            One, 
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            One, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Name (USBP, Package (0x16){})
                        Name (PH1P, Package (0x04)
                        {
                            0x1F, 
                            0x20, 
                            0x21, 
                            0x22
                        })
                        Name (PH1V, Package (0x04)
                        {
                            One, 
                            One, 
                            One, 
                            One
                        })
                        Name (PH2P, Package (0x04)
                        {
                            0x23, 
                            0x24, 
                            0x25, 
                            0x26
                        })
                        Name (PH2V, Package (0x04)
                        {
                            One, 
                            One, 
                            One, 
                            Zero
                        })
                        Name (PH3P, Package (0x04)
                        {
                            0x27, 
                            0x28, 
                            0x29, 
                            0x2A
                        })
                        Name (PH3V, Package (0x04)
                        {
                            One, 
                            One, 
                            One, 
                            One
                        })
                        Method (UPGP, 0, Serialized)
                        {
                            Local0 = 0x16
                            If (((XDID == 0x43B9) || (XDID == 0x43D0)))
                            {
                                While (Local0)
                                {
                                    Local0--
                                    USBP [Local0] = DerefOf (PT4 [Local0])
                                }
                            }
                            ElseIf ((((XDID == 0x43BB) || (XDID == 0x43D5)) || (XDID == 
                                0x43EE)))
                            {
                                While (Local0)
                                {
                                    Local0--
                                    USBP [Local0] = DerefOf (PT2 [Local0])
                                }
                            }
                            ElseIf (((XDID == 0x43BC) || (XDID == 0x43EC)))
                            {
                                While (Local0)
                                {
                                    Local0--
                                    USBP [Local0] = DerefOf (PT1 [Local0])
                                }
                            }
                        }

                        Method (GPLD, 2, Serialized)
                        {
                            Name (PCKG, Package (0x01)
                            {
                                Buffer (0x14){}
                            })
                            CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
                            REV = 0x02
                            CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
                            VISI = Arg0
                            CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
                            GPOS = Arg1
                            Return (PCKG) /* \_SB_.PCI0.GPP1.PTXH.RHUB.GPLD.PCKG */
                        }

                        Method (GUPC, 1, Serialized)
                        {
                            Name (PCKG, Package (0x04)
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            PCKG [Zero] = Arg0
                            Return (PCKG) /* \_SB_.PCI0.GPP1.PTXH.RHUB.GUPC.PCKG */
                        }

                        Method (TUPC, 1, Serialized)
                        {
                            Name (PCKG, Package (0x04)
                            {
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            PCKG [One] = Arg0
                            Return (PCKG) /* \_SB_.PCI0.GPP1.PTXH.RHUB.TUPC.PCKG */
                        }

                        Device (POT3)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (USBV [0x02]), DerefOf (USBP [0x02])))
                            }
                        }

                        Device (PO11)
                        {
                            Name (_ADR, 0x0B)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Device (HS11)
                            {
                                Name (_ADR, One)  // _ADR: Address
                                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                                {
                                    0xFF, 
                                    0x03, 
                                    Zero, 
                                    Zero
                                })
                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {
                                    Return (GPLD (DerefOf (PH1V [Zero]), DerefOf (PH1P [Zero])))
                                }
                            }

                            Device (HS12)
                            {
                                Name (_ADR, 0x02)  // _ADR: Address
                                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                                {
                                    0xFF, 
                                    0x03, 
                                    Zero, 
                                    Zero
                                })
                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {
                                    Return (GPLD (DerefOf (PH1V [One]), DerefOf (PH1P [One])))
                                }
                            }

                            Device (HS13)
                            {
                                Name (_ADR, 0x03)  // _ADR: Address
                                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                                {
                                    0xFF, 
                                    0x03, 
                                    Zero, 
                                    Zero
                                })
                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {
                                    Return (GPLD (DerefOf (PH1V [0x02]), DerefOf (PH1P [0x02])))
                                }
                            }

                            Device (HS14)
                            {
                                Name (_ADR, 0x04)  // _ADR: Address
                                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                                {
                                    0xFF, 
                                    0x03, 
                                    Zero, 
                                    Zero
                                })
                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {
                                    Return (GPLD (DerefOf (PH1V [0x03]), DerefOf (PH1P [0x03])))
                                }
                            }
                        }

                        Device (POT4)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (USBV [0x03]), DerefOf (USBP [0x03])))
                            }
                        }

                        Device (PO12)
                        {
                            Name (_ADR, 0x0C)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (USBV [0x0B]), DerefOf (USBP [0x0B])))
                            }
                        }

                        Device (POT5)
                        {
                            Name (_ADR, 0x05)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (USBV [0x04]), DerefOf (USBP [0x04])))
                            }
                        }

                        Device (PO13)
                        {
                            Name (_ADR, 0x0D)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (USBV [0x0C]), DerefOf (USBP [0x0C])))
                            }
                        }

                        Device (POT6)
                        {
                            Name (_ADR, 0x06)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (TUPC (0x0A))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (USBV [0x05]), DerefOf (USBP [0x05])))
                            }
                        }

                        Device (PO14)
                        {
                            Name (_ADR, 0x0E)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (USBV [0x0D]), DerefOf (USBP [0x0D])))
                            }
                        }

                        Device (POT1)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (USBV [Zero]), DerefOf (USBP [Zero])))
                            }
                        }

                        Device (POT9)
                        {
                            Name (_ADR, 0x09)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (USBV [0x08]), DerefOf (USBP [0x08])))
                            }
                        }

                        Device (POT2)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (TUPC (0x0A))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (USBV [One]), DerefOf (USBP [One])))
                            }
                        }

                        Device (PO10)
                        {
                            Name (_ADR, 0x0A)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (USBV [0x09]), DerefOf (USBP [0x09])))
                            }
                        }

                        Device (POT7)
                        {
                            Name (_ADR, 0x07)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (USBV [0x06]), DerefOf (USBP [0x06])))
                            }
                        }

                        Device (PO15)
                        {
                            Name (_ADR, 0x0F)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (USBV [0x0E]), DerefOf (USBP [0x0E])))
                            }
                        }

                        Device (POT8)
                        {
                            Name (_ADR, 0x08)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (USBV [0x07]), DerefOf (USBP [0x07])))
                            }
                        }

                        Device (PO16)
                        {
                            Name (_ADR, 0x10)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (USBV [0x0F]), DerefOf (USBP [0x0F])))
                            }
                        }

                        Device (PO17)
                        {
                            Name (_ADR, 0x11)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (USBV [0x10]), DerefOf (USBP [0x10])))
                            }
                        }

                        Device (PO18)
                        {
                            Name (_ADR, 0x12)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (USBV [0x11]), DerefOf (USBP [0x11])))
                            }
                        }

                        Device (PO19)
                        {
                            Name (_ADR, 0x13)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (USBV [0x12]), DerefOf (USBP [0x12])))
                            }
                        }

                        Device (PO20)
                        {
                            Name (_ADR, 0x14)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (USBV [0x13]), DerefOf (USBP [0x13])))
                            }
                        }

                        Device (PO21)
                        {
                            Name (_ADR, 0x15)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (USBV [0x14]), DerefOf (USBP [0x14])))
                            }
                        }

                        Device (PO22)
                        {
                            Name (_ADR, 0x16)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (USBV [0x15]), DerefOf (USBP [0x15])))
                            }
                        }
                    }
                }

                Device (PT01)
                {
                    Name (_ADR, One)  // _ADR: Address
                }

                Device (PT02)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Device (PT21)
                    {
                        Name (_ADR, 0x00010000)  // _ADR: Address
                        Device (X1_1)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                            {
                                Return (XPRW (0x14, 0x04))
                            }
                        }
                    }

                    Device (PT22)
                    {
                        Name (_ADR, 0x00020000)  // _ADR: Address
                        Device (X1_2)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                            {
                                Return (XPRW (0x14, 0x04))
                            }
                        }
                    }

                    Device (PT23)
                    {
                        Name (_ADR, 0x00030000)  // _ADR: Address
                        Device (X1_3)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                            {
                                Return (XPRW (0x14, 0x04))
                            }
                        }
                    }

                    Device (PT25)
                    {
                        Name (_ADR, 0x00050000)  // _ADR: Address
                    }

                    Device (PT28)
                    {
                        Name (_ADR, 0x00080000)  // _ADR: Address
                        Device (WIFI)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                            {
                                Return (XPRW (0x02, 0x04))
                            }
                        }
                    }

                    Device (PT29)
                    {
                        Name (_ADR, 0x00090000)  // _ADR: Address
                        Device (I225)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                            {
                                Return (XPRW (0x08, 0x04))
                            }
                        }
                    }

                    Device (PT20)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Device (X162)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                            {
                                Return (XPRW (0x14, 0x04))
                            }
                        }
                    }

                    Device (PT24)
                    {
                        Name (_ADR, 0x00040000)  // _ADR: Address
                        Device (M2_2)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                            {
                                Return (XPRW (0x08, 0x04))
                            }
                        }
                    }

                    Device (PT26)
                    {
                        Name (_ADR, 0x00060000)  // _ADR: Address
                    }

                    Device (PT27)
                    {
                        Name (_ADR, 0x00070000)  // _ADR: Address
                    }
                }
            }
        }
    }

    Scope (_GPE)
    {
        Method (_L19, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.GP12, 0x02) // Device Wake
            Notify (\_SB.PCI0.GP13, 0x02) // Device Wake
            Notify (\_SB.PCI0.GP13.XHC0, 0x02) // Device Wake
            Notify (\_SB.PCI0.GP30, 0x02) // Device Wake
            Notify (\_SB.PCI0.GP31, 0x02) // Device Wake
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }

        Method (_L10, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.GPP8.X161, 0x02) // Device Wake
            Notify (\_SB.PCI0.GPP9.X162, 0x02) // Device Wake
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }

        Method (_L08, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.GPP1.PTXH, 0x02) // Device Wake
            Notify (\_SB.PCI0.GPP1.PT02.PT29.I225, 0x02) // Device Wake
            Notify (\_SB.PCI0.GPP1.PT02.PT24.M2_2, 0x02) // Device Wake
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }

        Method (_L14, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.GPP1.PT02.PT21.X1_1, 0x02) // Device Wake
            Notify (\_SB.PCI0.GPP1.PT02.PT22.X1_2, 0x02) // Device Wake
            Notify (\_SB.PCI0.GPP1.PT02.PT23.X1_3, 0x02) // Device Wake
            Notify (\_SB.PCI0.GPP1.PT02.PT20.X162, 0x02) // Device Wake
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }

        Method (_L02, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.GPP1.PT02.PT28.WIFI, 0x02) // Device Wake
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }
    }

    Scope (_SB)
    {
        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C") /* Power Button Device */)  // _HID: Hardware ID
            Name (_UID, 0xAA)  // _UID: Unique ID
            Name (_STA, 0x0B)  // _STA: Status
        }
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S3, Package (0x04)  // _S3_: S3 System State
    {
        0x03, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S4, Package (0x04)  // _S4_: S4 System State
    {
        0x04, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x05, 
        Zero, 
        Zero, 
        Zero
    })
    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        If (Arg0)
        {
            \_SB.TPM.TPTS (Arg0)
            MPTS (Arg0)
            \_SB.PCI0.SBRG.SIO1.SIOS (Arg0)
            \_SB.PCI0.GPTS (Arg0)
            \_SB.PCI0.NPTS (Arg0)
            SPTS (Arg0)
        }
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        DBG8 = (Arg0 << 0x04)
        SWAK (Arg0)
        DBG8 = (Arg0 << 0x04)
        \_SB.PCI0.NWAK (Arg0)
        \_SB.PCI0.GWAK (Arg0)
        \_SB.PCI0.SBRG.SIO1.SIOW (Arg0)
        MWAK (Arg0)
        Return (WAKP) /* \WAKP */
    }

    Scope (_SB)
    {
        OperationRegion (PIRQ, SystemIO, 0x0C00, 0x02)
        Field (PIRQ, ByteAcc, NoLock, Preserve)
        {
            PIDX,   8, 
            PDAT,   8
        }

        IndexField (PIDX, PDAT, ByteAcc, NoLock, Preserve)
        {
            PIRA,   8, 
            PIRB,   8, 
            PIRC,   8, 
            PIRD,   8, 
            PIRE,   8, 
            PIRF,   8, 
            PIRG,   8, 
            PIRH,   8, 
            Offset (0x0C), 
            SIRA,   8, 
            SIRB,   8, 
            SIRC,   8, 
            SIRD,   8, 
            PIRS,   8, 
            Offset (0x13), 
            HDAD,   8, 
            Offset (0x17), 
            SDCL,   8, 
            Offset (0x1A), 
            SDIO,   8, 
            Offset (0x30), 
            USB1,   8, 
            Offset (0x34), 
            USB3,   8, 
            Offset (0x41), 
            SATA,   8, 
            Offset (0x62), 
            GIOC,   8, 
            Offset (0x70), 
            I2C0,   8, 
            I2C1,   8, 
            I2C2,   8, 
            I2C3,   8, 
            URT0,   8, 
            URT1,   8, 
            Offset (0x80), 
            AIRA,   8, 
            AIRB,   8, 
            AIRC,   8, 
            AIRD,   8, 
            AIRE,   8, 
            AIRF,   8, 
            AIRG,   8, 
            AIRH,   8
        }

        OperationRegion (KBDD, SystemIO, 0x64, One)
        Field (KBDD, ByteAcc, NoLock, Preserve)
        {
            PD64,   8
        }

        Method (DSPI, 0, NotSerialized)
        {
            INTA (0x1F)
            INTB (0x1F)
            INTC (0x1F)
            INTD (0x1F)
            Local1 = PD64 /* \_SB_.PD64 */
            PIRE = 0x1F
            PIRF = 0x1F
            PIRG = 0x1F
            PIRH = 0x1F
            Local1 = PD64 /* \_SB_.PD64 */
            AIRA = 0x10
            AIRB = 0x11
            AIRC = 0x12
            AIRD = 0x13
            AIRE = 0x14
            AIRF = 0x15
            AIRG = 0x16
            AIRH = 0x17
        }

        Method (INTA, 1, NotSerialized)
        {
            PIRA = Arg0
            HDAD = Arg0
        }

        Method (INTB, 1, NotSerialized)
        {
            PIRB = Arg0
        }

        Method (INTC, 1, NotSerialized)
        {
            PIRC = Arg0
            USB1 = Arg0
            USB3 = Arg0
        }

        Method (INTD, 1, NotSerialized)
        {
            PIRD = Arg0
            SATA = Arg0
        }

        Name (BUFA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {15}
        })
        Name (IPRA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Name (IPRB, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Name (IPRC, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Name (IPRD, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Device (LNKA)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRA)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSA) /* \_SB_.PRSA */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTA (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRA) /* \_SB_.PIRA */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                INTA (Local0)
            }
        }

        Device (LNKB)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRB)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSB) /* \_SB_.PRSB */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTB (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRB) /* \_SB_.PIRB */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                INTB (Local0)
            }
        }

        Device (LNKC)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRC)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSC) /* \_SB_.PRSC */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTC (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRC) /* \_SB_.PIRC */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                INTC (Local0)
            }
        }

        Device (LNKD)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRD)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSD) /* \_SB_.PRSD */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTD (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRD) /* \_SB_.PIRD */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                INTD (Local0)
            }
        }

        Device (LNKE)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRE)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSE) /* \_SB_.PRSE */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRE = 0x1F
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRE) /* \_SB_.PIRE */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (PIRE, Local0)
                Local0--
                PIRE = Local0
            }
        }

        Device (LNKF)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x06)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRF)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSF) /* \_SB_.PRSF */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRF = 0x1F
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRF) /* \_SB_.PIRF */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRF = Local0
            }
        }

        Device (LNKG)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x07)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRG)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSG) /* \_SB_.PRSG */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRG = 0x1F
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRG) /* \_SB_.PIRG */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRG = Local0
            }
        }

        Device (LNKH)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x08)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRH)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSH) /* \_SB_.PRSH */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRH = 0x1F
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRH) /* \_SB_.PIRH */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRH = Local0
            }
        }
    }

    Device (HPET)
    {
        Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
        Method (XSTA, 0, NotSerialized)
        {
            If ((HPEN == One))
            {
                If ((OSVR >= 0x0C))
                {
                    Return (0x0F)
                }

                HPEN = Zero
                Return (One)
            }

            Return (One)
        }

        Method (XCRS, 0, NotSerialized)
        {
            Name (BUF0, ResourceTemplate ()
            {
                IRQNoFlags ()
                    {0}
                IRQNoFlags ()
                    {8}
                Memory32Fixed (ReadOnly,
                    0xFED00000,         // Address Base
                    0x00000400,         // Address Length
                    )
            })
            Return (BUF0) /* \HPET.XCRS.BUF0 */
        }
    }

    Name (OSTB, Ones)
    Name (TPOS, Zero)
    Name (LINX, Zero)
    Name (OSSP, Zero)
    Method (SEQL, 2, Serialized)
    {
        Local0 = SizeOf (Arg0)
        Local1 = SizeOf (Arg1)
        If ((Local0 != Local1))
        {
            Return (Zero)
        }

        Name (BUF0, Buffer (Local0){})
        BUF0 = Arg0
        Name (BUF1, Buffer (Local0){})
        BUF1 = Arg1
        Local2 = Zero
        While ((Local2 < Local0))
        {
            Local3 = DerefOf (BUF0 [Local2])
            Local4 = DerefOf (BUF1 [Local2])
            If ((Local3 != Local4))
            {
                Return (Zero)
            }

            Local2++
        }

        Return (One)
    }

    Method (OSTP, 0, NotSerialized)
    {
        If ((OSTB == Ones))
        {
            If (CondRefOf (\_OSI, Local0))
            {
                OSTB = Zero
                TPOS = Zero
                If (_OSI ("Windows 2001"))
                {
                    OSTB = 0x08
                    TPOS = 0x08
                }

                If (_OSI ("Windows 2001.1"))
                {
                    OSTB = 0x20
                    TPOS = 0x20
                }

                If (_OSI ("Windows 2001 SP1"))
                {
                    OSTB = 0x10
                    TPOS = 0x10
                }

                If (_OSI ("Windows 2001 SP2"))
                {
                    OSTB = 0x11
                    TPOS = 0x11
                }

                If (_OSI ("Windows 2001 SP3"))
                {
                    OSTB = 0x12
                    TPOS = 0x12
                }

                If (_OSI ("Windows 2006"))
                {
                    OSTB = 0x40
                    TPOS = 0x40
                }

                If (_OSI ("Windows 2006 SP1"))
                {
                    OSTB = 0x41
                    TPOS = 0x41
                    OSSP = One
                }

                If (_OSI ("Windows 2009"))
                {
                    OSSP = One
                    OSTB = 0x50
                    TPOS = 0x50
                }

                If (_OSI ("Windows 2012"))
                {
                    OSSP = One
                    OSTB = 0x60
                    TPOS = 0x60
                }

                If (_OSI ("Windows 2013"))
                {
                    OSSP = One
                    OSTB = 0x61
                    TPOS = 0x61
                }

                If (_OSI ("Windows 2015"))
                {
                    OSSP = One
                    OSTB = 0x70
                    TPOS = 0x70
                }

                If (_OSI ("Linux"))
                {
                    LINX = One
                    OSTB = 0x80
                    TPOS = 0x80
                }
            }
            ElseIf (CondRefOf (\_OS, Local0))
            {
                If (SEQL (_OS, "Microsoft Windows"))
                {
                    OSTB = One
                    TPOS = One
                }
                ElseIf (SEQL (_OS, "Microsoft WindowsME: Millennium Edition"))
                {
                    OSTB = 0x02
                    TPOS = 0x02
                }
                ElseIf (SEQL (_OS, "Microsoft Windows NT"))
                {
                    OSTB = 0x04
                    TPOS = 0x04
                }
                Else
                {
                    OSTB = Zero
                    TPOS = Zero
                }
            }
            Else
            {
                OSTB = Zero
                TPOS = Zero
            }
        }

        Return (OSTB) /* \OSTB */
    }

    Scope (_SB.PCI0)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If ((PICM != Zero))
            {
                DSPI ()
                NAPE ()
            }

            OSTP ()
            OSFL ()
        }
    }

    Name (TSOS, 0x75)
    Name (UR0I, 0x03)
    Name (UR1I, 0x04)
    Name (UR2I, 0x03)
    Name (UR3I, 0x04)
    Name (IC0I, 0x04)
    Name (IC1I, 0x0B)
    Name (IC2I, 0x0A)
    Name (IC3I, 0x06)
    Name (IC4I, 0x0E)
    Name (IC5I, 0x0F)
    If (CondRefOf (\_OSI))
    {
        If (_OSI ("Windows 2009"))
        {
            TSOS = 0x50
        }

        If (_OSI ("Windows 2015"))
        {
            TSOS = 0x70
        }
    }

    Scope (_SB)
    {
        OperationRegion (ECMC, SystemIO, 0x72, 0x02)
        Field (ECMC, AnyAcc, NoLock, Preserve)
        {
            ECMI,   8, 
            ECMD,   8
        }

        IndexField (ECMI, ECMD, ByteAcc, NoLock, Preserve)
        {
            Offset (0x08), 
            FRTB,   32
        }

        OperationRegion (FRTP, SystemMemory, FRTB, 0x0100)
        Field (FRTP, AnyAcc, NoLock, Preserve)
        {
            PEBA,   32, 
                ,   4, 
            LPCE,   1, 
            IC0E,   1, 
            IC1E,   1, 
            IC2E,   1, 
            IC3E,   1, 
            IC4E,   1, 
            IC5E,   1, 
            UT0E,   1, 
            UT1E,   1, 
                ,   1, 
                ,   1, 
            ST_E,   1, 
            UT2E,   1, 
                ,   1, 
            EMMD,   2, 
                ,   3, 
            XHCE,   1, 
                ,   1, 
                ,   1, 
            UT3E,   1, 
            ESPI,   1, 
            EMME,   1, 
            Offset (0x08), 
            PCEF,   1, 
                ,   4, 
            IC0D,   1, 
            IC1D,   1, 
            IC2D,   1, 
            IC3D,   1, 
            IC4D,   1, 
            IC5D,   1, 
            UT0D,   1, 
            UT1D,   1, 
                ,   1, 
                ,   1, 
            ST_D,   1, 
            UT2D,   1, 
                ,   1, 
            EHCD,   1, 
                ,   4, 
            XHCD,   1, 
            SD_D,   1, 
                ,   1, 
            UT3D,   1, 
                ,   1, 
            EMD3,   1, 
                ,   2, 
            S03D,   1, 
            FW00,   16, 
            FW01,   32, 
            FW02,   16, 
            FW03,   32, 
            SDS0,   8, 
            SDS1,   8, 
            CZFG,   1, 
            Offset (0x20), 
            SD10,   32, 
            EH10,   32, 
            XH10,   32, 
            STBA,   32
        }

        OperationRegion (FCFG, SystemMemory, PEBA, 0x01000000)
        Field (FCFG, DWordAcc, NoLock, Preserve)
        {
            Offset (0xA3044), 
            IPDE,   32, 
            IMPE,   32, 
            Offset (0xA3078), 
                ,   2, 
            LDQ0,   1, 
            Offset (0xA30CB), 
                ,   7, 
            AUSS,   1
        }

        OperationRegion (IOMX, SystemMemory, 0xFED80D00, 0x0100)
        Field (IOMX, AnyAcc, NoLock, Preserve)
        {
            Offset (0x15), 
            IM15,   8, 
            IM16,   8, 
            Offset (0x1F), 
            IM1F,   8, 
            IM20,   8, 
            Offset (0x44), 
            IM44,   8, 
            Offset (0x46), 
            IM46,   8, 
            Offset (0x4A), 
            IM4A,   8, 
            IM4B,   8, 
            Offset (0x57), 
            IM57,   8, 
            IM58,   8, 
            Offset (0x68), 
            IM68,   8, 
            IM69,   8, 
            IM6A,   8, 
            IM6B,   8, 
            Offset (0x6D), 
            IM6D,   8
        }

        OperationRegion (FACR, SystemMemory, 0xFED81E00, 0x0100)
        Field (FACR, AnyAcc, NoLock, Preserve)
        {
            Offset (0x80), 
                ,   28, 
            RD28,   1, 
                ,   1, 
            RQTY,   1, 
            Offset (0x84), 
                ,   28, 
            SD28,   1, 
                ,   1, 
            Offset (0xA0), 
            PG1A,   1
        }

        OperationRegion (EMMX, SystemMemory, 0xFEDD5800, 0x0130)
        Field (EMMX, AnyAcc, NoLock, Preserve)
        {
            Offset (0xD0), 
                ,   17, 
            FC18,   1, 
            FC33,   1, 
                ,   7, 
            CD_T,   1, 
            WP_T,   1
        }

        OperationRegion (EMMB, SystemMemory, 0xFEDD5800, 0x0130)
        Field (EMMB, AnyAcc, NoLock, Preserve)
        {
            Offset (0xA4), 
            E0A4,   32, 
            E0A8,   32, 
            Offset (0xB0), 
            E0B0,   32, 
            Offset (0xD0), 
            E0D0,   32, 
            Offset (0x116), 
            E116,   32
        }

        Name (SVBF, Buffer (0x0100)
        {
             0x00                                             // .
        })
        CreateDWordField (SVBF, Zero, S0A4)
        CreateDWordField (SVBF, 0x04, S0A8)
        CreateDWordField (SVBF, 0x08, S0B0)
        CreateDWordField (SVBF, 0x0C, S0D0)
        CreateDWordField (SVBF, 0x10, S116)
        Method (SECR, 0, Serialized)
        {
            S116 = E116 /* \_SB_.E116 */
            RQTY = Zero
            RD28 = One
            Local0 = SD28 /* \_SB_.SD28 */
            While (Local0)
            {
                Local0 = SD28 /* \_SB_.SD28 */
            }
        }

        Method (RECR, 0, Serialized)
        {
            E116 = S116 /* \_SB_.S116 */
        }

        OperationRegion (LUIE, SystemMemory, 0xFEDC0020, 0x04)
        Field (LUIE, AnyAcc, NoLock, Preserve)
        {
            IER0,   1, 
            IER1,   1, 
            IER2,   1, 
            IER3,   1, 
            UOL0,   1, 
            UOL1,   1, 
            UOL2,   1, 
            UOL3,   1, 
            WUR0,   2, 
            WUR1,   2, 
            WUR2,   2, 
            WUR3,   2
        }

        Method (FRUI, 2, Serialized)
        {
            If ((Arg0 == Zero))
            {
                Arg1 = IUA0 /* \_SB_.IUA0 */
            }

            If ((Arg0 == One))
            {
                Arg1 = IUA1 /* \_SB_.IUA1 */
            }

            If ((Arg0 == 0x02))
            {
                Arg1 = IUA2 /* \_SB_.IUA2 */
            }

            If ((Arg0 == 0x03))
            {
                Arg1 = IUA3 /* \_SB_.IUA3 */
            }
        }

        Method (SRAD, 2, Serialized)
        {
            Local0 = (Arg0 << One)
            Local0 += 0xFED81E40
            OperationRegion (ADCR, SystemMemory, Local0, 0x02)
            Field (ADCR, ByteAcc, NoLock, Preserve)
            {
                ADTD,   2, 
                ADPS,   1, 
                ADPD,   1, 
                ADSO,   1, 
                ADSC,   1, 
                ADSR,   1, 
                ADIS,   1, 
                ADDS,   3
            }

            ADIS = One
            ADSR = Zero
            Stall (Arg1)
            ADSR = One
            ADIS = Zero
            Stall (Arg1)
        }

        Method (DSAD, 2, Serialized)
        {
            Local0 = (Arg0 << One)
            Local0 += 0xFED81E40
            OperationRegion (ADCR, SystemMemory, Local0, 0x02)
            Field (ADCR, ByteAcc, NoLock, Preserve)
            {
                ADTD,   2, 
                ADPS,   1, 
                ADPD,   1, 
                ADSO,   1, 
                ADSC,   1, 
                ADSR,   1, 
                ADIS,   1, 
                ADDS,   3
            }

            If ((Arg0 != ADTD))
            {
                If ((Arg1 == Zero))
                {
                    ADTD = Zero
                    ADPD = One
                    Local0 = ADDS /* \_SB_.DSAD.ADDS */
                    While ((Local0 != 0x07))
                    {
                        Local0 = ADDS /* \_SB_.DSAD.ADDS */
                    }
                }

                If ((Arg1 == 0x03))
                {
                    ADPD = Zero
                    Local0 = ADDS /* \_SB_.DSAD.ADDS */
                    While ((Local0 != Zero))
                    {
                        Local0 = ADDS /* \_SB_.DSAD.ADDS */
                    }

                    ADTD = 0x03
                }
            }
        }

        Method (HSAD, 2, Serialized)
        {
            Local3 = (One << Arg0)
            Local0 = (Arg0 << One)
            Local0 += 0xFED81E40
            OperationRegion (ADCR, SystemMemory, Local0, 0x02)
            Field (ADCR, ByteAcc, NoLock, Preserve)
            {
                ADTD,   2, 
                ADPS,   1, 
                ADPD,   1, 
                ADSO,   1, 
                ADSC,   1, 
                ADSR,   1, 
                ADIS,   1, 
                ADDS,   3
            }

            If ((Arg1 != ADTD))
            {
                If ((Arg1 == Zero))
                {
                    PG1A = One
                    ADTD = Zero
                    ADPD = One
                    Local0 = ADDS /* \_SB_.HSAD.ADDS */
                    While ((Local0 != 0x07))
                    {
                        Local0 = ADDS /* \_SB_.HSAD.ADDS */
                    }

                    RQTY = One
                    RD28 = One
                    Local0 = SD28 /* \_SB_.SD28 */
                    While (!Local0)
                    {
                        Local0 = SD28 /* \_SB_.SD28 */
                    }
                }

                If ((Arg1 == 0x03))
                {
                    RQTY = Zero
                    RD28 = One
                    Local0 = SD28 /* \_SB_.SD28 */
                    While (Local0)
                    {
                        Local0 = SD28 /* \_SB_.SD28 */
                    }

                    ADPD = Zero
                    Local0 = ADDS /* \_SB_.HSAD.ADDS */
                    While ((Local0 != Zero))
                    {
                        Local0 = ADDS /* \_SB_.HSAD.ADDS */
                    }

                    ADTD = 0x03
                    PG1A = Zero
                }
            }
        }

        OperationRegion (FPIC, SystemIO, 0x0C00, 0x02)
        Field (ECMC, AnyAcc, NoLock, Preserve)
        {
            FPII,   8, 
            FPID,   8
        }

        IndexField (FPII, FPID, ByteAcc, NoLock, Preserve)
        {
            Offset (0xF4), 
            IUA0,   8, 
            IUA1,   8, 
            Offset (0xF8), 
            IUA2,   8, 
            IUA3,   8
        }

        Device (GPIO)
        {
            Name (_HID, "AMDI0030")  // _HID: Hardware ID
            Name (_CID, "AMDI0030")  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x00000007,
                    }
                    Memory32Fixed (ReadWrite,
                        0xFED81500,         // Address Base
                        0x00000400,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.GPIO._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (FUR0)
        {
            Name (_HID, "AMDI0020")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {3}
                    Memory32Fixed (ReadWrite,
                        0xFEDC9000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFEDC7000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                IRQW = (One << (UR0I & 0x0F))
                Return (BUF0) /* \_SB_.FUR0._CRS.BUF0 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((UT0E == One))
                    {
                        If (IER0)
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (FUR1)
        {
            Name (_HID, "AMDI0020")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {4}
                    Memory32Fixed (ReadWrite,
                        0xFEDCA000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFEDC8000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                IRQW = (One << (UR1I & 0x0F))
                Return (BUF0) /* \_SB_.FUR1._CRS.BUF0 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((UT1E == One))
                    {
                        If (UOL1)
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (FUR2)
        {
            Name (_HID, "AMDI0020")  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {3}
                    Memory32Fixed (ReadWrite,
                        0xFEDCE000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFEDCC000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                IRQW = (One << (UR2I & 0x0F))
                Return (BUF0) /* \_SB_.FUR2._CRS.BUF0 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((UT2E == One))
                    {
                        If (UOL2)
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (FUR3)
        {
            Name (_HID, "AMDI0020")  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {4}
                    Memory32Fixed (ReadWrite,
                        0xFEDCF000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFEDCD000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                IRQW = (One << (UR3I & 0x0F))
                Return (BUF0) /* \_SB_.FUR3._CRS.BUF0 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((UT3E == One))
                    {
                        If (UOL3)
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (I2CA)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {10}
                    Memory32Fixed (ReadWrite,
                        0xFEDC2000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                IRQW = (One << (IC0I & 0x0F))
                Return (BUF0) /* \_SB_.I2CA._CRS.BUF0 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC0E == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x05, 0xC8)
            }
        }

        Device (I2CB)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {11}
                    Memory32Fixed (ReadWrite,
                        0xFEDC3000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                IRQW = (One << (IC1I & 0x0F))
                Return (BUF0) /* \_SB_.I2CB._CRS.BUF0 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC1E == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x06, 0xC8)
            }
        }

        Device (I2CC)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {4}
                    Memory32Fixed (ReadWrite,
                        0xFEDC4000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                IRQW = (One << (IC2I & 0x0F))
                Return (BUF0) /* \_SB_.I2CC._CRS.BUF0 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC2E == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x07, 0xC8)
            }
        }

        Device (I2CD)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {6}
                    Memory32Fixed (ReadWrite,
                        0xFEDC5000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                IRQW = (One << (IC3I & 0x0F))
                Return (BUF0) /* \_SB_.I2CD._CRS.BUF0 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC3E == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x08, 0xC8)
            }
        }

        Device (I2CE)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {14}
                    Memory32Fixed (ReadWrite,
                        0xFEDC6000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                IRQW = (One << (IC4I & 0x0F))
                Return (BUF0) /* \_SB_.I2CE._CRS.BUF0 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC4E == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x09, 0xC8)
            }
        }

        Device (I2CF)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {15}
                    Memory32Fixed (ReadWrite,
                        0xFEDCB000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                IRQW = (One << (IC5I & 0x0F))
                Return (BUF0) /* \_SB_.I2CF._CRS.BUF0 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC5E == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x0A, 0xC8)
            }
        }

        Method (EPIN, 0, NotSerialized)
        {
            IPDE = Zero
            IMPE = Zero
            IM15 = One
            IM16 = One
            IM20 = One
            IM44 = One
            IM46 = One
            IM68 = One
            IM69 = One
            IM6A = One
            IM6B = One
            IM1F = One
            If ((EMMD != One))
            {
                IM4A = One
                IM58 = One
                IM4B = One
                IM57 = One
                IM6D = One
            }

            SECR ()
        }

        Name (NCRS, ResourceTemplate ()
        {
            Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
            {
                0x00000005,
            }
            Memory32Fixed (ReadWrite,
                0xFEDD5000,         // Address Base
                0x00001000,         // Address Length
                )
        })
        Name (DCRS, ResourceTemplate ()
        {
            Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
            {
                0x00000005,
            }
            Memory32Fixed (ReadWrite,
                0xFEDD5000,         // Address Base
                0x00001000,         // Address Length
                )
            GpioInt (Edge, ActiveBoth, SharedAndWake, PullUp, 0x0BB8,
                "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x0044
                }
            GpioIo (Shared, PullUp, 0x0000, 0x0000, IoRestrictionNone,
                "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x0044
                }
        })
        Name (AHID, "AMDI0040")
        Name (ACID, "AMDI0040")
        Name (SHID, 0x400DD041)
        Name (SCID, "PCICC_080501")
        Device (EMM0)
        {
            Method (_HID, 0, Serialized)  // _HID: Hardware ID
            {
                If (EMMD)
                {
                    Return (SHID) /* \_SB_.SHID */
                }
                Else
                {
                    Return (AHID) /* \_SB_.AHID */
                }
            }

            Method (_CID, 0, Serialized)  // _CID: Compatible ID
            {
                If (EMMD)
                {
                    Return (SCID) /* \_SB_.SCID */
                }
                Else
                {
                    Return (ACID) /* \_SB_.ACID */
                }
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                If (EMD3)
                {
                    Return (DCRS) /* \_SB_.DCRS */
                }
                Else
                {
                    Return (NCRS) /* \_SB_.NCRS */
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If (EMME)
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If (EMME)
                {
                    EPIN ()
                }
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((EMD3 && EMME))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((EMD3 && EMME))
                {
                    HSAD (0x1C, Zero)
                    RECR ()
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((EMD3 && EMME))
                {
                    HSAD (0x1C, 0x03)
                }
            }
        }

        Device (UAR1)
        {
            Name (_HID, EisaId ("PNP0500") /* Standard PC COM Serial Port */)  // _HID: Hardware ID
            Name (_DDN, "COM1")  // _DDN: DOS Device Name
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (IER0)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x02E8,             // Range Minimum
                        0x02E8,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        _Y26)
                    IRQNoFlags (_Y27)
                        {3}
                })
                CreateByteField (BUF0, \_SB.UAR1._CRS._Y26._MIN, IOLO)  // _MIN: Minimum Base Address
                CreateByteField (BUF0, 0x03, IOHI)
                CreateByteField (BUF0, \_SB.UAR1._CRS._Y26._MAX, IORL)  // _MAX: Maximum Base Address
                CreateByteField (BUF0, 0x05, IORH)
                CreateWordField (BUF0, \_SB.UAR1._CRS._Y27._INT, IRQL)  // _INT: Interrupts
                FRUI (WUR0, IRQL)
                Return (BUF0) /* \_SB_.UAR1._CRS.BUF0 */
            }
        }

        Device (UAR2)
        {
            Name (_HID, EisaId ("PNP0500") /* Standard PC COM Serial Port */)  // _HID: Hardware ID
            Name (_DDN, "COM2")  // _DDN: DOS Device Name
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (IER1)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x02F8,             // Range Minimum
                        0x02F8,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        _Y28)
                    IRQNoFlags (_Y29)
                        {4}
                })
                CreateByteField (BUF0, \_SB.UAR2._CRS._Y28._MIN, IOLO)  // _MIN: Minimum Base Address
                CreateByteField (BUF0, 0x03, IOHI)
                CreateByteField (BUF0, \_SB.UAR2._CRS._Y28._MAX, IORL)  // _MAX: Maximum Base Address
                CreateByteField (BUF0, 0x05, IORH)
                CreateWordField (BUF0, \_SB.UAR2._CRS._Y29._INT, IRQL)  // _INT: Interrupts
                FRUI (WUR1, IRQL)
                Return (BUF0) /* \_SB_.UAR2._CRS.BUF0 */
            }
        }

        Device (UAR3)
        {
            Name (_HID, EisaId ("PNP0500") /* Standard PC COM Serial Port */)  // _HID: Hardware ID
            Name (_DDN, "COM3")  // _DDN: DOS Device Name
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (IER2)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x03E8,             // Range Minimum
                        0x03E8,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        _Y2A)
                    IRQNoFlags (_Y2B)
                        {3}
                })
                CreateByteField (BUF0, \_SB.UAR3._CRS._Y2A._MIN, IOLO)  // _MIN: Minimum Base Address
                CreateByteField (BUF0, 0x03, IOHI)
                CreateByteField (BUF0, \_SB.UAR3._CRS._Y2A._MAX, IORL)  // _MAX: Maximum Base Address
                CreateByteField (BUF0, 0x05, IORH)
                CreateWordField (BUF0, \_SB.UAR3._CRS._Y2B._INT, IRQL)  // _INT: Interrupts
                FRUI (WUR2, IRQL)
                Return (BUF0) /* \_SB_.UAR3._CRS.BUF0 */
            }
        }

        Device (UAR4)
        {
            Name (_HID, EisaId ("PNP0500") /* Standard PC COM Serial Port */)  // _HID: Hardware ID
            Name (_DDN, "COM4")  // _DDN: DOS Device Name
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (IER3)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x03F8,             // Range Minimum
                        0x03F8,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        _Y2C)
                    IRQNoFlags (_Y2D)
                        {4}
                })
                CreateByteField (BUF0, \_SB.UAR4._CRS._Y2C._MIN, IOLO)  // _MIN: Minimum Base Address
                CreateByteField (BUF0, 0x03, IOHI)
                CreateByteField (BUF0, \_SB.UAR4._CRS._Y2C._MAX, IORL)  // _MAX: Maximum Base Address
                CreateByteField (BUF0, 0x05, IORH)
                CreateWordField (BUF0, \_SB.UAR4._CRS._Y2D._INT, IRQL)  // _INT: Interrupts
                FRUI (WUR3, IRQL)
                Return (BUF0) /* \_SB_.UAR4._CRS.BUF0 */
            }
        }
    }

    Device (_SB.TPM)
    {
        Name (TMRQ, 0xFFFFFFFF)
        Name (TLVL, 0xFFFFFFFF)
        Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
        {
            If (TCMF)
            {
                Return (0x01013469)
            }
            ElseIf ((TTDP == Zero))
            {
                Return (0x310CD041)
            }
            Else
            {
                Return ("MSFT0101")
            }
        }

        OperationRegion (TMMB, SystemMemory, 0xFED40000, 0x5000)
        Field (TMMB, ByteAcc, Lock, Preserve)
        {
            ACC0,   8, 
            Offset (0x08), 
            INTE,   32, 
            INTV,   8, 
            Offset (0x10), 
            INTS,   32, 
            INTF,   32, 
            TSTS,   32, 
            Offset (0x24), 
            FIFO,   32, 
            Offset (0x30), 
            IDTF,   32, 
            Offset (0x4C), 
            SCMD,   32
        }

        Method (_STR, 0, NotSerialized)  // _STR: Description String
        {
            If ((TTDP == Zero))
            {
                Return (Unicode ("TPM 1.2 Device"))
            }
            Else
            {
                Return (Unicode ("TPM 2.0 Device"))
            }
        }

        Name (_UID, One)  // _UID: Unique ID
        Name (CRST, ResourceTemplate ()
        {
            Memory32Fixed (ReadOnly,
                0x00000000,         // Address Base
                0x00001000,         // Address Length
                _Y2E)
            Memory32Fixed (ReadOnly,
                0xFED70000,         // Address Base
                0x00001000,         // Address Length
                _Y2F)
        })
        Name (CRSD, ResourceTemplate ()
        {
            Memory32Fixed (ReadWrite,
                0xFED40000,         // Address Base
                0x00005000,         // Address Length
                _Y30)
        })
        Name (CRID, ResourceTemplate ()
        {
            Memory32Fixed (ReadWrite,
                0xFED40000,         // Address Base
                0x00005000,         // Address Length
                _Y31)
        })
        Name (CREI, ResourceTemplate ()
        {
            Memory32Fixed (ReadWrite,
                0xFED40000,         // Address Base
                0x00005000,         // Address Length
                )
            GpioInt (Level, ActiveLow, ExclusiveAndWake, PullNone, 0x0000,
                "\\_SB.GPIO", 0x00, ResourceConsumer, _Y32,
                )
                {   // Pin list
                    0x0000
                }
        })
        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
        {
            If ((AMDT == One))
            {
                CreateDWordField (CRST, \_SB.TPM._Y2E._BAS, MTFB)  // _BAS: Base Address
                CreateDWordField (CRST, \_SB.TPM._Y2E._LEN, LTFB)  // _LEN: Length
                MTFB = TPMB /* \TPMB */
                LTFB = TPBS /* \TPBS */
                CreateDWordField (CRST, \_SB.TPM._Y2F._BAS, MTFC)  // _BAS: Base Address
                CreateDWordField (CRST, \_SB.TPM._Y2F._LEN, LTFC)  // _LEN: Length
                MTFC = TPMC /* \TPMC */
                LTFC = TPCS /* \TPCS */
                Return (CRST) /* \_SB_.TPM_.CRST */
            }
            Else
            {
                If ((DTPT == One))
                {
                    CreateDWordField (CRSD, \_SB.TPM._Y30._BAS, MTFE)  // _BAS: Base Address
                    CreateDWordField (CRSD, \_SB.TPM._Y30._LEN, LTFE)  // _LEN: Length
                    MTFE = 0xFED40000
                    LTFE = 0x5000
                    Return (CRSD) /* \_SB_.TPM_.CRSD */
                }
                ElseIf ((TTPF == One))
                {
                    If (((TMRQ == Zero) && (TMRQ != 0xFFFFFFFF)))
                    {
                        CreateDWordField (CRID, \_SB.TPM._Y31._BAS, MTFD)  // _BAS: Base Address
                        CreateDWordField (CRID, \_SB.TPM._Y31._LEN, LTFD)  // _LEN: Length
                        MTFD = 0xFED40000
                        LTFD = 0x5000
                        Return (CRID) /* \_SB_.TPM_.CRID */
                    }
                    Else
                    {
                        CreateWordField (CREI, 0x23, LIRQ)
                        CreateBitField (CREI, \_SB.TPM._Y32._POL, LLVL)  // _POL: Polarity
                        LIRQ = TMRQ /* \_SB_.TPM_.TMRQ */
                        LLVL = TLVL /* \_SB_.TPM_.TLVL */
                        Return (CREI) /* \_SB_.TPM_.CREI */
                    }
                }
                ElseIf ((TTPF == Zero))
                {
                    CreateDWordField (CRST, \_SB.TPM._Y2F._BAS, MTFF)  // _BAS: Base Address
                    MTFF = FTPM /* \FTPM */
                    Return (CRST) /* \_SB_.TPM_.CRST */
                }

                MTFE = Zero
                LTFE = Zero
                Return (CRID) /* \_SB_.TPM_.CRID */
            }

            Return (CRID) /* \_SB_.TPM_.CRID */
        }

        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
        {
            If (((TMRQ != Zero) && (TMRQ != 0xFFFFFFFF)))
            {
                CreateWordField (Arg0, 0x23, IRQ0)
                CreateWordField (CREI, 0x23, LIRQ)
                LIRQ = IRQ0 /* \_SB_.TPM_._SRS.IRQ0 */
                TMRQ = IRQ0 /* \_SB_.TPM_._SRS.IRQ0 */
                CreateBitField (Arg0, 0x98, ITRG)
                CreateBitField (CREI, \_SB.TPM._Y32._MOD, LTRG)  // _MOD: Mode
                LTRG = ITRG /* \_SB_.TPM_._SRS.ITRG */
                CreateBitField (Arg0, 0x99, ILVL)
                CreateBitField (CREI, \_SB.TPM._Y32._POL, LLVL)  // _POL: Polarity
                LLVL = ILVL /* \_SB_.TPM_._SRS.ILVL */
                If ((((IDTF & 0x0F) == Zero) || ((IDTF & 0x0F
                    ) == 0x0F)))
                {
                    If ((IRQ0 < 0x10))
                    {
                        INTV = (IRQ0 & 0x0F)
                    }

                    If ((ITRG == One))
                    {
                        INTE |= 0x10
                    }
                    Else
                    {
                        INTE &= 0xFFFFFFEF
                    }

                    If ((ILVL == Zero))
                    {
                        INTE |= 0x08
                    }
                    Else
                    {
                        INTE &= 0xFFFFFFF7
                    }
                }
            }
        }

        OperationRegion (CRBD, SystemMemory, TPMM, 0x48)
        Field (CRBD, AnyAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            HERR,   32, 
            Offset (0x40), 
            HCMD,   32, 
            HSTS,   32
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If ((TTDP == Zero))
            {
                If (TPMF)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
            ElseIf ((TTDP == One))
            {
                If (TPMF)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Return (Zero)
        }

        Method (STRT, 3, Serialized)
        {
            OperationRegion (TPMR, SystemMemory, FTPM, 0x1000)
            Field (TPMR, AnyAcc, NoLock, Preserve)
            {
                Offset (0x04), 
                FERR,   32, 
                Offset (0x0C), 
                BEGN,   32
            }

            Name (TIMR, Zero)
            If ((ToInteger (Arg0) != Zero)){}
            Switch (ToInteger (Arg1))
            {
                Case (Zero)
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }
                Case (One)
                {
                    TIMR = Zero
                    If ((AMDT == One))
                    {
                        While (((BEGN == One) && (TIMR < 0x0200)))
                        {
                            If ((BEGN == One))
                            {
                                Sleep (One)
                                TIMR++
                            }
                        }
                    }
                    ElseIf ((((HSTS & 0x02) | (HSTS & One)
                        ) == 0x03))
                    {
                        HCMD = One
                    }
                    Else
                    {
                        FERR = One
                        BEGN = Zero
                    }

                    Return (Zero)
                }

            }

            Return (One)
        }

        Method (CRYF, 3, Serialized)
        {
            If ((ToInteger (Arg0) != One)){}
            Switch (ToInteger (Arg1))
            {
                Case (Zero)
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }
                Case (One)
                {
                    Name (TPMV, Package (0x02)
                    {
                        One, 
                        Package (0x02)
                        {
                            One, 
                            0x20
                        }
                    })
                    If ((_STA () == Zero))
                    {
                        Return (Package (0x01)
                        {
                            Zero
                        })
                    }

                    Return (TPMV) /* \_SB_.TPM_.CRYF.TPMV */
                }

            }

            Return (Buffer (One)
            {
                 0x00                                             // .
            })
        }
    }

    Scope (_SB.TPM)
    {
        OperationRegion (TSMI, SystemIO, SMIA, 0x02)
        Field (TSMI, WordAcc, NoLock, Preserve)
        {
            SMI,    16
        }

        OperationRegion (ATNV, SystemMemory, PPIM, PPIL)
        Field (ATNV, AnyAcc, NoLock, Preserve)
        {
            RQST,   32, 
            RCNT,   32, 
            ERRO,   32, 
            FLAG,   32, 
            MISC,   32, 
            OPTN,   32, 
            SRSP,   32
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If ((Arg0 == ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */))
            {
                Switch (ToInteger (Arg2))
                {
                    Case (Zero)
                    {
                        Return (Buffer (0x02)
                        {
                             0xFF, 0x01                                       // ..
                        })
                    }
                    Case (One)
                    {
                        If ((PPIV == Zero))
                        {
                            Return ("1.2")
                        }
                        Else
                        {
                            Return ("1.3")
                        }
                    }
                    Case (0x02)
                    {
                        RQST = DerefOf (Arg3 [Zero])
                        SRSP = Zero
                        FLAG = 0x02
                        TMF1 = OFST /* \OFST */
                        SRSP = Zero
                        SMI = TMF1 /* \TMF1 */
                        Return (SRSP) /* \_SB_.TPM_.SRSP */
                    }
                    Case (0x03)
                    {
                        Name (PPI1, Package (0x02)
                        {
                            Zero, 
                            Zero
                        })
                        PPI1 [One] = RQST /* \_SB_.TPM_.RQST */
                        Return (PPI1) /* \_SB_.TPM_._DSM.PPI1 */
                    }
                    Case (0x04)
                    {
                        Return (TRST) /* \TRST */
                    }
                    Case (0x05)
                    {
                        Name (PPI2, Package (0x03)
                        {
                            Zero, 
                            Zero, 
                            Zero
                        })
                        SRSP = Zero
                        FLAG = 0x05
                        SMI = OFST /* \OFST */
                        PPI2 [One] = RCNT /* \_SB_.TPM_.RCNT */
                        PPI2 [0x02] = ERRO /* \_SB_.TPM_.ERRO */
                        Return (PPI2) /* \_SB_.TPM_._DSM.PPI2 */
                    }
                    Case (0x06)
                    {
                        Return (0x03)
                    }
                    Case (0x07)
                    {
                        RQST = DerefOf (Arg3 [Zero])
                        FLAG = 0x07
                        OPTN = Zero
                        If ((RQST == 0x17))
                        {
                            ToInteger (DerefOf (Arg3 [One]), OPTN) /* \_SB_.TPM_.OPTN */
                        }

                        TMF1 = OFST /* \OFST */
                        SRSP = Zero
                        SMI = TMF1 /* \TMF1 */
                        Return (SRSP) /* \_SB_.TPM_.SRSP */
                    }
                    Case (0x08)
                    {
                        RQST = DerefOf (Arg3 [Zero])
                        FLAG = 0x08
                        TMF1 = OFST /* \OFST */
                        SRSP = Zero
                        SMI = TMF1 /* \TMF1 */
                        Return (SRSP) /* \_SB_.TPM_.SRSP */
                    }
                    Default
                    {
                    }

                }
            }
            ElseIf ((Arg0 == ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d") /* Unknown UUID */))
            {
                Switch (ToInteger (Arg2))
                {
                    Case (Zero)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }
                    Case (One)
                    {
                        RQST = DerefOf (Arg3 [Zero])
                        FLAG = 0x09
                        TMF1 = OFST /* \OFST */
                        SRSP = Zero
                        SMI = TMF1 /* \TMF1 */
                        Return (SRSP) /* \_SB_.TPM_.SRSP */
                    }
                    Default
                    {
                    }

                }
            }

            If ((Arg0 == ToUUID ("cf8e16a5-c1e8-4e25-b712-4f54a96702c8") /* Unknown UUID */))
            {
                Return (CRYF (Arg1, Arg2, Arg3))
            }

            If ((Arg0 == ToUUID ("6bbf6cab-5463-4714-b7cd-f0203c0368d4") /* Unknown UUID */))
            {
                Return (STRT (Arg1, Arg2, Arg3))
            }

            Return (Buffer (One)
            {
                 0x00                                             // .
            })
        }

        Method (TPTS, 1, Serialized)
        {
            Switch (ToInteger (Arg0))
            {
                Case (0x04)
                {
                    RQST = Zero
                    FLAG = 0x09
                    SRSP = Zero
                    SMI = OFST /* \OFST */
                }
                Case (0x05)
                {
                    RQST = Zero
                    FLAG = 0x09
                    SRSP = Zero
                    SMI = OFST /* \OFST */
                }

            }

            Sleep (0x012C)
        }
    }

    Scope (\)
    {
        Device (AMW0)
        {
            Name (_HID, EisaId ("PNP0C14") /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, "ASUSWMI")  // _UID: Unique ID
            Name (_WDG, Buffer (0x50)
            {
                /* 0000 */  0xD0, 0x5E, 0x84, 0x97, 0x6D, 0x4E, 0xDE, 0x11,  // .^..mN..
                /* 0008 */  0x8A, 0x39, 0x08, 0x00, 0x20, 0x0C, 0x9A, 0x66,  // .9.. ..f
                /* 0010 */  0x42, 0x43, 0x01, 0x02, 0xA0, 0x47, 0x67, 0x46,  // BC...GgF
                /* 0018 */  0xEC, 0x70, 0xDE, 0x11, 0x8A, 0x39, 0x08, 0x00,  // .p...9..
                /* 0020 */  0x20, 0x0C, 0x9A, 0x66, 0x42, 0x44, 0x01, 0x02,  //  ..fBD..
                /* 0028 */  0x72, 0x0F, 0xBC, 0xAB, 0xA1, 0x8E, 0xD1, 0x11,  // r.......
                /* 0030 */  0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10, 0x00, 0x00,  // ....)...
                /* 0038 */  0xD2, 0x00, 0x01, 0x08, 0x21, 0x12, 0x90, 0x05,  // ....!...
                /* 0040 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,  // f.......
                /* 0048 */  0xC9, 0x06, 0x29, 0x10, 0x4D, 0x4F, 0x01, 0x00   // ..).MO..
            })
            Name (CCAC, Zero)
            Name (ECD2, Zero)
            Name (EID2, Zero)
            Method (WED2, 1, NotSerialized)
            {
                ECD2 = Arg0
            }

            Method (WMBC, 3, Serialized)
            {
                Local0 = One
                Switch (Arg1)
                {
                    Case (0x43455053)
                    {
                        Return (SPEC (Arg2))
                    }
                    Case (0x50564544)
                    {
                        Return (DEVP (Arg2))
                    }
                    Case (0x50534453)
                    {
                        Return (SDSP (Arg2))
                    }
                    Case (0x50534447)
                    {
                        Return (GDSP (Arg2))
                    }
                    Case (0x53564544)
                    {
                        Return (DEVS (Arg2))
                    }
                    Case (0x53544344)
                    {
                        Return (DSTS (Arg2))
                    }
                    Case (0x44495047)
                    {
                        Return (GPID ())
                    }
                    Case (0x5446424B)
                    {
                        Return (KBFT (Arg2))
                    }
                    Case (0x59454B48)
                    {
                        Return (HKEY ())
                    }
                    Case (0x4C455252)
                    {
                        Return (LERR (Arg2))
                    }
                    Case (0x47424F44)
                    {
                        Return (GBOD (Arg2))
                    }
                    Case (0x53424F44)
                    {
                        Return (SBOD (Arg2))
                    }
                    Case (0x47424F4E)
                    {
                        Return (GBON (Arg2))
                    }
                    Case (0x53415057)
                    {
                        Return (SAPW (Arg2))
                    }
                    Case (0x53555057)
                    {
                        Return (SUPW (Arg2))
                    }
                    Case (0x53555058)
                    {
                        Return (GLBN (Arg2))
                    }
                    Case (0x53555059)
                    {
                        Return (ISLG (Arg2))
                    }
                    Case (0x53555060)
                    {
                        Return (GLBO (Arg2))
                    }
                    Case (0x53555061)
                    {
                        Return (SLBO (Arg2))
                    }
                    Case (0x53424F47)
                    {
                        Return (SBOG (Arg2))
                    }
                    Case (0x4C444654)
                    {
                        Return (LDFT ())
                    }
                    Case (0x53465442)
                    {
                        Return (SFTB (Arg2))
                    }
                    Case (0x53444654)
                    {
                        Return (SDFT (Arg2))
                    }
                    Case (0x5346544D)
                    {
                        Return (SFTM ())
                    }
                    Case (0x4443544C)
                    {
                        Return (DCTL (Arg2))
                    }
                    Case (0x4746414E)
                    {
                        Return (GFAN (Arg2))
                    }
                    Case (0x4446414E)
                    {
                        Return (SFAN (Arg2))
                    }
                    Case (0x47464356)
                    {
                        Return (GFCV (Arg2))
                    }
                    Case (0x44464356)
                    {
                        Return (SFCV (Arg2))
                    }
                    Case (0x43455057)
                    {
                        Return (CKPW (Arg2))
                    }
                    Case (0x47544F44)
                    {
                        Return (GTOD (Arg2))
                    }
                    Case (0x53544F44)
                    {
                        Return (STOD (Arg2))
                    }
                    Case (0x4F505945)
                    {
                        Return (EYPO ())
                    }
                    Case (0x54505945)
                    {
                        Return (EYPT ())
                    }
                    Case (0x45505945)
                    {
                        Return (EYPE ())
                    }
                    Case (0x56505945)
                    {
                        Return (EYPF ())
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }

                Return (Local0)
            }

            Method (RSMB, 1, Serialized)
            {
                Return (Zero)
            }

            Method (WSMB, 1, Serialized)
            {
                Return (Zero)
            }

            Method (RSMW, 1, Serialized)
            {
                Return (Zero)
            }

            Method (WSMW, 1, Serialized)
            {
                Return (Zero)
            }

            Method (RSMK, 1, Serialized)
            {
                Return (Zero)
            }

            Method (WSMK, 1, Serialized)
            {
                Return (Zero)
            }

            Mutex (ASMX, 0x00)
            Method (RIOB, 1, Serialized)
            {
                If ((Acquire (ASMX, 0xFFFF) == Zero))
                {
                    CreateWordField (Arg0, Zero, W_PT)
                    OperationRegion (TMIO, SystemIO, W_PT, One)
                    Field (TMIO, ByteAcc, NoLock, Preserve)
                    {
                        PT08,   8
                    }

                    Local0 = PT08 /* \AMW0.RIOB.PT08 */
                    Release (ASMX)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (WIOB, 1, Serialized)
            {
                If ((Acquire (ASMX, 0xFFFF) == Zero))
                {
                    CreateWordField (Arg0, Zero, W_PT)
                    CreateByteField (Arg0, 0x02, B_DT)
                    OperationRegion (TMIO, SystemIO, W_PT, One)
                    Field (TMIO, ByteAcc, NoLock, Preserve)
                    {
                        PT08,   8
                    }

                    PT08 = B_DT /* \AMW0.WIOB.B_DT */
                    Release (ASMX)
                }

                Return (Ones)
            }

            Method (RIOW, 1, Serialized)
            {
                If ((Acquire (ASMX, 0xFFFF) == Zero))
                {
                    CreateWordField (Arg0, Zero, W_PT)
                    OperationRegion (TMIO, SystemIO, W_PT, 0x02)
                    Field (TMIO, WordAcc, NoLock, Preserve)
                    {
                        PT16,   16
                    }

                    Local0 = PT16 /* \AMW0.RIOW.PT16 */
                    Release (ASMX)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (WIOW, 1, Serialized)
            {
                If ((Acquire (ASMX, 0xFFFF) == Zero))
                {
                    CreateWordField (Arg0, Zero, W_PT)
                    CreateWordField (Arg0, 0x02, W_DT)
                    OperationRegion (TMIO, SystemIO, W_PT, 0x02)
                    Field (TMIO, WordAcc, NoLock, Preserve)
                    {
                        PT16,   16
                    }

                    PT16 = W_DT /* \AMW0.WIOW.W_DT */
                    Release (ASMX)
                }

                Return (Ones)
            }

            Method (RIOD, 1, Serialized)
            {
                If ((Acquire (ASMX, 0xFFFF) == Zero))
                {
                    CreateWordField (Arg0, Zero, W_PT)
                    OperationRegion (TMIO, SystemIO, W_PT, 0x04)
                    Field (TMIO, DWordAcc, NoLock, Preserve)
                    {
                        PT32,   32
                    }

                    Local0 = PT32 /* \AMW0.RIOD.PT32 */
                    Release (ASMX)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (WIOD, 1, Serialized)
            {
                If ((Acquire (ASMX, 0xFFFF) == Zero))
                {
                    CreateWordField (Arg0, Zero, W_PT)
                    CreateDWordField (Arg0, 0x02, D_DT)
                    OperationRegion (TMIO, SystemIO, W_PT, 0x04)
                    Field (TMIO, DWordAcc, NoLock, Preserve)
                    {
                        PT32,   32
                    }

                    PT32 = D_DT /* \AMW0.WIOD.D_DT */
                    Release (ASMX)
                }

                Return (Ones)
            }

            Method (RPCI, 1, Serialized)
            {
                If ((Acquire (ASMX, 0xFFFF) == Zero))
                {
                    CreateByteField (Arg0, Zero, TBUS)
                    CreateByteField (Arg0, One, TDEV)
                    CreateByteField (Arg0, 0x02, TFUN)
                    CreateWordField (Arg0, 0x04, TREG)
                    CreateByteField (Arg0, 0x06, W_SZ)
                    Local0 = TBUS /* \AMW0.RPCI.TBUS */
                    Local0 <<= 0x05
                    Local0 += TDEV /* \AMW0.RPCI.TDEV */
                    Local0 <<= 0x03
                    Local0 += TFUN /* \AMW0.RPCI.TFUN */
                    Local0 <<= 0x0C
                    Local0 += TREG /* \AMW0.RPCI.TREG */
                    Local0 += PEBS /* \PEBS */
                    OperationRegion (PCFG, SystemMemory, Local0, 0x04)
                    Field (PCFG, ByteAcc, NoLock, Preserve)
                    {
                        BCFG,   8
                    }

                    Field (PCFG, WordAcc, NoLock, Preserve)
                    {
                        WCFG,   16
                    }

                    Field (PCFG, DWordAcc, NoLock, Preserve)
                    {
                        XCFG,   32
                    }

                    Local0 = Zero
                    Switch (ToInteger (W_SZ))
                    {
                        Case (One)
                        {
                            Local0 = BCFG /* \AMW0.RPCI.BCFG */
                        }
                        Case (0x02)
                        {
                            Local0 = WCFG /* \AMW0.RPCI.WCFG */
                        }
                        Case (0x04)
                        {
                            Local0 = XCFG /* \AMW0.RPCI.XCFG */
                        }
                        Default
                        {
                            Local0 = Ones
                        }

                    }

                    Release (ASMX)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (WPCI, 1, Serialized)
            {
                If ((Acquire (ASMX, 0xFFFF) == Zero))
                {
                    CreateByteField (Arg0, Zero, TBUS)
                    CreateByteField (Arg0, One, TDEV)
                    CreateByteField (Arg0, 0x02, TFUN)
                    CreateWordField (Arg0, 0x04, TREG)
                    CreateByteField (Arg0, 0x06, W_SZ)
                    CreateDWordField (Arg0, 0x08, TDAT)
                    Local0 = TBUS /* \AMW0.WPCI.TBUS */
                    Local0 <<= 0x05
                    Local0 += TDEV /* \AMW0.WPCI.TDEV */
                    Local0 <<= 0x03
                    Local0 += TFUN /* \AMW0.WPCI.TFUN */
                    Local0 <<= 0x0C
                    Local0 += TREG /* \AMW0.WPCI.TREG */
                    Local0 += PEBS /* \PEBS */
                    OperationRegion (PCFG, SystemMemory, Local0, 0x04)
                    Field (PCFG, ByteAcc, NoLock, Preserve)
                    {
                        BCFG,   8
                    }

                    Field (PCFG, WordAcc, NoLock, Preserve)
                    {
                        WCFG,   16
                    }

                    Field (PCFG, DWordAcc, NoLock, Preserve)
                    {
                        XCFG,   32
                    }

                    Local0 = Zero
                    Switch (ToInteger (W_SZ))
                    {
                        Case (One)
                        {
                            BCFG = TDAT /* \AMW0.WPCI.TDAT */
                        }
                        Case (0x02)
                        {
                            WCFG = TDAT /* \AMW0.WPCI.TDAT */
                        }
                        Case (0x04)
                        {
                            XCFG = TDAT /* \AMW0.WPCI.TDAT */
                        }
                        Default
                        {
                            Local0 = Ones
                        }

                    }

                    Release (ASMX)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (RIDX, 1, Serialized)
            {
                If ((Acquire (ASMX, 0xFFFF) == Zero))
                {
                    CreateWordField (Arg0, Zero, W_PT)
                    CreateByteField (Arg0, 0x02, W_ID)
                    OperationRegion (TMIO, SystemIO, W_PT, 0x02)
                    Field (TMIO, ByteAcc, NoLock, Preserve)
                    {
                        IDXP,   8, 
                        DATP,   8
                    }

                    IDXP = ToInteger (W_ID)
                    Local0 = DATP /* \AMW0.RIDX.DATP */
                    Release (ASMX)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (WIDX, 1, Serialized)
            {
                If ((Acquire (ASMX, 0xFFFF) == Zero))
                {
                    CreateWordField (Arg0, Zero, W_PT)
                    CreateByteField (Arg0, 0x02, W_ID)
                    CreateByteField (Arg0, 0x03, W_DT)
                    OperationRegion (TMIO, SystemIO, W_PT, 0x02)
                    Field (TMIO, ByteAcc, NoLock, Preserve)
                    {
                        IDXP,   8, 
                        DATP,   8
                    }

                    IDXP = ToInteger (W_ID)
                    DATP = W_DT /* \AMW0.WIDX.W_DT */
                    Release (ASMX)
                    Return (Zero)
                }

                Return (Ones)
            }

            Name (RGBF, Buffer (0x10){})
            CreateDWordField (RGBF, Zero, REAX)
            CreateDWordField (RGBF, 0x04, REBX)
            CreateDWordField (RGBF, 0x08, RECX)
            CreateDWordField (RGBF, 0x0C, REDX)
            Name (MRBF, Buffer (0x08){})
            CreateDWordField (MRBF, Zero, MEDX)
            CreateDWordField (MRBF, 0x04, MEAX)
            Method (RDMR, 1, Serialized)
            {
                If ((Acquire (ASMX, 0xFFFF) == Zero))
                {
                    CreateDWordField (Arg0, Zero, W_ID)
                    RGBF = \_SB.GMSR (W_ID)
                    MEDX = REDX /* \AMW0.REDX */
                    MEAX = REAX /* \AMW0.REAX */
                    Release (ASMX)
                    Return (MRBF) /* \AMW0.MRBF */
                }

                Return (Ones)
            }

            Method (WRMR, 1, Serialized)
            {
                If ((Acquire (ASMX, 0xFFFF) == Zero))
                {
                    CreateDWordField (Arg0, Zero, W_ID)
                    CreateDWordField (Arg0, 0x04, W_HI)
                    CreateDWordField (Arg0, 0x08, W_LW)
                    RECX = W_ID /* \AMW0.WRMR.W_ID */
                    REDX = W_HI /* \AMW0.WRMR.W_HI */
                    REAX = W_LW /* \AMW0.WRMR.W_LW */
                    Local0 = \_SB.SMSR (RGBF)
                    Release (ASMX)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (RCID, 1, Serialized)
            {
                If ((Acquire (ASMX, 0xFFFF) == Zero))
                {
                    CreateDWordField (Arg0, Zero, W_ID)
                    RGBF = \_SB.PRID (W_ID)
                    Release (ASMX)
                    Return (RGBF) /* \AMW0.RGBF */
                }

                Return (Ones)
            }

            Method (RDEC, 1, Serialized)
            {
                Return (Ones)
            }

            Method (WREC, 1, Serialized)
            {
                Return (Ones)
            }

            Method (RSIO, 1, Serialized)
            {
                If ((Acquire (ASMX, 0xFFFF) == Zero))
                {
                    CreateByteField (Arg0, Zero, W_LN)
                    CreateByteField (Arg0, One, W_ID)
                    Local0 = Ones
                    If ((Acquire (\_SB.PCI0.SBRG.SIO1.MUT0, 0xFFFF) == Zero))
                    {
                        \_SB.PCI0.SBRG.SIO1.ENFG (W_LN)
                        \_SB.PCI0.SBRG.SIO1.INDX = W_ID /* \AMW0.RSIO.W_ID */
                        Local0 = \_SB.PCI0.SBRG.SIO1.DATA
                        \_SB.PCI0.SBRG.SIO1.EXFG ()
                    }

                    Release (ASMX)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (WSIO, 1, Serialized)
            {
                If ((Acquire (ASMX, 0xFFFF) == Zero))
                {
                    CreateByteField (Arg0, Zero, W_LN)
                    CreateByteField (Arg0, One, W_ID)
                    CreateByteField (Arg0, 0x02, W_DT)
                    Local0 = Ones
                    If ((Acquire (\_SB.PCI0.SBRG.SIO1.MUT0, 0xFFFF) == Zero))
                    {
                        \_SB.PCI0.SBRG.SIO1.ENFG (W_LN)
                        \_SB.PCI0.SBRG.SIO1.INDX = W_ID /* \AMW0.WSIO.W_ID */
                        \_SB.PCI0.SBRG.SIO1.DATA = W_DT /* \AMW0.WSIO.W_DT */
                        \_SB.PCI0.SBRG.SIO1.EXFG ()
                    }

                    Release (ASMX)
                    Return (Local0)
                }

                Return (Ones)
            }

            OperationRegion (SHWM, SystemIO, IOHW, 0x0A)
            Field (SHWM, ByteAcc, NoLock, Preserve)
            {
                Offset (0x05), 
                HIDX,   8, 
                HDAT,   8
            }

            IndexField (HIDX, HDAT, ByteAcc, Lock, Preserve)
            {
                Offset (0x4E), 
                BANK,   4
            }

            IndexField (\_SB.PCI0.SBRG.SIO1.INDX, \_SB.PCI0.SBRG.SIO1.DATA, ByteAcc, NoLock, Preserve)
            {
                Offset (0x28), 
                    ,   4, 
                HMLK,   1
            }

            Name (LCKS, Zero)
            Method (RHWM, 1, Serialized)
            {
                If ((Acquire (ASMX, 0xFFFF) == Zero))
                {
                    CreateByteField (Arg0, Zero, W_BK)
                    CreateByteField (Arg0, One, W_ID)
                    \_SB.PCI0.SBRG.SIO1.ENFG (0x07)
                    LCKS = HMLK /* \AMW0.HMLK */
                    HMLK = Zero
                    BANK = W_BK /* \AMW0.RHWM.W_BK */
                    HIDX = W_ID /* \AMW0.RHWM.W_ID */
                    Local0 = HDAT /* \AMW0.HDAT */
                    HMLK = LCKS /* \AMW0.LCKS */
                    \_SB.PCI0.SBRG.SIO1.EXFG ()
                    Release (ASMX)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (WHWM, 1, Serialized)
            {
                If ((Acquire (ASMX, 0xFFFF) == Zero))
                {
                    CreateByteField (Arg0, Zero, W_BK)
                    CreateByteField (Arg0, One, W_ID)
                    CreateByteField (Arg0, 0x02, W_DT)
                    \_SB.PCI0.SBRG.SIO1.ENFG (0x07)
                    LCKS = HMLK /* \AMW0.HMLK */
                    HMLK = Zero
                    BANK = W_BK /* \AMW0.WHWM.W_BK */
                    HIDX = W_ID /* \AMW0.WHWM.W_ID */
                    HDAT = W_DT /* \AMW0.WHWM.W_DT */
                    HMLK = LCKS /* \AMW0.LCKS */
                    \_SB.PCI0.SBRG.SIO1.EXFG ()
                    Release (ASMX)
                    Return (Zero)
                }

                Return (Ones)
            }

            Method (ATOH, 1, Serialized)
            {
                Local0 = Ones
                If (((Arg0 >= 0x61) && (Arg0 <= 0x66)))
                {
                    Local0 = (Arg0 - 0x57)
                }

                If (((Arg0 >= 0x41) && (Arg0 <= 0x46)))
                {
                    Local0 = (Arg0 - 0x37)
                }

                If (((Arg0 >= 0x30) && (Arg0 <= 0x39)))
                {
                    Local0 = (Arg0 - 0x30)
                }

                Return (Local0)
            }

            Method (HTOA, 1, Serialized)
            {
                Local0 = Ones
                If (((Arg0 >= Zero) && (Arg0 <= 0x09)))
                {
                    Local0 = (Arg0 + 0x30)
                }

                If (((Arg0 >= 0x0A) && (Arg0 <= 0x0F)))
                {
                    Local0 = (Arg0 - 0x0A)
                    Local0 += 0x41
                }

                Return (Local0)
            }

            Name (STRB, Buffer (0x0100){})
            Name (HEXB, Buffer (0x0100){})
            Method (STOH, 1, Serialized)
            {
                STRB = Arg0
                CreateByteField (Arg0, Zero, DCNT)
                DCNT >>= 0x02
                Local0 = Zero
                While ((Local0 < DCNT))
                {
                    Local1 = ((0x04 * Local0) + 0x02)
                    Local2 = (Local1 + 0x02)
                    Local3 = ATOH (DerefOf (STRB [Local1]))
                    Local3 <<= 0x04
                    Local3 += ATOH (DerefOf (STRB [Local2]))
                    HEXB [Local0] = Local3
                    Local0++
                }

                Return (HEXB) /* \AMW0.HEXB */
            }

            Method (HTOS, 2, Serialized)
            {
                HEXB = Arg0
                STRB [Zero] = (Arg1 << 0x02)
                STRB [One] = Zero
                Local0 = Zero
                While ((Local0 < Arg1))
                {
                    Local3 = DerefOf (HEXB [Local0])
                    Local4 = (Local3 >> 0x04)
                    Local4 &= 0x0F
                    Local3 &= 0x0F
                    Local1 = ((0x04 * Local0) + 0x02)
                    Local2 = (Local1 + 0x02)
                    STRB [Local1] = HTOA (Local4)
                    Local1++
                    STRB [Local1] = Zero
                    STRB [Local2] = HTOA (Local3)
                    Local2++
                    STRB [Local2] = Zero
                    Local0++
                }

                Return (STRB) /* \AMW0.STRB */
            }

            Name (IDBF, Buffer (0x60){})
            Name (OSBF, Buffer (0x82){})
            Name (ODBF, Buffer (0x20){})
            Name (B_CT, Zero)
            Name (B_BK, Zero)
            Name (B_ID, Zero)
            Name (B_DT, Zero)
            Method (BRIO, 1, Serialized)
            {
                CreateByteField (Arg0, Zero, WLEN)
                B_CT = (WLEN >> 0x02)
                If ((B_CT > 0x20))
                {
                    Return (Ones)
                }

                If ((Acquire (ASMX, 0xFFFF) == Zero))
                {
                    IDBF = STOH (Arg0)
                    \_SB.PCI0.SBRG.SIO1.ENFG (0x07)
                    Local0 = Zero
                    Local1 = Zero
                    While ((Local0 < B_CT))
                    {
                        B_BK = DerefOf (IDBF [Local0])
                        Local0++
                        B_ID = DerefOf (IDBF [Local0])
                        Local0++
                        \_SB.PCI0.SBRG.SIO1.LDN = B_BK /* \AMW0.B_BK */
                        \_SB.PCI0.SBRG.SIO1.INDX = B_ID /* \AMW0.B_ID */
                        ODBF [Local1] = \_SB.PCI0.SBRG.SIO1.DATA
                        Local1++
                    }

                    \_SB.PCI0.SBRG.SIO1.EXFG ()
                    OSBF = HTOS (ODBF, Local1)
                    Release (ASMX)
                    Return (OSBF) /* \AMW0.OSBF */
                }

                Return (Ones)
            }

            Method (BWIO, 1, Serialized)
            {
                CreateByteField (Arg0, Zero, WLEN)
                B_CT = (WLEN >> 0x02)
                If ((B_CT > 0x20))
                {
                    Return (Ones)
                }

                If ((Acquire (ASMX, 0xFFFF) == Zero))
                {
                    IDBF = STOH (Arg0)
                    \_SB.PCI0.SBRG.SIO1.ENFG (0x07)
                    Local0 = Zero
                    While ((Local0 < B_CT))
                    {
                        B_BK = DerefOf (IDBF [Local0])
                        Local0++
                        B_ID = DerefOf (IDBF [Local0])
                        Local0++
                        B_DT = DerefOf (IDBF [Local0])
                        Local0++
                        \_SB.PCI0.SBRG.SIO1.LDN = B_BK /* \AMW0.B_BK */
                        \_SB.PCI0.SBRG.SIO1.INDX = B_ID /* \AMW0.B_ID */
                        \_SB.PCI0.SBRG.SIO1.DATA = B_DT /* \AMW0.B_DT */
                    }

                    \_SB.PCI0.SBRG.SIO1.EXFG ()
                    Release (ASMX)
                    Return (Zero)
                }

                Return (Ones)
            }

            Method (BRHM, 1, Serialized)
            {
                CreateByteField (Arg0, Zero, WLEN)
                B_CT = (WLEN >> 0x02)
                If ((B_CT > 0x20))
                {
                    Return (Ones)
                }

                If ((Acquire (ASMX, 0xFFFF) == Zero))
                {
                    IDBF = STOH (Arg0)
                    \_SB.PCI0.SBRG.SIO1.ENFG (0x07)
                    LCKS = HMLK /* \AMW0.HMLK */
                    HMLK = Zero
                    Local0 = Zero
                    Local1 = Zero
                    While ((Local0 < B_CT))
                    {
                        B_BK = DerefOf (IDBF [Local0])
                        Local0++
                        B_ID = DerefOf (IDBF [Local0])
                        Local0++
                        BANK = B_BK /* \AMW0.B_BK */
                        HIDX = B_ID /* \AMW0.B_ID */
                        ODBF [Local1] = HDAT /* \AMW0.HDAT */
                        Local1++
                    }

                    HMLK = LCKS /* \AMW0.LCKS */
                    \_SB.PCI0.SBRG.SIO1.EXFG ()
                    OSBF = HTOS (ODBF, Local1)
                    Release (ASMX)
                    Return (OSBF) /* \AMW0.OSBF */
                }

                Return (Ones)
            }

            Method (BWHM, 1, Serialized)
            {
                CreateByteField (Arg0, Zero, WLEN)
                B_CT = (WLEN >> 0x02)
                If ((B_CT > 0x20))
                {
                    Return (Ones)
                }

                If ((Acquire (ASMX, 0xFFFF) == Zero))
                {
                    IDBF = STOH (Arg0)
                    \_SB.PCI0.SBRG.SIO1.ENFG (0x07)
                    LCKS = HMLK /* \AMW0.HMLK */
                    HMLK = Zero
                    Local0 = Zero
                    While ((Local0 < B_CT))
                    {
                        B_BK = DerefOf (IDBF [Local0])
                        Local0++
                        B_ID = DerefOf (IDBF [Local0])
                        Local0++
                        B_DT = DerefOf (IDBF [Local0])
                        Local0++
                        BANK = B_BK /* \AMW0.B_BK */
                        HIDX = B_ID /* \AMW0.B_ID */
                        HDAT = B_DT /* \AMW0.B_DT */
                    }

                    HMLK = LCKS /* \AMW0.LCKS */
                    \_SB.PCI0.SBRG.SIO1.EXFG ()
                    Release (ASMX)
                    Return (Zero)
                }

                Return (Ones)
            }

            Name (ECBK, Zero)
            Method (BREC, 1, Serialized)
            {
                Return (Ones)
            }

            Method (BWEC, 1, Serialized)
            {
                Return (Ones)
            }

            Method (WMBD, 3, Serialized)
            {
                Local0 = One
                Switch (Arg1)
                {
                    Case (0x424D5352)
                    {
                        Return (RSMB (Arg2))
                    }
                    Case (0x424D5357)
                    {
                        Return (WSMB (Arg2))
                    }
                    Case (0x574D5352)
                    {
                        Return (RSMW (Arg2))
                    }
                    Case (0x574D5357)
                    {
                        Return (WSMW (Arg2))
                    }
                    Case (0x4B4D5352)
                    {
                        Return (RSMK (Arg2))
                    }
                    Case (0x4B4D5357)
                    {
                        Return (WSMK (Arg2))
                    }
                    Case (0x52494F42)
                    {
                        Return (RIOB (Arg2))
                    }
                    Case (0x57494F42)
                    {
                        Return (WIOB (Arg2))
                    }
                    Case (0x52494F57)
                    {
                        Return (RIOW (Arg2))
                    }
                    Case (0x57494F57)
                    {
                        Return (WIOW (Arg2))
                    }
                    Case (0x52494F44)
                    {
                        Return (RIOD (Arg2))
                    }
                    Case (0x57494F44)
                    {
                        Return (WIOD (Arg2))
                    }
                    Case (0x52504349)
                    {
                        Return (RPCI (Arg2))
                    }
                    Case (0x57504349)
                    {
                        Return (WPCI (Arg2))
                    }
                    Case (0x52494458)
                    {
                        Return (RIDX (Arg2))
                    }
                    Case (0x57494458)
                    {
                        Return (WIDX (Arg2))
                    }
                    Case (0x52444D52)
                    {
                        Return (RDMR (Arg2))
                    }
                    Case (0x57524D52)
                    {
                        Return (WRMR (Arg2))
                    }
                    Case (0x52434944)
                    {
                        Return (RCID (Arg2))
                    }
                    Case (0x52444543)
                    {
                        Return (RDEC (Arg2))
                    }
                    Case (0x57524543)
                    {
                        Return (WREC (Arg2))
                    }
                    Case (0x5253494F)
                    {
                        Return (RSIO (Arg2))
                    }
                    Case (0x5753494F)
                    {
                        Return (WSIO (Arg2))
                    }
                    Case (0x5248574D)
                    {
                        Return (RHWM (Arg2))
                    }
                    Case (0x5748574D)
                    {
                        Return (WHWM (Arg2))
                    }
                    Case (0x4252494F)
                    {
                        Return (BRIO (Arg2))
                    }
                    Case (0x4257494F)
                    {
                        Return (BWIO (Arg2))
                    }
                    Case (0x4252484D)
                    {
                        Return (BRHM (Arg2))
                    }
                    Case (0x4257484D)
                    {
                        Return (BWHM (Arg2))
                    }
                    Case (0x42524543)
                    {
                        Return (BREC (Arg2))
                    }
                    Case (0x42574543)
                    {
                        Return (BWEC (Arg2))
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }

                Return (Local0)
            }

            Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event, xx=0x00-0xFF
            {
                If ((Arg0 == 0xD2))
                {
                    Return (EID2) /* \AMW0.EID2 */
                }

                Return (Zero)
            }

            Method (AMWR, 1, Serialized)
            {
                Local1 = Zero
                If (ECD2)
                {
                    EID2 = Arg0
                    Notify (AMW0, 0xD2) // Hardware-Specific
                    Local1 = One
                }
                Else
                {
                }

                Return (Local1)
            }

            Method (AMWN, 1, Serialized)
            {
                Local0 = AMWR (Arg0)
                Return (Local0)
            }

            Name (WQMO, Buffer (0x1BD3)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                /* 0008 */  0xC3, 0x1B, 0x00, 0x00, 0x60, 0xD4, 0x00, 0x00,  // ....`...
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                /* 0018 */  0x28, 0x39, 0xA4, 0x00, 0x01, 0x06, 0x18, 0x42,  // (9.....B
                /* 0020 */  0x10, 0x07, 0x10, 0x0A, 0x2A, 0x9A, 0x42, 0x04,  // ....*.B.
                /* 0028 */  0x0A, 0x0D, 0xA1, 0x38, 0x0A, 0x60, 0x30, 0x12,  // ...8.`0.
                /* 0030 */  0x20, 0x24, 0x07, 0x42, 0x2E, 0x98, 0x98, 0x00,  //  $.B....
                /* 0038 */  0x11, 0x10, 0xF2, 0x2A, 0xC0, 0xA6, 0x00, 0x93,  // ...*....
                /* 0040 */  0x20, 0xEA, 0xDF, 0x1F, 0xA2, 0x24, 0x38, 0x94,  //  ....$8.
                /* 0048 */  0x10, 0x08, 0x49, 0x14, 0x60, 0x5E, 0x80, 0x6E,  // ..I.`^.n
                /* 0050 */  0x01, 0x86, 0x05, 0xD8, 0x16, 0x60, 0x5A, 0x80,  // .....`Z.
                /* 0058 */  0x63, 0x48, 0x2A, 0x0D, 0x9C, 0x12, 0x58, 0x0A,  // cH*...X.
                /* 0060 */  0x84, 0x84, 0x0A, 0x50, 0x2E, 0xC0, 0xB7, 0x00,  // ...P....
                /* 0068 */  0xED, 0x88, 0x92, 0x2C, 0xC0, 0x32, 0x8C, 0x08,  // ...,.2..
                /* 0070 */  0x3C, 0x8A, 0xC8, 0x46, 0xE3, 0x04, 0x65, 0x43,  // <..F..eC
                /* 0078 */  0xA3, 0x64, 0x40, 0xC8, 0xB3, 0x00, 0xEB, 0xC0,  // .d@.....
                /* 0080 */  0x84, 0xC0, 0xEE, 0x05, 0x98, 0x13, 0xE0, 0x4D,  // .......M
                /* 0088 */  0x80, 0xB8, 0x61, 0xC8, 0xDA, 0x00, 0x04, 0x55,  // ..a....U
                /* 0090 */  0x98, 0x00, 0x5B, 0x30, 0x42, 0xA9, 0x0D, 0x46,  // ..[0B..F
                /* 0098 */  0x28, 0x8D, 0x21, 0x68, 0x18, 0x46, 0x89, 0x78,  // (.!h.F.x
                /* 00A0 */  0x48, 0x9D, 0xC1, 0x0A, 0x25, 0x62, 0x98, 0x10,  // H...%b..
                /* 00A8 */  0x11, 0x2A, 0xC3, 0x20, 0xC3, 0x0A, 0x15, 0x2D,  // .*. ...-
                /* 00B0 */  0x6E, 0x84, 0xF6, 0x07, 0x41, 0xA2, 0xAD, 0x58,  // n...A..X
                /* 00B8 */  0x43, 0x75, 0xA4, 0xD1, 0xA0, 0x86, 0x97, 0xE0,  // Cu......
                /* 00C0 */  0x70, 0x3D, 0xD4, 0x73, 0xEC, 0x5C, 0x80, 0x74,  // p=.s.\.t
                /* 00C8 */  0x60, 0x81, 0x04, 0x3F, 0x8B, 0x3A, 0xC7, 0x49,  // `..?.:.I
                /* 00D0 */  0x40, 0x12, 0x18, 0xEB, 0xF8, 0xD9, 0xC0, 0xF1,  // @.......
                /* 00D8 */  0xAE, 0x01, 0x35, 0xE3, 0xE3, 0x65, 0x82, 0xE0,  // ..5..e..
                /* 00E0 */  0x50, 0x43, 0xF4, 0x40, 0xC3, 0x9D, 0xC0, 0x21,  // PC.@...!
                /* 00E8 */  0x32, 0x40, 0xCF, 0xE9, 0x68, 0x30, 0x07, 0x00,  // 2@..h0..
                /* 00F0 */  0x3B, 0x9C, 0x8C, 0xEE, 0x01, 0xA5, 0x0A, 0x30,  // ;......0
                /* 00F8 */  0x3B, 0x66, 0x59, 0x04, 0xD2, 0x78, 0x0C, 0x7D,  // ;fY..x.}
                /* 0100 */  0xBA, 0xE7, 0x73, 0xC2, 0x09, 0x2C, 0x7F, 0x10,  // ..s..,..
                /* 0108 */  0xA8, 0x91, 0x19, 0xDA, 0x06, 0xA7, 0x25, 0xCC,  // ......%.
                /* 0110 */  0x90, 0x87, 0x7F, 0x58, 0x4C, 0x2C, 0x84, 0x3E,  // ...XL,.>
                /* 0118 */  0x08, 0x1E, 0x0F, 0xBC, 0xFF, 0xFF, 0x78, 0xC0,  // ......x.
                /* 0120 */  0xA3, 0xF8, 0x4C, 0x20, 0x84, 0x57, 0x82, 0xD8,  // ..L .W..
                /* 0128 */  0x1E, 0xD0, 0x73, 0x82, 0x81, 0xB1, 0x03, 0xB2,  // ..s.....
                /* 0130 */  0x5F, 0x01, 0x08, 0xC1, 0xCB, 0x1C, 0x91, 0x9C,  // _.......
                /* 0138 */  0x22, 0x68, 0x4C, 0xC6, 0x68, 0x15, 0x42, 0x43,  // "hL.h.BC
                /* 0140 */  0x08, 0x6D, 0x88, 0xB3, 0x8B, 0x7F, 0xF0, 0x86,  // .m......
                /* 0148 */  0x39, 0x77, 0x13, 0x14, 0x39, 0x02, 0x94, 0x98,  // 9w..9...
                /* 0150 */  0x11, 0xA0, 0x8E, 0x01, 0xD1, 0x43, 0x9F, 0x4D,  // .....C.M
                /* 0158 */  0xF4, 0xE3, 0x89, 0x72, 0x12, 0x07, 0xE4, 0x33,  // ...r...3
                /* 0160 */  0x83, 0x11, 0x82, 0x97, 0x7B, 0x48, 0x20, 0x9A,  // ....{H .
                /* 0168 */  0xE7, 0xA0, 0x13, 0xC3, 0x39, 0x1D, 0x02, 0x13,  // ....9...
                /* 0170 */  0xC4, 0xF3, 0x3C, 0x41, 0xA2, 0x2C, 0x55, 0x36,  // ..<A.,U6
                /* 0178 */  0x96, 0xEA, 0x41, 0x50, 0x41, 0x40, 0x9A, 0xBB,  // ..APA@..
                /* 0180 */  0x21, 0x4E, 0xDA, 0xC8, 0x81, 0x63, 0x54, 0x3F,  // !N...cT?
                /* 0188 */  0x6C, 0x2A, 0x02, 0x4E, 0x87, 0x0D, 0x8F, 0xDB,  // l*.N....
                /* 0190 */  0xF1, 0x49, 0x14, 0x7D, 0x40, 0x14, 0xCE, 0x61,  // .I.}@..a
                /* 0198 */  0xCF, 0x1C, 0x14, 0xC4, 0x80, 0x4E, 0x02, 0x21,  // .....N.!
                /* 01A0 */  0x27, 0x47, 0x01, 0x94, 0x96, 0x71, 0x92, 0x71,  // 'G...q.q
                /* 01A8 */  0x9D, 0xDA, 0x9B, 0x80, 0xA7, 0xF5, 0x58, 0x70,  // ......Xp
                /* 01B0 */  0x18, 0xC7, 0x75, 0xD6, 0x7E, 0x7E, 0xF8, 0xC6,  // ..u.~~..
                /* 01B8 */  0xE0, 0xF9, 0xF8, 0x2E, 0xC0, 0x35, 0x40, 0x68,  // .....5@h
                /* 01C0 */  0x46, 0x86, 0xB7, 0x1A, 0x40, 0x0A, 0xC6, 0x4F,  // F...@..O
                /* 01C8 */  0x02, 0x8F, 0x00, 0x26, 0xB0, 0xAE, 0x03, 0x01,  // ...&....
                /* 01D0 */  0xF4, 0xCB, 0x86, 0x87, 0xEF, 0x13, 0xC6, 0xE3,  // ........
                /* 01D8 */  0x45, 0x82, 0xFA, 0xEE, 0x03, 0xA0, 0x00, 0xF2,  // E.......
                /* 01E0 */  0x01, 0xC0, 0x4A, 0xEF, 0x00, 0x74, 0x0C, 0x21,  // ..J..t.!
                /* 01E8 */  0xC2, 0x44, 0x33, 0x3A, 0x97, 0xB0, 0x52, 0xFD,  // .D3:..R.
                /* 01F0 */  0xFF, 0x47, 0xCB, 0x0F, 0x2A, 0x1E, 0xAD, 0x41,  // .G..*..A
                /* 01F8 */  0x3C, 0x5A, 0x07, 0x1A, 0x2D, 0xFA, 0x98, 0x61,  // <Z..-..a
                /* 0200 */  0x85, 0xA3, 0x92, 0xCF, 0x09, 0x68, 0xB8, 0x30,  // .....h.0
                /* 0208 */  0x08, 0x0A, 0x3F, 0x70, 0x40, 0x03, 0x3C, 0xBD,  // ..?p@.<.
                /* 0210 */  0x37, 0x03, 0xCF, 0xC4, 0x70, 0x9E, 0x2F, 0x87,  // 7...p./.
                /* 0218 */  0xF3, 0x7C, 0xF9, 0x70, 0x7C, 0xA0, 0x80, 0x3F,  // .|.p|..?
                /* 0220 */  0x60, 0x2C, 0x41, 0x81, 0x13, 0x06, 0x39, 0x3C,  // `,A...9<
                /* 0228 */  0x46, 0xF0, 0x60, 0xA9, 0xAC, 0x71, 0xA1, 0xEE,  // F.`..q..
                /* 0230 */  0x07, 0x3E, 0xD1, 0x30, 0xEC, 0x43, 0x3D, 0x9A,  // .>.0.C=.
                /* 0238 */  0xB7, 0x84, 0x33, 0x7C, 0x9B, 0x38, 0xA8, 0x77,  // ..3|.8.w
                /* 0240 */  0x0F, 0x3B, 0x15, 0x6A, 0xD1, 0x21, 0xAC, 0x47,  // .;.j.!.G
                /* 0248 */  0xCA, 0x61, 0x8D, 0x16, 0xF6, 0x80, 0x9F, 0x3B,  // .a.....;
                /* 0250 */  0x7C, 0xCF, 0xE0, 0x57, 0x1A, 0x1F, 0x43, 0xE8,  // |..W..C.
                /* 0258 */  0x2A, 0x74, 0xAA, 0xE0, 0xA2, 0x20, 0x14, 0x6F,  // *t... .o
                /* 0260 */  0x2D, 0x1A, 0xFE, 0x59, 0x78, 0x5C, 0xAF, 0x18,  // -..Yx\..
                /* 0268 */  0xBE, 0x02, 0x3C, 0x9C, 0xF8, 0x0C, 0x10, 0x3F,  // ..<....?
                /* 0270 */  0xD0, 0x11, 0xBC, 0x88, 0xF8, 0xEC, 0xE3, 0xCB,  // ........
                /* 0278 */  0x8B, 0x0F, 0x19, 0xEC, 0x64, 0xC1, 0x43, 0x50,  // ....d.CP
                /* 0280 */  0x28, 0xC6, 0xE1, 0x00, 0x25, 0x1C, 0x46, 0x70,  // (...%.Fp
                /* 0288 */  0x06, 0xF1, 0xF0, 0x1C, 0xE4, 0x70, 0x80, 0x3E,  // .....p.>
                /* 0290 */  0x07, 0x79, 0x20, 0x6C, 0x10, 0x06, 0x39, 0x8F,  // .y l..9.
                /* 0298 */  0x97, 0x1F, 0x76, 0xB1, 0xC0, 0xFF, 0xFF, 0x2F,  // ..v..../
                /* 02A0 */  0x16, 0xC0, 0x2B, 0xCD, 0xA0, 0xD0, 0x7A, 0x06,  // ..+...z.
                /* 02A8 */  0x05, 0x01, 0xE3, 0xF9, 0xC1, 0xE3, 0xF5, 0x6C,  // .......l
                /* 02B0 */  0x3D, 0x2D, 0xF0, 0x8E, 0xD8, 0xE7, 0x0F, 0xE0,  // =-......
                /* 02B8 */  0x1C, 0xFE, 0xF0, 0x82, 0x8A, 0x3B, 0x24, 0x0A,  // .....;$.
                /* 02C0 */  0xE2, 0xB3, 0x81, 0xA3, 0x8C, 0x17, 0x3D, 0x13,  // ......=.
                /* 02C8 */  0x1F, 0x86, 0x7C, 0x5C, 0x78, 0xBA, 0xC1, 0x1C,  // ..|\x...
                /* 02D0 */  0x3E, 0xC0, 0x3D, 0x12, 0x1F, 0x3E, 0x80, 0xC7,  // >.=..>..
                /* 02D8 */  0xFF, 0xFF, 0xF0, 0x01, 0xFC, 0x24, 0x5A, 0xD4,  // .....$Z.
                /* 02E0 */  0x2A, 0xF4, 0xF0, 0x01, 0xAE, 0x20, 0x27, 0x24,  // *.... '$
                /* 02E8 */  0xB4, 0x9C, 0xC3, 0x07, 0x72, 0x22, 0x61, 0xA2,  // ....r"a.
                /* 02F0 */  0xFB, 0x8C, 0xF4, 0xE2, 0x61, 0x09, 0x07, 0x0F,  // ....a...
                /* 02F8 */  0x54, 0x78, 0x12, 0xC5, 0x3F, 0x15, 0xA0, 0x02,  // Tx..?...
                /* 0300 */  0x9F, 0x0A, 0x28, 0x88, 0x01, 0x7D, 0xA8, 0x80,  // ..(..}..
                /* 0308 */  0x33, 0x83, 0x67, 0x2F, 0xCC, 0x3C, 0x60, 0x9C,  // 3.g/.<`.
                /* 0310 */  0x91, 0x00, 0x5B, 0x87, 0x0A, 0xF0, 0xFE, 0xFF,  // ..[.....
                /* 0318 */  0x0F, 0x15, 0xC0, 0xE1, 0x80, 0x04, 0xC8, 0x92,  // ........
                /* 0320 */  0x78, 0x41, 0x7A, 0xA8, 0x00, 0xD7, 0x81, 0xD3,  // xAz.....
                /* 0328 */  0x87, 0x0A, 0x7E, 0x92, 0xB3, 0x28, 0x20, 0x1D,  // ..~..( .
                /* 0330 */  0xF1, 0x7C, 0xA8, 0x80, 0x71, 0x11, 0x32, 0xFC,  // .|..q.2.
                /* 0338 */  0x2F, 0xDD, 0xB1, 0x3C, 0x87, 0x91, 0x73, 0x05,  // /..<..s.
                /* 0340 */  0x3A, 0xF6, 0xC1, 0x00, 0x15, 0x74, 0xF4, 0x14,  // :....t..
                /* 0348 */  0xC4, 0x80, 0x4E, 0x71, 0x30, 0x40, 0xEB, 0x38,  // ..Nq0@.8
                /* 0350 */  0x57, 0xA0, 0x8E, 0x71, 0xC0, 0xEF, 0xFF, 0x7F,  // W..q....
                /* 0358 */  0xA6, 0x00, 0x4E, 0x22, 0x8E, 0x56, 0xA8, 0xE1,  // ..N".V..
                /* 0360 */  0x7A, 0xAC, 0x06, 0xF1, 0x58, 0x7D, 0x0C, 0xF5,  // z...X}..
                /* 0368 */  0x58, 0x71, 0xDF, 0x00, 0x1F, 0x01, 0xF0, 0x47,  // Xq.....G
                /* 0370 */  0x27, 0x1C, 0xD8, 0x73, 0x05, 0x60, 0xDA, 0xE3,  // '..s.`..
                /* 0378 */  0xB9, 0x02, 0x74, 0xD2, 0xCE, 0x3E, 0xE8, 0x80,  // ..t..>..
                /* 0380 */  0x6B, 0xD5, 0x49, 0x0C, 0x7F, 0x8E, 0x63, 0x04,  // k.I...c.
                /* 0388 */  0x43, 0x1D, 0xDE, 0x28, 0x84, 0xE3, 0x50, 0x28,  // C..(..P(
                /* 0390 */  0xCC, 0xC9, 0x80, 0xFE, 0xFF, 0x8F, 0xB0, 0x04,  // ........
                /* 0398 */  0x8E, 0x82, 0x78, 0x68, 0x0E, 0x73, 0x86, 0x03,  // ..xh.s..
                /* 03A0 */  0xCD, 0xB1, 0x00, 0xDE, 0xAD, 0x82, 0x1D, 0x0B,  // ........
                /* 03A8 */  0x60, 0x13, 0xF8, 0x58, 0x00, 0xBE, 0x38, 0xC3,  // `..X..8.
                /* 03B0 */  0x42, 0x8F, 0xD6, 0xF7, 0x3F, 0xDC, 0xFD, 0x21,  // B...?..!
                /* 03B8 */  0xCA, 0x4B, 0xB1, 0x0F, 0x39, 0x70, 0xC7, 0x05,  // .K..9p..
                /* 03C0 */  0x8E, 0xD3, 0x03, 0xE0, 0xEA, 0x20, 0x26, 0xA7,  // ..... &.
                /* 03C8 */  0xA7, 0x07, 0x70, 0x25, 0x39, 0x3D, 0xA0, 0x06,  // ..p%9=..
                /* 03D0 */  0xEC, 0xFF, 0xBF, 0x1E, 0x20, 0x9D, 0x13, 0xB0,  // .... ...
                /* 03D8 */  0x17, 0x6D, 0x06, 0x71, 0xA2, 0xCF, 0x23, 0x56,  // .m.q..#V
                /* 03E0 */  0x70, 0xC4, 0x41, 0x65, 0x27, 0x51, 0xF2, 0x23,  // p.Ae'Q.#
                /* 03E8 */  0x0E, 0x2A, 0xEB, 0xD8, 0x29, 0x88, 0x01, 0x7D,  // .*..)..}
                /* 03F0 */  0xA2, 0x04, 0x7C, 0xDC, 0x71, 0x80, 0xC5, 0x46,  // ..|.q..F
                /* 03F8 */  0x3D, 0x59, 0x1E, 0x79, 0xB2, 0x14, 0xC4, 0x93,  // =Y.y....
                /* 0400 */  0xF5, 0xA5, 0x02, 0x38, 0xDC, 0x70, 0x80, 0xFD,  // ...8.p..
                /* 0408 */  0xFF, 0xFF, 0x52, 0x01, 0x94, 0x1C, 0x4A, 0xBD,  // ..R...J.
                /* 0410 */  0x54, 0x80, 0x4C, 0xDE, 0x0D, 0x07, 0x1D, 0x72,  // T.L....r
                /* 0418 */  0xAD, 0xBA, 0xD7, 0xB1, 0x63, 0xAB, 0xC7, 0xED,  // ....c...
                /* 0420 */  0x9B, 0x34, 0x26, 0xD8, 0x0D, 0x07, 0x15, 0x89,  // .4&.....
                /* 0428 */  0x42, 0x81, 0xCE, 0x05, 0xA8, 0x08, 0x70, 0x14,  // B.....p.
                /* 0430 */  0xC4, 0x43, 0xF3, 0xB9, 0xC0, 0x4A, 0xCE, 0x05,  // .C...J..
                /* 0438 */  0x68, 0xEF, 0x17, 0x0A, 0x32, 0x38, 0xDF, 0x0B,  // h...28..
                /* 0440 */  0x0C, 0x53, 0xFC, 0x50, 0x74, 0xEF, 0xF1, 0xB9,  // .S.Pt...
                /* 0448 */  0x00, 0xDC, 0x57, 0x1C, 0x70, 0x19, 0x13, 0xA0,  // ..W.p...
                /* 0450 */  0x0D, 0x92, 0xDC, 0xC3, 0x3D, 0x2E, 0xDC, 0x38,  // ....=..8
                /* 0458 */  0x3C, 0xAA, 0x63, 0x8A, 0xF9, 0x1C, 0x17, 0xE4,  // <.c.....
                /* 0460 */  0x39, 0xCE, 0xF3, 0xC2, 0x9D, 0x1F, 0x80, 0xDB,  // 9.......
                /* 0468 */  0xFF, 0x7F, 0x60, 0xB0, 0x2E, 0x5C, 0x40, 0x5C,  // ..`..\@\
                /* 0470 */  0xA8, 0x49, 0x89, 0xE7, 0x07, 0x70, 0xDD, 0xBA,  // .I...p..
                /* 0478 */  0x7D, 0x2F, 0xC4, 0x49, 0xB9, 0xBB, 0xA2, 0x30,  // }/.I...0
                /* 0480 */  0x5E, 0x49, 0x62, 0xF8, 0x9E, 0x6A, 0x6C, 0xC3,  // ^Ib..jl.
                /* 0488 */  0x1C, 0xC0, 0xA9, 0x18, 0x27, 0xC1, 0xE0, 0x67,  // ....'..g
                /* 0490 */  0x07, 0x3A, 0x2E, 0x47, 0x26, 0xD1, 0x6D, 0xDF,  // .:.G&.m.
                /* 0498 */  0x47, 0x08, 0x1E, 0x73, 0xF4, 0x14, 0xC4, 0x80,  // G..s....
                /* 04A0 */  0xCE, 0x70, 0x52, 0x41, 0xAB, 0x00, 0xD1, 0x14,  // .pRA....
                /* 04A8 */  0x30, 0x37, 0x57, 0xC0, 0xDF, 0xFF, 0xFF, 0xE6,  // 07W.....
                /* 04B0 */  0x0A, 0xB0, 0xC2, 0xA5, 0x42, 0x8D, 0x52, 0x8F,  // ....B.R.
                /* 04B8 */  0x14, 0xE0, 0xBA, 0x03, 0xFA, 0x16, 0x86, 0x93,  // ........
                /* 04C0 */  0x04, 0xA4, 0x2B, 0xEB, 0x69, 0x3C, 0x00, 0xF8,  // ..+.i<..
                /* 04C8 */  0x4A, 0x01, 0xE3, 0xE2, 0xC9, 0x8E, 0x38, 0xFC,  // J.....8.
                /* 04D0 */  0x76, 0xED, 0x63, 0x01, 0x30, 0xFF, 0xFF, 0x5F,  // v.c.0.._
                /* 04D8 */  0x09, 0xC1, 0x7A, 0x2C, 0x00, 0xDE, 0x22, 0x5D,  // ..z,.."]
                /* 04E0 */  0x5A, 0x34, 0x7B, 0x3F, 0x06, 0xD9, 0xB1, 0x00,  // Z4{?....
                /* 04E8 */  0x2D, 0x0A, 0x48, 0x1E, 0x67, 0x41, 0x86, 0xF6,  // -.H.gA..
                /* 04F0 */  0x58, 0xF6, 0xAA, 0xE7, 0x51, 0x3D, 0x03, 0x44,  // X...Q=.D
                /* 04F8 */  0x38, 0x91, 0x10, 0x09, 0x2C, 0xE3, 0x58, 0x80,  // 8...,.X.
                /* 0500 */  0xA2, 0xF0, 0x25, 0x1E, 0xEE, 0xCD, 0x13, 0xCE,  // ..%.....
                /* 0508 */  0x1C, 0x30, 0x53, 0x7E, 0x71, 0xE1, 0xE7, 0x02,  // .0S~q...
                /* 0510 */  0xC0, 0xCE, 0xFF, 0xFF, 0x5C, 0x00, 0x4C, 0x94,  // ....\.L.
                /* 0518 */  0x2A, 0xB5, 0x28, 0xF3, 0x7E, 0x0B, 0xDE, 0x01,  // *.(.~...
                /* 0520 */  0xFB, 0x7E, 0xEB, 0x73, 0x01, 0x53, 0x38, 0x0B,  // .~.s.S8.
                /* 0528 */  0x21, 0x04, 0xE9, 0xF3, 0x08, 0xA0, 0x13, 0x80,  // !.......
                /* 0530 */  0xCF, 0x05, 0xEC, 0xB0, 0xE6, 0x73, 0x01, 0x3F,  // .....s.?
                /* 0538 */  0x8C, 0x38, 0xCA, 0x79, 0x0D, 0x25, 0x1E, 0x8E,  // .8.y.%..
                /* 0540 */  0x82, 0xF8, 0x82, 0x0B, 0xEF, 0x5C, 0x00, 0x38,  // .....\.8
                /* 0548 */  0x18, 0x96, 0x81, 0xF9, 0xB0, 0xF8, 0x5C, 0xE1,  // ......\.
                /* 0550 */  0x1C, 0x85, 0x80, 0xDF, 0x55, 0xE1, 0xC9, 0xD2,  // ....U...
                /* 0558 */  0xE3, 0xF2, 0xFF, 0xFF, 0x30, 0xF7, 0xEC, 0x08,  // ....0...
                /* 0560 */  0xE4, 0x7D, 0x2A, 0xF4, 0x78, 0x7A, 0x00, 0x57,  // .}*.xz.W
                /* 0568 */  0x8E, 0xD3, 0x03, 0x5A, 0x0D, 0x90, 0x26, 0xF4,  // ...Z..&.
                /* 0570 */  0xF4, 0x00, 0x33, 0xFF, 0x51, 0x0D, 0x95, 0xFC,  // ..3.Q...
                /* 0578 */  0x7E, 0x0B, 0x8A, 0x73, 0x01, 0x38, 0x2E, 0x6B,  // ~..s.8.k
                /* 0580 */  0xC0, 0xEC, 0x56, 0x80, 0xBD, 0xAC, 0x01, 0x8B,  // ..V.....
                /* 0588 */  0x0B, 0x0E, 0xFC, 0xFF, 0xFF, 0xCD, 0x03, 0xF8,  // ........
                /* 0590 */  0x5D, 0x6F, 0x01, 0x59, 0x77, 0x8A, 0xD7, 0x5B,  // ]o.Yw..[
                /* 0598 */  0x90, 0x49, 0x5B, 0x85, 0xEE, 0x93, 0xB8, 0x80,  // .I[.....
                /* 05A0 */  0x6B, 0xD1, 0x05, 0x07, 0x0F, 0xFF, 0x80, 0xCB,  // k.......
                /* 05A8 */  0x75, 0x5E, 0x99, 0xC9, 0x21, 0xC0, 0x71, 0x4E,  // u^..!.qN
                /* 05B0 */  0xE1, 0xA8, 0x20, 0x14, 0x8A, 0x7D, 0x32, 0x40,  // .. ..}2@
                /* 05B8 */  0x05, 0x1D, 0x3D, 0x05, 0x31, 0xA0, 0x53, 0x5C,  // ..=.1.S\
                /* 05C0 */  0x5D, 0xD1, 0x3A, 0x6E, 0x5C, 0x9E, 0x82, 0x06,  // ].:n\...
                /* 05C8 */  0x71, 0x46, 0x67, 0xE5, 0x43, 0x05, 0xF8, 0xFF,  // qFg.C...
                /* 05D0 */  0xFF, 0xB7, 0x56, 0x30, 0x1D, 0x2A, 0x80, 0xC5,  // ..V0.*..
                /* 05D8 */  0xE5, 0x18, 0xEE, 0xA1, 0x02, 0xF0, 0x12, 0xE9,  // ........
                /* 05E0 */  0xDA, 0x82, 0xFE, 0x2C, 0xF8, 0xA2, 0x00, 0x7B,  // ...,...{
                /* 05E8 */  0x64, 0x60, 0x3F, 0x2E, 0xF8, 0x82, 0x04, 0x3C,  // d`?....<
                /* 05F0 */  0xFF, 0xFF, 0xA7, 0x0F, 0xF0, 0xEB, 0xBC, 0x20,  // ....... 
                /* 05F8 */  0x81, 0x4E, 0xDB, 0xE9, 0x03, 0x9D, 0xF0, 0x82,  // .N......
                /* 0600 */  0x84, 0x18, 0x55, 0xC8, 0x23, 0x31, 0xF0, 0x91,  // ..U.#1..
                /* 0608 */  0x3D, 0x17, 0x1A, 0xE1, 0xDD, 0xFC, 0x71, 0xC1,  // =.....q.
                /* 0610 */  0xE8, 0x26, 0x98, 0xE7, 0xF4, 0x81, 0x4A, 0x42,  // .&....JB
                /* 0618 */  0xA1, 0x24, 0x47, 0x08, 0x94, 0xF6, 0x23, 0x04,  // .$G...#.
                /* 0620 */  0x05, 0xF1, 0x75, 0x9D, 0x1F, 0x0E, 0xF0, 0x43,  // ..u....C
                /* 0628 */  0x7E, 0x1C, 0x78, 0x85, 0xF0, 0xA0, 0xD8, 0x44,  // ~.x....D
                /* 0630 */  0x60, 0xDC, 0x92, 0x80, 0xE7, 0x1D, 0xD5, 0xE3,  // `.......
                /* 0638 */  0xC2, 0x0D, 0xC6, 0xC7, 0x87, 0xB3, 0x3A, 0xA5,  // ......:.
                /* 0640 */  0xA3, 0x02, 0x1E, 0x53, 0xF6, 0xA8, 0xC0, 0xF4,  // ...S....
                /* 0648 */  0xFF, 0xBF, 0x4A, 0x01, 0x26, 0x6F, 0x1F, 0xE0,  // ..J.&o..
                /* 0650 */  0xB8, 0x4A, 0x01, 0x1E, 0xBC, 0x0A, 0x35, 0x78,  // .J....5x
                /* 0658 */  0x95, 0x02, 0x99, 0xB2, 0xDB, 0x07, 0x8A, 0xC3,  // ........
                /* 0660 */  0xF9, 0x6E, 0x1F, 0x08, 0xAB, 0x87, 0x7D, 0x72,  // .n....}r
                /* 0668 */  0x02, 0x78, 0x7F, 0x80, 0x71, 0xF9, 0x00, 0xCB,  // .x..q...
                /* 0670 */  0xFF, 0xFF, 0xF2, 0x01, 0xF0, 0xFF, 0xFF, 0x7F,  // ........
                /* 0678 */  0xF9, 0x00, 0x4C, 0x59, 0xBD, 0x7C, 0x80, 0x4C,  // ..LY.|.L
                /* 0680 */  0xE0, 0xE5, 0x03, 0x35, 0x52, 0xC7, 0x3C, 0x17,  // ...5R.<.
                /* 0688 */  0x22, 0x86, 0x16, 0xE3, 0x09, 0xE1, 0xF5, 0xA1,  // ".......
                /* 0690 */  0x63, 0x01, 0xE6, 0x8F, 0x86, 0x00, 0x05, 0xFE,  // c.......
                /* 0698 */  0xFF, 0x47, 0x43, 0x80, 0xE7, 0x62, 0x0F, 0x20,  // .GC..b. 
                /* 06A0 */  0xD0, 0xFE, 0xFF, 0x07, 0x10, 0x78, 0xC2, 0x8E,  // .....x..
                /* 06A8 */  0x86, 0xE8, 0x78, 0x6B, 0x11, 0xF0, 0xB3, 0xD0,  // ..xk....
                /* 06B0 */  0xFB, 0x07, 0x9C, 0x63, 0xC8, 0xEB, 0x82, 0x07,  // ...c....
                /* 06B8 */  0xFF, 0x0C, 0xE0, 0x30, 0xA7, 0x0F, 0x54, 0x8C,  // ...0..T.
                /* 06C0 */  0xD3, 0x07, 0xA0, 0x3B, 0xCE, 0xE9, 0x03, 0x15,  // ...;....
                /* 06C8 */  0xE0, 0xF4, 0x41, 0x41, 0x7C, 0xFA, 0x00, 0xDC,  // ..AA|...
                /* 06D0 */  0xFC, 0xFF, 0x03, 0x0D, 0x05, 0x35, 0x2C, 0x8F,  // .....5,.
                /* 06D8 */  0xC3, 0x47, 0x05, 0xFC, 0x41, 0x01, 0x77, 0xF8,  // .G..A.w.
                /* 06E0 */  0x00, 0x7E, 0x8A, 0x4F, 0x11, 0xE4, 0xBE, 0xE0,  // .~.O....
                /* 06E8 */  0x23, 0x83, 0x0F, 0x1F, 0xC0, 0xDC, 0xEC, 0xE1,  // #.......
                /* 06F0 */  0x03, 0x74, 0xE2, 0x0E, 0x1F, 0x28, 0x51, 0x10,  // .t...(Q.
                /* 06F8 */  0x8A, 0x78, 0x98, 0x82, 0x7E, 0xB8, 0xF3, 0xF1,  // .x..~...
                /* 0700 */  0xD0, 0xC7, 0x07, 0x72, 0x94, 0x02, 0xEA, 0xFF,  // ...r....
                /* 0708 */  0xFF, 0xA3, 0x14, 0xC0, 0xA3, 0x9B, 0x02, 0xFC,  // ........
                /* 0710 */  0xA3, 0x14, 0xE0, 0xE5, 0xFF, 0x7F, 0xFC, 0x00,  // ........
                /* 0718 */  0x3E, 0x82, 0x8F, 0x52, 0xA0, 0x3E, 0x7E, 0xF8,  // >..R.>~.
                /* 0720 */  0x28, 0xE5, 0x6B, 0x2E, 0x3B, 0x7E, 0x80, 0x21,  // (.k.;~.!
                /* 0728 */  0xCA, 0xF1, 0x03, 0x15, 0x82, 0x42, 0x21, 0xCE,  // .....B!.
                /* 0730 */  0x10, 0x28, 0xD9, 0x67, 0x08, 0x0A, 0xE2, 0xE1,  // .(.g....
                /* 0738 */  0xF9, 0xF8, 0x01, 0x98, 0x38, 0x0B, 0xC3, 0x19,  // ....8...
                /* 0740 */  0x2B, 0xFC, 0x63, 0x2E, 0x30, 0xFB, 0xFF, 0x1F,  // +.c.0...
                /* 0748 */  0x73, 0x01, 0xFE, 0x19, 0x3E, 0x7C, 0x80, 0x2E,  // s...>|..
                /* 0750 */  0xD4, 0x3A, 0x74, 0xF8, 0xC0, 0x49, 0x3B, 0x7C,  // .:t..I;|
                /* 0758 */  0x20, 0x8E, 0x0F, 0x30, 0x90, 0x9E, 0xCF, 0xB0,  //  ..0....
                /* 0760 */  0x32, 0x0E, 0x1F, 0x28, 0x0A, 0x42, 0xA3, 0xFF,  // 2..(.B..
                /* 0768 */  0xFF, 0xD1, 0x80, 0x47, 0x3E, 0x1A, 0x50, 0x10,  // ...G>.P.
                /* 0770 */  0xB3, 0x39, 0xCF, 0xCD, 0x02, 0xAD, 0xE8, 0x0C,  // .9......
                /* 0778 */  0x8A, 0x9C, 0x08, 0xBC, 0x53, 0x3B, 0xF0, 0x3C,  // ....S;.<
                /* 0780 */  0x5A, 0x00, 0x16, 0xCF, 0x53, 0xE0, 0x3C, 0x5A,  // Z...S.<Z
                /* 0788 */  0x00, 0x9F, 0xFF, 0xFF, 0xD1, 0x02, 0x3C, 0x1E,  // ......<.
                /* 0790 */  0x7D, 0x2A, 0x3C, 0x5A, 0x80, 0xEC, 0xCC, 0xE9,  // }*<Z....
                /* 0798 */  0xA3, 0x05, 0x1F, 0xB0, 0x45, 0x01, 0x69, 0x62,  // ....E.ib
                /* 07A0 */  0x07, 0xF1, 0xA4, 0x13, 0xF1, 0x7C, 0x83, 0xD6,  // .....|..
                /* 07A8 */  0x8C, 0xA2, 0x71, 0x86, 0x0F, 0xFD, 0x2C, 0x99,  // ..q...,.
                /* 07B0 */  0xC0, 0x32, 0x0E, 0x47, 0x14, 0xC2, 0x14, 0x3E,  // .2.G...>
                /* 07B8 */  0x17, 0x00, 0xFF, 0xE3, 0x3B, 0x3F, 0x17, 0x00,  // ....;?..
                /* 07C0 */  0x8E, 0xA4, 0x6A, 0x94, 0x28, 0xF3, 0x5C, 0x00,  // ..j.(.\.
                /* 07C8 */  0xAE, 0x0C, 0x27, 0x18, 0xD4, 0xFF, 0x1F, 0xD6,  // ..'.....
                /* 07D0 */  0x4A, 0x4E, 0x30, 0x08, 0x8D, 0xB7, 0x02, 0x1D,  // JN0.....
                /* 07D8 */  0x0A, 0x9E, 0x61, 0x30, 0x04, 0xD3, 0x1F, 0x0B,  // ..a0....
                /* 07E0 */  0xE8, 0xA0, 0x9C, 0x9B, 0x44, 0xB9, 0x8F, 0x05,  // ....D...
                /* 07E8 */  0xA8, 0xA4, 0xC7, 0x02, 0x0A, 0xE2, 0xC3, 0x32,  // .......2
                /* 07F0 */  0x81, 0x90, 0x91, 0x63, 0x01, 0xEA, 0x30, 0xE6,  // ...c..0.
                /* 07F8 */  0x61, 0x30, 0xAD, 0xC3, 0xD0, 0x98, 0x0E, 0xFE,  // a0......
                /* 0800 */  0xAD, 0xC0, 0xD7, 0x85, 0x27, 0x17, 0xF0, 0x8E,  // ....'...
                /* 0808 */  0xD4, 0x87, 0x02, 0x70, 0x88, 0xBB, 0xB8, 0x00,  // ...p....
                /* 0810 */  0x54, 0xF9, 0xFF, 0xDF, 0x28, 0x80, 0x89, 0xC2,  // T...(...
                /* 0818 */  0x1F, 0xC5, 0x8B, 0x0B, 0xC8, 0x04, 0x5D, 0xE4,  // ......].
                /* 0820 */  0xD1, 0xB1, 0x6E, 0x14, 0x88, 0x83, 0x54, 0xE8,  // ..n...T.
                /* 0828 */  0x18, 0x47, 0x72, 0x1C, 0x91, 0x9F, 0x5D, 0xB0,  // .Gr...].
                /* 0830 */  0x04, 0xBE, 0x2A, 0xFA, 0x52, 0xC1, 0xE5, 0x53,  // ..*.R..S
                /* 0838 */  0x48, 0xFE, 0x0D, 0x0B, 0x25, 0xF8, 0x6E, 0x41,  // H...%.nA
                /* 0840 */  0x41, 0x3C, 0x3A, 0x27, 0xB9, 0x61, 0xA1, 0xB5,  // A<:'.a..
                /* 0848 */  0x80, 0x68, 0x1E, 0x38, 0x9D, 0xD3, 0xD0, 0xB4,  // .h.8....
                /* 0850 */  0x7C, 0xBD, 0x02, 0xA6, 0x21, 0x6E, 0x0F, 0x68,  // |...!n.h
                /* 0858 */  0x19, 0x20, 0xBA, 0x77, 0xE0, 0xAE, 0x8A, 0xC0,  // . .w....
                /* 0860 */  0xEC, 0xE8, 0x80, 0x3D, 0x78, 0xF0, 0xFF, 0xFF,  // ...=x...
                /* 0868 */  0x55, 0x11, 0x60, 0xDA, 0xCD, 0x48, 0x57, 0x45,  // U.`..HWE
                /* 0870 */  0xB0, 0x5D, 0xC0, 0x50, 0x57, 0x45, 0x02, 0xA4,  // .].PWE..
                /* 0878 */  0x9B, 0x11, 0xE6, 0xEA, 0x1A, 0xE4, 0x11, 0xC0,  // ........
                /* 0880 */  0x07, 0xC2, 0xE3, 0x0A, 0xF5, 0x74, 0xE4, 0xC9,  // .....t..
                /* 0888 */  0xBC, 0x04, 0xF0, 0x3B, 0x18, 0xB8, 0xFE, 0xFF,  // ...;....
                /* 0890 */  0x77, 0x30, 0x80, 0x11, 0x36, 0x8F, 0x38, 0x40,  // w0..6.8@
                /* 0898 */  0xE4, 0x7C, 0x63, 0xED, 0x23, 0xD1, 0xD9, 0x20,  // .|c.#.. 
                /* 08A0 */  0xC8, 0x23, 0x80, 0xC1, 0x7D, 0x0B, 0xF0, 0x10,  // .#..}...
                /* 08A8 */  0x1E, 0x71, 0x80, 0xC3, 0x3C, 0x70, 0x47, 0x1C,  // .q..<pG.
                /* 08B0 */  0x30, 0xFF, 0xFF, 0x8F, 0x38, 0x00, 0xFF, 0xFF,  // 0...8...
                /* 08B8 */  0xFF, 0x07, 0x0F, 0x30, 0xCA, 0x94, 0xEA, 0x50,  // ...0...P
                /* 08C0 */  0xE2, 0xC1, 0x03, 0x5C, 0x12, 0x25, 0x5C, 0x59,  // ...\.%\Y
                /* 08C8 */  0xB1, 0x41, 0x57, 0xA2, 0xD3, 0xF3, 0x23, 0x0E,  // .AW...#.
                /* 08D0 */  0x87, 0x3D, 0xB0, 0x97, 0x0E, 0x1F, 0x31, 0x7C,  // .=....1|
                /* 08D8 */  0xC6, 0x49, 0xE0, 0x68, 0x80, 0x3A, 0x76, 0xF0,  // .I.h.:v.
                /* 08E0 */  0x50, 0x30, 0x8A, 0x7D, 0x2E, 0x40, 0x05, 0x3D,  // P0.}.@.=
                /* 08E8 */  0x17, 0x50, 0x10, 0x03, 0x3A, 0xC5, 0x65, 0x12,  // .P..:.e.
                /* 08F0 */  0x3D, 0x64, 0xCF, 0x82, 0x4D, 0xF5, 0x1C, 0x4E,  // =d..M..N
                /* 08F8 */  0xEA, 0x61, 0x12, 0xF0, 0x15, 0x6E, 0x95, 0x1A,  // .a...n..
                /* 0900 */  0x2B, 0x8F, 0x73, 0x70, 0xA1, 0x20, 0xB6, 0x70,  // +.sp. .p
                /* 0908 */  0xA4, 0x00, 0x62, 0xFF, 0xFF, 0xC3, 0x24, 0x30,  // ..b...$0
                /* 0910 */  0x08, 0x72, 0xAE, 0x41, 0x5F, 0x59, 0x7C, 0xA6,  // .r.A_Y|.
                /* 0918 */  0xC2, 0x1D, 0x3B, 0x80, 0xDF, 0xB1, 0x06, 0x3B,  // ..;....;
                /* 0920 */  0x74, 0x58, 0xD7, 0x69, 0x7B, 0xC7, 0x10, 0xE6,  // tX.i{...
                /* 0928 */  0x53, 0x86, 0x8F, 0x90, 0x6C, 0x58, 0xE0, 0x86,  // S...lX..
                /* 0930 */  0xF2, 0xD0, 0xC1, 0x17, 0x65, 0xE8, 0x68, 0x68,  // ....e.hh
                /* 0938 */  0xA3, 0xBE, 0x1F, 0xF8, 0x62, 0x11, 0xF5, 0xF9,  // ....b...
                /* 0940 */  0xC3, 0xA3, 0x02, 0xFB, 0x4F, 0x44, 0x63, 0x07,  // ....ODc.
                /* 0948 */  0xE1, 0x09, 0xE6, 0xFF, 0xFF, 0x04, 0x03, 0xAC,  // ........
                /* 0950 */  0x75, 0x1A, 0xD4, 0xE8, 0xF1, 0x04, 0x03, 0x2E,  // u.......
                /* 0958 */  0x51, 0x27, 0x18, 0xF4, 0xC9, 0xC5, 0x67, 0x3E,  // Q'....g>
                /* 0960 */  0xCC, 0x09, 0x06, 0x46, 0x98, 0x13, 0x0C, 0x2A,  // ...F...*
                /* 0968 */  0x06, 0x8C, 0x62, 0x1C, 0x43, 0x50, 0xC2, 0x8F,  // ..b.CP..
                /* 0970 */  0x21, 0x14, 0xC4, 0xC7, 0x10, 0x9F, 0x60, 0x00,  // !.....`.
                /* 0978 */  0x13, 0x19, 0x2E, 0x0E, 0x68, 0x15, 0x57, 0x10,  // ....h.W.
                /* 0980 */  0xE4, 0x25, 0x0C, 0x58, 0xFD, 0xFF, 0x6F, 0x0D,  // .%.X..o.
                /* 0988 */  0x30, 0x72, 0x1C, 0x40, 0xD0, 0x37, 0x74, 0x1F,  // 0r.@.7t.
                /* 0990 */  0x40, 0x60, 0xCC, 0x09, 0xAC, 0x87, 0x02, 0x1F,  // @`......
                /* 0998 */  0xD4, 0xC0, 0x76, 0x8A, 0xF7, 0xED, 0x03, 0xFE,  // ..v.....
                /* 09A0 */  0x98, 0xC0, 0x8A, 0xE4, 0x69, 0x83, 0xED, 0x2C,  // ....i..,
                /* 09A8 */  0x07, 0x58, 0x3C, 0xBA, 0x60, 0xFF, 0xFF, 0x67,  // .X<.`..g
                /* 09B0 */  0x39, 0xC0, 0xCE, 0xD1, 0x45, 0x67, 0x39, 0x90,  // 9...Eg9.
                /* 09B8 */  0xE9, 0xFF, 0x27, 0xE8, 0x4C, 0x8A, 0x53, 0x01,  // ..'.L.S.
                /* 09C0 */  0xA4, 0xB3, 0x1C, 0x1B, 0xC7, 0x4B, 0x8A, 0x87,  // .....K..
                /* 09C8 */  0xF9, 0x62, 0xE9, 0x7B, 0x0A, 0x1B, 0x5F, 0x9C,  // .b.{.._.
                /* 09D0 */  0xA7, 0x80, 0x17, 0xD0, 0x87, 0x00, 0x67, 0x7E,  // ......g~
                /* 09D8 */  0xB2, 0xE8, 0xF0, 0xC2, 0xD3, 0xC2, 0x48, 0xF9,  // ......H.
                /* 09E0 */  0x99, 0x14, 0xA5, 0xF5, 0x4C, 0x4A, 0x41, 0x3C,  // ....LJA<
                /* 09E8 */  0x3A, 0x1F, 0x5E, 0x00, 0x9B, 0xFF, 0xFF, 0xC3,  // :.^.....
                /* 09F0 */  0x0B, 0x30, 0xB8, 0x75, 0x00, 0x0B, 0xC9, 0xBF,  // .0.u....
                /* 09F8 */  0x0A, 0x5D, 0x06, 0xB8, 0x48, 0x18, 0x0D, 0xC9,  // .]..H...
                /* 0A00 */  0x20, 0x06, 0xF4, 0x85, 0x14, 0xF0, 0x72, 0xDD,  //  .....r.
                /* 0A08 */  0xF3, 0x95, 0x01, 0x7F, 0xF5, 0x61, 0xA7, 0x72,  // .....a.r
                /* 0A10 */  0xDF, 0x2C, 0x4C, 0xF0, 0xAC, 0xEC, 0x9B, 0x1C,  // .,L.....
                /* 0A18 */  0xB8, 0x0F, 0x0D, 0xE0, 0x1A, 0x14, 0xCC, 0x41,  // .......A
                /* 0A20 */  0x9C, 0x8B, 0xCF, 0x5D, 0x1E, 0x14, 0xFE, 0xFF,  // ...]....
                /* 0A28 */  0x7F, 0x7D, 0x01, 0xDF, 0xA0, 0xC0, 0x0F, 0x1B,  // .}......
                /* 0A30 */  0xF0, 0xDD, 0xE0, 0xC0, 0x81, 0xC5, 0xFD, 0xCC,  // ........
                /* 0A38 */  0x83, 0x02, 0x16, 0x03, 0x07, 0x16, 0x37, 0x10,  // ......7.
                /* 0A40 */  0x0F, 0x0A, 0x5C, 0x97, 0x46, 0x0F, 0x0A, 0x77,  // ..\.F..w
                /* 0A48 */  0xCC, 0xB0, 0x48, 0x40, 0xDD, 0x42, 0x9E, 0x4F,  // ..H@.B.O
                /* 0A50 */  0x4E, 0x1C, 0x33, 0x2A, 0xB0, 0x7B, 0x18, 0x15,  // N.3*.{..
                /* 0A58 */  0xF4, 0xFF, 0xFF, 0xA8, 0xC0, 0x35, 0x73, 0xCC,  // .....5s.
                /* 0A60 */  0xA8, 0xC0, 0x0E, 0xE3, 0x51, 0x81, 0xEB, 0x3E,  // ....Q..>
                /* 0A68 */  0x05, 0xBC, 0xB5, 0x3A, 0xBC, 0x59, 0x82, 0x4D,  // ...:.Y.M
                /* 0A70 */  0xEB, 0x7D, 0x0A, 0x9D, 0xF8, 0x61, 0xA1, 0x9B,  // .}...a..
                /* 0A78 */  0x25, 0xBB, 0x4F, 0xC1, 0xCE, 0x77, 0x9F, 0x42,  // %.O..w.B
                /* 0A80 */  0x25, 0x83, 0x51, 0xB2, 0x33, 0x0F, 0x2A, 0xCB,  // %.Q.3.*.
                /* 0A88 */  0x99, 0x87, 0x82, 0xD8, 0xC4, 0x7D, 0x0A, 0x28,  // .....}.(
                /* 0A90 */  0xFD, 0xFF, 0xEF, 0x53, 0x80, 0xBF, 0x41, 0xC3,  // ...S..A.
                /* 0A98 */  0x39, 0x11, 0xE1, 0x07, 0x0D, 0xD6, 0xAB, 0x03,  // 9.......
                /* 0AA0 */  0x1F, 0x34, 0x78, 0xA6, 0x04, 0xF3, 0xF8, 0x81,  // .4x.....
                /* 0AA8 */  0x99, 0x12, 0x58, 0x8F, 0x4C, 0xE0, 0x9B, 0x12,  // ..X.L...
                /* 0AB0 */  0x9C, 0xE3, 0x10, 0x7E, 0x4A, 0xFC, 0xFF, 0x3F,  // ...~J..?
                /* 0AB8 */  0x25, 0xB0, 0x5D, 0x98, 0xC0, 0x37, 0x25, 0x98,  // %.]..7%.
                /* 0AC0 */  0xA3, 0x06, 0xFF, 0x79, 0x09, 0x7C, 0x47, 0x58,  // ...y.|GX
                /* 0AC8 */  0x4F, 0x09, 0x77, 0xCB, 0xF5, 0x59, 0x08, 0xC6,  // O.w..Y..
                /* 0AD0 */  0x98, 0xC0, 0x7A, 0x5C, 0x02, 0xDF, 0x98, 0xE0,  // ..z\....
                /* 0AD8 */  0x0E, 0x1B, 0xFC, 0x87, 0x25, 0xF0, 0xFD, 0xFF,  // ....%...
                /* 0AE0 */  0x4F, 0xB9, 0x80, 0x45, 0x18, 0x9F, 0x72, 0x01,  // O..E..r.
                /* 0AE8 */  0x4F, 0xB7, 0x28, 0x9D, 0x72, 0x41, 0x96, 0x66,  // O.(.rA.f
                /* 0AF0 */  0x1D, 0x3A, 0xEF, 0xE3, 0x34, 0x01, 0x69, 0x64,  // .:..4.id
                /* 0AF8 */  0x27, 0x11, 0xF1, 0x5D, 0xBF, 0xEB, 0x79, 0xE9,  // '..]..y.
                /* 0B00 */  0xBC, 0xD4, 0x39, 0x82, 0x6E, 0x32, 0xEF, 0x00,  // ..9.n2..
                /* 0B08 */  0x86, 0xB6, 0x8A, 0x83, 0x3E, 0x1D, 0x95, 0xF3,  // ....>...
                /* 0B10 */  0x93, 0x28, 0xFF, 0xB9, 0x00, 0x95, 0xF8, 0x5C,  // .(.....\
                /* 0B18 */  0x40, 0x41, 0x0C, 0xE8, 0x38, 0x02, 0xFE, 0xFF,  // @A..8...
                /* 0B20 */  0x27, 0x24, 0xEC, 0x4E, 0x7C, 0xAD, 0x62, 0x08,  // '$.N|.b.
                /* 0B28 */  0x87, 0xC4, 0x06, 0x02, 0xE3, 0x9A, 0x04, 0x56,  // .......V
                /* 0B30 */  0x02, 0xDF, 0xC5, 0x01, 0xE7, 0x83, 0xF1, 0xB5,  // ........
                /* 0B38 */  0x02, 0x70, 0xF3, 0xFF, 0xBF, 0x56, 0xE0, 0xBC,  // .p...V..
                /* 0B40 */  0x0A, 0xB5, 0xE8, 0xF0, 0x5A, 0x01, 0x2E, 0x41,  // ....Z..A
                /* 0B48 */  0xAB, 0xD0, 0xB5, 0x02, 0x17, 0x6B, 0x2D, 0xBA,  // .....k-.
                /* 0B50 */  0x8B, 0x33, 0x9F, 0xD0, 0xC2, 0x38, 0x92, 0xE3,  // .3...8..
                /* 0B58 */  0x88, 0x7C, 0xC8, 0x2F, 0x10, 0x61, 0x42, 0x3C,  // .|./.aB<
                /* 0B60 */  0x90, 0xEA, 0x5A, 0x81, 0x8A, 0x40, 0xA1, 0xE8,  // ..Z..@..
                /* 0B68 */  0xE7, 0x02, 0x54, 0xD8, 0xB1, 0x53, 0x10, 0x03,  // ..T..S..
                /* 0B70 */  0x3A, 0xC9, 0xB5, 0x02, 0xAD, 0x05, 0x44, 0xB3,  // :.....D.
                /* 0B78 */  0xC0, 0xE9, 0x9C, 0x84, 0x26, 0xE5, 0x43, 0x05,  // ....&.C.
                /* 0B80 */  0xE0, 0x2B, 0xC6, 0x35, 0x1E, 0x25, 0xFC, 0x1A,  // .+.5.%..
                /* 0B88 */  0x4F, 0x41, 0x3C, 0x31, 0x1F, 0x2A, 0x80, 0xF3,  // OA<1.*..
                /* 0B90 */  0xFF, 0xFF, 0xA8, 0x0D, 0x9E, 0x61, 0xE1, 0x64,  // .....a.d
                /* 0B98 */  0xDC, 0x70, 0x7C, 0xC6, 0x24, 0xA8, 0x8F, 0xE3,  // .p|.$...
                /* 0BA0 */  0xC0, 0xF9, 0xE0, 0x01, 0xBC, 0x25, 0xFA, 0x94,  // .....%..
                /* 0BA8 */  0x7A, 0x68, 0x05, 0x99, 0x98, 0x83, 0x07, 0x3A,  // zh.....:
                /* 0BB0 */  0xD2, 0x5A, 0x74, 0x68, 0x65, 0x07, 0x0F, 0x58,  // .Zthe..X
                /* 0BB8 */  0x21, 0x0E, 0x1E, 0x28, 0xF9, 0x14, 0x92, 0x7F,  // !..(....
                /* 0BC0 */  0x76, 0x40, 0x09, 0x3E, 0x3B, 0x50, 0x10, 0x8F,  // v@.>;P..
                /* 0BC8 */  0xCD, 0x07, 0x0F, 0xE0, 0xF1, 0xFF, 0x3F, 0x78,  // ......?x
                /* 0BD0 */  0x00, 0x93, 0x10, 0x37, 0x07, 0xE8, 0x97, 0x56,  // ...7...V
                /* 0BD8 */  0x60, 0x76, 0x70, 0xC0, 0x1E, 0x9F, 0x00, 0x8B,  // `vp.....
                /* 0BE0 */  0xC7, 0x0E, 0xE0, 0xF9, 0xFF, 0x3F, 0x76, 0x00,  // .....?v.
                /* 0BE8 */  0x0D, 0xA7, 0xC7, 0x0E, 0x70, 0xC5, 0x79, 0x03,  // ....p.y.
                /* 0BF0 */  0xE8, 0xD8, 0x81, 0x13, 0x05, 0xA4, 0xE3, 0x13,  // ........
                /* 0BF8 */  0x1B, 0xD3, 0x13, 0xB6, 0x41, 0x1E, 0x1F, 0x30,  // ....A..0
                /* 0C00 */  0xC6, 0x00, 0x25, 0xE3, 0xBC, 0x41, 0x21, 0x4C,  // ..%..A!L
                /* 0C08 */  0xE1, 0x73, 0x01, 0x18, 0x67, 0x81, 0x3F, 0x17,  // .s..g.?.
                /* 0C10 */  0x80, 0x9D, 0xC0, 0xE7, 0x02, 0xC0, 0x93, 0x45,  // .......E
                /* 0C18 */  0xB3, 0x42, 0x7D, 0x9E, 0x0B, 0xE0, 0xFE, 0xFF,  // .B}.....
                /* 0C20 */  0xCF, 0x05, 0xE0, 0x9E, 0xA6, 0xCF, 0x05, 0x00,  // ........
                /* 0C28 */  0x7D, 0xA4, 0x9E, 0x0B, 0x80, 0xD7, 0x38, 0x9F,  // }.....8.
                /* 0C30 */  0x0B, 0xC0, 0xF2, 0xFF, 0x3F, 0x17, 0x00, 0xD4,  // ....?...
                /* 0C38 */  0xB0, 0x78, 0x2E, 0x00, 0x5E, 0xD2, 0xCE, 0x05,  // .x..^...
                /* 0C40 */  0x80, 0x8A, 0xFF, 0xFF, 0xB9, 0x00, 0xD0, 0xA6,  // ........
                /* 0C48 */  0xF5, 0x5C, 0x00, 0x2E, 0xF1, 0xAB, 0xA0, 0xA1,  // .\......
                /* 0C50 */  0x21, 0x24, 0x17, 0x06, 0x25, 0x61, 0xEC, 0x50,  // !$..%a.P
                /* 0C58 */  0x46, 0x73, 0x30, 0xC7, 0x10, 0x9C, 0x49, 0x82,  // Fs0...I.
                /* 0C60 */  0x43, 0x0D, 0xD4, 0x53, 0x7F, 0x1A, 0x38, 0x8D,  // C..S..8.
                /* 0C68 */  0xC7, 0x40, 0xCF, 0xEA, 0x79, 0x3C, 0x24, 0x3B,  // .@..y<$;
                /* 0C70 */  0x23, 0x78, 0x88, 0xFC, 0x58, 0xE0, 0xB1, 0xBE,  // #x..X...
                /* 0C78 */  0xB1, 0x59, 0x3B, 0xA2, 0x4E, 0x6C, 0x86, 0x49,  // .Y;.Nl.I
                /* 0C80 */  0xE0, 0x21, 0x32, 0x34, 0x4E, 0x70, 0x66, 0xA1,  // .!24Npf.
                /* 0C88 */  0x31, 0x37, 0x3F, 0xDF, 0xFF, 0x5E, 0x03, 0x3C,  // 17?..^.<
                /* 0C90 */  0x37, 0x13, 0x74, 0x3F, 0x74, 0x29, 0x44, 0xD0,  // 7.t?t)D.
                /* 0C98 */  0x09, 0xE0, 0x9D, 0xA0, 0x46, 0x01, 0xDE, 0xAE,  // ....F...
                /* 0CA0 */  0x02, 0xB2, 0x25, 0x40, 0xDC, 0xE8, 0x85, 0xF5,  // ..%@....
                /* 0CA8 */  0xCA, 0x15, 0x25, 0x44, 0x84, 0xA0, 0x51, 0x8C,  // ..%D..Q.
                /* 0CB0 */  0x17, 0x21, 0x54, 0x88, 0x28, 0x51, 0x9B, 0x03,  // .!T.(Q..
                /* 0CB8 */  0x91, 0x36, 0x54, 0x81, 0x44, 0x0B, 0x66, 0x04,  // .6T.D.f.
                /* 0CC0 */  0x66, 0x7F, 0x10, 0x44, 0xFA, 0x33, 0x40, 0x77,  // f..D.3@w
                /* 0CC8 */  0x40, 0x47, 0x3A, 0x3C, 0xA2, 0x87, 0xEB, 0xA1,  // @G:<....
                /* 0CD0 */  0x9E, 0xE3, 0xFF, 0xFF, 0x35, 0xFD, 0x79, 0xD2,  // ....5.y.
                /* 0CD8 */  0x20, 0x07, 0x79, 0x6E, 0x4F, 0x8F, 0x18, 0x70,  //  .ynO..p
                /* 0CE0 */  0x9D, 0x21, 0xA0, 0x5D, 0xE6, 0x03, 0x9E, 0xF1,  // .!.]....
                /* 0CE8 */  0x03, 0x33, 0x85, 0x43, 0x0D, 0xD1, 0xA7, 0x77,  // .3.C...w
                /* 0CF0 */  0x4F, 0xE0, 0x10, 0x19, 0xA0, 0x0F, 0x11, 0xF0,  // O.......
                /* 0CF8 */  0xC7, 0xE3, 0x03, 0x24, 0xE6, 0xB0, 0xA9, 0x41,  // ...$...A
                /* 0D00 */  0xA0, 0x46, 0x66, 0x68, 0x8F, 0xF4, 0xB4, 0x9E,  // .Ffh....
                /* 0D08 */  0x32, 0x3D, 0xFC, 0xC3, 0x62, 0x62, 0xCF, 0x0E,  // 2=..bb..
                /* 0D10 */  0x74, 0x3C, 0xE0, 0x57, 0x7C, 0x26, 0x10, 0xC2,  // t<.W|&..
                /* 0D18 */  0xC3, 0x83, 0xE7, 0xEB, 0x43, 0xB5, 0x4E, 0x22,  // ....C.N"
                /* 0D20 */  0x68, 0x68, 0x83, 0x9E, 0x8D, 0xCF, 0x10, 0xBE,  // hh......
                /* 0D28 */  0x79, 0xB0, 0xA3, 0x05, 0x17, 0x75, 0xB4, 0x40,  // y....u.@
                /* 0D30 */  0x9D, 0x16, 0x7C, 0x50, 0x60, 0x47, 0x54, 0x7E,  // ..|P`GT~
                /* 0D38 */  0xB2, 0x60, 0x47, 0x61, 0x70, 0xCA, 0x3B, 0x84,  // .`Gap.;.
                /* 0D40 */  0x80, 0x02, 0xC4, 0x27, 0x0B, 0x36, 0x2F, 0x0C,  // ...'.6/.
                /* 0D48 */  0x81, 0x45, 0xC2, 0xA3, 0x0E, 0x1D, 0x86, 0xE7,  // .E......
                /* 0D50 */  0xA7, 0x84, 0xC7, 0x11, 0x86, 0xFD, 0x46, 0xE2,  // ......F.
                /* 0D58 */  0x29, 0x1C, 0x8E, 0x8F, 0x14, 0x46, 0x08, 0x5E,  // )....F.^
                /* 0D60 */  0xEE, 0xD4, 0xF4, 0xFF, 0x9F, 0x40, 0xCD, 0xA3,  // .....@..
                /* 0D68 */  0xD3, 0x94, 0x4E, 0xF9, 0x10, 0xD8, 0x50, 0x3D,  // ..N...P=
                /* 0D70 */  0x04, 0x7E, 0x5E, 0xF0, 0x10, 0xF8, 0x00, 0x5A,  // .~^....Z
                /* 0D78 */  0x9D, 0x1D, 0x39, 0x9F, 0x9C, 0x13, 0x6E, 0xBC,  // ..9...n.
                /* 0D80 */  0x7C, 0x4C, 0xD8, 0x01, 0x70, 0x11, 0x0B, 0x79,  // |L..p..y
                /* 0D88 */  0x16, 0x41, 0xC4, 0x58, 0xBE, 0x8F, 0x23, 0x80,  // .A.X..#.
                /* 0D90 */  0x9C, 0x49, 0x3C, 0x81, 0x44, 0x78, 0x19, 0x09,  // .I<.Dx..
                /* 0D98 */  0x12, 0xE2, 0x58, 0x5E, 0x43, 0x0C, 0x12, 0xE3,  // ..X^C...
                /* 0DA0 */  0x18, 0x4E, 0xE6, 0x71, 0x84, 0xC3, 0x3C, 0x93,  // .N.q..<.
                /* 0DA8 */  0x18, 0xEE, 0xE1, 0xE0, 0x55, 0xE4, 0x85, 0xC4,  // ....U...
                /* 0DB0 */  0x30, 0x8F, 0x22, 0x3E, 0x1F, 0xC4, 0x30, 0x66,  // 0.">..0f
                /* 0DB8 */  0xA8, 0x68, 0x27, 0xE0, 0xE3, 0x08, 0x8B, 0xF4,  // .h'.....
                /* 0DC0 */  0x60, 0xD0, 0x50, 0x7D, 0x1C, 0x01, 0xFC, 0xFC,  // `.P}....
                /* 0DC8 */  0xFF, 0x8F, 0x23, 0xC0, 0xFF, 0x88, 0x80, 0x3B,  // ..#....;
                /* 0DD0 */  0x6D, 0xC0, 0xBD, 0x4F, 0x84, 0x78, 0xD2, 0x78,  // m..O.x.x
                /* 0DD8 */  0x49, 0x78, 0xD6, 0x00, 0x2E, 0xA2, 0x57, 0x55,  // Ix....WU
                /* 0DE0 */  0x80, 0x1F, 0x10, 0xA5, 0x39, 0x9A, 0xA3, 0x38,  // ....9..8
                /* 0DE8 */  0xAC, 0x09, 0x48, 0xC3, 0xE4, 0xB3, 0x38, 0xF7,  // ..H...8.
                /* 0DF0 */  0xE7, 0x82, 0xB3, 0x8B, 0x1D, 0x24, 0x4C, 0x90,  // .....$L.
                /* 0DF8 */  0x27, 0x82, 0xD7, 0x28, 0x9F, 0x82, 0x04, 0xA9,  // '..(....
                /* 0E00 */  0xB3, 0x39, 0x4F, 0x4F, 0x21, 0xDD, 0x67, 0x73,  // .9OO!.gs
                /* 0E08 */  0x94, 0xD2, 0x73, 0x1A, 0x05, 0xF1, 0x19, 0xC1,  // ..s.....
                /* 0E10 */  0xD7, 0x6E, 0x38, 0x73, 0x38, 0xA3, 0x03, 0x79,  // .n8s8..y
                /* 0E18 */  0x0F, 0x60, 0x17, 0x73, 0x60, 0x76, 0x91, 0xC1,  // .`.s`v..
                /* 0E20 */  0x9E, 0x74, 0xF0, 0xE8, 0xFE, 0xFF, 0xDF, 0x14,  // .t......
                /* 0E28 */  0xCE, 0xF3, 0xFD, 0xC0, 0xF7, 0x72, 0xC0, 0x56,  // .....r.V
                /* 0E30 */  0x88, 0xBB, 0x00, 0x4A, 0xF6, 0x5D, 0x80, 0x82,  // ...J.]..
                /* 0E38 */  0x78, 0x62, 0x8E, 0x72, 0x45, 0x82, 0x82, 0xFF,  // xb.rE...
                /* 0E40 */  0x28, 0xF0, 0x32, 0xF0, 0xBA, 0x80, 0xB9, 0x96,  // (.2.....
                /* 0E48 */  0x03, 0xDF, 0x20, 0x17, 0x06, 0x28, 0xB7, 0x81,  // .. ..(..
                /* 0E50 */  0x87, 0x27, 0x36, 0x28, 0xF0, 0x43, 0xF9, 0x7A,  // .'6(.C.z
                /* 0E58 */  0x08, 0xE6, 0xFF, 0xFF, 0xF5, 0x10, 0xD8, 0x2A,  // .......*
                /* 0E60 */  0x75, 0x6A, 0x53, 0xE1, 0xF5, 0x10, 0x5C, 0x51,  // ujS...\Q
                /* 0E68 */  0xAE, 0x25, 0xA8, 0x5B, 0x93, 0x05, 0x01, 0xC9,  // .%.[....
                /* 0E70 */  0xFB, 0xF9, 0x86, 0x60, 0xFA, 0x5C, 0x02, 0xEF,  // ...`.\..
                /* 0E78 */  0x0E, 0xAA, 0x55, 0xE9, 0x5E, 0xC2, 0x83, 0x53,  // ..U.^..S
                /* 0E80 */  0x28, 0xFA, 0xE1, 0x01, 0x15, 0xF6, 0xF0, 0x40,  // (......@
                /* 0E88 */  0x41, 0x7C, 0x31, 0xF2, 0xBD, 0x04, 0xB0, 0xFF,  // A|1.....
                /* 0E90 */  0xFF, 0x1F, 0x11, 0x36, 0xC3, 0x88, 0xD0, 0x2A,  // ...6...*
                /* 0E98 */  0x8E, 0x16, 0xC8, 0x19, 0x81, 0xF5, 0x44, 0xE0,  // ......D.
                /* 0EA0 */  0x93, 0x0B, 0x70, 0x0E, 0x7F, 0x09, 0x46, 0xC5,  // ..p...F.
                /* 0EA8 */  0x9D, 0x33, 0x05, 0xF1, 0xA0, 0x7C, 0x72, 0x01,  // .3...|r.
                /* 0EB0 */  0x7E, 0xA7, 0x12, 0xC0, 0xD4, 0xFF, 0x1F, 0x4C,  // ~......L
                /* 0EB8 */  0xA7, 0x12, 0xD0, 0xDD, 0xBD, 0xC0, 0x74, 0x35,  // ......t5
                /* 0EC0 */  0x39, 0x93, 0x68, 0xC1, 0x7D, 0xF7, 0x02, 0x98,  // 9.h.}...
                /* 0EC8 */  0xF9, 0xFF, 0xBF, 0x7B, 0x01, 0xF4, 0xF4, 0x7A,  // ...{...z
                /* 0ED0 */  0xF7, 0x02, 0x5E, 0xE7, 0x12, 0xFE, 0xFF, 0xBF,  // ..^.....
                /* 0ED8 */  0x7B, 0x01, 0xFC, 0xFF, 0xFF, 0xDF, 0xBD, 0x00,  // {.......
                /* 0EE0 */  0xCA, 0x9C, 0x4A, 0x40, 0x96, 0xED, 0x54, 0x82,  // ..J@..T.
                /* 0EE8 */  0x56, 0x78, 0x8E, 0x86, 0x3A, 0x81, 0x43, 0x79,  // Vx..:.Cy
                /* 0EF0 */  0xC2, 0x78, 0x55, 0x4F, 0x60, 0x3D, 0x97, 0x2F,  // .xUO`=./
                /* 0EF8 */  0x94, 0x12, 0x18, 0x5D, 0xBE, 0x80, 0xD7, 0xFF,  // ...]....
                /* 0F00 */  0xFF, 0xF2, 0x05, 0xB0, 0x22, 0xD0, 0x5D, 0x00,  // ....".].
                /* 0F08 */  0x15, 0xE1, 0x2E, 0x40, 0x41, 0x7C, 0xF9, 0x02,  // ...@A|..
                /* 0F10 */  0xBC, 0x84, 0x82, 0x90, 0x91, 0x9B, 0x04, 0xBD,  // ........
                /* 0F18 */  0x7C, 0xC1, 0xB9, 0x38, 0xF8, 0x7E, 0xE4, 0x41,  // |..8.~.A
                /* 0F20 */  0xC1, 0xF8, 0xFF, 0x0F, 0x0A, 0xE6, 0x60, 0xCE,  // ......`.
                /* 0F28 */  0xBB, 0xD8, 0x93, 0x22, 0xBD, 0x9E, 0xC0, 0xBD,  // ..."....
                /* 0F30 */  0x73, 0x78, 0x6C, 0xE0, 0x10, 0x77, 0x05, 0x03,  // sxl..w..
                /* 0F38 */  0xF6, 0x2E, 0x6F, 0x27, 0xE0, 0xD2, 0xB6, 0x76,  // ..o'...v
                /* 0F40 */  0xDD, 0x4E, 0x70, 0x09, 0x8F, 0xD3, 0x90, 0x8F,  // .Np.....
                /* 0F48 */  0x27, 0x98, 0x3C, 0xB7, 0x13, 0x54, 0x12, 0x18,  // '.<..T..
                /* 0F50 */  0x65, 0x21, 0xD1, 0x11, 0x82, 0xAB, 0xBF, 0x89,  // e!......
                /* 0F58 */  0x51, 0x10, 0x5B, 0xB8, 0x9D, 0x00, 0x22, 0xFE,  // Q.[...".
                /* 0F60 */  0xFF, 0xB7, 0x13, 0xC0, 0xC2, 0x98, 0xE1, 0x8C,  // ........
                /* 0F68 */  0xE8, 0xBD, 0xC2, 0x90, 0x3E, 0x83, 0x01, 0xD3,  // ....>...
                /* 0F70 */  0x40, 0x47, 0x10, 0xF4, 0x25, 0x0D, 0x9B, 0xE0,  // @G..%...
                /* 0F78 */  0x06, 0x42, 0x67, 0x04, 0xEF, 0x02, 0x02, 0x77,  // .Bg....w
                /* 0F80 */  0x62, 0xB0, 0x0E, 0x20, 0xE0, 0x3B, 0xAB, 0x01,  // b.. .;..
                /* 0F88 */  0xA3, 0xFF, 0xFF, 0x59, 0x0D, 0xF8, 0x1E, 0x00,  // ...Y....
                /* 0F90 */  0x7C, 0x56, 0x03, 0x54, 0xDD, 0x5E, 0x40, 0x76,  // |V.T.^@v
                /* 0F98 */  0x4D, 0xF1, 0xED, 0x85, 0x0F, 0xD8, 0x1A, 0x80,  // M.......
                /* 0FA0 */  0x74, 0x7C, 0x38, 0xFD, 0xE3, 0x38, 0x8A, 0xF3,  // t|8..8..
                /* 0FA8 */  0x3A, 0x8D, 0x17, 0x98, 0x18, 0x35, 0x9F, 0x32,  // :....5.2
                /* 0FB0 */  0xC8, 0x84, 0x7B, 0x03, 0x54, 0xEA, 0x6B, 0x14,  // ..{.T.k.
                /* 0FB8 */  0x1D, 0x95, 0xF3, 0x92, 0x28, 0xF5, 0xB1, 0x00,  // ....(...
                /* 0FC0 */  0x95, 0xF3, 0x58, 0x40, 0x41, 0x0C, 0xE8, 0x8B,  // ..X@A...
                /* 0FC8 */  0x87, 0x95, 0x5C, 0x3C, 0xD0, 0x83, 0x38, 0xD9,  // ..\<..8.
                /* 0FD0 */  0x37, 0x54, 0x5F, 0x3C, 0xC0, 0x4C, 0xF0, 0xFF,  // 7T_<.L..
                /* 0FD8 */  0x7F, 0xF1, 0x00, 0x93, 0xB1, 0x5B, 0xCF, 0x0B,  // .....[..
                /* 0FE0 */  0x05, 0x10, 0x09, 0x3E, 0x55, 0x54, 0xD4, 0xA9,  // ...>UT..
                /* 0FE8 */  0x52, 0x10, 0x4F, 0xD5, 0x31, 0x4E, 0x24, 0x9E,  // R.O.1N$.
                /* 0FF0 */  0x2A, 0xFA, 0x24, 0x74, 0x6E, 0x6F, 0x24, 0xFC,  // *.$tno$.
                /* 0FF8 */  0x3C, 0xF0, 0x3E, 0x01, 0xE6, 0xA1, 0xF8, 0x70,  // <.>....p
                /* 1000 */  0x05, 0x38, 0x52, 0xE8, 0xD3, 0xA4, 0xD2, 0xEB,  // .8R.....
                /* 1008 */  0x04, 0xB8, 0x04, 0x5D, 0x27, 0xD0, 0xB1, 0x96,  // ...]'...
                /* 1010 */  0xAA, 0xEB, 0x04, 0xBC, 0x61, 0x3A, 0xC8, 0x75,  // ....a:.u
                /* 1018 */  0x82, 0x42, 0xFC, 0xFF, 0x1F, 0xF3, 0x58, 0x80,  // .B....X.
                /* 1020 */  0xC3, 0x1E, 0x4A, 0x32, 0x1C, 0x05, 0xF1, 0xD8,  // ..J2....
                /* 1028 */  0x7C, 0x27, 0xF7, 0x75, 0x02, 0xEE, 0x9D, 0x05,  // |'.u....
                /* 1030 */  0xDE, 0x75, 0x82, 0x1D, 0x0A, 0x60, 0x13, 0xF8,  // .u...`..
                /* 1038 */  0xCE, 0x02, 0x9E, 0x03, 0x05, 0x3B, 0x38, 0x80,  // .....;8.
                /* 1040 */  0x79, 0x50, 0xE0, 0x38, 0x38, 0x00, 0xAA, 0x6E,  // yP.88..n
                /* 1048 */  0xB4, 0x20, 0xD3, 0x7F, 0x70, 0x40, 0xAB, 0xB8,  // . ..p@..
                /* 1050 */  0xD6, 0x20, 0xFE, 0xFF, 0x07, 0x07, 0xBC, 0xB4,  // . ......
                /* 1058 */  0xD3, 0x10, 0xC9, 0x7D, 0xAD, 0x41, 0x25, 0xBE,  // ...}.A%.
                /* 1060 */  0xD6, 0x00, 0xB2, 0xA3, 0x4F, 0x15, 0x15, 0x76,  // ....O..v
                /* 1068 */  0xAA, 0x14, 0xC4, 0x53, 0xF5, 0x95, 0x03, 0xD6,  // ...S....
                /* 1070 */  0x75, 0x02, 0x73, 0xEC, 0x02, 0xF7, 0x50, 0x7C,  // u.s...P|
                /* 1078 */  0xE5, 0x00, 0xDF, 0x7D, 0x02, 0x38, 0xFC, 0xFF,  // ...}.8..
                /* 1080 */  0x8F, 0x5D, 0x20, 0xBD, 0xD7, 0x80, 0x4E, 0xD2,  // .] ...N.
                /* 1088 */  0x7D, 0x02, 0x1D, 0xEC, 0x5E, 0x03, 0xF1, 0x3E,  // }...^..>
                /* 1090 */  0xF1, 0xB4, 0xF6, 0x44, 0xA7, 0x7B, 0x0D, 0x2A,  // ...D.{.*
                /* 1098 */  0x04, 0x85, 0x2E, 0x36, 0x3E, 0x15, 0x70, 0xD1,  // ...6>.p.
                /* 10A0 */  0x70, 0x14, 0xC4, 0xF7, 0x1A, 0xC0, 0xC9, 0xC9,  // p.......
                /* 10A8 */  0x01, 0xBC, 0xF7, 0x1A, 0xF0, 0x9C, 0x1C, 0x80,  // ........
                /* 10B0 */  0xCF, 0xFF, 0xFF, 0xE4, 0x00, 0xD4, 0x2E, 0x36,  // .......6
                /* 10B8 */  0x20, 0x4B, 0x70, 0x72, 0x40, 0xEB, 0xB8, 0xD8,  //  Kpr@...
                /* 10C0 */  0x40, 0x45, 0x48, 0x30, 0xF9, 0xC5, 0x06, 0x95,  // @EH0....
                /* 10C8 */  0xF9, 0x62, 0x03, 0xC8, 0xBE, 0x9F, 0x82, 0xEF,  // .b......
                /* 10D0 */  0x22, 0xF0, 0x40, 0x81, 0xBB, 0x50, 0xE0, 0xFF,  // ".@..P..
                /* 10D8 */  0xFF, 0x37, 0x1B, 0x60, 0x76, 0x3F, 0x05, 0xFE,  // .7.`v?..
                /* 10E0 */  0x12, 0x6F, 0x36, 0xA0, 0x13, 0x75, 0xA1, 0x40,  // .o6..u.@
                /* 10E8 */  0x47, 0xBB, 0xD9, 0x40, 0xB5, 0x06, 0xA8, 0x30,  // G..@...0
                /* 10F0 */  0x37, 0x1B, 0x54, 0x0C, 0x0A, 0x5D, 0x6D, 0x7C,  // 7.T..]m|
                /* 10F8 */  0x2C, 0xE0, 0xB2, 0xE1, 0x28, 0x88, 0x6F, 0x36,  // ,...(.o6
                /* 1100 */  0x80, 0x93, 0xA3, 0x03, 0xE6, 0xFF, 0x7F, 0x74,  // .......t
                /* 1108 */  0x00, 0xE3, 0xD5, 0x06, 0xF8, 0x1C, 0x1D, 0x00,  // ........
                /* 1110 */  0x05, 0x57, 0x1B, 0x90, 0xC5, 0xF8, 0x60, 0xEB,  // .W....`.
                /* 1118 */  0xE8, 0x80, 0x13, 0x03, 0xA4, 0xA3, 0x03, 0xAC,  // ........
                /* 1120 */  0xBB, 0x40, 0x84, 0x04, 0xE3, 0xAF, 0x48, 0x57,  // .@....HW
                /* 1128 */  0x1B, 0x1E, 0x1C, 0x46, 0xD1, 0x49, 0x74, 0x91,  // ...F.It.
                /* 1130 */  0x43, 0xC0, 0xE8, 0x22, 0x47, 0x40, 0x74, 0x8D,  // C.."G@t.
                /* 1138 */  0xF1, 0x45, 0xDE, 0xE7, 0x4C, 0xDC, 0x28, 0xAD,  // .E..L.(.
                /* 1140 */  0x70, 0x0C, 0x9A, 0x47, 0x82, 0xA3, 0x78, 0xB3,  // p..G..x.
                /* 1148 */  0x01, 0xEF, 0x25, 0x13, 0xEE, 0xFF, 0xFF, 0x92,  // ..%.....
                /* 1150 */  0x89, 0x9F, 0x10, 0x9C, 0x21, 0x9C, 0x6F, 0xED,  // ....!.o.
                /* 1158 */  0x13, 0x02, 0xF1, 0x29, 0x14, 0x7C, 0x11, 0x26,  // ...).|.&
                /* 1160 */  0x84, 0x56, 0x01, 0x22, 0x8D, 0x87, 0x00, 0xE2,  // .V."....
                /* 1168 */  0x78, 0x44, 0x20, 0x3E, 0x34, 0xF0, 0x11, 0x81,  // xD >4...
                /* 1170 */  0xEB, 0x70, 0x82, 0x03, 0xF7, 0x8D, 0xDF, 0x9E,  // .p......
                /* 1178 */  0xEF, 0x4E, 0x20, 0x46, 0xF2, 0xDD, 0x09, 0x6C,  // .N F...l
                /* 1180 */  0x19, 0x8E, 0xBA, 0x50, 0x4E, 0x18, 0x11, 0x1F,  // ...PN...
                /* 1188 */  0x29, 0x1E, 0x30, 0x3C, 0x65, 0xF0, 0xBE, 0x2D,  // ).0<e..-
                /* 1190 */  0x34, 0x65, 0xE4, 0xFF, 0x7F, 0xCA, 0xF0, 0x4F,  // 4e.....O
                /* 1198 */  0x57, 0x80, 0x41, 0x0B, 0x67, 0x1A, 0x40, 0x95,  // W.A.g.@.
                /* 11A0 */  0x49, 0x87, 0x42, 0x4F, 0x57, 0x20, 0x93, 0x79,  // I.BOW .y
                /* 11A8 */  0xA6, 0x41, 0x87, 0x5D, 0x89, 0xCE, 0x34, 0xF0,  // .A.]..4.
                /* 11B0 */  0xA6, 0xE9, 0x78, 0x67, 0x1A, 0x0A, 0xE1, 0x60,  // ..xg...`
                /* 11B8 */  0x30, 0x8A, 0xE5, 0xE0, 0xFF, 0x7F, 0x2C, 0xC0,  // 0.....,.
                /* 11C0 */  0x04, 0x81, 0xA3, 0x20, 0xF6, 0x70, 0xFB, 0xA3,  // ... .p..
                /* 11C8 */  0x67, 0x1A, 0x78, 0x27, 0x71, 0x70, 0x5F, 0x6A,  // g.x'qp_j
                /* 11D0 */  0xC0, 0x37, 0x24, 0x38, 0x97, 0x1A, 0x7E, 0x56,  // .7$8..~V
                /* 11D8 */  0x07, 0xAE, 0xC7, 0x79, 0x38, 0xC7, 0x1A, 0xCC,  // ...y8...
                /* 11E0 */  0x98, 0xC0, 0x7E, 0xB0, 0x01, 0xDF, 0x98, 0x7C,  // ..~....|
                /* 11E8 */  0xB0, 0x81, 0x77, 0x3C, 0x03, 0xDB, 0xFF, 0x7F,  // ..w<....
                /* 11F0 */  0x48, 0x58, 0x28, 0x9F, 0xE1, 0xC0, 0x37, 0x6C,  // HX(...7l
                /* 11F8 */  0x38, 0x47, 0x1B, 0xDC, 0xB0, 0xC1, 0x7D, 0xB7,  // 8G....}.
                /* 1200 */  0x01, 0xDF, 0x31, 0x0F, 0xF8, 0x9D, 0x61, 0x00,  // ..1...a.
                /* 1208 */  0x5D, 0xC7, 0x3C, 0x50, 0xFC, 0xFF, 0xCF, 0x30,  // ].<P...0
                /* 1210 */  0x18, 0x15, 0xAB, 0xD0, 0x19, 0x06, 0x97, 0xE5,  // ........
                /* 1218 */  0x42, 0x0C, 0xF1, 0xBA, 0xF0, 0x66, 0x6E, 0xF5,  // B....fn.
                /* 1220 */  0xE7, 0x3B, 0x3A, 0x2A, 0xEB, 0xA6, 0x90, 0xFA,  // .;:*....
                /* 1228 */  0x03, 0x27, 0x4A, 0xEF, 0x81, 0x93, 0x82, 0x78,  // .'J....x
                /* 1230 */  0x6C, 0x4E, 0x72, 0xB8, 0x40, 0x6B, 0x39, 0x70,  // lNr.@k9p
                /* 1238 */  0x92, 0x39, 0x1D, 0xC3, 0xF9, 0x9C, 0x50, 0xF1,  // .9....P.
                /* 1240 */  0x67, 0x62, 0xA0, 0x7C, 0x0F, 0x83, 0x33, 0x28,  // gb.|..3(
                /* 1248 */  0xCC, 0x59, 0x0F, 0x78, 0xDE, 0xC3, 0x80, 0x45,  // .Y.x...E
                /* 1250 */  0xF0, 0x7B, 0x18, 0x2A, 0xEA, 0x8C, 0x28, 0x88,  // .{.*..(.
                /* 1258 */  0xAF, 0x05, 0xBE, 0x97, 0xC0, 0xB9, 0x73, 0xE0,  // ......s.
                /* 1260 */  0xFE, 0xFF, 0xF7, 0x12, 0x78, 0xD7, 0x30, 0x70,  // ....x.0p
                /* 1268 */  0xDC, 0x6E, 0xC0, 0x77, 0xE5, 0x00, 0xDE, 0x62,  // .n.w...b
                /* 1270 */  0x25, 0x5E, 0x99, 0xC1, 0x16, 0xEE, 0xCA, 0x8C,  // %^......
                /* 1278 */  0x96, 0x78, 0xE5, 0x80, 0x7A, 0xA6, 0xF7, 0xF5,  // .x..z...
                /* 1280 */  0xD9, 0xB7, 0x30, 0x2E, 0x07, 0x46, 0x62, 0x2E,  // ..0..Fb.
                /* 1288 */  0xAA, 0xA8, 0xF8, 0x57, 0x0E, 0x0A, 0xE2, 0x3B,  // ...W...;
                /* 1290 */  0x8E, 0xE3, 0x5C, 0x39, 0xD0, 0x63, 0xF2, 0x95,  // ..\9.c..
                /* 1298 */  0x03, 0xD6, 0xAD, 0x19, 0x58, 0xFE, 0xFF, 0xAF,  // ....X...
                /* 12A0 */  0x48, 0xF0, 0x4F, 0x1D, 0xB8, 0xBB, 0x18, 0xF0,  // H.O.....
                /* 12A8 */  0x3F, 0x5E, 0x80, 0xE3, 0x2E, 0x06, 0x9C, 0x8E,  // ?^......
                /* 12B0 */  0x17, 0x40, 0xFD, 0x82, 0x04, 0x32, 0x2D, 0x17,  // .@...2-.
                /* 12B8 */  0x24, 0x74, 0xA2, 0xE3, 0x05, 0xD4, 0x0B, 0xBE,  // $t......
                /* 12C0 */  0x33, 0x00, 0xEA, 0xFF, 0x7F, 0x41, 0xE2, 0x77,  // 3....A.w
                /* 12C8 */  0x24, 0xA7, 0x3E, 0xC2, 0xA0, 0x72, 0x9E, 0x0E,  // $.>..r..
                /* 12D0 */  0x28, 0x88, 0x01, 0x7D, 0x23, 0xF4, 0x35, 0x0C,  // (..}#.5.
                /* 12D8 */  0x77, 0x6E, 0xC0, 0x1F, 0x8F, 0x80, 0xE1, 0x21,  // wn.....!
                /* 12E0 */  0x8C, 0x5D, 0x7E, 0x80, 0x45, 0x8C, 0xB3, 0x15,  // .]~.E...
                /* 12E8 */  0x4A, 0xF8, 0xC5, 0x84, 0x82, 0x78, 0x62, 0x3E,  // J....xb>
                /* 12F0 */  0xC1, 0xC1, 0xB9, 0x4E, 0x70, 0x91, 0x63, 0xD2,  // ...Np.c.
                /* 12F8 */  0xA1, 0x16, 0xFC, 0xE7, 0x7E, 0x70, 0x8E, 0x0A,  // ....~p..
                /* 1300 */  0xEE, 0x70, 0xCF, 0xE6, 0xA8, 0xC0, 0xFC, 0xFF,  // .p......
                /* 1308 */  0xBF, 0x74, 0x60, 0x8E, 0x79, 0x80, 0x27, 0xA5,  // .t`.y.'.
                /* 1310 */  0x36, 0x25, 0xDE, 0x91, 0x40, 0x16, 0xEF, 0x8E,  // 6%..@...
                /* 1318 */  0x84, 0x16, 0x79, 0xEB, 0x80, 0x7A, 0xE4, 0xB1,  // ..y..z..
                /* 1320 */  0xAC, 0x3B, 0x12, 0x4A, 0x10, 0x8C, 0x2E, 0x49,  // .;.J...I
                /* 1328 */  0x3E, 0x3B, 0xF0, 0xA5, 0x19, 0xCC, 0x20, 0xBE,  // >;.... .
                /* 1330 */  0x23, 0x39, 0xC8, 0xAD, 0x03, 0xFA, 0x05, 0x09,  // #9......
                /* 1338 */  0x78, 0x1E, 0x1D, 0xC0, 0x71, 0xBE, 0x80, 0xF5,  // x...q...
                /* 1340 */  0xFF, 0xBF, 0x21, 0x81, 0xF1, 0x7C, 0x01, 0x5C,  // ..!..|.\
                /* 1348 */  0xEF, 0x48, 0xE0, 0x39, 0x5F, 0x00, 0xA6, 0x94,  // .H.9_...
                /* 1350 */  0x5E, 0x92, 0x40, 0xA6, 0xE7, 0xA0, 0x8E, 0x4E,  // ^.@....N
                /* 1358 */  0x75, 0x50, 0x87, 0xEA, 0x0D, 0x50, 0x39, 0x4E,  // uP...P9N
                /* 1360 */  0xE8, 0x74, 0x54, 0x4E, 0x00, 0xA3, 0x4B, 0x12,  // .tTN..K.
                /* 1368 */  0x18, 0xFE, 0xFF, 0x97, 0x24, 0xC0, 0x63, 0x94,  // ....$.c.
                /* 1370 */  0x9B, 0x09, 0x4A, 0xFC, 0xCD, 0x84, 0x82, 0xF8,  // ..J.....
                /* 1378 */  0x72, 0xEC, 0x33, 0x9C, 0xA7, 0x8A, 0x83, 0xF6,  // r.3.....
                /* 1380 */  0x00, 0x1E, 0x01, 0x5E, 0x4C, 0xE0, 0x5E, 0x91,  // ...^L.^.
                /* 1388 */  0x80, 0xD7, 0x98, 0x60, 0x29, 0x1E, 0x13, 0x10,  // ...`)...
                /* 1390 */  0xB8, 0x71, 0x80, 0x73, 0x4C, 0xFE, 0xFF, 0x8F,  // .q.sL...
                /* 1398 */  0x09, 0xC6, 0x1D, 0xFF, 0x98, 0xC0, 0x7F, 0x83,  // ........
                /* 13A0 */  0x07, 0xD7, 0x98, 0x60, 0x9F, 0x29, 0x8E, 0x09,  // ...`.)..
                /* 13A8 */  0xFC, 0x37, 0x23, 0xDF, 0x5B, 0x00, 0x4F, 0x7F,  // .7#.[.O.
                /* 13B0 */  0xC5, 0x0E, 0xAF, 0x59, 0x20, 0x3B, 0x68, 0xF8,  // ...Y ;h.
                /* 13B8 */  0xDE, 0x82, 0x93, 0x70, 0xCD, 0x82, 0x38, 0xCC,  // ...p..8.
                /* 13C0 */  0x47, 0x4C, 0x87, 0xBE, 0xEA, 0xD1, 0x51, 0x39,  // GL....Q9
                /* 13C8 */  0x2E, 0x89, 0x42, 0x83, 0xE8, 0xFF, 0x7F, 0xFA,  // ..B.....
                /* 13D0 */  0xE0, 0x31, 0x0F, 0x19, 0x14, 0xC4, 0x80, 0x3E,  // .1.....>
                /* 13D8 */  0x78, 0x03, 0x2B, 0x02, 0x1F, 0xBC, 0x01, 0xD3,  // x.+.....
                /* 13E0 */  0xA7, 0x5D, 0xF0, 0x1D, 0x27, 0x80, 0xF3, 0xFF,  // .]..'...
                /* 13E8 */  0xFF, 0x0C, 0x61, 0x87, 0x16, 0x2F, 0x81, 0x60,  // ..a../.`
                /* 13F0 */  0xBB, 0xF4, 0xF9, 0x38, 0x81, 0x0B, 0xB5, 0x54,  // ...8...T
                /* 13F8 */  0x1D, 0x27, 0xE0, 0x99, 0xBB, 0x8B, 0xD2, 0x4B,  // .'.....K
                /* 1400 */  0x20, 0x0F, 0x40, 0x21, 0xF9, 0xF7, 0x51, 0x94,  //  .@!..Q.
                /* 1408 */  0x60, 0x38, 0x0A, 0xE2, 0xB1, 0xF9, 0x44, 0x0D,  // `8....D.
                /* 1410 */  0xDC, 0xEE, 0x13, 0xE0, 0x3B, 0x51, 0x03, 0xB7,  // ....;Q..
                /* 1418 */  0x73, 0x03, 0xE0, 0xE1, 0xFF, 0x7F, 0x6E, 0x00,  // s.....n.
                /* 1420 */  0xC3, 0xE5, 0x0E, 0x6C, 0xE9, 0xCF, 0x0D, 0xE8,  // ...l....
                /* 1428 */  0x93, 0xB4, 0x2F, 0x77, 0xF0, 0xCE, 0x0D, 0x56,  // ../w...V
                /* 1430 */  0x7D, 0xA2, 0x46, 0xE9, 0xA5, 0x90, 0xEA, 0x73,  // }.F....s
                /* 1438 */  0x03, 0x4A, 0xE7, 0xB9, 0x81, 0x82, 0x78, 0x6C,  // .J....xl
                /* 1440 */  0x4E, 0x70, 0x28, 0x40, 0x8F, 0xD2, 0xF3, 0x7D,  // Np(@...}
                /* 1448 */  0x08, 0xA8, 0xF3, 0x50, 0x03, 0x44, 0x6F, 0x3D,  // ...P.Do=
                /* 1450 */  0xC0, 0xEA, 0xCC, 0x00, 0xBE, 0x5B, 0x0F, 0x70,  // .....[.p
                /* 1458 */  0xF9, 0xFF, 0xDF, 0x7A, 0x80, 0xF1, 0x7D, 0x82,  // ...z..}.
                /* 1460 */  0x5F, 0x37, 0x00, 0x3F, 0x3E, 0x4D, 0x3A, 0xBD,  // _7.?>M:.
                /* 1468 */  0xF5, 0x80, 0x2C, 0xD2, 0x75, 0x03, 0x2D, 0xEC,  // ..,.u.-.
                /* 1470 */  0x4E, 0x06, 0xF5, 0x52, 0x67, 0x29, 0x47, 0x69,  // N..Rg)Gi
                /* 1478 */  0x94, 0x88, 0x43, 0xB4, 0x2F, 0x98, 0xA8, 0xAB,  // ..C./...
                /* 1480 */  0x19, 0x07, 0xF1, 0x05, 0xCF, 0x67, 0x53, 0x5F,  // .....gS_
                /* 1488 */  0x37, 0xE0, 0x5D, 0x7A, 0xC0, 0xFE, 0xFF, 0xBF,  // 7.]z....
                /* 1490 */  0xF4, 0x00, 0x83, 0x7B, 0x11, 0xF0, 0xB8, 0x71,  // ...{...q
                /* 1498 */  0x80, 0xEF, 0x5E, 0x04, 0xDC, 0x4E, 0x16, 0x80,  // ..^..N..
                /* 14A0 */  0xAA, 0x7B, 0x11, 0xC8, 0xE2, 0x9F, 0x2C, 0xD0,  // .{....,.
                /* 14A8 */  0x21, 0x14, 0xFC, 0xFF, 0x4F, 0x16, 0x30, 0x0F,  // !...O.0.
                /* 14B0 */  0x46, 0x4F, 0x00, 0xBA, 0x17, 0xA1, 0x04, 0x53,  // FO.....S
                /* 14B8 */  0x48, 0xF6, 0xBD, 0x08, 0x25, 0xF4, 0x64, 0x41,  // H...%.dA
                /* 14C0 */  0x41, 0x3C, 0x36, 0x47, 0x38, 0x14, 0xA0, 0x55,  // A<6G8..U
                /* 14C8 */  0x80, 0x48, 0xE1, 0x3C, 0x34, 0x86, 0xAE, 0x0F,  // .H.<4...
                /* 14D0 */  0x46, 0x00, 0x35, 0xFF, 0xFF, 0xE7, 0x0D, 0xC0,  // F.5.....
                /* 14D8 */  0x9C, 0x4D, 0xAF, 0x22, 0x0F, 0x46, 0x20, 0x0B,  // .M.".F .
                /* 14E0 */  0x75, 0xDE, 0x40, 0x4B, 0x3B, 0x6F, 0x40, 0x3D,  // u.@K;o@=
                /* 14E8 */  0x32, 0x5B, 0xCC, 0xC1, 0x08, 0x25, 0x03, 0x46,  // 2[...%.F
                /* 14F0 */  0x27, 0x23, 0x1F, 0x0A, 0x78, 0xEC, 0xF3, 0x06,  // '#..x...
                /* 14F8 */  0x05, 0xF1, 0xC1, 0xC8, 0x87, 0x02, 0x38, 0xE7,  // ......8.
                /* 1500 */  0x0D, 0xCC, 0xC9, 0x08, 0x70, 0xF3, 0xFF, 0x3F,  // ....p..?
                /* 1508 */  0x19, 0x01, 0x0C, 0x3B, 0x5A, 0xE8, 0x64, 0x04,  // ...;Z.d.
                /* 1510 */  0xB2, 0x2C, 0x47, 0x0B, 0xB4, 0xA2, 0xA3, 0x05,  // .,G.....
                /* 1518 */  0x44, 0x69, 0x02, 0xB4, 0x1D, 0x6D, 0x7C, 0x32,  // Di...m|2
                /* 1520 */  0x42, 0xA5, 0x27, 0x51, 0xFA, 0xE3, 0x0B, 0x2A,  // B.'Q...*
                /* 1528 */  0xEF, 0xE9, 0x80, 0x82, 0x18, 0xD0, 0x61, 0x86,  // ......a.
                /* 1530 */  0x88, 0x82, 0xF4, 0x40, 0xFE, 0xFF, 0x8F, 0x70,  // ...@...p
                /* 1538 */  0x9E, 0xCE, 0x31, 0xBC, 0x38, 0x60, 0xA6, 0x5B,  // ..1.8`.[
                /* 1540 */  0x39, 0x82, 0x26, 0xD3, 0x3C, 0x9C, 0xE6, 0xF2,  // 9.&.<...
                /* 1548 */  0x76, 0x04, 0x5E, 0x5D, 0xD7, 0x02, 0xE8, 0xA7,  // v.^]....
                /* 1550 */  0x80, 0xA3, 0x3D, 0x93, 0x43, 0xB0, 0xE7, 0xCB,  // ..=.C...
                /* 1558 */  0x0F, 0x10, 0x89, 0x3F, 0x5D, 0x54, 0xE0, 0xE9,  // ...?]T..
                /* 1560 */  0x52, 0x10, 0x4F, 0x17, 0x8E, 0x94, 0x2B, 0x05,  // R.O...+.
                /* 1568 */  0x6A, 0xB2, 0xB8, 0x5B, 0xC1, 0xC3, 0x3A, 0xD8,  // j..[..:.
                /* 1570 */  0xAF, 0x89, 0x1E, 0x2E, 0x98, 0xAE, 0x6F, 0xC0,  // ......o.
                /* 1578 */  0x5D, 0xA9, 0x42, 0x58, 0xFF, 0xFF, 0x6F, 0x15,  // ].BX..o.
                /* 1580 */  0xE0, 0x89, 0xB5, 0x4E, 0xDD, 0x2A, 0x70, 0xE2,  // ...N.*p.
                /* 1588 */  0x4E, 0xEB, 0x10, 0x6F, 0x15, 0xBD, 0x41, 0xFA,  // N..o..A.
                /* 1590 */  0xB4, 0x8E, 0x12, 0x42, 0x21, 0x19, 0xD7, 0x37,  // ...B!..7
                /* 1598 */  0xD4, 0x35, 0xCB, 0x60, 0x06, 0xF1, 0xE8, 0x1C,  // .5.`....
                /* 15A0 */  0xEA, 0x5C, 0x80, 0x96, 0x74, 0xAB, 0x80, 0x72,  // .\..t..r
                /* 15A8 */  0x36, 0x00, 0xD7, 0x2D, 0x08, 0x3C, 0x67, 0x03,  // 6..-.<g.
                /* 15B0 */  0xC0, 0x94, 0xD7, 0xB3, 0x01, 0xC8, 0xC2, 0x5C,  // .......\
                /* 15B8 */  0x60, 0xD0, 0x92, 0xAE, 0x5A, 0x50, 0xFF, 0xFF,  // `...ZP..
                /* 15C0 */  0xCE, 0xEE, 0xB3, 0xF4, 0x02, 0xC3, 0xE3, 0x93,  // ........
                /* 15C8 */  0xE8, 0x08, 0x02, 0x37, 0xCD, 0xD9, 0x00, 0xAD,  // ...7....
                /* 15D0 */  0xE7, 0xAA, 0x85, 0x3A, 0xC1, 0x00, 0x9C, 0xFD,  // ...:....
                /* 15D8 */  0xFF, 0x5F, 0xB3, 0x40, 0xFE, 0x20, 0x7C, 0xAC,  // ._.@. |.
                /* 15E0 */  0x00, 0x59, 0xB0, 0x13, 0x0C, 0x5A, 0xDE, 0x09,  // .Y...Z..
                /* 15E8 */  0x06, 0xE2, 0xB1, 0xE2, 0x0D, 0x26, 0x41, 0x41,  // .....&AA
                /* 15F0 */  0x27, 0x18, 0x94, 0x14, 0x0A, 0x1D, 0x61, 0x7C,  // '.....a|
                /* 15F8 */  0x2E, 0xE0, 0xD1, 0xC1, 0x28, 0x88, 0x47, 0xE7,  // ....(.G.
                /* 1600 */  0x58, 0xE7, 0x02, 0xB4, 0xA8, 0x63, 0x05, 0xA4,  // X....c..
                /* 1608 */  0xBB, 0x01, 0x9C, 0x23, 0x0C, 0x60, 0xFA, 0x70,  // ...#.`.p
                /* 1610 */  0xF0, 0x08, 0x03, 0xE3, 0xFF, 0x7F, 0x84, 0x01,  // ........
                /* 1618 */  0x1E, 0xD6, 0x8E, 0x30, 0x00, 0x6D, 0xFF, 0xFF,  // ...0.m..
                /* 1620 */  0xC7, 0x0A, 0xC0, 0x81, 0x43, 0x8B, 0x47, 0x18,  // ....C.G.
                /* 1628 */  0x60, 0x76, 0xF1, 0xF4, 0x11, 0x06, 0xE0, 0xC6,  // `v......
                /* 1630 */  0xFF, 0xFF, 0x70, 0x00, 0xD6, 0x23, 0x0C, 0xD8,  // ..p..#..
                /* 1638 */  0x14, 0xDA, 0xF4, 0xA9, 0xD1, 0xA8, 0x55, 0x83,  // ......U.
                /* 1640 */  0x32, 0x35, 0xCA, 0x34, 0xA8, 0xD5, 0xA7, 0x52,  // 25.4...R
                /* 1648 */  0x63, 0xC6, 0xEC, 0x3F, 0x06, 0x14, 0x03, 0x42,  // c..?...B
                /* 1650 */  0x63, 0xF1, 0xE9, 0xC5, 0x20, 0xD6, 0x4D, 0xA1,  // c... .M.
                /* 1658 */  0xAB, 0xB3, 0x43, 0x80, 0x08, 0xC8, 0xB2, 0x7F,  // ..C.....
                /* 1660 */  0xE1, 0x02, 0x22, 0x20, 0x02, 0xB2, 0x90, 0x4F,  // .." ...O
                /* 1668 */  0x8A, 0x80, 0xAC, 0x0A, 0x44, 0x40, 0x4E, 0x05,  // ....D@N.
                /* 1670 */  0x44, 0x23, 0x02, 0xD1, 0x38, 0x1E, 0x80, 0x58,  // D#..8..X
                /* 1678 */  0x38, 0x10, 0x01, 0x59, 0x9D, 0x09, 0x20, 0x26,  // 8..Y.. &
                /* 1680 */  0x15, 0x44, 0x40, 0x96, 0xA5, 0x02, 0x88, 0x89,  // .D@.....
                /* 1688 */  0x04, 0x11, 0x90, 0x33, 0xAE, 0x4F, 0x40, 0x0E,  // ...3.O@.
                /* 1690 */  0x0C, 0x22, 0x20, 0x87, 0xFC, 0x56, 0x0B, 0xC8,  // ." ..V..
                /* 1698 */  0x91, 0x41, 0x04, 0x64, 0xC1, 0x3A, 0x80, 0x98,  // .A.d.:..
                /* 16A0 */  0x7C, 0x10, 0x01, 0x39, 0x3E, 0x10, 0x15, 0xE3,  // |..9>...
                /* 16A8 */  0x03, 0x88, 0x45, 0x79, 0x0C, 0x08, 0xC8, 0xB9,  // ..Ey....
                /* 16B0 */  0x40, 0x04, 0xE4, 0x1C, 0x34, 0x02, 0x72, 0x2A,  // @...4.r*
                /* 16B8 */  0x0A, 0x01, 0x59, 0x95, 0x13, 0x20, 0xA6, 0x11,  // ..Y.. ..
                /* 16C0 */  0x44, 0x40, 0x4E, 0x09, 0x44, 0x33, 0x03, 0x51,  // D@N.D3.Q
                /* 16C8 */  0xC1, 0x56, 0x80, 0x98, 0x7A, 0x10, 0x01, 0x59,  // .V..z..Y
                /* 16D0 */  0xA9, 0x16, 0x20, 0xA6, 0x1B, 0x44, 0x40, 0x4E,  // .. ..D@N
                /* 16D8 */  0xED, 0x05, 0x88, 0x69, 0x78, 0x07, 0x08, 0xC8,  // ...ix...
                /* 16E0 */  0x19, 0xCC, 0x00, 0xB1, 0x44, 0x20, 0x02, 0xB2,  // ....D ..
                /* 16E8 */  0x22, 0x37, 0x40, 0x4C, 0x1F, 0x88, 0x80, 0x9C,  // "7@L....
                /* 16F0 */  0x0E, 0x88, 0x66, 0x05, 0xA2, 0x4A, 0xED, 0x00,  // ..f..J..
                /* 16F8 */  0x31, 0xD9, 0x20, 0x02, 0xB2, 0xC8, 0x87, 0x90,  // 1. .....
                /* 1700 */  0x80, 0x2C, 0x19, 0x44, 0x40, 0x4E, 0xEC, 0x07,  // .,.D@N..
                /* 1708 */  0x88, 0xFD, 0xFF, 0xE3, 0x83, 0x08, 0xC8, 0x61,  // .......a
                /* 1710 */  0x0F, 0x21, 0x02, 0x72, 0x74, 0x10, 0x01, 0x59,  // .!.rt..Y
                /* 1718 */  0xBE, 0x21, 0x20, 0x16, 0x06, 0x44, 0x40, 0x16,  // .! ..D@.
                /* 1720 */  0xE5, 0x08, 0x88, 0x29, 0x04, 0x11, 0x90, 0xE3,  // ...)....
                /* 1728 */  0x01, 0xD1, 0xAC, 0x40, 0x34, 0xD9, 0xEB, 0x54,  // ...@4..T
                /* 1730 */  0x40, 0xCE, 0x09, 0x22, 0x20, 0xAB, 0xD5, 0x04,  // @.." ...
                /* 1738 */  0xC4, 0xA4, 0x83, 0x08, 0xC8, 0xB9, 0x81, 0xA8,  // ........
                /* 1740 */  0x08, 0x4F, 0x40, 0x2C, 0x32, 0x88, 0xAE, 0xED,  // .O@,2...
                /* 1748 */  0xE4, 0x21, 0x22, 0x20, 0xA7, 0x30, 0x05, 0xC4,  // .!" .0..
                /* 1750 */  0x22, 0x81, 0x08, 0xC8, 0x01, 0x54, 0x01, 0xB1,  // "....T..
                /* 1758 */  0x38, 0x20, 0x02, 0xB2, 0x24, 0x57, 0x40, 0x4C,  // 8 ..$W@L
                /* 1760 */  0x20, 0x88, 0x80, 0x9C, 0xEF, 0x41, 0x21, 0x20,  //  ....A! 
                /* 1768 */  0x87, 0x05, 0x11, 0x90, 0xA3, 0xD9, 0x02, 0x62,  // .......b
                /* 1770 */  0x41, 0x41, 0x04, 0x64, 0xA9, 0xAF, 0x25, 0x01,  // AA.d..%.
                /* 1778 */  0x59, 0x38, 0x88, 0x80, 0x9C, 0xDC, 0x17, 0x10,  // Y8......
                /* 1780 */  0x93, 0xF1, 0x12, 0x11, 0x90, 0x43, 0x83, 0x08,  // .....C..
                /* 1788 */  0xC8, 0x12, 0x8C, 0x01, 0xB1, 0x18, 0x20, 0x02,  // ...... .
                /* 1790 */  0x72, 0x28, 0x20, 0xAA, 0xEA, 0xD9, 0x29, 0x20,  // r( ...) 
                /* 1798 */  0x4B, 0x04, 0xD1, 0xE1, 0x81, 0x00, 0xD1, 0xC0,  // K.......
                /* 17A0 */  0x40, 0x34, 0xDE, 0xC3, 0x4E, 0x03, 0x22, 0x20,  // @4..N." 
                /* 17A8 */  0x3A, 0x60, 0x90, 0xA7, 0x8C, 0x0E, 0x17, 0x04,  // :`......
                /* 17B0 */  0x44, 0x40, 0x96, 0xFC, 0xE2, 0x15, 0x90, 0x03,  // D@......
                /* 17B8 */  0x80, 0xE8, 0x14, 0x42, 0xCC, 0x01, 0x31, 0x39,  // ...B..19
                /* 17C0 */  0x20, 0x02, 0x72, 0x12, 0x75, 0x40, 0x2C, 0x16,  //  .r.u@,.
                /* 17C8 */  0x88, 0x0E, 0x0A, 0xC4, 0xDD, 0x41, 0x81, 0x82,  // .....A..
                /* 17D0 */  0xE8, 0x30, 0x40, 0xEC, 0x1D, 0x06, 0x28, 0x88,  // .0@...(.
                /* 17D8 */  0x80, 0x1C, 0x0C, 0x88, 0xA6, 0x04, 0xA2, 0x99,  // ........
                /* 17E0 */  0x7E, 0x56, 0x02, 0x72, 0x42, 0x10, 0x01, 0x59,  // ~V.rB..Y
                /* 17E8 */  0xE7, 0x9B, 0x45, 0x40, 0x56, 0x0D, 0x22, 0x20,  // ..E@V." 
                /* 17F0 */  0x07, 0xFF, 0xAB, 0x04, 0x22, 0x2A, 0xDE, 0x37,  // ...."*.7
                /* 17F8 */  0x81, 0x88, 0x78, 0x10, 0x01, 0x39, 0x09, 0x10,  // ..x..9..
                /* 1800 */  0xD5, 0xFD, 0x72, 0x09, 0x44, 0xFE, 0xFF, 0x29,  // ..r.D..)
                /* 1808 */  0x40, 0x04, 0x64, 0x05, 0x0F, 0x19, 0x0D, 0x8C,  // @.d.....
                /* 1810 */  0x80, 0x08, 0xC8, 0xD9, 0x81, 0xA8, 0x12, 0x8D,  // ........
                /* 1818 */  0x03, 0xA3, 0x20, 0x1A, 0x18, 0x01, 0xA2, 0x7A,  // .. ....z
                /* 1820 */  0x3C, 0x02, 0x31, 0x75, 0x20, 0x3A, 0x30, 0x10,  // <.1u :0.
                /* 1828 */  0x20, 0x9A, 0x13, 0x88, 0x6A, 0x7C, 0xB4, 0x04,  //  ...j|..
                /* 1830 */  0x22, 0x82, 0x41, 0x74, 0xE0, 0x20, 0x40, 0x34,  // ".At. @4
                /* 1838 */  0x32, 0x10, 0x15, 0xAB, 0x12, 0x88, 0x29, 0x07,  // 2.....).
                /* 1840 */  0xD1, 0xA1, 0x81, 0x00, 0xD1, 0xFC, 0x40, 0x34,  // ......@4
                /* 1848 */  0xAD, 0x4B, 0x20, 0x96, 0x1D, 0x44, 0x40, 0xD6,  // .K ..D@.
                /* 1850 */  0xFE, 0xA3, 0x09, 0x44, 0x82, 0x80, 0x08, 0xC8,  // ...D....
                /* 1858 */  0xE9, 0x81, 0xA8, 0x14, 0x9D, 0x83, 0xA5, 0x20,  // ....... 
                /* 1860 */  0x3A, 0x28, 0x10, 0x9F, 0x40, 0x2C, 0x02, 0x88,  // :(..@,..
                /* 1868 */  0x80, 0x1C, 0x08, 0x88, 0x4A, 0x79, 0xF1, 0x04,  // ....Jy..
                /* 1870 */  0x22, 0xC2, 0x40, 0x04, 0xE4, 0x48, 0x40, 0x34,  // ".@..H@4
                /* 1878 */  0x20, 0x10, 0x95, 0x66, 0x14, 0x88, 0x09, 0x05,  //  ..f....
                /* 1880 */  0xD1, 0xA1, 0x85, 0x00, 0xD1, 0xC8, 0x40, 0x54,  // ......@T
                /* 1888 */  0xEE, 0xEB, 0x27, 0x10, 0x11, 0x0F, 0x22, 0x20,  // ..'..." 
                /* 1890 */  0x47, 0xFF, 0x00, 0x09, 0xC8, 0x3A, 0x1E, 0x41,  // G....:.A
                /* 1898 */  0x0F, 0x02, 0x0C, 0x44, 0x07, 0x01, 0x02, 0x44,  // ...D...D
                /* 18A0 */  0x25, 0x58, 0x05, 0x62, 0x7A, 0x40, 0x74, 0x70,  // %X.bz@tp
                /* 18A8 */  0x21, 0x40, 0x34, 0x14, 0x10, 0x15, 0xA3, 0x15,  // !@4.....
                /* 18B0 */  0x88, 0x29, 0x03, 0x11, 0x90, 0x13, 0x01, 0xD1,  // .)......
                /* 18B8 */  0x78, 0x40, 0x54, 0xD7, 0x7B, 0xE8, 0xE1, 0x86,  // x@T.{...
                /* 18C0 */  0x81, 0xE8, 0xA0, 0x42, 0x80, 0x68, 0x54, 0x20,  // ...B.hT 
                /* 18C8 */  0x9A, 0x4B, 0xEC, 0xA1, 0x81, 0x82, 0xE8, 0xB0,  // .K......
                /* 18D0 */  0x42, 0xD4, 0x1E, 0x56, 0x28, 0x88, 0x0E, 0x2B,  // B..V(..+
                /* 18D8 */  0xC4, 0xED, 0x61, 0x85, 0x82, 0xE8, 0xB0, 0x42,  // ..a....B
                /* 18E0 */  0xE4, 0x1E, 0x56, 0x28, 0x88, 0x0E, 0x2B, 0xC4,  // ..V(..+.
                /* 18E8 */  0x2E, 0x10, 0xFB, 0xFF, 0x47, 0x07, 0x11, 0x90,  // ....G...
                /* 18F0 */  0x45, 0xEB, 0x05, 0x62, 0x11, 0x40, 0x74, 0x68,  // E..b.@th
                /* 18F8 */  0x20, 0xAF, 0x26, 0x1D, 0x1A, 0x08, 0x88, 0x0E,  //  .&.....
                /* 1900 */  0x26, 0x04, 0x88, 0x46, 0x02, 0xA2, 0x01, 0x5E,  // &..F...^
                /* 1908 */  0x5B, 0x0F, 0x26, 0x0C, 0x44, 0xA7, 0x2D, 0xE2,  // [.&.D.-.
                /* 1910 */  0x18, 0x88, 0x89, 0x03, 0x11, 0x90, 0xC3, 0xBD,  // ........
                /* 1918 */  0x97, 0x34, 0x38, 0x02, 0xA2, 0x43, 0x09, 0x79,  // .48..C.y
                /* 1920 */  0x94, 0x3D, 0x94, 0x30, 0x10, 0x1D, 0x0E, 0xC8,  // .=.0....
                /* 1928 */  0x07, 0x4B, 0x87, 0x03, 0xF2, 0x4B, 0xD4, 0x41,  // .K...K.A
                /* 1930 */  0x80, 0xA8, 0x1E, 0x16, 0x05, 0xA1, 0x72, 0xFF,  // ......r.
                /* 1938 */  0x62, 0x41, 0x48, 0xD4, 0x3F, 0x54, 0x10, 0x22,  // bAH.?T."
                /* 1940 */  0xF4, 0x03, 0xA6, 0xE3, 0x01, 0xF9, 0x51, 0x05,  // ......Q.
                /* 1948 */  0x27, 0xF9, 0x40, 0x74, 0xF4, 0x20, 0xAF, 0x31,  // '.@t. .1
                /* 1950 */  0x1D, 0x3D, 0x08, 0x88, 0x80, 0xAC, 0xC6, 0x38,  // .=.....8
                /* 1958 */  0x10, 0xD3, 0x06, 0xA2, 0xA3, 0x13, 0x01, 0xA2,  // ........
                /* 1960 */  0x19, 0x81, 0xA8, 0xC2, 0x9F, 0x5B, 0x20, 0x22,  // .....[ "
                /* 1968 */  0x17, 0x44, 0xC7, 0x14, 0x02, 0x44, 0x03, 0x03,  // .D...D..
                /* 1970 */  0x51, 0x99, 0xCF, 0x40, 0x01, 0x59, 0x33, 0x88,  // Q..@.Y3.
                /* 1978 */  0x80, 0xAC, 0xEF, 0x07, 0x17, 0x88, 0xA8, 0x05,  // ........
                /* 1980 */  0x11, 0x90, 0x93, 0x6A, 0x07, 0x62, 0xB1, 0x41,  // ...j.b.A
                /* 1988 */  0x04, 0x64, 0xAD, 0x6F, 0xB9, 0xC3, 0x64, 0x20,  // .d.o..d 
                /* 1990 */  0x3A, 0x0E, 0x90, 0x77, 0xDB, 0xE3, 0x00, 0x03,  // :..w....
                /* 1998 */  0xD1, 0x20, 0x09, 0x10, 0x8D, 0x0E, 0x44, 0x85,  // . ....D.
                /* 19A0 */  0xAB, 0x3F, 0x8E, 0x50, 0x10, 0x1D, 0x21, 0x08,  // .?.P..!.
                /* 19A8 */  0x10, 0xD5, 0xE1, 0x1E, 0x88, 0xA9, 0x07, 0x11,  // ........
                /* 19B0 */  0x90, 0xA3, 0x00, 0x51, 0xD9, 0xF2, 0x8F, 0x31,  // ...Q...1
                /* 19B8 */  0x14, 0x44, 0xC7, 0x08, 0xA2, 0xFF, 0x18, 0x41,  // .D.....A
                /* 19C0 */  0x41, 0x04, 0xE4, 0x10, 0x40, 0x34, 0x11, 0x10,  // A...@4..
                /* 19C8 */  0x55, 0xEF, 0x1F, 0x88, 0x65, 0x01, 0x11, 0x90,  // U...e...
                /* 19D0 */  0x35, 0x05, 0x18, 0x38, 0x05, 0xD1, 0x11, 0x82,  // 5..8....
                /* 19D8 */  0x14, 0x38, 0x16, 0x50, 0x10, 0x01, 0xF9, 0xFF,  // .8.P....
                /* 19E0 */  0xAF, 0x2F, 0x01, 0x10, 0x13, 0x0B, 0xA2, 0x41,  // ./.....A
                /* 19E8 */  0x13, 0x20, 0x1A, 0x18, 0x88, 0x8A, 0x6E, 0x00,  // . ....n.
                /* 19F0 */  0xC4, 0x12, 0x80, 0xE8, 0x78, 0x42, 0x22, 0x1C,  // ....xB".
                /* 19F8 */  0x93, 0x28, 0x88, 0x8E, 0x40, 0xA4, 0x02, 0x10,  // .(..@...
                /* 1A00 */  0x53, 0x90, 0x01, 0x88, 0x65, 0x05, 0x11, 0x90,  // S...e...
                /* 1A08 */  0x93, 0x03, 0x51, 0xCD, 0x21, 0x06, 0x40, 0x41,  // ..Q.!.@A
                /* 1A10 */  0x74, 0x8C, 0x21, 0x40, 0x54, 0x49, 0x09, 0x20,  // t.!@TI. 
                /* 1A18 */  0x96, 0x20, 0xC5, 0x11, 0x82, 0x82, 0x68, 0xE0,  // . ....h.
                /* 1A20 */  0xA4, 0x05, 0x10, 0x8B, 0x01, 0xA2, 0xC1, 0x92,  // ........
                /* 1A28 */  0x1A, 0x40, 0x4C, 0x10, 0x88, 0x8E, 0x63, 0x04,  // .@L...c.
                /* 1A30 */  0x88, 0x06, 0x03, 0xA2, 0x92, 0x7A, 0x1C, 0xB9,  // .....z..
                /* 1A38 */  0x28, 0x88, 0x80, 0xAC, 0x25, 0xC8, 0x31, 0x84,  // (...%.1.
                /* 1A40 */  0x82, 0xE8, 0xC0, 0x40, 0x8A, 0x1C, 0x18, 0x28,  // ...@...(
                /* 1A48 */  0x88, 0x06, 0x4B, 0x92, 0x1C, 0x12, 0x28, 0x88,  // ..K...(.
                /* 1A50 */  0x8E, 0x35, 0xA4, 0xC9, 0x51, 0x85, 0x82, 0xE8,  // .5..Q...
                /* 1A58 */  0xC0, 0x40, 0xA2, 0x1C, 0x18, 0x28, 0x88, 0x80,  // .@...(..
                /* 1A60 */  0x1C, 0x14, 0x88, 0xA6, 0x06, 0xA2, 0x4A, 0xAB,  // ......J.
                /* 1A68 */  0x1C, 0x45, 0x28, 0x88, 0x8E, 0x36, 0x04, 0x88,  // .E(..6..
                /* 1A70 */  0x46, 0x07, 0xA2, 0x29, 0xB3, 0x1C, 0xD5, 0x28,  // F..)...(
                /* 1A78 */  0x88, 0x8E, 0x5C, 0xE4, 0xAD, 0x2A, 0x20, 0x6B,  // ..\..* k
                /* 1A80 */  0x07, 0xD1, 0x91, 0x84, 0x00, 0xD1, 0xFC, 0x40,  // .......@
                /* 1A88 */  0x54, 0x77, 0x99, 0x43, 0x03, 0x05, 0xD1, 0xC0,  // Tw.C....
                /* 1A90 */  0x09, 0x10, 0x55, 0xF2, 0xF0, 0xD5, 0x71, 0x88,  // ..U...q.
                /* 1A98 */  0x80, 0xE8, 0xA0, 0x40, 0x80, 0xA8, 0x96, 0x36,  // ...@...6
                /* 1AA0 */  0x03, 0xA5, 0x20, 0x3A, 0x36, 0x91, 0x38, 0x47,  // .. :6.8G
                /* 1AA8 */  0x16, 0x0A, 0x22, 0x20, 0x8B, 0xAB, 0x03, 0xC4,  // .." ....
                /* 1AB0 */  0x94, 0x82, 0x68, 0xE0, 0x24, 0xCF, 0xF1, 0x8B,  // ..h.$...
                /* 1AB8 */  0x82, 0x08, 0xC8, 0x01, 0xFB, 0x00, 0xB1, 0xB8,  // ........
                /* 1AC0 */  0x20, 0x02, 0xF2, 0xFF, 0x5F, 0x68, 0xA0, 0x41,  //  ..._h.A
                /* 1AC8 */  0x52, 0x10, 0x01, 0x39, 0x2E, 0x10, 0x0D, 0x0F,  // R..9....
                /* 1AD0 */  0x44, 0x45, 0x27, 0x3A, 0x20, 0x50, 0x10, 0x0D,  // DE': P..
                /* 1AD8 */  0x92, 0x34, 0x1A, 0x24, 0x05, 0xD1, 0x31, 0x8D,  // .4.$..1.
                /* 1AE0 */  0x00, 0x51, 0x15, 0x91, 0x0E, 0x09, 0xB4, 0x12,  // .Q......
                /* 1AE8 */  0x10, 0xCB, 0x03, 0xA2, 0xC1, 0x91, 0x4C, 0x83,  // ......L.
                /* 1AF0 */  0xA3, 0x20, 0x3A, 0x14, 0x10, 0x20, 0x9A, 0x11,  // . :.. ..
                /* 1AF8 */  0x88, 0xAA, 0x0B, 0x75, 0x34, 0xA4, 0x20, 0x1A,  // ...u4. .
                /* 1B00 */  0x1C, 0x29, 0x35, 0x38, 0x0A, 0xA2, 0x81, 0x12,  // .)58....
                /* 1B08 */  0x20, 0x1A, 0x13, 0x88, 0xCA, 0x4B, 0x75, 0xB8,  //  ....Ku.
                /* 1B10 */  0xA0, 0x20, 0x3A, 0x1A, 0x11, 0x20, 0x1A, 0x19,  // . :.. ..
                /* 1B18 */  0x88, 0x8A, 0x7D, 0xA0, 0xEA, 0x18, 0x45, 0x40,  // ..}...E@
                /* 1B20 */  0x04, 0x64, 0x89, 0xB5, 0x8E, 0x54, 0x14, 0x44,  // .d...T.D
                /* 1B28 */  0x87, 0x18, 0x92, 0x0B, 0x88, 0x05, 0x07, 0xD1,  // ........
                /* 1B30 */  0x91, 0x90, 0xF4, 0x3A, 0x2A, 0x52, 0x10, 0x1D,  // ...:*R..
                /* 1B38 */  0x32, 0x48, 0xB0, 0x43, 0x06, 0x2D, 0x76, 0x30,  // 2H.C.-v0
                /* 1B40 */  0xA0, 0x20, 0x3A, 0x90, 0x10, 0x20, 0xAA, 0x36,  // . :.. .6
                /* 1B48 */  0xD9, 0x80, 0x29, 0x88, 0x80, 0x9C, 0xB9, 0x19,  // ..).....
                /* 1B50 */  0x30, 0x8D, 0x06, 0xC4, 0x94, 0x83, 0x08, 0xC8,  // 0.......
                /* 1B58 */  0x39, 0x80, 0x68, 0x7E, 0x20, 0xAA, 0xA6, 0xDA,  // 9.h~ ...
                /* 1B60 */  0xE1, 0x84, 0x66, 0x3B, 0x24, 0x50, 0x10, 0x01,  // ..f;$P..
                /* 1B68 */  0x59, 0x47, 0x37, 0x20, 0x26, 0x0A, 0x44, 0xC7,  // YG7 &.D.
                /* 1B70 */  0x2C, 0x02, 0x44, 0xB5, 0x84, 0x3B, 0x0E, 0xD1,  // ,.D..;..
                /* 1B78 */  0x72, 0x40, 0x2C, 0x13, 0x88, 0x0E, 0x01, 0x24,  // r@,....$
                /* 1B80 */  0xDD, 0x21, 0x80, 0x82, 0xE8, 0xF8, 0x44, 0x80,  // .!....D.
                /* 1B88 */  0x68, 0x3E, 0x20, 0xAA, 0x2F, 0xDE, 0xC0, 0x29,  // h> ./..)
                /* 1B90 */  0x88, 0x8E, 0x59, 0xA4, 0xDE, 0x31, 0x8B, 0x82,  // ..Y..1..
                /* 1B98 */  0x08, 0xC8, 0x81, 0xF3, 0x1D, 0x99, 0x28, 0x88,  // ......(.
                /* 1BA0 */  0x80, 0xFC, 0xFF, 0x4F, 0x10, 0xF0, 0x40, 0x42,  // ...O..@B
                /* 1BA8 */  0x41, 0x74, 0xC4, 0x22, 0x05, 0x0F, 0x34, 0x14,  // At."..4.
                /* 1BB0 */  0x44, 0x07, 0x21, 0xD2, 0xF0, 0xC8, 0x47, 0x41,  // D.!...GA
                /* 1BB8 */  0x74, 0xD0, 0x20, 0x11, 0x0F, 0x03, 0x14, 0x44,  // t. ....D
                /* 1BC0 */  0x87, 0x08, 0x52, 0xF1, 0x10, 0x41, 0x41, 0x74,  // ..R..AAt
                /* 1BC8 */  0x40, 0x21, 0x1D, 0x0F, 0x28, 0x14, 0x44, 0x40,  // @!..(.D@
                /* 1BD0 */  0xFE, 0xFF, 0x03                                 // ...
            })
            Name (EPY1, 0x3928BD28)
            Name (EPY2, 0x69021BB5)
            Name (EPY3, 0x4A32AB76)
            Name (EPY4, 0x14DAA583)
            Method (EYPO, 0, Serialized)
            {
                Return (EPY1) /* \AMW0.EPY1 */
            }

            Method (EYPT, 0, Serialized)
            {
                Return (EPY2) /* \AMW0.EPY2 */
            }

            Method (EYPE, 0, Serialized)
            {
                Return (EPY3) /* \AMW0.EPY3 */
            }

            Method (EYPF, 0, Serialized)
            {
                Return (EPY4) /* \AMW0.EPY4 */
            }

            Method (SPEC, 1, Serialized)
            {
                Return (AMWV) /* \AMWV */
            }

            Method (DEVP, 1, Serialized)
            {
                CreateDWordField (Arg0, Zero, DVID)
                CreateDWordField (Arg0, 0x04, PARA)
                If ((PARA == One))
                {
                    Switch (DVID)
                    {
                        Case (0x00010011)
                        {
                            \_SB.DSAF |= One
                        }
                        Case (0x00010013)
                        {
                            \_SB.DSAF |= 0x02
                        }
                        Case (0x00010023)
                        {
                            \_SB.DSAF |= 0x04
                        }
                        Case (0x00060013)
                        {
                            \_SB.DSAF |= 0x08
                        }
                        Case (0x00060015)
                        {
                            \_SB.DSAF |= 0x10
                        }
                        Case (0x00010015)
                        {
                            \_SB.DSAF |= 0x20
                        }
                        Case (0x00090011)
                        {
                            \_SB.DSAF |= 0x40
                        }
                        Case (0x00070011)
                        {
                            \_SB.DSAF |= 0x80
                        }
                        Case (0x00080013)
                        {
                            \_SB.DSAF |= 0x0100
                        }
                        Case (0x00010019)
                        {
                            \_SB.DSAF |= 0x0200
                        }
                        Case (0x00010017)
                        {
                            \_SB.DSAF |= 0x0400
                        }
                        Case (0x00050011)
                        {
                            \_SB.DSAF |= 0x0800
                        }
                        Case (0x00050012)
                        {
                            \_SB.DSAF |= 0x1000
                        }
                        Case (0x00060017)
                        {
                            \_SB.DSAF |= 0x2000
                        }
                        Case (0x00080021)
                        {
                            \_SB.DSAF |= 0x4000
                        }
                        Case (0x00100011)
                        {
                            \_SB.DSAF |= 0x8000
                        }
                        Case (0x00050001)
                        {
                            \_SB.DSAF |= 0x00010000
                        }
                        Case (0x00120000)
                        {
                            \_SB.DSAF |= 0x00020000
                        }
                        Case (0x00120021)
                        {
                            \_SB.DSAF |= 0x00040000
                        }
                        Case (0x00120011)
                        {
                            \_SB.DSAF |= 0x00080000
                        }
                        Case (0x00120023)
                        {
                            \_SB.DSAF |= 0x00100000
                        }
                        Default
                        {
                            Return (Zero)
                        }

                    }
                }
                ElseIf ((PARA == Zero))
                {
                    Switch (DVID)
                    {
                        Case (0x00010011)
                        {
                            \_SB.DSAF &= 0xFFFFFFFFFFFFFFFE
                        }
                        Case (0x00010013)
                        {
                            \_SB.DSAF &= 0xFFFFFFFFFFFFFFFD
                        }
                        Case (0x00010023)
                        {
                            \_SB.DSAF &= 0xFFFFFFFFFFFFFFFB
                        }
                        Case (0x00060013)
                        {
                            \_SB.DSAF &= 0xFFFFFFFFFFFFFFF7
                        }
                        Case (0x00060015)
                        {
                            \_SB.DSAF &= 0xFFFFFFFFFFFFFFEF
                        }
                        Case (0x00010015)
                        {
                            \_SB.DSAF &= 0xFFFFFFFFFFFFFFDF
                        }
                        Case (0x00090011)
                        {
                            \_SB.DSAF &= 0xFFFFFFFFFFFFFFBF
                        }
                        Case (0x00070011)
                        {
                            \_SB.DSAF &= 0xFFFFFFFFFFFFFF7F
                        }
                        Case (0x00080013)
                        {
                            \_SB.DSAF &= 0xFFFFFFFFFFFFFEFF
                        }
                        Case (0x00010019)
                        {
                            \_SB.DSAF &= 0xFFFFFFFFFFFFFDFF
                        }
                        Case (0x00010017)
                        {
                            \_SB.DSAF &= 0xFFFFFFFFFFFFFBFF
                        }
                        Case (0x00050011)
                        {
                            \_SB.DSAF &= 0xFFFFFFFFFFFFF7FF
                        }
                        Case (0x00050012)
                        {
                            \_SB.DSAF &= 0xFFFFFFFFFFFFEFFF
                        }
                        Case (0x00060017)
                        {
                            \_SB.DSAF &= 0xFFFFFFFFFFFFDFFF
                        }
                        Case (0x00080021)
                        {
                            \_SB.DSAF &= 0xFFFFFFFFFFFFBFFF
                        }
                        Case (0x00100011)
                        {
                            \_SB.DSAF &= 0xFFFFFFFFFFFF7FFF
                        }
                        Case (0x00050001)
                        {
                            \_SB.DSAF &= 0xFFFFFFFFFFFEFFFF
                        }
                        Case (0x00120000)
                        {
                            \_SB.DSAF &= 0xFFFFFFFFFFFDFFFF
                        }
                        Case (0x00120021)
                        {
                            \_SB.DSAF &= 0xFFFFFFFFFFFBFFFF
                        }
                        Case (0x00120011)
                        {
                            \_SB.DSAF &= 0xFFFFFFFFFFF7FFFF
                        }
                        Case (0x00120023)
                        {
                            \_SB.DSAF &= 0xFFFFFFFFFFEFFFFF
                        }
                        Default
                        {
                            Return (Zero)
                        }

                    }
                }

                Return (One)
            }

            Method (SDSP, 1, Serialized)
            {
                CreateDWordField (Arg0, Zero, ACTN)
                Return (Zero)
            }

            Method (GDSP, 1, Serialized)
            {
                CreateDWordField (Arg0, Zero, ACTN)
                Return (Zero)
            }

            Method (DEVS, 1, Serialized)
            {
                CreateDWordField (Arg0, Zero, DVID)
                CreateDWordField (Arg0, 0x04, CPAR)
                Switch (DVID)
                {
                    Case (Zero)
                    {
                        Return (Zero)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }

            Method (DSTS, 1, Serialized)
            {
                CreateDWordField (Arg0, Zero, DVID)
                Switch (DVID)
                {
                    Case (0xA0000000)
                    {
                        Local0 = 0x02
                    }
                    Case (0xA0000002)
                    {
                        Local0 = One
                    }
                    Case (Zero)
                    {
                        Return (Zero)
                    }
                    Default
                    {
                        Local0 = Zero
                    }

                }

                Local0 &= 0x0007FFFF
                Return (Local0)
            }

            Method (GPID, 0, Serialized)
            {
                Return (Zero)
            }

            Method (KBFT, 1, Serialized)
            {
                Return (Zero)
            }

            Method (HKEY, 0, Serialized)
            {
                Return (Zero)
            }

            Method (CFVS, 1, Serialized)
            {
            }

            Method (CFVG, 0, Serialized)
            {
            }

            Name (RAMA, 0xCA8A1018)
            Name (WBUF, Buffer (0x50){})
            OperationRegion (\RAMX, SystemMemory, RAMA, 0x0100)
            Field (RAMX, ByteAcc, NoLock, Preserve)
            {
                WFUN,   32, 
                WSIZ,   32, 
                Offset (0x10), 
                IDAT,   896, 
                ODAT,   1024
            }

            Mutex (WMTX, 0x00)
            Name (LSTF, Buffer (0x04){})
            Name (LSTI, Buffer (0x70){})
            Name (CURF, Buffer (0x04){})
            Name (CURI, Buffer (0x70){})
            Method (WMII, 0, Serialized)
            {
                CURF = WFUN /* \AMW0.WFUN */
                CURI = IDAT /* \AMW0.IDAT */
                If (((CURF == LSTF) && (CURI == LSTI)))
                {
                    Return (Zero)
                }
                Else
                {
                    ODAT = Zero
                    \_SB.ISMI (0xDA)
                    LSTF = WFUN /* \AMW0.WFUN */
                    LSTI = IDAT /* \AMW0.IDAT */
                }
            }

            Method (LERR, 1, Serialized)
            {
                WBUF = ODAT /* \AMW0.ODAT */
                Return (DerefOf (WBUF [Zero]))
            }

            Method (GBOD, 1, Serialized)
            {
                If ((Acquire (WMTX, 0xFFFF) == Zero))
                {
                    WFUN = 0x80000001
                    WMII ()
                    WBUF = ODAT /* \AMW0.ODAT */
                    Release (WMTX)
                    Return (WBUF) /* \AMW0.WBUF */
                }

                Return (Ones)
            }

            Method (SBOD, 1, Serialized)
            {
                If ((Acquire (WMTX, 0xFFFF) == Zero))
                {
                    WFUN = 0x80000002
                    IDAT = Arg0
                    WMII ()
                    WBUF = ODAT /* \AMW0.ODAT */
                    Release (WMTX)
                    Return (WBUF) /* \AMW0.WBUF */
                }

                Return (Ones)
            }

            Method (GBON, 1, Serialized)
            {
                If ((Acquire (WMTX, 0xFFFF) == Zero))
                {
                    WFUN = 0x80000003
                    IDAT = Arg0
                    WMII ()
                    WBUF = ODAT /* \AMW0.ODAT */
                    Release (WMTX)
                    Return (WBUF) /* \AMW0.WBUF */
                }

                Return (Ones)
            }

            Method (GLBN, 1, Serialized)
            {
                If ((Acquire (WMTX, 0xFFFF) == Zero))
                {
                    WFUN = 0x80000006
                    IDAT = Arg0
                    WMII ()
                    WBUF = ODAT /* \AMW0.ODAT */
                    Release (WMTX)
                    Return (WBUF) /* \AMW0.WBUF */
                }

                Return (Ones)
            }

            Method (ISLG, 1, Serialized)
            {
                If ((Acquire (WMTX, 0xFFFF) == Zero))
                {
                    WFUN = 0x80000007
                    IDAT = Arg0
                    WMII ()
                    WBUF = ODAT /* \AMW0.ODAT */
                    Release (WMTX)
                    Return (WBUF) /* \AMW0.WBUF */
                }

                Return (Ones)
            }

            Method (GLBO, 1, Serialized)
            {
                If ((Acquire (WMTX, 0xFFFF) == Zero))
                {
                    WFUN = 0x80000008
                    IDAT = Arg0
                    WMII ()
                    WBUF = ODAT /* \AMW0.ODAT */
                    Release (WMTX)
                    Return (WBUF) /* \AMW0.WBUF */
                }

                Return (Ones)
            }

            Method (SLBO, 1, Serialized)
            {
                If ((Acquire (WMTX, 0xFFFF) == Zero))
                {
                    WFUN = 0x80000009
                    IDAT = Arg0
                    WMII ()
                    WBUF = ODAT /* \AMW0.ODAT */
                    Release (WMTX)
                    Return (WBUF) /* \AMW0.WBUF */
                }

                Return (Ones)
            }

            Method (SAPW, 1, Serialized)
            {
                If ((Acquire (WMTX, 0xFFFF) == Zero))
                {
                    WFUN = 0x80000004
                    IDAT = Arg0
                    WMII ()
                    WBUF = ODAT /* \AMW0.ODAT */
                    Release (WMTX)
                    Return (WBUF) /* \AMW0.WBUF */
                }

                Return (Ones)
            }

            Method (SUPW, 1, Serialized)
            {
                If ((Acquire (WMTX, 0xFFFF) == Zero))
                {
                    WFUN = 0x80000005
                    IDAT = Arg0
                    WMII ()
                    WBUF = ODAT /* \AMW0.ODAT */
                    Release (WMTX)
                    Return (WBUF) /* \AMW0.WBUF */
                }

                Return (Ones)
            }

            Method (SBOG, 1, Serialized)
            {
                If ((Acquire (WMTX, 0xFFFF) == Zero))
                {
                    WFUN = 0x8000000A
                    IDAT = Arg0
                    WMII ()
                    WBUF = ODAT /* \AMW0.ODAT */
                    Release (WMTX)
                    Return (WBUF) /* \AMW0.WBUF */
                }

                Return (Ones)
            }

            Method (LDFT, 0, Serialized)
            {
                If ((Acquire (WMTX, 0xFFFF) == Zero))
                {
                    WFUN = 0x8000000B
                    WMII ()
                    WBUF = ODAT /* \AMW0.ODAT */
                    Release (WMTX)
                    Return (WBUF) /* \AMW0.WBUF */
                }

                Return (Ones)
            }

            Method (SFTB, 1, Serialized)
            {
                If ((Acquire (WMTX, 0xFFFF) == Zero))
                {
                    WFUN = 0x8000000C
                    IDAT = Arg0
                    WMII ()
                    WBUF = ODAT /* \AMW0.ODAT */
                    Release (WMTX)
                    Return (WBUF) /* \AMW0.WBUF */
                }

                Return (Ones)
            }

            Method (SDFT, 1, Serialized)
            {
                If ((Acquire (WMTX, 0xFFFF) == Zero))
                {
                    WFUN = 0x8000000D
                    IDAT = Arg0
                    WMII ()
                    WBUF = ODAT /* \AMW0.ODAT */
                    Release (WMTX)
                    Return (WBUF) /* \AMW0.WBUF */
                }

                Return (Ones)
            }

            Method (SFTM, 0, Serialized)
            {
                If ((Acquire (WMTX, 0xFFFF) == Zero))
                {
                    WFUN = 0x8000000E
                    WMII ()
                    WBUF = ODAT /* \AMW0.ODAT */
                    Release (WMTX)
                    Return (WBUF) /* \AMW0.WBUF */
                }

                Return (Ones)
            }

            Method (DCTL, 1, Serialized)
            {
                If ((Acquire (WMTX, 0xFFFF) == Zero))
                {
                    WFUN = 0x8000000F
                    IDAT = Arg0
                    WMII ()
                    WBUF = ODAT /* \AMW0.ODAT */
                    Release (WMTX)
                    Return (WBUF) /* \AMW0.WBUF */
                }

                Return (Ones)
            }

            Method (GFAN, 1, Serialized)
            {
                If ((Acquire (WMTX, 0xFFFF) == Zero))
                {
                    WFUN = 0x80000010
                    IDAT = Arg0
                    WMII ()
                    WBUF = ODAT /* \AMW0.ODAT */
                    Release (WMTX)
                    Return (WBUF) /* \AMW0.WBUF */
                }

                Return (Ones)
            }

            Method (SFAN, 1, Serialized)
            {
                If ((Acquire (WMTX, 0xFFFF) == Zero))
                {
                    WFUN = 0x80000011
                    IDAT = Arg0
                    WMII ()
                    WBUF = ODAT /* \AMW0.ODAT */
                    Release (WMTX)
                    Return (WBUF) /* \AMW0.WBUF */
                }

                Return (Ones)
            }

            Method (GFCV, 1, Serialized)
            {
                If ((Acquire (WMTX, 0xFFFF) == Zero))
                {
                    WFUN = 0x80000012
                    IDAT = Arg0
                    WMII ()
                    WBUF = ODAT /* \AMW0.ODAT */
                    Release (WMTX)
                    Return (WBUF) /* \AMW0.WBUF */
                }

                Return (Ones)
            }

            Method (SFCV, 1, Serialized)
            {
                If ((Acquire (WMTX, 0xFFFF) == Zero))
                {
                    WFUN = 0x80000013
                    IDAT = Arg0
                    WMII ()
                    WBUF = ODAT /* \AMW0.ODAT */
                    Release (WMTX)
                    Return (WBUF) /* \AMW0.WBUF */
                }

                Return (Ones)
            }

            Method (CKPW, 1, Serialized)
            {
                If ((Acquire (WMTX, 0xFFFF) == Zero))
                {
                    WFUN = 0x80000014
                    IDAT = Arg0
                    WMII ()
                    WBUF = ODAT /* \AMW0.ODAT */
                    Release (WMTX)
                    Return (WBUF) /* \AMW0.WBUF */
                }

                Return (Ones)
            }

            Method (GTOD, 1, Serialized)
            {
                If ((Acquire (WMTX, 0xFFFF) == Zero))
                {
                    WFUN = 0x80000015
                    IDAT = Arg0
                    WMII ()
                    WBUF = ODAT /* \AMW0.ODAT */
                    Release (WMTX)
                    Return (WBUF) /* \AMW0.WBUF */
                }

                Return (Ones)
            }

            Method (STOD, 1, Serialized)
            {
                If ((Acquire (WMTX, 0xFFFF) == Zero))
                {
                    WFUN = 0x80000016
                    IDAT = Arg0
                    WMII ()
                    WBUF = ODAT /* \AMW0.ODAT */
                    Release (WMTX)
                    Return (WBUF) /* \AMW0.WBUF */
                }

                Return (Ones)
            }

            Method (AAPD, 1, Serialized)
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB)
    {
        Name (RAMB, 0xCA9A7018)
        OperationRegion (\RAMW, SystemMemory, RAMB, 0x00010000)
        Field (RAMW, ByteAcc, NoLock, Preserve)
        {
            DSAF,   32, 
            PAR0,   32, 
            PAR1,   32, 
            PAR2,   32, 
            PINX,   32, 
            PADD,   2048
        }

        Mutex (MPAR, 0x00)
        Name (ARBF, Buffer (0x10){})
        CreateDWordField (ARBF, Zero, REAX)
        CreateDWordField (ARBF, 0x04, REBX)
        CreateDWordField (ARBF, 0x08, RECX)
        CreateDWordField (ARBF, 0x0C, REDX)
        OperationRegion (DEB0, SystemIO, 0x80, One)
        Field (DEB0, ByteAcc, NoLock, Preserve)
        {
            DBG8,   8
        }

        OperationRegion (IOB2, SystemIO, SMIP, 0x02)
        Field (IOB2, ByteAcc, NoLock, Preserve)
        {
            SMPT,   8, 
            SMIS,   8
        }

        Method (ISMI, 1, Serialized)
        {
            SMPT = Arg0
        }

        Method (GMSR, 1, Serialized)
        {
            If ((Acquire (MPAR, 0xFFFF) == Zero))
            {
                PINX = 0x80000000
                PAR0 = Arg0
                ISMI (0x90)
                RECX = Arg0
                REAX = PAR1 /* \_SB_.PAR1 */
                REDX = PAR2 /* \_SB_.PAR2 */
                Release (MPAR)
                Return (ARBF) /* \_SB_.ARBF */
            }

            Return (Ones)
        }

        Method (SMSR, 1, Serialized)
        {
            If ((Acquire (MPAR, 0xFFFF) == Zero))
            {
                CreateDWordField (Arg0, Zero, AEAX)
                CreateDWordField (Arg0, 0x04, AEBX)
                CreateDWordField (Arg0, 0x08, AECX)
                CreateDWordField (Arg0, 0x0C, AEDX)
                PINX = 0x80000001
                PAR0 = AECX /* \_SB_.SMSR.AECX */
                PAR1 = AEAX /* \_SB_.SMSR.AEAX */
                PAR2 = AEDX /* \_SB_.SMSR.AEDX */
                ISMI (0x90)
                Release (MPAR)
            }

            Return (Ones)
        }

        Method (PRID, 1, Serialized)
        {
            If ((Acquire (MPAR, 0xFFFF) == Zero))
            {
                PINX = 0x80000002
                PAR0 = Arg0
                ISMI (0x90)
                REAX = PAR1 /* \_SB_.PAR1 */
                REDX = PAR2 /* \_SB_.PAR2 */
                Release (MPAR)
                Return (ARBF) /* \_SB_.ARBF */
            }

            Return (Ones)
        }

        Method (GPRE, 1, Serialized)
        {
            PAR0 = Arg0
            PINX = 0x80000005
            ISMI (0x90)
            Return (PAR0) /* \_SB_.PAR0 */
        }

        Method (GNVS, 1, Serialized)
        {
            PAR0 = Arg0
            PINX = 0x80000003
            ISMI (0x90)
            Return (PAR1) /* \_SB_.PAR1 */
        }

        Method (SNVS, 2, Serialized)
        {
            PAR0 = Arg0
            PAR1 = Arg1
            PINX = 0x80000004
            ISMI (0x90)
        }

        Method (SIRS, 0, Serialized)
        {
            PINX = 0x8000000A
            ISMI (0x90)
        }

        Method (SARM, 1, Serialized)
        {
            If (((Arg0 > 0x03) && (Arg0 < 0x06)))
            {
                ISMI (0x92)
            }
        }

        Method (GAMM, 0, Serialized)
        {
            ISMI (0x91)
        }

        Method (SAMM, 0, Serialized)
        {
            ISMI (0x92)
        }
    }

    Scope (_SB)
    {
        OperationRegion (WPBR, SystemMemory, 0xCA9B8000, 0x0001)
        Field (WPBR, AnyAcc, NoLock, Preserve)
        {
            CTRL,   8
        }
    }

    Scope (\)
    {
        Device (ACCE)
        {
            Name (_HID, EisaId ("PNP0C14") /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, "ASUSCONTROLCENTER")  // _UID: Unique ID
            Name (_WDG, Buffer (0x28)
            {
                /* 0000 */  0x15, 0xB1, 0x2B, 0xB8, 0xAE, 0x43, 0x35, 0x4B,  // ..+..C5K
                /* 0008 */  0xB7, 0x9D, 0xBD, 0x64, 0x16, 0xAB, 0xC3, 0x81,  // ...d....
                /* 0010 */  0x42, 0x43, 0x01, 0x02, 0x21, 0x12, 0x90, 0x05,  // BC..!...
                /* 0018 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,  // f.......
                /* 0020 */  0xC9, 0x06, 0x29, 0x10, 0x4D, 0x4F, 0x01, 0x00   // ..).MO..
            })
            Method (WMBC, 3, Serialized)
            {
                Switch (Arg1)
                {
                    Case (0x41504631)
                    {
                        Return (APF1 (Arg2))
                    }
                    Case (0x41505057)
                    {
                        Return (APPW (Arg2))
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }

                Return (Zero)
            }

            Name (WQMO, Buffer (0x0298)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                /* 0008 */  0x88, 0x02, 0x00, 0x00, 0x08, 0x08, 0x00, 0x00,  // ........
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                /* 0018 */  0x18, 0xC9, 0x83, 0x00, 0x01, 0x06, 0x18, 0x42,  // .......B
                /* 0020 */  0x20, 0x82, 0x00, 0x89, 0xC0, 0xA1, 0x21, 0x14,  //  .....!.
                /* 0028 */  0x43, 0x01, 0x0C, 0x46, 0x02, 0x84, 0xE4, 0x40,  // C..F...@
                /* 0030 */  0xC8, 0x05, 0x13, 0x13, 0x20, 0x02, 0x42, 0x5E,  // .... .B^
                /* 0038 */  0x05, 0xD8, 0x14, 0x60, 0x12, 0x44, 0xFD, 0xFB,  // ...`.D..
                /* 0040 */  0x43, 0x94, 0x04, 0x87, 0x12, 0x02, 0x21, 0x89,  // C.....!.
                /* 0048 */  0x02, 0xCC, 0x0B, 0xD0, 0x2D, 0xC0, 0xB0, 0x00,  // ....-...
                /* 0050 */  0xDB, 0x02, 0x4C, 0x0B, 0x70, 0x0C, 0x49, 0xA5,  // ..L.p.I.
                /* 0058 */  0x81, 0x53, 0x02, 0x4B, 0x81, 0x90, 0x50, 0x01,  // .S.K..P.
                /* 0060 */  0xCA, 0x05, 0xF8, 0x16, 0xA0, 0x1D, 0x51, 0x92,  // ......Q.
                /* 0068 */  0x05, 0x58, 0x86, 0x11, 0x81, 0x47, 0x11, 0xD9,  // .X...G..
                /* 0070 */  0x68, 0x9C, 0xA0, 0x6C, 0x68, 0x94, 0x0C, 0x08,  // h..lh...
                /* 0078 */  0x79, 0x16, 0x60, 0x1D, 0x98, 0x10, 0xD8, 0xBD,  // y.`.....
                /* 0080 */  0x00, 0x85, 0x02, 0xC4, 0x09, 0x50, 0x86, 0x21,  // .....P.!
                /* 0088 */  0x84, 0xC6, 0x10, 0x64, 0x4D, 0x80, 0xAD, 0x91,  // ...dM...
                /* 0090 */  0xC8, 0x99, 0x00, 0x83, 0x02, 0x2C, 0xA2, 0x10,  // .....,..
                /* 0098 */  0xAC, 0x30, 0xA1, 0x0C, 0xD2, 0x9B, 0x00, 0x73,  // .0.....s
                /* 00A0 */  0x93, 0x12, 0x8A, 0x31, 0x6A, 0x43, 0x13, 0x6C,  // ...1jC.l
                /* 00A8 */  0x8C, 0x98, 0x71, 0x3A, 0x44, 0xD4, 0x04, 0xE2,  // ..q:D...
                /* 00B0 */  0xB4, 0x3F, 0x08, 0x12, 0x69, 0xC1, 0x1A, 0xAA,  // .?..i...
                /* 00B8 */  0x23, 0x8D, 0x06, 0x35, 0xBC, 0x04, 0x87, 0xEB,  // #..5....
                /* 00C0 */  0xA1, 0x9E, 0x63, 0xE7, 0x02, 0xA4, 0x4F, 0x52,  // ..c...OR
                /* 00C8 */  0x20, 0x07, 0x79, 0x6E, 0x75, 0x8E, 0x93, 0x80,  //  .ynu...
                /* 00D0 */  0x24, 0x30, 0x56, 0x82, 0x0E, 0x06, 0x0E, 0xC5,  // $0V.....
                /* 00D8 */  0x35, 0xA0, 0x66, 0x7C, 0xBC, 0x4C, 0x10, 0x1C,  // 5.f|.L..
                /* 00E0 */  0x6A, 0x88, 0x1E, 0x68, 0xB8, 0x13, 0x38, 0x44,  // j..h..8D
                /* 00E8 */  0x06, 0x68, 0x61, 0xA3, 0x41, 0x1D, 0x00, 0x3C,  // .ha.A..<
                /* 00F0 */  0xAD, 0x93, 0x79, 0x0F, 0x28, 0x55, 0x80, 0xD9,  // ..y.(U..
                /* 00F8 */  0x31, 0x6B, 0x8E, 0x09, 0x8E, 0xC7, 0xD0, 0xA7,  // 1k......
                /* 0100 */  0x7B, 0x3E, 0x27, 0x9C, 0xC0, 0xF2, 0x07, 0x81,  // {>'.....
                /* 0108 */  0x1A, 0x99, 0xA1, 0x3D, 0xC9, 0xD3, 0x8A, 0x19,  // ...=....
                /* 0110 */  0xF2, 0xF0, 0x0F, 0x8B, 0x89, 0x85, 0xD0, 0x07,  // ........
                /* 0118 */  0xC1, 0xE3, 0x81, 0xF7, 0xFF, 0x1F, 0x0F, 0x78,  // .......x
                /* 0120 */  0x14, 0x9F, 0x09, 0x84, 0xF0, 0x4A, 0x10, 0xDB,  // .....J..
                /* 0128 */  0x03, 0x7A, 0x44, 0xC0, 0x02, 0x7B, 0x40, 0xF6,  // .zD..{@.
                /* 0130 */  0x2B, 0x00, 0x21, 0x78, 0x99, 0x23, 0x92, 0x53,  // +.!x.#.S
                /* 0138 */  0x04, 0x8D, 0xC9, 0x38, 0x11, 0xE2, 0x3F, 0x39,  // ...8..?9
                /* 0140 */  0x70, 0x91, 0xD0, 0x28, 0x31, 0xD0, 0xA8, 0x23,  // p..(1..#
                /* 0148 */  0x40, 0xD4, 0x88, 0x41, 0x43, 0x1F, 0x4B, 0x68,  // @..AC.Kh
                /* 0150 */  0x0F, 0xC6, 0xE7, 0x05, 0x23, 0x9C, 0x62, 0xB9,  // ....#.b.
                /* 0158 */  0xC7, 0x06, 0xA2, 0x79, 0x36, 0x3A, 0x2D, 0x9C,  // ...y6:-.
                /* 0160 */  0xCF, 0x9B, 0x80, 0x09, 0x06, 0x7F, 0x18, 0x68,  // .......h
                /* 0168 */  0x94, 0x96, 0x4E, 0x21, 0x1B, 0xCB, 0xF4, 0x88,  // ..N!....
                /* 0170 */  0x28, 0x95, 0x47, 0x10, 0x37, 0xE6, 0x19, 0x14,  // (.G.7...
                /* 0178 */  0x0E, 0xAD, 0x53, 0x42, 0x58, 0x1D, 0x12, 0x74,  // ..SBX..t
                /* 0180 */  0xCA, 0x30, 0xB0, 0x23, 0x93, 0xE8, 0x88, 0xE1,  // .0.#....
                /* 0188 */  0xE1, 0x98, 0xD7, 0x31, 0x0F, 0x1B, 0x14, 0xC4,  // ...1....
                /* 0190 */  0x80, 0xCE, 0x00, 0x21, 0x27, 0x87, 0x00, 0x94,  // ...!'...
                /* 0198 */  0x0A, 0x10, 0xCD, 0xE0, 0x6C, 0x8E, 0xE7, 0x61,  // ....l..a
                /* 01A0 */  0xC0, 0xA2, 0x2F, 0x0A, 0x74, 0x7A, 0xBE, 0x02,  // ../.tz..
                /* 01A8 */  0x70, 0x0D, 0x10, 0x3A, 0x14, 0x18, 0xD8, 0x6A,  // p..:...j
                /* 01B0 */  0x00, 0x29, 0x18, 0x9F, 0xEC, 0xA3, 0x44, 0x02,  // .)....D.
                /* 01B8 */  0xA6, 0xEB, 0x1C, 0x00, 0xFD, 0x8E, 0xE1, 0x11,  // ........
                /* 01C0 */  0x9C, 0xDD, 0x23, 0xC5, 0x23, 0x46, 0x82, 0xFA,  // ..#.#F..
                /* 01C8 */  0xAE, 0x01, 0xA0, 0x00, 0xF2, 0xD8, 0xAD, 0x74,  // .......t
                /* 01D0 */  0xFA, 0x74, 0x0C, 0x21, 0xC2, 0x44, 0x33, 0x3A,  // .t.!.D3:
                /* 01D8 */  0x0F, 0x3F, 0x54, 0x54, 0xDC, 0xA1, 0x52, 0x10,  // .?TT..R.
                /* 01E0 */  0x0F, 0xD5, 0x51, 0x86, 0x8A, 0xFA, 0xFF, 0x1F,  // ..Q.....
                /* 01E8 */  0x1F, 0xF8, 0xA1, 0xC1, 0x07, 0x89, 0x27, 0x01,  // ......'.
                /* 01F0 */  0xCC, 0x01, 0xE0, 0x21, 0x03, 0xD6, 0xA9, 0x20,  // ...!... 
                /* 01F8 */  0x64, 0x44, 0x4F, 0xC3, 0x70, 0x9E, 0x2C, 0x87,  // dDO.p.,.
                /* 0200 */  0xF3, 0x64, 0xF9, 0x58, 0x7C, 0x88, 0x80, 0x3F,  // .d.X|..?
                /* 0208 */  0x5A, 0x2C, 0x41, 0x81, 0xB3, 0x05, 0x39, 0x3C,  // Z,A...9<
                /* 0210 */  0x46, 0xF0, 0x48, 0xA9, 0xAC, 0x71, 0xA1, 0x2E,  // F.H..q..
                /* 0218 */  0x07, 0x3E, 0xC5, 0x30, 0xEC, 0xF7, 0x06, 0x5F,  // .>.0..._
                /* 0220 */  0x11, 0xCE, 0xF0, 0x2D, 0xE2, 0xA0, 0xDE, 0x37,  // ...-...7
                /* 0228 */  0x6C, 0x4C, 0xA3, 0x50, 0x83, 0xB0, 0x1E, 0x29,  // lL.P...)
                /* 0230 */  0x87, 0x35, 0x5A, 0xD8, 0x03, 0x7E, 0xD6, 0xF0,  // .5Z..~..
                /* 0238 */  0x3D, 0xC5, 0x33, 0x33, 0x46, 0x58, 0x8F, 0xD6,  // =.33FX..
                /* 0240 */  0xA7, 0x09, 0xD8, 0x08, 0xBD, 0x9F, 0x26, 0x00,  // ......&.
                /* 0248 */  0x5D, 0xFF, 0xFF, 0xD3, 0x04, 0xC0, 0x39, 0xAF,  // ].....9.
                /* 0250 */  0x42, 0x4F, 0x13, 0x60, 0x53, 0x68, 0xD3, 0xA7,  // BO.`Sh..
                /* 0258 */  0x46, 0xA3, 0x56, 0x0D, 0xCA, 0xD4, 0x28, 0xD3,  // F.V...(.
                /* 0260 */  0xA0, 0x56, 0x9F, 0x4A, 0x8D, 0x19, 0x3B, 0x39,  // .V.J..;9
                /* 0268 */  0x38, 0xC6, 0x62, 0x35, 0x16, 0x8B, 0x58, 0x8E,  // 8.b5..X.
                /* 0270 */  0x40, 0xAC, 0x92, 0x42, 0x46, 0x40, 0x24, 0x19,  // @..BF@$.
                /* 0278 */  0x44, 0x40, 0x96, 0x77, 0xF2, 0x11, 0x90, 0xC5,  // D@.w....
                /* 0280 */  0x82, 0x08, 0xC8, 0xF9, 0x2C, 0x00, 0xB1, 0xB0,  // ....,...
                /* 0288 */  0x20, 0x02, 0x72, 0xB0, 0xBF, 0x83, 0x80, 0xFC,  //  .r.....
                /* 0290 */  0xFF, 0x8F, 0x09, 0x22, 0x20, 0xFF, 0xFF, 0x01   // ..." ...
            })
            OperationRegion (DEB0, SystemIO, 0x80, One)
            Field (DEB0, ByteAcc, NoLock, Preserve)
            {
                DBG8,   8
            }

            OperationRegion (IOB2, SystemIO, SMIP, 0x02)
            Field (IOB2, ByteAcc, NoLock, Preserve)
            {
                SMPT,   8, 
                SMIS,   8
            }

            Method (ISMI, 1, Serialized)
            {
                SMPT = Arg0
            }

            Method (WMII, 0, Serialized)
            {
                ISMI (0x96)
            }

            Method (APF1, 1, Serialized)
            {
                WFUN = 0x80000004
                IDAT = Arg0
                WMII ()
                Return (WSTA) /* \ACCE.WSTA */
            }

            Method (APPW, 1, Serialized)
            {
                WFUN = 0x80000008
                IDAT = Arg0
                WMII ()
                Return (WSTA) /* \ACCE.WSTA */
            }

            Name (ACCB, 0xCAA29018)
            OperationRegion (\ACCX, SystemMemory, ACCB, 0x0100)
            Field (ACCX, ByteAcc, NoLock, Preserve)
            {
                WSIZ,   32, 
                WFUN,   32, 
                WSTA,   32, 
                IDAT,   1952
            }
        }
    }

    Scope (_SB)
    {
        Name (ANVM, 0xCA9F9000)
        OperationRegion (ANVX, SystemMemory, ANVM, 0x00030000)
        Name (ASFH, 0xCA9B9000)
        OperationRegion (ASFX, SystemMemory, ASFH, 0x00040000)
    }

    Name (BDID, 0xFF)
    Scope (_SB.PCI0.GP13.XHC0)
    {
        Device (RHUB)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Device (PRT1)
            {
                Name (_ADR, One)  // _ADR: Address
                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    0xFF, 
                    0x03, 
                    Zero, 
                    Zero
                })
                Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                {
                    ToPLD (
                        PLD_Revision           = 0x2,
                        PLD_IgnoreColor        = 0x1,
                        PLD_Red                = 0x0,
                        PLD_Green              = 0x0,
                        PLD_Blue               = 0x0,
                        PLD_Width              = 0x0,
                        PLD_Height             = 0x0,
                        PLD_UserVisible        = 0x1,
                        PLD_Dock               = 0x0,
                        PLD_Lid                = 0x0,
                        PLD_Panel              = "BACK",
                        PLD_VerticalPosition   = "CENTER",
                        PLD_HorizontalPosition = "LEFT",
                        PLD_Shape              = "VERTICALRECTANGLE",
                        PLD_GroupOrientation   = 0x0,
                        PLD_GroupToken         = 0x0,
                        PLD_GroupPosition      = 0x1,
                        PLD_Bay                = 0x0,
                        PLD_Ejectable          = 0x1,
                        PLD_EjectRequired      = 0x0,
                        PLD_CabinetNumber      = 0x0,
                        PLD_CardCageNumber     = 0x0,
                        PLD_Reference          = 0x0,
                        PLD_Rotation           = 0x0,
                        PLD_Order              = 0x0,
                        PLD_VerticalOffset     = 0xFFFF,
                        PLD_HorizontalOffset   = 0xFFFF)

                })
            }

            Device (PRT2)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    0xFF, 
                    0x03, 
                    Zero, 
                    Zero
                })
                Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                {
                    ToPLD (
                        PLD_Revision           = 0x2,
                        PLD_IgnoreColor        = 0x1,
                        PLD_Red                = 0x0,
                        PLD_Green              = 0x0,
                        PLD_Blue               = 0x0,
                        PLD_Width              = 0x0,
                        PLD_Height             = 0x0,
                        PLD_UserVisible        = 0x1,
                        PLD_Dock               = 0x0,
                        PLD_Lid                = 0x0,
                        PLD_Panel              = "BACK",
                        PLD_VerticalPosition   = "CENTER",
                        PLD_HorizontalPosition = "RIGHT",
                        PLD_Shape              = "VERTICALRECTANGLE",
                        PLD_GroupOrientation   = 0x0,
                        PLD_GroupToken         = 0x0,
                        PLD_GroupPosition      = 0x2,
                        PLD_Bay                = 0x0,
                        PLD_Ejectable          = 0x1,
                        PLD_EjectRequired      = 0x0,
                        PLD_CabinetNumber      = 0x0,
                        PLD_CardCageNumber     = 0x0,
                        PLD_Reference          = 0x0,
                        PLD_Rotation           = 0x0,
                        PLD_Order              = 0x0,
                        PLD_VerticalOffset     = 0xFFFF,
                        PLD_HorizontalOffset   = 0xFFFF)

                })
            }

            Device (PRT3)
            {
                Name (_ADR, 0x03)  // _ADR: Address
                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    0xFF, 
                    0x03, 
                    Zero, 
                    Zero
                })
                Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                {
                    ToPLD (
                        PLD_Revision           = 0x2,
                        PLD_IgnoreColor        = 0x1,
                        PLD_Red                = 0x0,
                        PLD_Green              = 0x0,
                        PLD_Blue               = 0x0,
                        PLD_Width              = 0x0,
                        PLD_Height             = 0x0,
                        PLD_UserVisible        = 0x1,
                        PLD_Dock               = 0x0,
                        PLD_Lid                = 0x0,
                        PLD_Panel              = "BACK",
                        PLD_VerticalPosition   = "CENTER",
                        PLD_HorizontalPosition = "LEFT",
                        PLD_Shape              = "VERTICALRECTANGLE",
                        PLD_GroupOrientation   = 0x0,
                        PLD_GroupToken         = 0x0,
                        PLD_GroupPosition      = 0x3,
                        PLD_Bay                = 0x0,
                        PLD_Ejectable          = 0x1,
                        PLD_EjectRequired      = 0x0,
                        PLD_CabinetNumber      = 0x0,
                        PLD_CardCageNumber     = 0x0,
                        PLD_Reference          = 0x0,
                        PLD_Rotation           = 0x0,
                        PLD_Order              = 0x0,
                        PLD_VerticalOffset     = 0xFFFF,
                        PLD_HorizontalOffset   = 0xFFFF)

                })
            }

            Device (PRT4)
            {
                Name (_ADR, 0x04)  // _ADR: Address
                Name (UPC1, Package (0x04)
                {
                    Zero, 
                    0xFF, 
                    Zero, 
                    Zero
                })
                Name (UPC2, Package (0x04)
                {
                    0xFF, 
                    0x03, 
                    Zero, 
                    Zero
                })
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (UPC2) /* \_SB_.PCI0.GP13.XHC0.RHUB.PRT4.UPC2 */
                }

                Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                {
                    ToPLD (
                        PLD_Revision           = 0x2,
                        PLD_IgnoreColor        = 0x1,
                        PLD_Red                = 0x0,
                        PLD_Green              = 0x0,
                        PLD_Blue               = 0x0,
                        PLD_Width              = 0x0,
                        PLD_Height             = 0x0,
                        PLD_UserVisible        = 0x1,
                        PLD_Dock               = 0x0,
                        PLD_Lid                = 0x0,
                        PLD_Panel              = "BACK",
                        PLD_VerticalPosition   = "CENTER",
                        PLD_HorizontalPosition = "RIGHT",
                        PLD_Shape              = "VERTICALRECTANGLE",
                        PLD_GroupOrientation   = 0x0,
                        PLD_GroupToken         = 0x0,
                        PLD_GroupPosition      = 0x4,
                        PLD_Bay                = 0x0,
                        PLD_Ejectable          = 0x1,
                        PLD_EjectRequired      = 0x0,
                        PLD_CabinetNumber      = 0x0,
                        PLD_CardCageNumber     = 0x0,
                        PLD_Reference          = 0x0,
                        PLD_Rotation           = 0x0,
                        PLD_Order              = 0x0,
                        PLD_VerticalOffset     = 0xFFFF,
                        PLD_HorizontalOffset   = 0xFFFF)

                })
            }

            Device (PRT5)
            {
                Name (_ADR, 0x05)  // _ADR: Address
                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    0xFF, 
                    0x03, 
                    Zero, 
                    Zero
                })
                Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                {
                    ToPLD (
                        PLD_Revision           = 0x2,
                        PLD_IgnoreColor        = 0x1,
                        PLD_Red                = 0x0,
                        PLD_Green              = 0x0,
                        PLD_Blue               = 0x0,
                        PLD_Width              = 0x0,
                        PLD_Height             = 0x0,
                        PLD_UserVisible        = 0x1,
                        PLD_Dock               = 0x0,
                        PLD_Lid                = 0x0,
                        PLD_Panel              = "BACK",
                        PLD_VerticalPosition   = "CENTER",
                        PLD_HorizontalPosition = "LEFT",
                        PLD_Shape              = "VERTICALRECTANGLE",
                        PLD_GroupOrientation   = 0x0,
                        PLD_GroupToken         = 0x0,
                        PLD_GroupPosition      = 0x1,
                        PLD_Bay                = 0x0,
                        PLD_Ejectable          = 0x1,
                        PLD_EjectRequired      = 0x0,
                        PLD_CabinetNumber      = 0x0,
                        PLD_CardCageNumber     = 0x0,
                        PLD_Reference          = 0x0,
                        PLD_Rotation           = 0x0,
                        PLD_Order              = 0x0,
                        PLD_VerticalOffset     = 0xFFFF,
                        PLD_HorizontalOffset   = 0xFFFF)

                })
            }

            Device (PRT6)
            {
                Name (_ADR, 0x06)  // _ADR: Address
                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    0xFF, 
                    0x03, 
                    Zero, 
                    Zero
                })
                Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                {
                    ToPLD (
                        PLD_Revision           = 0x2,
                        PLD_IgnoreColor        = 0x1,
                        PLD_Red                = 0x0,
                        PLD_Green              = 0x0,
                        PLD_Blue               = 0x0,
                        PLD_Width              = 0x0,
                        PLD_Height             = 0x0,
                        PLD_UserVisible        = 0x1,
                        PLD_Dock               = 0x0,
                        PLD_Lid                = 0x0,
                        PLD_Panel              = "BACK",
                        PLD_VerticalPosition   = "CENTER",
                        PLD_HorizontalPosition = "RIGHT",
                        PLD_Shape              = "VERTICALRECTANGLE",
                        PLD_GroupOrientation   = 0x0,
                        PLD_GroupToken         = 0x0,
                        PLD_GroupPosition      = 0x2,
                        PLD_Bay                = 0x0,
                        PLD_Ejectable          = 0x1,
                        PLD_EjectRequired      = 0x0,
                        PLD_CabinetNumber      = 0x0,
                        PLD_CardCageNumber     = 0x0,
                        PLD_Reference          = 0x0,
                        PLD_Rotation           = 0x0,
                        PLD_Order              = 0x0,
                        PLD_VerticalOffset     = 0xFFFF,
                        PLD_HorizontalOffset   = 0xFFFF)

                })
            }

            Device (PRT7)
            {
                Name (_ADR, 0x07)  // _ADR: Address
                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    0xFF, 
                    0x03, 
                    Zero, 
                    Zero
                })
                Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                {
                    ToPLD (
                        PLD_Revision           = 0x2,
                        PLD_IgnoreColor        = 0x1,
                        PLD_Red                = 0x0,
                        PLD_Green              = 0x0,
                        PLD_Blue               = 0x0,
                        PLD_Width              = 0x0,
                        PLD_Height             = 0x0,
                        PLD_UserVisible        = 0x1,
                        PLD_Dock               = 0x0,
                        PLD_Lid                = 0x0,
                        PLD_Panel              = "BACK",
                        PLD_VerticalPosition   = "CENTER",
                        PLD_HorizontalPosition = "LEFT",
                        PLD_Shape              = "VERTICALRECTANGLE",
                        PLD_GroupOrientation   = 0x0,
                        PLD_GroupToken         = 0x0,
                        PLD_GroupPosition      = 0x3,
                        PLD_Bay                = 0x0,
                        PLD_Ejectable          = 0x1,
                        PLD_EjectRequired      = 0x0,
                        PLD_CabinetNumber      = 0x0,
                        PLD_CardCageNumber     = 0x0,
                        PLD_Reference          = 0x0,
                        PLD_Rotation           = 0x0,
                        PLD_Order              = 0x0,
                        PLD_VerticalOffset     = 0xFFFF,
                        PLD_HorizontalOffset   = 0xFFFF)

                })
            }

            Device (PRT8)
            {
                Name (_ADR, 0x08)  // _ADR: Address
                Name (UPC1, Package (0x04)
                {
                    Zero, 
                    0xFF, 
                    Zero, 
                    Zero
                })
                Name (UPC2, Package (0x04)
                {
                    0xFF, 
                    0x03, 
                    Zero, 
                    Zero
                })
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (UPC2) /* \_SB_.PCI0.GP13.XHC0.RHUB.PRT8.UPC2 */
                }

                Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                {
                    ToPLD (
                        PLD_Revision           = 0x2,
                        PLD_IgnoreColor        = 0x1,
                        PLD_Red                = 0x0,
                        PLD_Green              = 0x0,
                        PLD_Blue               = 0x0,
                        PLD_Width              = 0x0,
                        PLD_Height             = 0x0,
                        PLD_UserVisible        = 0x1,
                        PLD_Dock               = 0x0,
                        PLD_Lid                = 0x0,
                        PLD_Panel              = "BACK",
                        PLD_VerticalPosition   = "CENTER",
                        PLD_HorizontalPosition = "RIGHT",
                        PLD_Shape              = "VERTICALRECTANGLE",
                        PLD_GroupOrientation   = 0x0,
                        PLD_GroupToken         = 0x0,
                        PLD_GroupPosition      = 0x4,
                        PLD_Bay                = 0x0,
                        PLD_Ejectable          = 0x1,
                        PLD_EjectRequired      = 0x0,
                        PLD_CabinetNumber      = 0x0,
                        PLD_CardCageNumber     = 0x0,
                        PLD_Reference          = 0x0,
                        PLD_Rotation           = 0x0,
                        PLD_Order              = 0x0,
                        PLD_VerticalOffset     = 0xFFFF,
                        PLD_HorizontalOffset   = 0xFFFF)

                })
            }
        }
    }
}

