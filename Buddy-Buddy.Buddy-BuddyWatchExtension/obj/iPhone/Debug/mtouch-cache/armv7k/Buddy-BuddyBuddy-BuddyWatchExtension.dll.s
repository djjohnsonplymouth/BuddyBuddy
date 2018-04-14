.subsections_via_symbols
.section __DWARF, __debug_line,regular,debug
Ldebug_line_section_start:
Ldebug_line_start:
.section __DWARF, __debug_abbrev,regular,debug

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,135,64,8,58,15,59,15,17
	.byte 1,18,1,64,10,0,0,3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4,36,0
	.byte 11,11,62,11,3,8,0,0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3,8,73
	.byte 19,56,10,0,0,7,22,0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8,28,13
	.byte 0,0,10,57,1,3,8,0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0,0,13
	.byte 15,0,73,19,0,0,14,16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18,1,0
	.byte 0,0
.section __DWARF, __debug_info,regular,debug
Ldebug_info_start:

LDIFF_SYM0=Ldebug_info_end - Ldebug_info_begin
	.long LDIFF_SYM0
Ldebug_info_begin:

	.short 2
	.long 0
	.byte 4,1
	.asciz "Mono AOT Compiler 5.8.0 (tarball Wed Feb  7 23:09:18 EST 2018)"
	.asciz "Buddy-BuddyBuddy-BuddyWatchExtension.dll"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0
LDIFF_SYM1=Ldebug_line_start - Ldebug_line_section_start
	.long LDIFF_SYM1
LDIE_I1:

	.byte 4,1,5
	.asciz "sbyte"
LDIE_U1:

	.byte 4,1,7
	.asciz "byte"
LDIE_I2:

	.byte 4,2,5
	.asciz "short"
LDIE_U2:

	.byte 4,2,7
	.asciz "ushort"
LDIE_I4:

	.byte 4,4,5
	.asciz "int"
LDIE_U4:

	.byte 4,4,7
	.asciz "uint"
LDIE_I8:

	.byte 4,8,5
	.asciz "long"
LDIE_U8:

	.byte 4,8,7
	.asciz "ulong"
LDIE_I:

	.byte 4,4,5
	.asciz "intptr"
LDIE_U:

	.byte 4,4,7
	.asciz "uintptr"
LDIE_R4:

	.byte 4,4,4
	.asciz "float"
LDIE_R8:

	.byte 4,8,4
	.asciz "double"
LDIE_BOOLEAN:

	.byte 4,1,2
	.asciz "boolean"
LDIE_CHAR:

	.byte 4,2,8
	.asciz "char"
LDIE_STRING:

	.byte 4,4,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,4,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,4,1
	.asciz "object"
.section __DWARF, __debug_loc,regular,debug
Ldebug_loc_start:
.section __DWARF, __debug_frame,regular,debug
	.align 3

LDIFF_SYM2=Lcie0_end - Lcie0_start
	.long LDIFF_SYM2
Lcie0_start:

	.long -1
	.byte 3
	.asciz ""

	.byte 1,124,14,12,13,0
	.align 2
Lcie0_end:
.text
	.align 3
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
	.align 2
	.no_dead_strip BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate_ApplicationDidFinishLaunching
BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate_ApplicationDidFinishLaunching:
.file 1 "/Users/danieljohnson/Projects/Buddy-Buddy/Buddy-Buddy.Buddy-BuddyWatchExtension/ExtensionDelegate.cs"
.loc 1 12 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,13,223,77,226,32,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 88
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,8,224,158,229,4,224,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 92
	.byte 0,0,159,231,0,192,144,229,0,0,92,227,0,0,0,10
bl _p_1

	.byte 0,224,157,229,96,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,4,224,157,229,0,224,158,229,0,0,94,227
	.byte 62,255,47,17,0,224,157,229,132,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225
.loc 1 14 0

	.byte 0,224,157,229,152,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,0,224,157,229,172,224,158,229,0,0,94,227
	.byte 62,255,47,17,0,0,160,225,13,223,141,226,0,1,189,232,128,128,189,232

Lme_0:
.text
	.align 2
	.no_dead_strip BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate_ApplicationDidBecomeActive
BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate_ApplicationDidBecomeActive:
.loc 1 17 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,13,223,77,226,32,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 96
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,8,224,158,229,4,224,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 92
	.byte 0,0,159,231,0,192,144,229,0,0,92,227,0,0,0,10
bl _p_1

	.byte 0,224,157,229,96,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,4,224,157,229,0,224,158,229,0,0,94,227
	.byte 62,255,47,17,0,224,157,229,132,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225
.loc 1 20 0

	.byte 0,224,157,229,152,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,0,224,157,229,172,224,158,229,0,0,94,227
	.byte 62,255,47,17,0,0,160,225,13,223,141,226,0,1,189,232,128,128,189,232

Lme_1:
.text
	.align 2
	.no_dead_strip BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate_ApplicationWillResignActive
BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate_ApplicationWillResignActive:
.loc 1 23 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,13,223,77,226,32,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 100
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,8,224,158,229,4,224,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 92
	.byte 0,0,159,231,0,192,144,229,0,0,92,227,0,0,0,10
bl _p_1

	.byte 0,224,157,229,96,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,4,224,157,229,0,224,158,229,0,0,94,227
	.byte 62,255,47,17,0,224,157,229,132,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225
.loc 1 29 0

	.byte 0,224,157,229,152,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,0,224,157,229,172,224,158,229,0,0,94,227
	.byte 62,255,47,17,0,0,160,225,13,223,141,226,0,1,189,232,128,128,189,232

Lme_2:
.text
	.align 2
	.no_dead_strip BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate__ctor
BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate__ctor:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,13,223,77,226,32,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 104
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,8,224,158,229,4,224,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 92
	.byte 0,0,159,231,0,192,144,229,0,0,92,227,0,0,0,10
bl _p_1

	.byte 0,224,157,229,96,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,32,0,157,229
bl _p_2

	.byte 0,224,157,229,124,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,0,224,157,229,144,224,158,229,0,0,94,227
	.byte 62,255,47,17,0,0,160,225,13,223,141,226,0,1,189,232,128,128,189,232

Lme_3:
.text
	.align 2
	.no_dead_strip BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController__ctor_intptr
BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController__ctor_intptr:
.file 2 "/Users/danieljohnson/Projects/Buddy-Buddy/Buddy-Buddy.Buddy-BuddyWatchExtension/InterfaceController.cs"
.loc 2 10 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,13,223,77,226,32,0,141,229,36,16,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 108
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,8,224,158,229,4,224,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 92
	.byte 0,0,159,231,0,192,144,229,0,0,92,227,0,0,0,10
bl _p_1

	.byte 0,224,157,229,100,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,4,224,157,229,0,224,158,229,0,0,94,227
	.byte 62,255,47,17,0,224,157,229,136,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,32,0,157,229,36,16,157,229
bl _p_3

	.byte 0,224,157,229,168,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225
.loc 2 11 0

	.byte 0,224,157,229,188,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225
.loc 2 13 0

	.byte 0,224,157,229,208,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,0,224,157,229,228,224,158,229,0,0,94,227
	.byte 62,255,47,17,0,0,160,225,13,223,141,226,0,1,189,232,128,128,189,232

Lme_4:
.text
	.align 2
	.no_dead_strip BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_Awake_Foundation_NSObject
BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_Awake_Foundation_NSObject:
.loc 2 16 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,13,223,77,226,32,0,141,229,36,16,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 112
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,8,224,158,229,4,224,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 92
	.byte 0,0,159,231,0,192,144,229,0,0,92,227,0,0,0,10
bl _p_1

	.byte 0,224,157,229,100,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,4,224,157,229,0,224,158,229,0,0,94,227
	.byte 62,255,47,17,0,224,157,229,136,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225
.loc 2 17 0

	.byte 0,224,157,229,156,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,32,0,157,229,36,16,157,229
bl _p_4

	.byte 0,224,157,229,188,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225
.loc 2 20 0

	.byte 0,224,157,229,208,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 116
	.byte 0,0,159,231,32,16,157,229
bl _p_5

	.byte 0,224,157,229,252,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225
.loc 2 21 0

	.byte 0,224,157,229,16,225,158,229,0,0,94,227,62,255,47,17,0,0,160,225,0,224,157,229,36,225,158,229,0,0,94,227
	.byte 62,255,47,17,0,0,160,225,13,223,141,226,0,1,189,232,128,128,189,232

Lme_5:
.text
	.align 2
	.no_dead_strip BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_WillActivate
BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_WillActivate:
.loc 2 24 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,13,223,77,226,32,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 120
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,8,224,158,229,4,224,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 92
	.byte 0,0,159,231,0,192,144,229,0,0,92,227,0,0,0,10
bl _p_1

	.byte 0,224,157,229,96,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,4,224,157,229,0,224,158,229,0,0,94,227
	.byte 62,255,47,17,0,224,157,229,132,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225
.loc 2 26 0

	.byte 0,224,157,229,152,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 124
	.byte 0,0,159,231,32,16,157,229
bl _p_5

	.byte 0,224,157,229,196,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225
.loc 2 27 0

	.byte 0,224,157,229,216,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,0,224,157,229,236,224,158,229,0,0,94,227
	.byte 62,255,47,17,0,0,160,225,13,223,141,226,0,1,189,232,128,128,189,232

Lme_6:
.text
	.align 2
	.no_dead_strip BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_DidDeactivate
BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_DidDeactivate:
.loc 2 30 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,13,223,77,226,32,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 128
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,8,224,158,229,4,224,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 92
	.byte 0,0,159,231,0,192,144,229,0,0,92,227,0,0,0,10
bl _p_1

	.byte 0,224,157,229,96,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,4,224,157,229,0,224,158,229,0,0,94,227
	.byte 62,255,47,17,0,224,157,229,132,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225
.loc 2 32 0

	.byte 0,224,157,229,152,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 132
	.byte 0,0,159,231,32,16,157,229
bl _p_5

	.byte 0,224,157,229,196,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225
.loc 2 33 0

	.byte 0,224,157,229,216,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,0,224,157,229,236,224,158,229,0,0,94,227
	.byte 62,255,47,17,0,0,160,225,13,223,141,226,0,1,189,232,128,128,189,232

Lme_7:
.text
	.align 2
	.no_dead_strip BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_ReleaseDesignerOutlets
BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_ReleaseDesignerOutlets:
.file 3 "/Users/danieljohnson/Projects/Buddy-Buddy/Buddy-Buddy.Buddy-BuddyWatchExtension/InterfaceController.designer.cs"
.loc 3 15 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,13,223,77,226,32,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 136
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,8,224,158,229,4,224,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 92
	.byte 0,0,159,231,0,192,144,229,0,0,92,227,0,0,0,10
bl _p_1

	.byte 0,224,157,229,96,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,4,224,157,229,0,224,158,229,0,0,94,227
	.byte 62,255,47,17,0,224,157,229,132,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225
.loc 3 16 0

	.byte 0,224,157,229,152,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,0,224,157,229,172,224,158,229,0,0,94,227
	.byte 62,255,47,17,0,0,160,225,13,223,141,226,0,1,189,232,128,128,189,232

Lme_8:
.text
	.align 2
	.no_dead_strip BuddyBuddy_BuddyBuddyWatchExtension_NotificationController__ctor_intptr
BuddyBuddy_BuddyBuddyWatchExtension_NotificationController__ctor_intptr:
.file 4 "/Users/danieljohnson/Projects/Buddy-Buddy/Buddy-Buddy.Buddy-BuddyWatchExtension/NotificationController.cs"
.loc 4 10 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,13,223,77,226,32,0,141,229,36,16,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 140
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,8,224,158,229,4,224,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 92
	.byte 0,0,159,231,0,192,144,229,0,0,92,227,0,0,0,10
bl _p_1

	.byte 0,224,157,229,100,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,4,224,157,229,0,224,158,229,0,0,94,227
	.byte 62,255,47,17,0,224,157,229,136,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,32,0,157,229,36,16,157,229
bl _p_6

	.byte 0,224,157,229,168,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225
.loc 4 11 0

	.byte 0,224,157,229,188,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225
.loc 4 13 0

	.byte 0,224,157,229,208,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,0,224,157,229,228,224,158,229,0,0,94,227
	.byte 62,255,47,17,0,0,160,225,13,223,141,226,0,1,189,232,128,128,189,232

Lme_9:
.text
	.align 2
	.no_dead_strip BuddyBuddy_BuddyBuddyWatchExtension_NotificationController__ctor
BuddyBuddy_BuddyBuddyWatchExtension_NotificationController__ctor:
.loc 4 15 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,13,223,77,226,32,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 144
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,8,224,158,229,4,224,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 92
	.byte 0,0,159,231,0,192,144,229,0,0,92,227,0,0,0,10
bl _p_1

	.byte 0,224,157,229,96,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,4,224,157,229,0,224,158,229,0,0,94,227
	.byte 62,255,47,17,0,224,157,229,132,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,32,0,157,229
bl _p_7

	.byte 0,224,157,229,160,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225
.loc 4 16 0

	.byte 0,224,157,229,180,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225
.loc 4 19 0

	.byte 0,224,157,229,200,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,0,224,157,229,220,224,158,229,0,0,94,227
	.byte 62,255,47,17,0,0,160,225,13,223,141,226,0,1,189,232,128,128,189,232

Lme_a:
.text
	.align 2
	.no_dead_strip BuddyBuddy_BuddyBuddyWatchExtension_NotificationController_WillActivate
BuddyBuddy_BuddyBuddyWatchExtension_NotificationController_WillActivate:
.loc 4 42 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,13,223,77,226,32,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 148
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,8,224,158,229,4,224,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 92
	.byte 0,0,159,231,0,192,144,229,0,0,92,227,0,0,0,10
bl _p_1

	.byte 0,224,157,229,96,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,4,224,157,229,0,224,158,229,0,0,94,227
	.byte 62,255,47,17,0,224,157,229,132,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225
.loc 4 44 0

	.byte 0,224,157,229,152,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 124
	.byte 0,0,159,231,32,16,157,229
bl _p_5

	.byte 0,224,157,229,196,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225
.loc 4 45 0

	.byte 0,224,157,229,216,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,0,224,157,229,236,224,158,229,0,0,94,227
	.byte 62,255,47,17,0,0,160,225,13,223,141,226,0,1,189,232,128,128,189,232

Lme_b:
.text
	.align 2
	.no_dead_strip BuddyBuddy_BuddyBuddyWatchExtension_NotificationController_DidDeactivate
BuddyBuddy_BuddyBuddyWatchExtension_NotificationController_DidDeactivate:
.loc 4 48 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,13,223,77,226,32,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 152
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,8,224,158,229,4,224,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 92
	.byte 0,0,159,231,0,192,144,229,0,0,92,227,0,0,0,10
bl _p_1

	.byte 0,224,157,229,96,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,4,224,157,229,0,224,158,229,0,0,94,227
	.byte 62,255,47,17,0,224,157,229,132,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225
.loc 4 50 0

	.byte 0,224,157,229,152,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 132
	.byte 0,0,159,231,32,16,157,229
bl _p_5

	.byte 0,224,157,229,196,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225
.loc 4 51 0

	.byte 0,224,157,229,216,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,0,224,157,229,236,224,158,229,0,0,94,227
	.byte 62,255,47,17,0,0,160,225,13,223,141,226,0,1,189,232,128,128,189,232

Lme_c:
.text
	.align 2
	.no_dead_strip BuddyBuddy_BuddyBuddyWatchExtension_NotificationController_ReleaseDesignerOutlets
BuddyBuddy_BuddyBuddyWatchExtension_NotificationController_ReleaseDesignerOutlets:
.file 5 "/Users/danieljohnson/Projects/Buddy-Buddy/Buddy-Buddy.Buddy-BuddyWatchExtension/NotificationController.designer.cs"
.loc 5 15 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,13,223,77,226,32,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 156
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,8,224,158,229,4,224,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 92
	.byte 0,0,159,231,0,192,144,229,0,0,92,227,0,0,0,10
bl _p_1

	.byte 0,224,157,229,96,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,4,224,157,229,0,224,158,229,0,0,94,227
	.byte 62,255,47,17,0,224,157,229,132,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225
.loc 5 16 0

	.byte 0,224,157,229,152,224,158,229,0,0,94,227,62,255,47,17,0,0,160,225,0,224,157,229,172,224,158,229,0,0,94,227
	.byte 62,255,47,17,0,0,160,225,13,223,141,226,0,1,189,232,128,128,189,232

Lme_d:
.text
	.align 3
jit_code_end:

	.byte 0,0,0,0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate_ApplicationDidFinishLaunching
bl BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate_ApplicationDidBecomeActive
bl BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate_ApplicationWillResignActive
bl BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate__ctor
bl BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController__ctor_intptr
bl BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_Awake_Foundation_NSObject
bl BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_WillActivate
bl BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_DidDeactivate
bl BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_ReleaseDesignerOutlets
bl BuddyBuddy_BuddyBuddyWatchExtension_NotificationController__ctor_intptr
bl BuddyBuddy_BuddyBuddyWatchExtension_NotificationController__ctor
bl BuddyBuddy_BuddyBuddyWatchExtension_NotificationController_WillActivate
bl BuddyBuddy_BuddyBuddyWatchExtension_NotificationController_DidDeactivate
bl BuddyBuddy_BuddyBuddyWatchExtension_NotificationController_ReleaseDesignerOutlets
bl method_addresses
method_addresses_end:

.section __TEXT, __const
	.align 3
unbox_trampolines:
unbox_trampolines_end:

	.long 0
.text
	.align 3
unbox_trampoline_addresses:

	.long 0
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68,14,64,2,164,10,68,14,12,68,8,8,14,8,68,11
	.byte 31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68,14,64,2,136,10,68,14,12,68,8,8,14,8,68,11
	.byte 31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68,14,64,2,220,10,68,14,12,68,8,8,14,8,68,11
	.byte 32,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68,14,64,3,28,1,10,68,14,12,68,8,8,14,8,68
	.byte 11,31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68,14,64,2,228,10,68,14,12,68,8,8,14,8,68
	.byte 11,31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68,14,64,2,212,10,68,14,12,68,8,8,14,8,68
	.byte 11

.text
	.align 4
plt:
mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_plt:
	.no_dead_strip plt__jit_icall_mono_threads_state_poll
plt__jit_icall_mono_threads_state_poll:
_p_1:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 172,369
	.no_dead_strip plt_WatchKit_WKExtensionDelegate__ctor
plt_WatchKit_WKExtensionDelegate__ctor:
_p_2:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 176,395
	.no_dead_strip plt_WatchKit_WKInterfaceController__ctor_intptr
plt_WatchKit_WKInterfaceController__ctor_intptr:
_p_3:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 180,400
	.no_dead_strip plt_WatchKit_WKInterfaceController_Awake_Foundation_NSObject
plt_WatchKit_WKInterfaceController_Awake_Foundation_NSObject:
_p_4:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 184,405
	.no_dead_strip plt_System_Console_WriteLine_string_object
plt_System_Console_WriteLine_string_object:
_p_5:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 188,410
	.no_dead_strip plt_WatchKit_WKUserNotificationInterfaceController__ctor_intptr
plt_WatchKit_WKUserNotificationInterfaceController__ctor_intptr:
_p_6:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 192,415
	.no_dead_strip plt_WatchKit_WKUserNotificationInterfaceController__ctor
plt_WatchKit_WKUserNotificationInterfaceController__ctor:
_p_7:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got - . + 196,420
plt_end:
.section __DATA, __bss
	.align 3
.lcomm mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got, 204
got_end:
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.data
	.align 3
globals:
	.align 2
	.long Lglobals_hash

	.long 0,0
.section __TEXT, __const
	.align 2
runtime_version:
	.asciz ""
.section __TEXT, __const
	.align 2
assembly_guid:
	.asciz "BB7B44F1-677C-4764-AE56-5979A7DA3618"
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "Buddy-BuddyBuddy-BuddyWatchExtension"
.data
	.align 3
_mono_aot_file_info:

	.long 141,0
	.align 2
	.long mono_aot_Buddy_BuddyBuddy_BuddyWatchExtension_got
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long jit_code_start
	.align 2
	.long jit_code_end
	.align 2
	.long method_addresses
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long mem_end
	.align 2
	.long assembly_guid
	.align 2
	.long runtime_version
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long globals
	.align 2
	.long assembly_name
	.align 2
	.long plt
	.align 2
	.long plt_end
	.align 2
	.long unwind_info
	.align 2
	.long unbox_trampolines
	.align 2
	.long unbox_trampolines_end
	.align 2
	.long unbox_trampoline_addresses

	.long 43,204,8,15,102,391195135,0,1762
	.long 128,8,8,9,0,25,2464,696
	.long 408,192,0,328,376,248,0,184
	.long 40,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0
	.byte 112,44,126,231,255,19,124,142,27,100,19,219,104,14,6,114
	.globl _mono_aot_module_Buddy_BuddyBuddy_BuddyWatchExtension_info
	.align 2
_mono_aot_module_Buddy_BuddyBuddy_BuddyWatchExtension_info:
	.align 2
	.long _mono_aot_file_info
.section __DWARF, __debug_info,regular,debug
LTDIE_3:

	.byte 17
	.asciz "System_Object"

	.byte 8,7
	.asciz "System_Object"

LDIFF_SYM3=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM3
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM4=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM4
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM5=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM5
LTDIE_4:

	.byte 8
	.asciz "_Flags"

	.byte 1
LDIFF_SYM6=LDIE_U1 - Ldebug_info_start
	.long LDIFF_SYM6
	.byte 9
	.asciz "Disposed"

	.byte 1,9
	.asciz "NativeRef"

	.byte 2,9
	.asciz "IsDirectBinding"

	.byte 4,9
	.asciz "RegisteredToggleRef"

	.byte 8,9
	.asciz "InFinalizerQueue"

	.byte 16,9
	.asciz "HasManagedRef"

	.byte 32,0,7
	.asciz "_Flags"

LDIFF_SYM7=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM7
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM8=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM9=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM9
LTDIE_2:

	.byte 5
	.asciz "Foundation_NSObject"

	.byte 20,16
LDIFF_SYM10=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM10
	.byte 2,35,0,6
	.asciz "handle"

LDIFF_SYM11=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM11
	.byte 2,35,8,6
	.asciz "class_handle"

LDIFF_SYM12=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM12
	.byte 2,35,12,6
	.asciz "flags"

LDIFF_SYM13=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM13
	.byte 2,35,16,0,7
	.asciz "Foundation_NSObject"

LDIFF_SYM14=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM14
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM15=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM15
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM16=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM16
LTDIE_1:

	.byte 5
	.asciz "WatchKit_WKExtensionDelegate"

	.byte 20,16
LDIFF_SYM17=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM17
	.byte 2,35,0,0,7
	.asciz "WatchKit_WKExtensionDelegate"

LDIFF_SYM18=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM18
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM19=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM19
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM20=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM20
LTDIE_0:

	.byte 5
	.asciz "BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate"

	.byte 20,16
LDIFF_SYM21=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM21
	.byte 2,35,0,0,7
	.asciz "BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate"

LDIFF_SYM22=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM22
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM23=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM23
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM24=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM24
	.byte 2
	.asciz "BuddyBuddy.BuddyBuddyWatchExtension.ExtensionDelegate:ApplicationDidFinishLaunching"
	.asciz "BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate_ApplicationDidFinishLaunching"

	.byte 1,12
	.long BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate_ApplicationDidFinishLaunching
	.long Lme_0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM25=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM25
	.byte 2,125,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM26=Lfde0_end - Lfde0_start
	.long LDIFF_SYM26
Lfde0_start:

	.long 0
	.align 2
	.long BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate_ApplicationDidFinishLaunching

LDIFF_SYM27=Lme_0 - BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate_ApplicationDidFinishLaunching
	.long LDIFF_SYM27
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,64,2,164,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde0_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BuddyBuddy.BuddyBuddyWatchExtension.ExtensionDelegate:ApplicationDidBecomeActive"
	.asciz "BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate_ApplicationDidBecomeActive"

	.byte 1,17
	.long BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate_ApplicationDidBecomeActive
	.long Lme_1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM28=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM28
	.byte 2,125,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM29=Lfde1_end - Lfde1_start
	.long LDIFF_SYM29
Lfde1_start:

	.long 0
	.align 2
	.long BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate_ApplicationDidBecomeActive

LDIFF_SYM30=Lme_1 - BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate_ApplicationDidBecomeActive
	.long LDIFF_SYM30
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,64,2,164,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde1_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BuddyBuddy.BuddyBuddyWatchExtension.ExtensionDelegate:ApplicationWillResignActive"
	.asciz "BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate_ApplicationWillResignActive"

	.byte 1,23
	.long BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate_ApplicationWillResignActive
	.long Lme_2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM31=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM31
	.byte 2,125,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM32=Lfde2_end - Lfde2_start
	.long LDIFF_SYM32
Lfde2_start:

	.long 0
	.align 2
	.long BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate_ApplicationWillResignActive

LDIFF_SYM33=Lme_2 - BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate_ApplicationWillResignActive
	.long LDIFF_SYM33
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,64,2,164,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde2_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BuddyBuddy.BuddyBuddyWatchExtension.ExtensionDelegate:.ctor"
	.asciz "BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate__ctor"

	.byte 0,0
	.long BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate__ctor
	.long Lme_3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM34=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM34
	.byte 2,125,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM35=Lfde3_end - Lfde3_start
	.long LDIFF_SYM35
Lfde3_start:

	.long 0
	.align 2
	.long BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate__ctor

LDIFF_SYM36=Lme_3 - BuddyBuddy_BuddyBuddyWatchExtension_ExtensionDelegate__ctor
	.long LDIFF_SYM36
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,64,2,136,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde3_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_6:

	.byte 5
	.asciz "WatchKit_WKInterfaceController"

	.byte 20,16
LDIFF_SYM37=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM37
	.byte 2,35,0,0,7
	.asciz "WatchKit_WKInterfaceController"

LDIFF_SYM38=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM38
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM39=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM39
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM40=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM40
LTDIE_5:

	.byte 5
	.asciz "BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController"

	.byte 20,16
LDIFF_SYM41=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM41
	.byte 2,35,0,0,7
	.asciz "BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController"

LDIFF_SYM42=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM42
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM43=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM43
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM44=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM44
	.byte 2
	.asciz "BuddyBuddy.BuddyBuddyWatchExtension.InterfaceController:.ctor"
	.asciz "BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController__ctor_intptr"

	.byte 2,10
	.long BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController__ctor_intptr
	.long Lme_4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM45=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM45
	.byte 2,125,32,3
	.asciz "handle"

LDIFF_SYM46=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM46
	.byte 2,125,36,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM47=Lfde4_end - Lfde4_start
	.long LDIFF_SYM47
Lfde4_start:

	.long 0
	.align 2
	.long BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController__ctor_intptr

LDIFF_SYM48=Lme_4 - BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController__ctor_intptr
	.long LDIFF_SYM48
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,64,2,220,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde4_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BuddyBuddy.BuddyBuddyWatchExtension.InterfaceController:Awake"
	.asciz "BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_Awake_Foundation_NSObject"

	.byte 2,16
	.long BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_Awake_Foundation_NSObject
	.long Lme_5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM49=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM49
	.byte 2,125,32,3
	.asciz "context"

LDIFF_SYM50=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM50
	.byte 2,125,36,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM51=Lfde5_end - Lfde5_start
	.long LDIFF_SYM51
Lfde5_start:

	.long 0
	.align 2
	.long BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_Awake_Foundation_NSObject

LDIFF_SYM52=Lme_5 - BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_Awake_Foundation_NSObject
	.long LDIFF_SYM52
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,64,3,28,1,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde5_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BuddyBuddy.BuddyBuddyWatchExtension.InterfaceController:WillActivate"
	.asciz "BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_WillActivate"

	.byte 2,24
	.long BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_WillActivate
	.long Lme_6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM53=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM53
	.byte 2,125,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM54=Lfde6_end - Lfde6_start
	.long LDIFF_SYM54
Lfde6_start:

	.long 0
	.align 2
	.long BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_WillActivate

LDIFF_SYM55=Lme_6 - BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_WillActivate
	.long LDIFF_SYM55
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,64,2,228,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde6_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BuddyBuddy.BuddyBuddyWatchExtension.InterfaceController:DidDeactivate"
	.asciz "BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_DidDeactivate"

	.byte 2,30
	.long BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_DidDeactivate
	.long Lme_7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM56=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM56
	.byte 2,125,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM57=Lfde7_end - Lfde7_start
	.long LDIFF_SYM57
Lfde7_start:

	.long 0
	.align 2
	.long BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_DidDeactivate

LDIFF_SYM58=Lme_7 - BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_DidDeactivate
	.long LDIFF_SYM58
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,64,2,228,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde7_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BuddyBuddy.BuddyBuddyWatchExtension.InterfaceController:ReleaseDesignerOutlets"
	.asciz "BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_ReleaseDesignerOutlets"

	.byte 3,15
	.long BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_ReleaseDesignerOutlets
	.long Lme_8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM59=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM59
	.byte 2,125,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM60=Lfde8_end - Lfde8_start
	.long LDIFF_SYM60
Lfde8_start:

	.long 0
	.align 2
	.long BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_ReleaseDesignerOutlets

LDIFF_SYM61=Lme_8 - BuddyBuddy_BuddyBuddyWatchExtension_InterfaceController_ReleaseDesignerOutlets
	.long LDIFF_SYM61
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,64,2,164,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde8_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_8:

	.byte 5
	.asciz "WatchKit_WKUserNotificationInterfaceController"

	.byte 20,16
LDIFF_SYM62=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM62
	.byte 2,35,0,0,7
	.asciz "WatchKit_WKUserNotificationInterfaceController"

LDIFF_SYM63=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM63
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM64=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM64
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM65=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM65
LTDIE_7:

	.byte 5
	.asciz "BuddyBuddy_BuddyBuddyWatchExtension_NotificationController"

	.byte 20,16
LDIFF_SYM66=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM66
	.byte 2,35,0,0,7
	.asciz "BuddyBuddy_BuddyBuddyWatchExtension_NotificationController"

LDIFF_SYM67=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM67
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM68=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM68
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM69=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM69
	.byte 2
	.asciz "BuddyBuddy.BuddyBuddyWatchExtension.NotificationController:.ctor"
	.asciz "BuddyBuddy_BuddyBuddyWatchExtension_NotificationController__ctor_intptr"

	.byte 4,10
	.long BuddyBuddy_BuddyBuddyWatchExtension_NotificationController__ctor_intptr
	.long Lme_9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM70=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM70
	.byte 2,125,32,3
	.asciz "handle"

LDIFF_SYM71=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM71
	.byte 2,125,36,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM72=Lfde9_end - Lfde9_start
	.long LDIFF_SYM72
Lfde9_start:

	.long 0
	.align 2
	.long BuddyBuddy_BuddyBuddyWatchExtension_NotificationController__ctor_intptr

LDIFF_SYM73=Lme_9 - BuddyBuddy_BuddyBuddyWatchExtension_NotificationController__ctor_intptr
	.long LDIFF_SYM73
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,64,2,220,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde9_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BuddyBuddy.BuddyBuddyWatchExtension.NotificationController:.ctor"
	.asciz "BuddyBuddy_BuddyBuddyWatchExtension_NotificationController__ctor"

	.byte 4,15
	.long BuddyBuddy_BuddyBuddyWatchExtension_NotificationController__ctor
	.long Lme_a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM74=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM74
	.byte 2,125,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM75=Lfde10_end - Lfde10_start
	.long LDIFF_SYM75
Lfde10_start:

	.long 0
	.align 2
	.long BuddyBuddy_BuddyBuddyWatchExtension_NotificationController__ctor

LDIFF_SYM76=Lme_a - BuddyBuddy_BuddyBuddyWatchExtension_NotificationController__ctor
	.long LDIFF_SYM76
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,64,2,212,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde10_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BuddyBuddy.BuddyBuddyWatchExtension.NotificationController:WillActivate"
	.asciz "BuddyBuddy_BuddyBuddyWatchExtension_NotificationController_WillActivate"

	.byte 4,42
	.long BuddyBuddy_BuddyBuddyWatchExtension_NotificationController_WillActivate
	.long Lme_b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM77=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM77
	.byte 2,125,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM78=Lfde11_end - Lfde11_start
	.long LDIFF_SYM78
Lfde11_start:

	.long 0
	.align 2
	.long BuddyBuddy_BuddyBuddyWatchExtension_NotificationController_WillActivate

LDIFF_SYM79=Lme_b - BuddyBuddy_BuddyBuddyWatchExtension_NotificationController_WillActivate
	.long LDIFF_SYM79
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,64,2,228,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde11_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BuddyBuddy.BuddyBuddyWatchExtension.NotificationController:DidDeactivate"
	.asciz "BuddyBuddy_BuddyBuddyWatchExtension_NotificationController_DidDeactivate"

	.byte 4,48
	.long BuddyBuddy_BuddyBuddyWatchExtension_NotificationController_DidDeactivate
	.long Lme_c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM80=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM80
	.byte 2,125,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM81=Lfde12_end - Lfde12_start
	.long LDIFF_SYM81
Lfde12_start:

	.long 0
	.align 2
	.long BuddyBuddy_BuddyBuddyWatchExtension_NotificationController_DidDeactivate

LDIFF_SYM82=Lme_c - BuddyBuddy_BuddyBuddyWatchExtension_NotificationController_DidDeactivate
	.long LDIFF_SYM82
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,64,2,228,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde12_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BuddyBuddy.BuddyBuddyWatchExtension.NotificationController:ReleaseDesignerOutlets"
	.asciz "BuddyBuddy_BuddyBuddyWatchExtension_NotificationController_ReleaseDesignerOutlets"

	.byte 5,15
	.long BuddyBuddy_BuddyBuddyWatchExtension_NotificationController_ReleaseDesignerOutlets
	.long Lme_d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM83=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM83
	.byte 2,125,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM84=Lfde13_end - Lfde13_start
	.long LDIFF_SYM84
Lfde13_start:

	.long 0
	.align 2
	.long BuddyBuddy_BuddyBuddyWatchExtension_NotificationController_ReleaseDesignerOutlets

LDIFF_SYM85=Lme_d - BuddyBuddy_BuddyBuddyWatchExtension_NotificationController_ReleaseDesignerOutlets
	.long LDIFF_SYM85
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,64,2,164,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde13_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.text
	.align 3
mem_end:

.section __LLVM, __bitcode
.byte 0
.section __LLVM, __cmdline
.byte 0
