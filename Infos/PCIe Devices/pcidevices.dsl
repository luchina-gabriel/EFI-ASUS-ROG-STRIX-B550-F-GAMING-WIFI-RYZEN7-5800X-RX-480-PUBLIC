DefinitionBlock ("", "SSDT", 2, "HACK", "PCI", 0x00000000)
{
	External (_SB_.PCI0.D002, DeviceObj)
	Device (_SB.PCI0.D002)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Starship/Matisse Root Complex" },
				"device_type", Buffer () { "Host bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,0,0" },
			})
		}
	}
	External (_SB_.PCI0.IOMA, DeviceObj)
	Device (_SB.PCI0.IOMA)
	{
		Name (_ADR, 0x00000002)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Starship/Matisse IOMMU" },
				"device_type", Buffer () { "IOMMU" },
				"AAPL,slot-name", Buffer () { "Internal@0,0,2" },
			})
		}
	}
	External (_SB_.PCI0.GPP1, DeviceObj)
	Device (_SB.PCI0.GPP1)
	{
		Name (_ADR, 0x00010002)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Starship/Matisse GPP Bridge" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,1,2" },
			})
		}
	}
	External (_SB_.PCI0.GPP8, DeviceObj)
	Device (_SB.PCI0.GPP8)
	{
		Name (_ADR, 0x00030001)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Starship/Matisse GPP Bridge" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,3,1" },
			})
		}
	}
	External (_SB_.PCI0.GP12, DeviceObj)
	Device (_SB.PCI0.GP12)
	{
		Name (_ADR, 0x00070001)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Starship/Matisse Internal PCIe GPP Bridge 0 to bus[E:B]" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,7,1" },
			})
		}
	}
	External (_SB_.PCI0.GP13, DeviceObj)
	Device (_SB.PCI0.GP13)
	{
		Name (_ADR, 0x00080001)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Starship/Matisse Internal PCIe GPP Bridge 0 to bus[E:B]" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,8,1" },
			})
		}
	}
	External (_SB_.PCI0.D019, DeviceObj)
	Device (_SB.PCI0.D019)
	{
		Name (_ADR, 0x00140000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "FCH SMBus Controller" },
				"device_type", Buffer () { "SMBus" },
				"AAPL,slot-name", Buffer () { "Internal@0,20,0" },
			})
		}
	}
	External (_SB_.PCI0.SBRG, DeviceObj)
	Device (_SB.PCI0.SBRG)
	{
		Name (_ADR, 0x00140003)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "FCH LPC Bridge" },
				"device_type", Buffer () { "ISA bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,20,3" },
			})
		}
	}
	External (_SB_.PCI0.GPP1.PTXH, DeviceObj)
	Device (_SB.PCI0.GPP1.PTXH)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "500 Series Chipset USB 3.1 XHCI Controller" },
				"device_type", Buffer () { "USB controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,1,2/0,0" },
			})
		}
	}
	External (_SB_.PCI0.GPP1.PT01, DeviceObj)
	Device (_SB.PCI0.GPP1.PT01)
	{
		Name (_ADR, 0x00000001)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "500 Series Chipset SATA Controller" },
				"device_type", Buffer () { "SATA controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,1,2/0,1" },
			})
		}
	}
	External (_SB_.PCI0.GPP1.PT02, DeviceObj)
	Device (_SB.PCI0.GPP1.PT02)
	{
		Name (_ADR, 0x00000002)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "500 Series Chipset Switch Upstream Port" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,1,2/0,2" },
			})
		}
	}
	External (_SB_.PCI0.GPP8.GFX1, DeviceObj)
	Device (_SB.PCI0.GPP8.GFX1)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "GA106 [GeForce RTX 3060 Lite Hash Rate]" },
				"device_type", Buffer () { "VGA compatible controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,3,1/0,0" },
			})
		}
	}
	External (_SB_.PCI0.GPP8.HDAU, DeviceObj)
	Device (_SB.PCI0.GPP8.HDAU)
	{
		Name (_ADR, 0x00000001)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "GA106 High Definition Audio Controller" },
				"device_type", Buffer () { "Audio device" },
				"AAPL,slot-name", Buffer () { "Internal@0,3,1/0,1" },
			})
		}
	}
	External (_SB_.PCI0.GP13.XHC0, DeviceObj)
	Device (_SB.PCI0.GP13.XHC0)
	{
		Name (_ADR, 0x00000003)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Matisse USB 3.0 Host Controller" },
				"device_type", Buffer () { "USB controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,8,1/0,3" },
			})
		}
	}
	External (_SB_.PCI0.GP13.HDEF, DeviceObj)
	Device (_SB.PCI0.GP13.HDEF)
	{
		Name (_ADR, 0x00000004)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Starship/Matisse HD Audio Controller" },
				"device_type", Buffer () { "Audio device" },
				"AAPL,slot-name", Buffer () { "Internal@0,8,1/0,4" },
			})
		}
	}
	External (_SB_.PCI0.GP12.D012, DeviceObj)
	Device (_SB.PCI0.GP12.D012)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Starship/Matisse PCIe Dummy Function" },
				"device_type", Buffer () { "Non-Essential Instrumentation" },
				"AAPL,slot-name", Buffer () { "Internal@0,7,1/0,0" },
			})
		}
	}
	External (_SB_.PCI0.GPP1.PT02.PT20, DeviceObj)
	Device (_SB.PCI0.GPP1.PT02.PT20)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "???" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,1,2/0,2/0,0" },
			})
		}
	}
	External (_SB_.PCI0.GPP1.PT02.PT24, DeviceObj)
	Device (_SB.PCI0.GPP1.PT02.PT24)
	{
		Name (_ADR, 0x00040000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "???" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,1,2/0,2/4,0" },
			})
		}
	}
	External (_SB_.PCI0.GPP1.PT02.PT28, DeviceObj)
	Device (_SB.PCI0.GPP1.PT02.PT28)
	{
		Name (_ADR, 0x00080000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "???" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,1,2/0,2/8,0" },
			})
		}
	}
	External (_SB_.PCI0.GPP1.PT02.PT29, DeviceObj)
	Device (_SB.PCI0.GPP1.PT02.PT29)
	{
		Name (_ADR, 0x00090000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "???" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,1,2/0,2/9,0" },
			})
		}
	}
	External (_SB_.PCI0.GPP1.PT02.PT20.GFX0, DeviceObj)
	Device (_SB.PCI0.GPP1.PT02.PT20.GFX0)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Ellesmere [Radeon RX 470/480/570/570X/580/580X/590]" },
				"device_type", Buffer () { "VGA compatible controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,1,2/0,2/0,0/0,0" },
			})
		}
	}
	External (_SB_.PCI0.GPP1.PT02.PT20.HDAU, DeviceObj)
	Device (_SB.PCI0.GPP1.PT02.PT20.HDAU)
	{
		Name (_ADR, 0x00000001)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Ellesmere HDMI Audio [Radeon RX 470/480 / 570/580/590]" },
				"device_type", Buffer () { "Audio device" },
				"AAPL,slot-name", Buffer () { "Internal@0,1,2/0,2/0,0/0,1" },
			})
		}
	}
	External (_SB_.PCI0.GPP1.PT02.PT24.M2_2, DeviceObj)
	Device (_SB.PCI0.GPP1.PT02.PT24.M2_2)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "NV1 NVMe SSD" },
				"device_type", Buffer () { "Non-Volatile memory controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,1,2/0,2/4,0/0,0" },
			})
		}
	}
	External (_SB_.PCI0.GPP1.PT02.PT29.I225, DeviceObj)
	Device (_SB.PCI0.GPP1.PT02.PT29.I225)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Ethernet Controller I225-V" },
				"device_type", Buffer () { "Ethernet controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,1,2/0,2/9,0/0,0" },
			})
		}
	}
	External (_SB_.PCI0.GPP1.PT02.PT28.WIFI, DeviceObj)
	Device (_SB.PCI0.GPP1.PT02.PT28.WIFI)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Wi-Fi 6 AX200" },
				"device_type", Buffer () { "Network controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,1,2/0,2/8,0/0,0" },
			})
		}
	}
}
