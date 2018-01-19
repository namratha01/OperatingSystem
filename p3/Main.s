! Name of package being compiled: Main
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_Thread_InitializeScheduler
	.import	_P_Thread_Run
	.import	_P_Thread_PrintReadyList
	.import	_P_Thread_ThreadStartMain
	.import	_P_Thread_ThreadFinish
	.import	_P_Thread_FatalError
	.import	_P_Thread_SetInterruptsTo
	.import	_P_Thread_TimerInterruptHandler
	.import	Switch
	.import	ThreadStartUp
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Thread_Thread
! The following class and its methods are from other packages
	.import	_P_Synch_Semaphore
! The following class and its methods are from other packages
	.import	_P_Synch_Mutex
! The following class and its methods are from other packages
	.import	_P_Synch_Mutex2
! The following class and its methods are from other packages
	.import	_P_Synch_Condition
! The following class and its methods are from this package
	.export	_P_Main_Barbershop
	.export	_Method_P_Main_Barbershop_1
	.export	_Method_P_Main_Barbershop_2
	.export	_Method_P_Main_Barbershop_3
	.export	_Method_P_Main_Barbershop_4
	.export	_Method_P_Main_Barbershop_5
	.export	_Method_P_Main_Barbershop_6
	.export	_Method_P_Main_Barbershop_7
! The following class and its methods are from this package
	.export	_P_Main_GamingParlor
	.export	_Method_P_Main_GamingParlor_1
	.export	_Method_P_Main_GamingParlor_2
	.export	_Method_P_Main_GamingParlor_3
	.export	_Method_P_Main_GamingParlor_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_Thread_readyList
	.import	_P_Thread_currentThread
	.import	_P_Thread_mainThread
	.import	_P_Thread_idleThread
	.import	_P_Thread_threadsToBeDestroyed
	.import	_P_Thread_currentInterruptStatus
! Global variables in this package
	.data
_Global_CHAIRS:
	.word	0x00000005		! decimal value = 5
_Global_empty:
	.word	0x00000005		! decimal value = 5
_Global_waiting:
	.word	0
_Global_printLock:
	.skip	20
_Global_thread:
	.skip	90028
_Global_barbershop:
	.skip	156
_Global_gamblers:
	.skip	32740
_Global_gamingParlor:
	.skip	64
	.align
! String constants
_StringConst_48:
	.word	57			! length
	.ascii	"------------------------------Number of dice now avail = "
	.align
_StringConst_47:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_46:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_45:
	.word	22			! length
	.ascii	"releases and adds back"
	.align
_StringConst_44:
	.word	13			! length
	.ascii	"proceeds with"
	.align
_StringConst_43:
	.word	8			! length
	.ascii	"requests"
	.align
_StringConst_42:
	.word	1			! length
	.ascii	"-"
	.align
_StringConst_41:
	.word	1			! length
	.ascii	"X"
	.align
_StringConst_40:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_39:
	.word	5			! length
	.ascii	"  D  "
	.align
_StringConst_38:
	.word	5			! length
	.ascii	"  C  "
	.align
_StringConst_37:
	.word	5			! length
	.ascii	"  L  "
	.align
_StringConst_36:
	.word	5			! length
	.ascii	"  F  "
	.align
_StringConst_35:
	.word	5			! length
	.ascii	"  B  "
	.align
_StringConst_34:
	.word	5			! length
	.ascii	"  S  "
	.align
_StringConst_33:
	.word	5			! length
	.ascii	"  E  "
	.align
_StringConst_32:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_31:
	.word	12			! length
	.ascii	"H-PICTIONARY"
	.align
_StringConst_30:
	.word	12			! length
	.ascii	"G-PICTIONARY"
	.align
_StringConst_29:
	.word	10			! length
	.ascii	"F-MONOPOLY"
	.align
_StringConst_28:
	.word	10			! length
	.ascii	"E-MONOPOLY"
	.align
_StringConst_27:
	.word	6			! length
	.ascii	"D-RISK"
	.align
_StringConst_26:
	.word	6			! length
	.ascii	"C-RISK"
	.align
_StringConst_25:
	.word	12			! length
	.ascii	"B-BACKGAMMON"
	.align
_StringConst_24:
	.word	12			! length
	.ascii	"A-BACKGAMMON"
	.align
_StringConst_23:
	.word	5			! length
	.ascii	"Dobby"
	.align
_StringConst_22:
	.word	5			! length
	.ascii	"Snape"
	.align
_StringConst_21:
	.word	7			! length
	.ascii	"Neville"
	.align
_StringConst_20:
	.word	6			! length
	.ascii	"Cedric"
	.align
_StringConst_19:
	.word	3			! length
	.ascii	"Cho"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"Parvati"
	.align
_StringConst_17:
	.word	5			! length
	.ascii	"Padma"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"Drako"
	.align
_StringConst_15:
	.word	5			! length
	.ascii	"Tonks"
	.align
_StringConst_14:
	.word	5			! length
	.ascii	"Moody"
	.align
_StringConst_13:
	.word	6			! length
	.ascii	"Sirius"
	.align
_StringConst_12:
	.word	6			! length
	.ascii	"Hagrid"
	.align
_StringConst_11:
	.word	9			! length
	.ascii	"Voldemort"
	.align
_StringConst_10:
	.word	10			! length
	.ascii	"Dumbledore"
	.align
_StringConst_9:
	.word	5			! length
	.ascii	"Percy"
	.align
_StringConst_8:
	.word	7			! length
	.ascii	"Charlie"
	.align
_StringConst_7:
	.word	4			! length
	.ascii	"Luna"
	.align
_StringConst_6:
	.word	8			! length
	.ascii	"Hermione"
	.align
_StringConst_5:
	.word	3			! length
	.ascii	"Ron"
	.align
_StringConst_4:
	.word	5			! length
	.ascii	"Harry"
	.align
_StringConst_3:
	.word	6			! length
	.ascii	"George"
	.align
_StringConst_2:
	.word	4			! length
	.ascii	"Fred"
	.align
_StringConst_1:
	.word	117			! length
	.ascii	" B1   B2   C1   C2   C3   C4   C5   C6   C7   C8   C9  C10  C11  C12  C13  C14  C15  C16  C17  C18  C19  C20 CHAIRS \n"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0xacccbe3c,r3		! .  hashVal = -1395868100
	call	_CheckVersion_P_Main_	! .
	cmp	r1,0			! .
	be	_Label_54		! .
	ret				! .
_Label_54:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Main.c\0"
_packageName:
	.ascii	"Main\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Main_:
	.export	_CheckVersion_P_Main_
	set	0xacccbe3c,r4		! myHashVal = -1395868100
	cmp	r3,r4
	be	_Label_55
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_55:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_56
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_56
! Make sure _P_Thread_ has hash value 0xd98e6cc5 (decimal -644977467)
	set	_packageName,r2
	set	0xd98e6cc5,r3
	call	_CheckVersion_P_Thread_
	.import	_CheckVersion_P_Thread_
	cmp	r1,0
	bne	_Label_56
! Make sure _P_Synch_ has hash value 0x8e356f6d (decimal -1909100691)
	set	_packageName,r2
	set	0x8e356f6d,r3
	call	_CheckVersion_P_Synch_
	.import	_CheckVersion_P_Synch_
	cmp	r1,0
	bne	_Label_56
_Label_56:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION main  ===============
! 
main:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor_main,r1
	push	r1
	mov	10,r13		! source line 10
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	11,r13		! source line 11
	mov	"\0\0CA",r10
	call	_P_Thread_InitializeScheduler
! CALL STATEMENT...
!   Call the function
	mov	13,r13		! source line 13
	mov	"\0\0CA",r10
	call	_function_53_SleepingBarberTest
! CALL STATEMENT...
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CA",r10
	call	_P_Thread_ThreadFinish
! RETURN STATEMENT...
	mov	15,r13		! source line 15
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_57
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_57:
	.ascii	"main\0"
	.align
! 
! ===============  FUNCTION SleepingBarberTest  ===============
! 
_function_53_SleepingBarberTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_53_SleepingBarberTest,r1
	push	r1
	mov	23621,r1
_Label_697:
	push	r0
	sub	r1,1,r1
	bne	_Label_697
	mov	38,r13		! source line 38
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	41,r13		! source line 41
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_barbershop = zeros  (sizeInBytes=156)
	set	_Global_barbershop,r4
	mov	39,r3
_Label_698:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_698
!   _Global_barbershop = _P_Main_Barbershop
	set	_P_Main_Barbershop,r1
	set	_Global_barbershop,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0SE",r10
!   _temp_59 = &_Global_barbershop
	set	_Global_barbershop,r1
	set	-94472,r2
	store	r1,[r14+r2]
!   Send message Init
	set	-94472,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_printLock = zeros  (sizeInBytes=20)
	set	_Global_printLock,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_printLock = _P_Synch_Mutex
	set	_P_Synch_Mutex,r1
	set	_Global_printLock,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0SE",r10
!   _temp_61 = &_Global_printLock
	set	_Global_printLock,r1
	set	-94464,r2
	store	r1,[r14+r2]
!   Send message Init
	set	-94464,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   _temp_62 = _StringConst_1
	set	_StringConst_1,r1
	set	-94460,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_62  sizeInBytes=4
	set	-94460,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	46,r13		! source line 46
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	48,r13		! source line 48
	mov	"\0\0AS",r10
!   _temp_63 = &_Global_thread
	set	_Global_thread,r1
	set	-94456,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_65 = &_temp_64
	set	-94452,r1
	add	r14,r1,r1
	store	r1,[r14+-4424]
!   _temp_65 = _temp_65 + 4
	load	[r14+-4424],r1
	add	r1,4,r1
	store	r1,[r14+-4424]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_67 = zeros  (sizeInBytes=4092)
	add	r14,-4416,r4
	mov	1023,r3
_Label_699:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_699
!   _temp_67 = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	store	r1,[r14+-4416]
	mov	22,r1
	store	r1,[r14+-4420]
_Label_69:
!   Data Move: *_temp_65 = _temp_67  (sizeInBytes=4092)
	add	r14,-4416,r5
	load	[r14+-4424],r4
	mov	1023,r3
_Label_700:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_700
!   _temp_65 = _temp_65 + 4092
	load	[r14+-4424],r1
	add	r1,4092,r1
	store	r1,[r14+-4424]
!   _temp_66 = _temp_66 + -1
	load	[r14+-4420],r1
	add	r1,-1,r1
	store	r1,[r14+-4420]
!   if intNotZero (_temp_66) then goto _Label_69
	load	[r14+-4420],r1
	cmp	r1,r0
	bne	_Label_69
!   Initialize the array size...
	mov	22,r1
	set	-94452,r2
	store	r1,[r14+r2]
!   _temp_70 = &_temp_64
	set	-94452,r1
	add	r14,r1,r1
	store	r1,[r14+-320]
!   make sure array has size 22
	set	-94456,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	22, r2
	cmp	r1,0
	be	_Label_701
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_701:
!   make sure array has size 22
	load	[r14+-320],r1
	load	[r1],r1
	set	22, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_63 = *_temp_70  (sizeInBytes=90028)
	load	[r14+-320],r5
	set	-94456,r4
	load	[r14+r4],r4
	mov	22507,r3
_Label_702:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_702
! SEND STATEMENT...
	mov	50,r13		! source line 50
	mov	"\0\0SE",r10
!   _temp_71 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-316]
!   _temp_72 = &_Global_thread
	set	_Global_thread,r1
	store	r1,[r14+-312]
!   Move address of _temp_72 [0 ] into _temp_73
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-312],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-308]
!   Prepare Argument: offset=12  value=_temp_71  sizeInBytes=4
	load	[r14+-316],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-308],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	51,r13		! source line 51
	mov	"\0\0SE",r10
!   _temp_74 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-304]
!   _temp_75 = &_Global_thread
	set	_Global_thread,r1
	store	r1,[r14+-300]
!   Move address of _temp_75 [1 ] into _temp_76
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-300],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-296]
!   Prepare Argument: offset=12  value=_temp_74  sizeInBytes=4
	load	[r14+-304],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-296],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	52,r13		! source line 52
	mov	"\0\0SE",r10
!   _temp_77 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-292]
!   _temp_78 = &_Global_thread
	set	_Global_thread,r1
	store	r1,[r14+-288]
!   Move address of _temp_78 [2 ] into _temp_79
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-288],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-284]
!   Prepare Argument: offset=12  value=_temp_77  sizeInBytes=4
	load	[r14+-292],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-284],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	53,r13		! source line 53
	mov	"\0\0SE",r10
!   _temp_80 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-280]
!   _temp_81 = &_Global_thread
	set	_Global_thread,r1
	store	r1,[r14+-276]
!   Move address of _temp_81 [3 ] into _temp_82
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-276],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-272]
!   Prepare Argument: offset=12  value=_temp_80  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-272],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	54,r13		! source line 54
	mov	"\0\0SE",r10
!   _temp_83 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-268]
!   _temp_84 = &_Global_thread
	set	_Global_thread,r1
	store	r1,[r14+-264]
!   Move address of _temp_84 [4 ] into _temp_85
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-264],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-260]
!   Prepare Argument: offset=12  value=_temp_83  sizeInBytes=4
	load	[r14+-268],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-260],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	55,r13		! source line 55
	mov	"\0\0SE",r10
!   _temp_86 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-256]
!   _temp_87 = &_Global_thread
	set	_Global_thread,r1
	store	r1,[r14+-252]
!   Move address of _temp_87 [5 ] into _temp_88
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-252],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-248]
!   Prepare Argument: offset=12  value=_temp_86  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-248],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	56,r13		! source line 56
	mov	"\0\0SE",r10
!   _temp_89 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-244]
!   _temp_90 = &_Global_thread
	set	_Global_thread,r1
	store	r1,[r14+-240]
!   Move address of _temp_90 [6 ] into _temp_91
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-240],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-236]
!   Prepare Argument: offset=12  value=_temp_89  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-236],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	57,r13		! source line 57
	mov	"\0\0SE",r10
!   _temp_92 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-232]
!   _temp_93 = &_Global_thread
	set	_Global_thread,r1
	store	r1,[r14+-228]
!   Move address of _temp_93 [7 ] into _temp_94
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-228],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-224]
!   Prepare Argument: offset=12  value=_temp_92  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-224],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	58,r13		! source line 58
	mov	"\0\0SE",r10
!   _temp_95 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-220]
!   _temp_96 = &_Global_thread
	set	_Global_thread,r1
	store	r1,[r14+-216]
!   Move address of _temp_96 [8 ] into _temp_97
!     make sure index expr is >= 0
	mov	8,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-216],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-212]
!   Prepare Argument: offset=12  value=_temp_95  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-212],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	59,r13		! source line 59
	mov	"\0\0SE",r10
!   _temp_98 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-208]
!   _temp_99 = &_Global_thread
	set	_Global_thread,r1
	store	r1,[r14+-204]
!   Move address of _temp_99 [9 ] into _temp_100
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-204],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-200]
!   Prepare Argument: offset=12  value=_temp_98  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-200],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	60,r13		! source line 60
	mov	"\0\0SE",r10
!   _temp_101 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-196]
!   _temp_102 = &_Global_thread
	set	_Global_thread,r1
	store	r1,[r14+-192]
!   Move address of _temp_102 [10 ] into _temp_103
!     make sure index expr is >= 0
	mov	10,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-192],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-188]
!   Prepare Argument: offset=12  value=_temp_101  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	61,r13		! source line 61
	mov	"\0\0SE",r10
!   _temp_104 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-184]
!   _temp_105 = &_Global_thread
	set	_Global_thread,r1
	store	r1,[r14+-180]
!   Move address of _temp_105 [11 ] into _temp_106
!     make sure index expr is >= 0
	mov	11,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-180],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-176]
!   Prepare Argument: offset=12  value=_temp_104  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	62,r13		! source line 62
	mov	"\0\0SE",r10
!   _temp_107 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-172]
!   _temp_108 = &_Global_thread
	set	_Global_thread,r1
	store	r1,[r14+-168]
!   Move address of _temp_108 [12 ] into _temp_109
!     make sure index expr is >= 0
	mov	12,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   Prepare Argument: offset=12  value=_temp_107  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-164],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	63,r13		! source line 63
	mov	"\0\0SE",r10
!   _temp_110 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-160]
!   _temp_111 = &_Global_thread
	set	_Global_thread,r1
	store	r1,[r14+-156]
!   Move address of _temp_111 [13 ] into _temp_112
!     make sure index expr is >= 0
	mov	13,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-156],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-152]
!   Prepare Argument: offset=12  value=_temp_110  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-152],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	64,r13		! source line 64
	mov	"\0\0SE",r10
!   _temp_113 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-148]
!   _temp_114 = &_Global_thread
	set	_Global_thread,r1
	store	r1,[r14+-144]
!   Move address of _temp_114 [14 ] into _temp_115
!     make sure index expr is >= 0
	mov	14,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Prepare Argument: offset=12  value=_temp_113  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-140],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	65,r13		! source line 65
	mov	"\0\0SE",r10
!   _temp_116 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-136]
!   _temp_117 = &_Global_thread
	set	_Global_thread,r1
	store	r1,[r14+-132]
!   Move address of _temp_117 [15 ] into _temp_118
!     make sure index expr is >= 0
	mov	15,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-132],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-128]
!   Prepare Argument: offset=12  value=_temp_116  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-128],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0SE",r10
!   _temp_119 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-124]
!   _temp_120 = &_Global_thread
	set	_Global_thread,r1
	store	r1,[r14+-120]
!   Move address of _temp_120 [16 ] into _temp_121
!     make sure index expr is >= 0
	mov	16,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-120],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-116]
!   Prepare Argument: offset=12  value=_temp_119  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0SE",r10
!   _temp_122 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-112]
!   _temp_123 = &_Global_thread
	set	_Global_thread,r1
	store	r1,[r14+-108]
!   Move address of _temp_123 [17 ] into _temp_124
!     make sure index expr is >= 0
	mov	17,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-108],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_122  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   _temp_125 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-100]
!   _temp_126 = &_Global_thread
	set	_Global_thread,r1
	store	r1,[r14+-96]
!   Move address of _temp_126 [18 ] into _temp_127
!     make sure index expr is >= 0
	mov	18,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-96],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_125  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0SE",r10
!   _temp_128 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-88]
!   _temp_129 = &_Global_thread
	set	_Global_thread,r1
	store	r1,[r14+-84]
!   Move address of _temp_129 [19 ] into _temp_130
!     make sure index expr is >= 0
	mov	19,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-84],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_128  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0SE",r10
!   _temp_131 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-76]
!   _temp_132 = &_Global_thread
	set	_Global_thread,r1
	store	r1,[r14+-72]
!   Move address of _temp_132 [20 ] into _temp_133
!     make sure index expr is >= 0
	mov	20,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-72],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_131  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0SE",r10
!   _temp_134 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-64]
!   _temp_135 = &_Global_thread
	set	_Global_thread,r1
	store	r1,[r14+-60]
!   Move address of _temp_135 [21 ] into _temp_136
!     make sure index expr is >= 0
	mov	21,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_134  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0SE",r10
!   _temp_137 = _function_52_barberCall
	set	_function_52_barberCall,r1
	store	r1,[r14+-52]
!   _temp_138 = &_Global_thread
	set	_Global_thread,r1
	store	r1,[r14+-48]
!   Move address of _temp_138 [0 ] into _temp_139
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-48],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_137  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0SE",r10
!   _temp_140 = _function_52_barberCall
	set	_function_52_barberCall,r1
	store	r1,[r14+-40]
!   _temp_141 = &_Global_thread
	set	_Global_thread,r1
	store	r1,[r14+-36]
!   Move address of _temp_141 [1 ] into _temp_142
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_140  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	78,r13		! source line 78
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_147 = 2		(4 bytes)
	mov	2,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_148 = 21		(4 bytes)
	mov	21,r1
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_147  (sizeInBytes=4)
	load	[r14+-28],r1
	set	-94480,r2
	store	r1,[r14+r2]
_Label_143:
!   Perform the FOR-LOOP termination test
!   if i > _temp_148 then goto _Label_146		
	set	-94480,r1
	load	[r14+r1],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_146
_Label_144:
	mov	78,r13		! source line 78
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	79,r13		! source line 79
	mov	"\0\0SE",r10
!   _temp_149 = _function_51_customerCall
	set	_function_51_customerCall,r1
	store	r1,[r14+-20]
!   _temp_150 = &_Global_thread
	set	_Global_thread,r1
	store	r1,[r14+-16]
!   Move address of _temp_150 [i ] into _temp_151
!     make sure index expr is >= 0
	set	-94480,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_149  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	set	-94480,r1
	load	[r14+r1],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_145:
!   i = i + 1
	set	-94480,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-94480,r2
	store	r1,[r14+r2]
	jmp	_Label_143
! END FOR
_Label_146:
! RETURN STATEMENT...
	mov	78,r13		! source line 78
	mov	"\0\0RE",r10
	set	94488,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_53_SleepingBarberTest:
	.word	_sourceFileName
	.word	_Label_152
	.word	0		! total size of parameters
	.word	94484		! frame size = 94484
	.word	_Label_153
	.word	-12
	.word	4
	.word	_Label_154
	.word	-16
	.word	4
	.word	_Label_155
	.word	-20
	.word	4
	.word	_Label_156
	.word	-24
	.word	4
	.word	_Label_157
	.word	-28
	.word	4
	.word	_Label_158
	.word	-32
	.word	4
	.word	_Label_159
	.word	-36
	.word	4
	.word	_Label_160
	.word	-40
	.word	4
	.word	_Label_161
	.word	-44
	.word	4
	.word	_Label_162
	.word	-48
	.word	4
	.word	_Label_163
	.word	-52
	.word	4
	.word	_Label_164
	.word	-56
	.word	4
	.word	_Label_165
	.word	-60
	.word	4
	.word	_Label_166
	.word	-64
	.word	4
	.word	_Label_167
	.word	-68
	.word	4
	.word	_Label_168
	.word	-72
	.word	4
	.word	_Label_169
	.word	-76
	.word	4
	.word	_Label_170
	.word	-80
	.word	4
	.word	_Label_171
	.word	-84
	.word	4
	.word	_Label_172
	.word	-88
	.word	4
	.word	_Label_173
	.word	-92
	.word	4
	.word	_Label_174
	.word	-96
	.word	4
	.word	_Label_175
	.word	-100
	.word	4
	.word	_Label_176
	.word	-104
	.word	4
	.word	_Label_177
	.word	-108
	.word	4
	.word	_Label_178
	.word	-112
	.word	4
	.word	_Label_179
	.word	-116
	.word	4
	.word	_Label_180
	.word	-120
	.word	4
	.word	_Label_181
	.word	-124
	.word	4
	.word	_Label_182
	.word	-128
	.word	4
	.word	_Label_183
	.word	-132
	.word	4
	.word	_Label_184
	.word	-136
	.word	4
	.word	_Label_185
	.word	-140
	.word	4
	.word	_Label_186
	.word	-144
	.word	4
	.word	_Label_187
	.word	-148
	.word	4
	.word	_Label_188
	.word	-152
	.word	4
	.word	_Label_189
	.word	-156
	.word	4
	.word	_Label_190
	.word	-160
	.word	4
	.word	_Label_191
	.word	-164
	.word	4
	.word	_Label_192
	.word	-168
	.word	4
	.word	_Label_193
	.word	-172
	.word	4
	.word	_Label_194
	.word	-176
	.word	4
	.word	_Label_195
	.word	-180
	.word	4
	.word	_Label_196
	.word	-184
	.word	4
	.word	_Label_197
	.word	-188
	.word	4
	.word	_Label_198
	.word	-192
	.word	4
	.word	_Label_199
	.word	-196
	.word	4
	.word	_Label_200
	.word	-200
	.word	4
	.word	_Label_201
	.word	-204
	.word	4
	.word	_Label_202
	.word	-208
	.word	4
	.word	_Label_203
	.word	-212
	.word	4
	.word	_Label_204
	.word	-216
	.word	4
	.word	_Label_205
	.word	-220
	.word	4
	.word	_Label_206
	.word	-224
	.word	4
	.word	_Label_207
	.word	-228
	.word	4
	.word	_Label_208
	.word	-232
	.word	4
	.word	_Label_209
	.word	-236
	.word	4
	.word	_Label_210
	.word	-240
	.word	4
	.word	_Label_211
	.word	-244
	.word	4
	.word	_Label_212
	.word	-248
	.word	4
	.word	_Label_213
	.word	-252
	.word	4
	.word	_Label_214
	.word	-256
	.word	4
	.word	_Label_215
	.word	-260
	.word	4
	.word	_Label_216
	.word	-264
	.word	4
	.word	_Label_217
	.word	-268
	.word	4
	.word	_Label_218
	.word	-272
	.word	4
	.word	_Label_219
	.word	-276
	.word	4
	.word	_Label_220
	.word	-280
	.word	4
	.word	_Label_221
	.word	-284
	.word	4
	.word	_Label_222
	.word	-288
	.word	4
	.word	_Label_223
	.word	-292
	.word	4
	.word	_Label_224
	.word	-296
	.word	4
	.word	_Label_225
	.word	-300
	.word	4
	.word	_Label_226
	.word	-304
	.word	4
	.word	_Label_227
	.word	-308
	.word	4
	.word	_Label_228
	.word	-312
	.word	4
	.word	_Label_229
	.word	-316
	.word	4
	.word	_Label_230
	.word	-320
	.word	4
	.word	_Label_231
	.word	-324
	.word	4
	.word	_Label_232
	.word	-4416
	.word	4092
	.word	_Label_233
	.word	-4420
	.word	4
	.word	_Label_234
	.word	-4424
	.word	4
	.word	_Label_235
	.word	-94452
	.word	90028
	.word	_Label_236
	.word	-94456
	.word	4
	.word	_Label_237
	.word	-94460
	.word	4
	.word	_Label_238
	.word	-94464
	.word	4
	.word	_Label_239
	.word	-94468
	.word	4
	.word	_Label_240
	.word	-94472
	.word	4
	.word	_Label_241
	.word	-94476
	.word	4
	.word	_Label_242
	.word	-94480
	.word	4
	.word	0
_Label_152:
	.ascii	"SleepingBarberTest\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_151\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_150\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_149\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_148\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_147\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_161:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_162:
	.byte	'?'
	.ascii	"_temp_138\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_136\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_135\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_134\0"
	.align
_Label_167:
	.byte	'?'
	.ascii	"_temp_133\0"
	.align
_Label_168:
	.byte	'?'
	.ascii	"_temp_132\0"
	.align
_Label_169:
	.byte	'?'
	.ascii	"_temp_131\0"
	.align
_Label_170:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
_Label_171:
	.byte	'?'
	.ascii	"_temp_129\0"
	.align
_Label_172:
	.byte	'?'
	.ascii	"_temp_128\0"
	.align
_Label_173:
	.byte	'?'
	.ascii	"_temp_127\0"
	.align
_Label_174:
	.byte	'?'
	.ascii	"_temp_126\0"
	.align
_Label_175:
	.byte	'?'
	.ascii	"_temp_125\0"
	.align
_Label_176:
	.byte	'?'
	.ascii	"_temp_124\0"
	.align
_Label_177:
	.byte	'?'
	.ascii	"_temp_123\0"
	.align
_Label_178:
	.byte	'?'
	.ascii	"_temp_122\0"
	.align
_Label_179:
	.byte	'?'
	.ascii	"_temp_121\0"
	.align
_Label_180:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_181:
	.byte	'?'
	.ascii	"_temp_119\0"
	.align
_Label_182:
	.byte	'?'
	.ascii	"_temp_118\0"
	.align
_Label_183:
	.byte	'?'
	.ascii	"_temp_117\0"
	.align
_Label_184:
	.byte	'?'
	.ascii	"_temp_116\0"
	.align
_Label_185:
	.byte	'?'
	.ascii	"_temp_115\0"
	.align
_Label_186:
	.byte	'?'
	.ascii	"_temp_114\0"
	.align
_Label_187:
	.byte	'?'
	.ascii	"_temp_113\0"
	.align
_Label_188:
	.byte	'?'
	.ascii	"_temp_112\0"
	.align
_Label_189:
	.byte	'?'
	.ascii	"_temp_111\0"
	.align
_Label_190:
	.byte	'?'
	.ascii	"_temp_110\0"
	.align
_Label_191:
	.byte	'?'
	.ascii	"_temp_109\0"
	.align
_Label_192:
	.byte	'?'
	.ascii	"_temp_108\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_107\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_106\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_105\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_104\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_103\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_102\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_101\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_100\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_99\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_98\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_97\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_96\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_95\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_94\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_93\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_92\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_91\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_90\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_89\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_88\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_87\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_86\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_85\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_84\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_83\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_77\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_74\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_242:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION barberCall  ===============
! 
_function_52_barberCall:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_52_barberCall,r1
	push	r1
	mov	3,r1
_Label_703:
	push	r0
	sub	r1,1,r1
	bne	_Label_703
	mov	84,r13		! source line 84
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_243 = &_Global_barbershop
	set	_Global_barbershop,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=barberID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message barber
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_52_barberCall:
	.word	_sourceFileName
	.word	_Label_244
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_245
	.word	8
	.word	4
	.word	_Label_246
	.word	-12
	.word	4
	.word	0
_Label_244:
	.ascii	"barberCall\0"
	.align
_Label_245:
	.byte	'I'
	.ascii	"barberID\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
! 
! ===============  FUNCTION customerCall  ===============
! 
_function_51_customerCall:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_51_customerCall,r1
	push	r1
	mov	3,r1
_Label_704:
	push	r0
	sub	r1,1,r1
	bne	_Label_704
	mov	89,r13		! source line 89
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0SE",r10
!   _temp_247 = &_Global_barbershop
	set	_Global_barbershop,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=customerID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message customer
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_51_customerCall:
	.word	_sourceFileName
	.word	_Label_248
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_249
	.word	8
	.word	4
	.word	_Label_250
	.word	-12
	.word	4
	.word	0
_Label_248:
	.ascii	"customerCall\0"
	.align
_Label_249:
	.byte	'I'
	.ascii	"customerID\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
! 
! ===============  FUNCTION GamingParlorTest  ===============
! 
_function_50_GamingParlorTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_50_GamingParlorTest,r1
	push	r1
	mov	9266,r1
_Label_705:
	push	r0
	sub	r1,1,r1
	bne	_Label_705
	mov	290,r13		! source line 290
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	291,r13		! source line 291
	mov	"\0\0AS",r10
!   _temp_251 = &_Global_gamblers
	set	_Global_gamblers,r1
	set	-37060,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_253 = &_temp_252
	set	-37056,r1
	add	r14,r1,r1
	store	r1,[r14+-4316]
!   _temp_253 = _temp_253 + 4
	load	[r14+-4316],r1
	add	r1,4,r1
	store	r1,[r14+-4316]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_255 = zeros  (sizeInBytes=4092)
	add	r14,-4308,r4
	mov	1023,r3
_Label_706:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_706
!   _temp_255 = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	store	r1,[r14+-4308]
	mov	8,r1
	store	r1,[r14+-4312]
_Label_257:
!   Data Move: *_temp_253 = _temp_255  (sizeInBytes=4092)
	add	r14,-4308,r5
	load	[r14+-4316],r4
	mov	1023,r3
_Label_707:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_707
!   _temp_253 = _temp_253 + 4092
	load	[r14+-4316],r1
	add	r1,4092,r1
	store	r1,[r14+-4316]
!   _temp_254 = _temp_254 + -1
	load	[r14+-4312],r1
	add	r1,-1,r1
	store	r1,[r14+-4312]
!   if intNotZero (_temp_254) then goto _Label_257
	load	[r14+-4312],r1
	cmp	r1,r0
	bne	_Label_257
!   Initialize the array size...
	mov	8,r1
	set	-37056,r2
	store	r1,[r14+r2]
!   _temp_258 = &_temp_252
	set	-37056,r1
	add	r14,r1,r1
	store	r1,[r14+-212]
!   make sure array has size 8
	set	-37060,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	8, r2
	cmp	r1,0
	be	_Label_708
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_708:
!   make sure array has size 8
	load	[r14+-212],r1
	load	[r1],r1
	set	8, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_251 = *_temp_258  (sizeInBytes=32740)
	load	[r14+-212],r5
	set	-37060,r4
	load	[r14+r4],r4
	mov	8185,r3
_Label_709:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_709
! ASSIGNMENT STATEMENT...
	mov	292,r13		! source line 292
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_gamingParlor = zeros  (sizeInBytes=64)
	set	_Global_gamingParlor,r4
	mov	16,r3
_Label_710:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_710
!   _Global_gamingParlor = _P_Main_GamingParlor
	set	_P_Main_GamingParlor,r1
	set	_Global_gamingParlor,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	294,r13		! source line 294
	mov	"\0\0SE",r10
!   _temp_260 = &_Global_gamingParlor
	set	_Global_gamingParlor,r1
	store	r1,[r14+-204]
!   Send message Init
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	297,r13		! source line 297
	mov	"\0\0SE",r10
!   _temp_261 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-200]
!   _temp_262 = &_Global_gamblers
	set	_Global_gamblers,r1
	store	r1,[r14+-196]
!   Move address of _temp_262 [0 ] into _temp_263
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-196],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-192]
!   Prepare Argument: offset=12  value=_temp_261  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	298,r13		! source line 298
	mov	"\0\0SE",r10
!   _temp_264 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-188]
!   _temp_265 = &_Global_gamblers
	set	_Global_gamblers,r1
	store	r1,[r14+-184]
!   Move address of _temp_265 [1 ] into _temp_266
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Prepare Argument: offset=12  value=_temp_264  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0SE",r10
!   _temp_267 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-176]
!   _temp_268 = &_Global_gamblers
	set	_Global_gamblers,r1
	store	r1,[r14+-172]
!   Move address of _temp_268 [2 ] into _temp_269
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-172],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-168]
!   Prepare Argument: offset=12  value=_temp_267  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0SE",r10
!   _temp_270 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-164]
!   _temp_271 = &_Global_gamblers
	set	_Global_gamblers,r1
	store	r1,[r14+-160]
!   Move address of _temp_271 [3 ] into _temp_272
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   Prepare Argument: offset=12  value=_temp_270  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0SE",r10
!   _temp_273 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-152]
!   _temp_274 = &_Global_gamblers
	set	_Global_gamblers,r1
	store	r1,[r14+-148]
!   Move address of _temp_274 [4 ] into _temp_275
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-148],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_273  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0SE",r10
!   _temp_276 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-140]
!   _temp_277 = &_Global_gamblers
	set	_Global_gamblers,r1
	store	r1,[r14+-136]
!   Move address of _temp_277 [5 ] into _temp_278
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   Prepare Argument: offset=12  value=_temp_276  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0SE",r10
!   _temp_279 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-128]
!   _temp_280 = &_Global_gamblers
	set	_Global_gamblers,r1
	store	r1,[r14+-124]
!   Move address of _temp_280 [6 ] into _temp_281
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Prepare Argument: offset=12  value=_temp_279  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0SE",r10
!   _temp_282 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-116]
!   _temp_283 = &_Global_gamblers
	set	_Global_gamblers,r1
	store	r1,[r14+-112]
!   Move address of _temp_283 [7 ] into _temp_284
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-112],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_282  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0SE",r10
!   _temp_285 = _function_49_GroupCheck
	set	_function_49_GroupCheck,r1
	store	r1,[r14+-104]
!   _temp_286 = &_Global_gamblers
	set	_Global_gamblers,r1
	store	r1,[r14+-100]
!   Move address of _temp_286 [0 ] into _temp_287
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_285  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0SE",r10
!   _temp_288 = _function_49_GroupCheck
	set	_function_49_GroupCheck,r1
	store	r1,[r14+-92]
!   _temp_289 = &_Global_gamblers
	set	_Global_gamblers,r1
	store	r1,[r14+-88]
!   Move address of _temp_289 [1 ] into _temp_290
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_288  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0SE",r10
!   _temp_291 = _function_49_GroupCheck
	set	_function_49_GroupCheck,r1
	store	r1,[r14+-80]
!   _temp_292 = &_Global_gamblers
	set	_Global_gamblers,r1
	store	r1,[r14+-76]
!   Move address of _temp_292 [2 ] into _temp_293
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_291  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_294 = _function_49_GroupCheck
	set	_function_49_GroupCheck,r1
	store	r1,[r14+-68]
!   _temp_295 = &_Global_gamblers
	set	_Global_gamblers,r1
	store	r1,[r14+-64]
!   Move address of _temp_295 [3 ] into _temp_296
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_294  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   _temp_297 = _function_49_GroupCheck
	set	_function_49_GroupCheck,r1
	store	r1,[r14+-56]
!   _temp_298 = &_Global_gamblers
	set	_Global_gamblers,r1
	store	r1,[r14+-52]
!   Move address of _temp_298 [4 ] into _temp_299
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_297  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0SE",r10
!   _temp_300 = _function_49_GroupCheck
	set	_function_49_GroupCheck,r1
	store	r1,[r14+-44]
!   _temp_301 = &_Global_gamblers
	set	_Global_gamblers,r1
	store	r1,[r14+-40]
!   Move address of _temp_301 [5 ] into _temp_302
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_300  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0SE",r10
!   _temp_303 = _function_49_GroupCheck
	set	_function_49_GroupCheck,r1
	store	r1,[r14+-32]
!   _temp_304 = &_Global_gamblers
	set	_Global_gamblers,r1
	store	r1,[r14+-28]
!   Move address of _temp_304 [6 ] into _temp_305
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_303  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0SE",r10
!   _temp_306 = _function_49_GroupCheck
	set	_function_49_GroupCheck,r1
	store	r1,[r14+-20]
!   _temp_307 = &_Global_gamblers
	set	_Global_gamblers,r1
	store	r1,[r14+-16]
!   Move address of _temp_307 [7 ] into _temp_308
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_306  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0RE",r10
	set	37068,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_50_GamingParlorTest:
	.word	_sourceFileName
	.word	_Label_309
	.word	0		! total size of parameters
	.word	37064		! frame size = 37064
	.word	_Label_310
	.word	-12
	.word	4
	.word	_Label_311
	.word	-16
	.word	4
	.word	_Label_312
	.word	-20
	.word	4
	.word	_Label_313
	.word	-24
	.word	4
	.word	_Label_314
	.word	-28
	.word	4
	.word	_Label_315
	.word	-32
	.word	4
	.word	_Label_316
	.word	-36
	.word	4
	.word	_Label_317
	.word	-40
	.word	4
	.word	_Label_318
	.word	-44
	.word	4
	.word	_Label_319
	.word	-48
	.word	4
	.word	_Label_320
	.word	-52
	.word	4
	.word	_Label_321
	.word	-56
	.word	4
	.word	_Label_322
	.word	-60
	.word	4
	.word	_Label_323
	.word	-64
	.word	4
	.word	_Label_324
	.word	-68
	.word	4
	.word	_Label_325
	.word	-72
	.word	4
	.word	_Label_326
	.word	-76
	.word	4
	.word	_Label_327
	.word	-80
	.word	4
	.word	_Label_328
	.word	-84
	.word	4
	.word	_Label_329
	.word	-88
	.word	4
	.word	_Label_330
	.word	-92
	.word	4
	.word	_Label_331
	.word	-96
	.word	4
	.word	_Label_332
	.word	-100
	.word	4
	.word	_Label_333
	.word	-104
	.word	4
	.word	_Label_334
	.word	-108
	.word	4
	.word	_Label_335
	.word	-112
	.word	4
	.word	_Label_336
	.word	-116
	.word	4
	.word	_Label_337
	.word	-120
	.word	4
	.word	_Label_338
	.word	-124
	.word	4
	.word	_Label_339
	.word	-128
	.word	4
	.word	_Label_340
	.word	-132
	.word	4
	.word	_Label_341
	.word	-136
	.word	4
	.word	_Label_342
	.word	-140
	.word	4
	.word	_Label_343
	.word	-144
	.word	4
	.word	_Label_344
	.word	-148
	.word	4
	.word	_Label_345
	.word	-152
	.word	4
	.word	_Label_346
	.word	-156
	.word	4
	.word	_Label_347
	.word	-160
	.word	4
	.word	_Label_348
	.word	-164
	.word	4
	.word	_Label_349
	.word	-168
	.word	4
	.word	_Label_350
	.word	-172
	.word	4
	.word	_Label_351
	.word	-176
	.word	4
	.word	_Label_352
	.word	-180
	.word	4
	.word	_Label_353
	.word	-184
	.word	4
	.word	_Label_354
	.word	-188
	.word	4
	.word	_Label_355
	.word	-192
	.word	4
	.word	_Label_356
	.word	-196
	.word	4
	.word	_Label_357
	.word	-200
	.word	4
	.word	_Label_358
	.word	-204
	.word	4
	.word	_Label_359
	.word	-208
	.word	4
	.word	_Label_360
	.word	-212
	.word	4
	.word	_Label_361
	.word	-216
	.word	4
	.word	_Label_362
	.word	-4308
	.word	4092
	.word	_Label_363
	.word	-4312
	.word	4
	.word	_Label_364
	.word	-4316
	.word	4
	.word	_Label_365
	.word	-37056
	.word	32740
	.word	_Label_366
	.word	-37060
	.word	4
	.word	0
_Label_309:
	.ascii	"GamingParlorTest\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_343:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_347:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
! 
! ===============  FUNCTION GroupCheck  ===============
! 
_function_49_GroupCheck:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_49_GroupCheck,r1
	push	r1
	mov	7,r1
_Label_711:
	push	r0
	sub	r1,1,r1
	bne	_Label_711
	mov	319,r13		! source line 319
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_371 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_372 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_371  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-28]
_Label_367:
!   Perform the FOR-LOOP termination test
!   if i > _temp_372 then goto _Label_370		
	load	[r14+-28],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_370
_Label_368:
	mov	322,r13		! source line 322
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	323,r13		! source line 323
	mov	"\0\0SE",r10
!   _temp_373 = &_Global_gamingParlor
	set	_Global_gamingParlor,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=reqDice  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message Request
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0SE",r10
!   _temp_374 = &_Global_gamingParlor
	set	_Global_gamingParlor,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=reqDice  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message Return
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_369:
!   i = i + 1
	load	[r14+-28],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
	jmp	_Label_367
! END FOR
_Label_370:
! RETURN STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_49_GroupCheck:
	.word	_sourceFileName
	.word	_Label_375
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_376
	.word	8
	.word	4
	.word	_Label_377
	.word	-12
	.word	4
	.word	_Label_378
	.word	-16
	.word	4
	.word	_Label_379
	.word	-20
	.word	4
	.word	_Label_380
	.word	-24
	.word	4
	.word	_Label_381
	.word	-28
	.word	4
	.word	0
_Label_375:
	.ascii	"GroupCheck\0"
	.align
_Label_376:
	.byte	'I'
	.ascii	"reqDice\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_381:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  CLASS Barbershop  ===============
! 
! Dispatch Table:
! 
_P_Main_Barbershop:
	.word	_Label_382
	jmp	_Method_P_Main_Barbershop_1	! 4:	Init
	jmp	_Method_P_Main_Barbershop_2	! 8:	barber
	jmp	_Method_P_Main_Barbershop_3	! 12:	customer
	jmp	_Method_P_Main_Barbershop_4	! 16:	get_haircut
	jmp	_Method_P_Main_Barbershop_5	! 20:	cut_hair
	jmp	_Method_P_Main_Barbershop_6	! 24:	delay
	jmp	_Method_P_Main_Barbershop_7	! 28:	printStatus
	.word	0
! 
! Class descriptor:
! 
_Label_382:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_383
	.word	_sourceFileName
	.word	9		! line number
	.word	156		! size of instances, in bytes
	.word	_P_Main_Barbershop
	.word	_P_System_Object
	.word	0
_Label_383:
	.ascii	"Barbershop\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Main_Barbershop_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_Barbershop_1,r1
	push	r1
	mov	35,r1
_Label_712:
	push	r0
	sub	r1,1,r1
	bne	_Label_712
	mov	100,r13		! source line 100
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	102,r13		! source line 102
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: customers = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,96,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   customers = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	103,r13		! source line 103
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: barbers = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,116,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   barbers = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+116]
! ASSIGNMENT STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: mutex = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,136,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   mutex = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+136]
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   _temp_387 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-128]
!   NEW ARRAY Constructor...
!   _temp_389 = &_temp_388
	add	r14,-124,r1
	store	r1,[r14+-32]
!   _temp_389 = _temp_389 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Next value...
	mov	22,r1
	store	r1,[r14+-28]
_Label_391:
!   Data Move: *_temp_389 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-32],r2
	store	r1,[r2]
!   _temp_389 = _temp_389 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   _temp_390 = _temp_390 + -1
	load	[r14+-28],r1
	add	r1,-1,r1
	store	r1,[r14+-28]
!   if intNotZero (_temp_390) then goto _Label_391
	load	[r14+-28],r1
	cmp	r1,r0
	bne	_Label_391
!   Initialize the array size...
	mov	22,r1
	store	r1,[r14+-124]
!   _temp_392 = &_temp_388
	add	r14,-124,r1
	store	r1,[r14+-24]
!   make sure array has size 22
	load	[r14+-128],r1
	load	[r1],r1
	set	22, r2
	cmp	r1,0
	be	_Label_713
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_713:
!   make sure array has size 22
	load	[r14+-24],r1
	load	[r1],r1
	set	22, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_387 = *_temp_392  (sizeInBytes=92)
	load	[r14+-24],r5
	load	[r14+-128],r4
	mov	23,r3
_Label_714:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_714
! SEND STATEMENT...
	mov	110,r13		! source line 110
	mov	"\0\0SE",r10
!   _temp_393 = &customers
	load	[r14+8],r1
	add	r1,96,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	111,r13		! source line 111
	mov	"\0\0SE",r10
!   _temp_394 = &barbers
	load	[r14+8],r1
	add	r1,116,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	112,r13		! source line 112
	mov	"\0\0SE",r10
!   _temp_395 = &mutex
	load	[r14+8],r1
	add	r1,136,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	112,r13		! source line 112
	mov	"\0\0RE",r10
	add	r15,144,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_Barbershop_1:
	.word	_sourceFileName
	.word	_Label_396
	.word	4		! total size of parameters
	.word	140		! frame size = 140
	.word	_Label_397
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_398
	.word	-12
	.word	4
	.word	_Label_399
	.word	-16
	.word	4
	.word	_Label_400
	.word	-20
	.word	4
	.word	_Label_401
	.word	-24
	.word	4
	.word	_Label_402
	.word	-28
	.word	4
	.word	_Label_403
	.word	-32
	.word	4
	.word	_Label_404
	.word	-124
	.word	92
	.word	_Label_405
	.word	-128
	.word	4
	.word	_Label_406
	.word	-132
	.word	4
	.word	_Label_407
	.word	-136
	.word	4
	.word	_Label_408
	.word	-140
	.word	4
	.word	0
_Label_396:
	.ascii	"Barbershop"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_397:
	.ascii	"Pself\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
! 
! ===============  METHOD barber  ===============
! 
_Method_P_Main_Barbershop_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_Barbershop_2,r1
	push	r1
	mov	14,r1
_Label_715:
	push	r0
	sub	r1,1,r1
	bne	_Label_715
	mov	117,r13		! source line 117
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	119,r13		! source line 119
	mov	"\0\0SE",r10
!   _temp_409 = barberID * 10		(int)
	load	[r14+12],r1
	mov	10,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_410) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_409  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message delay
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! WHILE STATEMENT...
	mov	121,r13		! source line 121
	mov	"\0\0WH",r10
_Label_411:
!	jmp	_Label_412
_Label_412:
	mov	121,r13		! source line 121
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	122,r13		! source line 122
	mov	"\0\0SE",r10
!   _temp_414 = &customers
	load	[r14+8],r1
	add	r1,96,r1
	store	r1,[r14+-48]
!   Send message Down
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	123,r13		! source line 123
	mov	"\0\0SE",r10
!   _temp_415 = &mutex
	load	[r14+8],r1
	add	r1,136,r1
	store	r1,[r14+-44]
!   Send message Down
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   _Global_waiting = _Global_waiting - 1		(int)
	set	_Global_waiting,r1
	load	[r1],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_waiting,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0SE",r10
!   _temp_416 = &barbers
	load	[r14+8],r1
	add	r1,116,r1
	store	r1,[r14+-40]
!   Send message Up
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	126,r13		! source line 126
	mov	"\0\0SE",r10
!   _temp_417 = &mutex
	load	[r14+8],r1
	add	r1,136,r1
	store	r1,[r14+-36]
!   Send message Up
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	129,r13		! source line 129
	mov	"\0\0SE",r10
!   _temp_418 = &_Global_printLock
	set	_Global_printLock,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	130,r13		! source line 130
	mov	"\0\0AS",r10
!   _temp_419 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_419 [barberID ] into _temp_420
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Data Move: *_temp_420 = 6  (sizeInBytes=4)
	mov	6,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_421) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=barberID  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message printStatus
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! SEND STATEMENT...
	mov	132,r13		! source line 132
	mov	"\0\0SE",r10
!   _temp_422 = &_Global_printLock
	set	_Global_printLock,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	133,r13		! source line 133
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_423) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=barberID  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message cut_hair
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! END WHILE...
	jmp	_Label_411
_Label_413:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_Barbershop_2:
	.word	_sourceFileName
	.word	_Label_424
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_425
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_426
	.word	12
	.word	4
	.word	_Label_427
	.word	-12
	.word	4
	.word	_Label_428
	.word	-16
	.word	4
	.word	_Label_429
	.word	-20
	.word	4
	.word	_Label_430
	.word	-24
	.word	4
	.word	_Label_431
	.word	-28
	.word	4
	.word	_Label_432
	.word	-32
	.word	4
	.word	_Label_433
	.word	-36
	.word	4
	.word	_Label_434
	.word	-40
	.word	4
	.word	_Label_435
	.word	-44
	.word	4
	.word	_Label_436
	.word	-48
	.word	4
	.word	_Label_437
	.word	-52
	.word	4
	.word	_Label_438
	.word	-56
	.word	4
	.word	0
_Label_424:
	.ascii	"Barbershop"
	.ascii	"::"
	.ascii	"barber\0"
	.align
_Label_425:
	.ascii	"Pself\0"
	.align
_Label_426:
	.byte	'I'
	.ascii	"barberID\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_421\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
! 
! ===============  METHOD customer  ===============
! 
_Method_P_Main_Barbershop_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_Barbershop_3,r1
	push	r1
	mov	22,r1
_Label_716:
	push	r0
	sub	r1,1,r1
	bne	_Label_716
	mov	139,r13		! source line 139
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	141,r13		! source line 141
	mov	"\0\0SE",r10
!   _temp_439 = customerID * 500		(int)
	load	[r14+12],r1
	mov	500,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
	load	[r14+8],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_440) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_439  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message delay
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0SE",r10
!   _temp_441 = &mutex
	load	[r14+8],r1
	add	r1,136,r1
	store	r1,[r14+-80]
!   Send message Down
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_442 = &_Global_printLock
	set	_Global_printLock,r1
	store	r1,[r14+-76]
!   Send message Lock
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0AS",r10
!   _temp_443 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Move address of _temp_443 [customerID ] into _temp_444
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-72],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-68]
!   Data Move: *_temp_444 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-68],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	150,r13		! source line 150
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_445) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=customerID  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message printStatus
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! IF STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0IF",r10
!   if _Global_waiting >= _Global_CHAIRS then goto _Label_447		(int)
	set	_Global_waiting,r1
	load	[r1],r1
	set	_Global_CHAIRS,r2
	load	[r2],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_447
!	jmp	_Label_446
_Label_446:
! THEN...
	mov	153,r13		! source line 153
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	153,r13		! source line 153
	mov	"\0\0AS",r10
!   _Global_waiting = _Global_waiting + 1		(int)
	set	_Global_waiting,r1
	load	[r1],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_waiting,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	156,r13		! source line 156
	mov	"\0\0AS",r10
!   _temp_448 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Move address of _temp_448 [customerID ] into _temp_449
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Data Move: *_temp_449 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-56],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	157,r13		! source line 157
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_450) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=customerID  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message printStatus
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! SEND STATEMENT...
	mov	158,r13		! source line 158
	mov	"\0\0SE",r10
!   _temp_451 = &_Global_printLock
	set	_Global_printLock,r1
	store	r1,[r14+-48]
!   Send message Unlock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	159,r13		! source line 159
	mov	"\0\0SE",r10
!   _temp_452 = &customers
	load	[r14+8],r1
	add	r1,96,r1
	store	r1,[r14+-44]
!   Send message Up
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	160,r13		! source line 160
	mov	"\0\0SE",r10
!   _temp_453 = &mutex
	load	[r14+8],r1
	add	r1,136,r1
	store	r1,[r14+-40]
!   Send message Up
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	161,r13		! source line 161
	mov	"\0\0SE",r10
!   _temp_454 = &barbers
	load	[r14+8],r1
	add	r1,116,r1
	store	r1,[r14+-36]
!   Send message Down
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	162,r13		! source line 162
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_455) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=customerID  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message get_haircut
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
	jmp	_Label_456
_Label_447:
! ELSE...
	mov	164,r13		! source line 164
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0SE",r10
!   _temp_457 = &mutex
	load	[r14+8],r1
	add	r1,136,r1
	store	r1,[r14+-28]
!   Send message Up
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	167,r13		! source line 167
	mov	"\0\0AS",r10
!   _temp_458 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Move address of _temp_458 [customerID ] into _temp_459
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   Data Move: *_temp_459 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	168,r13		! source line 168
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_460) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=customerID  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message printStatus
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! SEND STATEMENT...
	mov	169,r13		! source line 169
	mov	"\0\0SE",r10
!   _temp_461 = &_Global_printLock
	set	_Global_printLock,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_456:
! RETURN STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_Barbershop_3:
	.word	_sourceFileName
	.word	_Label_462
	.word	8		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_463
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_464
	.word	12
	.word	4
	.word	_Label_465
	.word	-12
	.word	4
	.word	_Label_466
	.word	-16
	.word	4
	.word	_Label_467
	.word	-20
	.word	4
	.word	_Label_468
	.word	-24
	.word	4
	.word	_Label_469
	.word	-28
	.word	4
	.word	_Label_470
	.word	-32
	.word	4
	.word	_Label_471
	.word	-36
	.word	4
	.word	_Label_472
	.word	-40
	.word	4
	.word	_Label_473
	.word	-44
	.word	4
	.word	_Label_474
	.word	-48
	.word	4
	.word	_Label_475
	.word	-52
	.word	4
	.word	_Label_476
	.word	-56
	.word	4
	.word	_Label_477
	.word	-60
	.word	4
	.word	_Label_478
	.word	-64
	.word	4
	.word	_Label_479
	.word	-68
	.word	4
	.word	_Label_480
	.word	-72
	.word	4
	.word	_Label_481
	.word	-76
	.word	4
	.word	_Label_482
	.word	-80
	.word	4
	.word	_Label_483
	.word	-84
	.word	4
	.word	_Label_484
	.word	-88
	.word	4
	.word	0
_Label_462:
	.ascii	"Barbershop"
	.ascii	"::"
	.ascii	"customer\0"
	.align
_Label_463:
	.ascii	"Pself\0"
	.align
_Label_464:
	.byte	'I'
	.ascii	"customerID\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
! 
! ===============  METHOD get_haircut  ===============
! 
_Method_P_Main_Barbershop_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_Barbershop_4,r1
	push	r1
	mov	19,r1
_Label_717:
	push	r0
	sub	r1,1,r1
	bne	_Label_717
	mov	174,r13		! source line 174
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	177,r13		! source line 177
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_485) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
	store	r1,[r15+4]
!   Send message delay
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	181,r13		! source line 181
	mov	"\0\0SE",r10
!   _temp_486 = &_Global_printLock
	set	_Global_printLock,r1
	store	r1,[r14+-72]
!   Send message Lock
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	182,r13		! source line 182
	mov	"\0\0AS",r10
!   _temp_487 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-68]
!   Move address of _temp_487 [customerID ] into _temp_488
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   Data Move: *_temp_488 = 4  (sizeInBytes=4)
	mov	4,r1
	load	[r14+-64],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	183,r13		! source line 183
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_489) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=customerID  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message printStatus
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! SEND STATEMENT...
	mov	184,r13		! source line 184
	mov	"\0\0SE",r10
!   _temp_490 = &_Global_printLock
	set	_Global_printLock,r1
	store	r1,[r14+-56]
!   Send message Unlock
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	187,r13		! source line 187
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_491) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=400  sizeInBytes=4
	mov	400,r1
	store	r1,[r15+4]
!   Send message delay
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	191,r13		! source line 191
	mov	"\0\0SE",r10
!   _temp_492 = &_Global_printLock
	set	_Global_printLock,r1
	store	r1,[r14+-48]
!   Send message Lock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	192,r13		! source line 192
	mov	"\0\0AS",r10
!   _temp_493 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_493 [customerID ] into _temp_494
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Data Move: *_temp_494 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-40],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_495) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=customerID  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message printStatus
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! SEND STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0SE",r10
!   _temp_496 = &_Global_printLock
	set	_Global_printLock,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0SE",r10
!   _temp_497 = &_Global_printLock
	set	_Global_printLock,r1
	store	r1,[r14+-28]
!   Send message Lock
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	199,r13		! source line 199
	mov	"\0\0AS",r10
!   _temp_498 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Move address of _temp_498 [customerID ] into _temp_499
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   Data Move: *_temp_499 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	200,r13		! source line 200
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_500) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=customerID  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message printStatus
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! SEND STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0SE",r10
!   _temp_501 = &_Global_printLock
	set	_Global_printLock,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_Barbershop_4:
	.word	_sourceFileName
	.word	_Label_502
	.word	8		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_503
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_504
	.word	12
	.word	4
	.word	_Label_505
	.word	-12
	.word	4
	.word	_Label_506
	.word	-16
	.word	4
	.word	_Label_507
	.word	-20
	.word	4
	.word	_Label_508
	.word	-24
	.word	4
	.word	_Label_509
	.word	-28
	.word	4
	.word	_Label_510
	.word	-32
	.word	4
	.word	_Label_511
	.word	-36
	.word	4
	.word	_Label_512
	.word	-40
	.word	4
	.word	_Label_513
	.word	-44
	.word	4
	.word	_Label_514
	.word	-48
	.word	4
	.word	_Label_515
	.word	-52
	.word	4
	.word	_Label_516
	.word	-56
	.word	4
	.word	_Label_517
	.word	-60
	.word	4
	.word	_Label_518
	.word	-64
	.word	4
	.word	_Label_519
	.word	-68
	.word	4
	.word	_Label_520
	.word	-72
	.word	4
	.word	_Label_521
	.word	-76
	.word	4
	.word	0
_Label_502:
	.ascii	"Barbershop"
	.ascii	"::"
	.ascii	"get_haircut\0"
	.align
_Label_503:
	.ascii	"Pself\0"
	.align
_Label_504:
	.byte	'I'
	.ascii	"customerID\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_490\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_489\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_488\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_487\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_486\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_485\0"
	.align
! 
! ===============  METHOD cut_hair  ===============
! 
_Method_P_Main_Barbershop_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_Barbershop_5,r1
	push	r1
	mov	8,r1
_Label_718:
	push	r0
	sub	r1,1,r1
	bne	_Label_718
	mov	205,r13		! source line 205
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	208,r13		! source line 208
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_522) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=200  sizeInBytes=4
	mov	200,r1
	store	r1,[r15+4]
!   Send message delay
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	212,r13		! source line 212
	mov	"\0\0SE",r10
!   _temp_523 = &_Global_printLock
	set	_Global_printLock,r1
	store	r1,[r14+-28]
!   Send message Lock
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	213,r13		! source line 213
	mov	"\0\0AS",r10
!   _temp_524 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Move address of _temp_524 [barberID ] into _temp_525
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   Data Move: *_temp_525 = 7  (sizeInBytes=4)
	mov	7,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	214,r13		! source line 214
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_526) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=barberID  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message printStatus
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! SEND STATEMENT...
	mov	215,r13		! source line 215
	mov	"\0\0SE",r10
!   _temp_527 = &_Global_printLock
	set	_Global_printLock,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	215,r13		! source line 215
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_Barbershop_5:
	.word	_sourceFileName
	.word	_Label_528
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_529
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_530
	.word	12
	.word	4
	.word	_Label_531
	.word	-12
	.word	4
	.word	_Label_532
	.word	-16
	.word	4
	.word	_Label_533
	.word	-20
	.word	4
	.word	_Label_534
	.word	-24
	.word	4
	.word	_Label_535
	.word	-28
	.word	4
	.word	_Label_536
	.word	-32
	.word	4
	.word	0
_Label_528:
	.ascii	"Barbershop"
	.ascii	"::"
	.ascii	"cut_hair\0"
	.align
_Label_529:
	.ascii	"Pself\0"
	.align
_Label_530:
	.byte	'I'
	.ascii	"barberID\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
! 
! ===============  METHOD delay  ===============
! 
_Method_P_Main_Barbershop_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_Barbershop_6,r1
	push	r1
	mov	4,r1
_Label_719:
	push	r0
	sub	r1,1,r1
	bne	_Label_719
	mov	220,r13		! source line 220
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	223,r13		! source line 223
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_541 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-16]
!   Calculate and save the FOR-LOOP ending value
!   _temp_542 = time		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-12]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_541  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+-20]
_Label_537:
!   Perform the FOR-LOOP termination test
!   if i > _temp_542 then goto _Label_540		
	load	[r14+-20],r1
	load	[r14+-12],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_540
_Label_538:
	mov	223,r13		! source line 223
	mov	"\0\0FB",r10
!   Increment the FOR-LOOP index variable and jump back
_Label_539:
!   i = i + 1
	load	[r14+-20],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
	jmp	_Label_537
! END FOR
_Label_540:
! SEND STATEMENT...
	mov	225,r13		! source line 225
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	225,r13		! source line 225
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_Barbershop_6:
	.word	_sourceFileName
	.word	_Label_543
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_544
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_545
	.word	12
	.word	4
	.word	_Label_546
	.word	-12
	.word	4
	.word	_Label_547
	.word	-16
	.word	4
	.word	_Label_548
	.word	-20
	.word	4
	.word	0
_Label_543:
	.ascii	"Barbershop"
	.ascii	"::"
	.ascii	"delay\0"
	.align
_Label_544:
	.ascii	"Pself\0"
	.align
_Label_545:
	.byte	'I'
	.ascii	"time\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_548:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD printStatus  ===============
! 
_Method_P_Main_Barbershop_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_Barbershop_7,r1
	push	r1
	mov	23,r1
_Label_720:
	push	r0
	sub	r1,1,r1
	bne	_Label_720
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_553 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-88]
!   Calculate and save the FOR-LOOP ending value
!   _temp_554 = 21		(4 bytes)
	mov	21,r1
	store	r1,[r14+-84]
!   Initialize FOR-LOOP index variable
!   Data Move: p = _temp_553  (sizeInBytes=4)
	load	[r14+-88],r1
	store	r1,[r14+-92]
_Label_549:
!   Perform the FOR-LOOP termination test
!   if p > _temp_554 then goto _Label_552		
	load	[r14+-92],r1
	load	[r14+-84],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_552
_Label_550:
	mov	236,r13		! source line 236
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0IF",r10
!   if p == id then goto _Label_556		(int)
	load	[r14+-92],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_556
!	jmp	_Label_555
_Label_555:
! THEN...
	mov	238,r13		! source line 238
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_557 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_557  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	238,r13		! source line 238
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_558
_Label_556:
! ELSE...
	mov	240,r13		! source line 240
	mov	"\0\0EL",r10
! SWITCH STATEMENT (using an indirect jump table)...
	mov	240,r13		! source line 240
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   _temp_570 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Move address of _temp_570 [p ] into _temp_571
!     make sure index expr is >= 0
	load	[r14+-92],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-72],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-68]
!   Data Move: _temp_569 = *_temp_571  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-76]
	load	[r14+-76],r1
!   If _temp_569 is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_721
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_559
_Label_721:
!   If _temp_569 is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_559
!   If _temp_569 is > 8 (==greatestCaseValue) goto default code
	cmp	r1,8
	bg	_Label_559
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_572,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_572:
	jmp	_Label_561	! 1:	
	jmp	_Label_562	! 2:	
	jmp	_Label_565	! 3:	
	jmp	_Label_563	! 4:	
	jmp	_Label_564	! 5:	
	jmp	_Label_566	! 6:	
	jmp	_Label_567	! 7:	
	jmp	_Label_568	! 8:	
! CASE 1...
_Label_561:
! CALL STATEMENT...
!   _temp_573 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_573  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	242,r13		! source line 242
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	243,r13		! source line 243
	mov	"\0\0BR",r10
	jmp	_Label_560
! CASE 2...
_Label_562:
! CALL STATEMENT...
!   _temp_574 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_574  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	245,r13		! source line 245
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	246,r13		! source line 246
	mov	"\0\0AS",r10
!   _Global_empty = _Global_empty - 1		(int)
	set	_Global_empty,r1
	load	[r1],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_empty,r2
	store	r1,[r2]
! BREAK STATEMENT...
	mov	247,r13		! source line 247
	mov	"\0\0BR",r10
	jmp	_Label_560
! CASE 4...
_Label_563:
! CALL STATEMENT...
!   _temp_575 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_575  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	249,r13		! source line 249
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0BR",r10
	jmp	_Label_560
! CASE 5...
_Label_564:
! CALL STATEMENT...
!   _temp_576 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_576  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	252,r13		! source line 252
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0BR",r10
	jmp	_Label_560
! CASE 3...
_Label_565:
! CALL STATEMENT...
!   _temp_577 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_577  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	255,r13		! source line 255
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	256,r13		! source line 256
	mov	"\0\0BR",r10
	jmp	_Label_560
! CASE 6...
_Label_566:
! CALL STATEMENT...
!   _temp_578 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_578  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	258,r13		! source line 258
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	259,r13		! source line 259
	mov	"\0\0AS",r10
!   _Global_empty = _Global_empty + 1		(int)
	set	_Global_empty,r1
	load	[r1],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_empty,r2
	store	r1,[r2]
! BREAK STATEMENT...
	mov	260,r13		! source line 260
	mov	"\0\0BR",r10
	jmp	_Label_560
! CASE 7...
_Label_567:
! CALL STATEMENT...
!   _temp_579 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_579  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0BR",r10
	jmp	_Label_560
! CASE 8...
_Label_568:
! CALL STATEMENT...
!   _temp_580 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_580  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	265,r13		! source line 265
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0BR",r10
	jmp	_Label_560
! DEFAULT CASE...
_Label_559:
! END SWITCH...
_Label_560:
! END IF...
_Label_558:
!   Increment the FOR-LOOP index variable and jump back
_Label_551:
!   p = p + 1
	load	[r14+-92],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
	jmp	_Label_549
! END FOR
_Label_552:
! FOR STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_585 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_586 = _Global_CHAIRS - _Global_empty		(int)
	set	_Global_CHAIRS,r1
	load	[r1],r1
	set	_Global_empty,r2
	load	[r2],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_585  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-96]
_Label_581:
!   Perform the FOR-LOOP termination test
!   if i > _temp_586 then goto _Label_584		
	load	[r14+-96],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_584
_Label_582:
	mov	272,r13		! source line 272
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_587 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_587  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	273,r13		! source line 273
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_583:
!   i = i + 1
	load	[r14+-96],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
	jmp	_Label_581
! END FOR
_Label_584:
! FOR STATEMENT...
	mov	276,r13		! source line 276
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_592 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-20]
!   Calculate and save the FOR-LOOP ending value
!   _temp_593 = _Global_empty		(4 bytes)
	set	_Global_empty,r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_592  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+-96]
_Label_588:
!   Perform the FOR-LOOP termination test
!   if i > _temp_593 then goto _Label_591		
	load	[r14+-96],r1
	load	[r14+-16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_591
_Label_589:
	mov	276,r13		! source line 276
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_594 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_594  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	277,r13		! source line 277
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_590:
!   i = i + 1
	load	[r14+-96],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
	jmp	_Label_588
! END FOR
_Label_591:
! CALL STATEMENT...
!   Call the function
	mov	280,r13		! source line 280
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	280,r13		! source line 280
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_Barbershop_7:
	.word	_sourceFileName
	.word	_Label_595
	.word	8		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_596
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_597
	.word	12
	.word	4
	.word	_Label_598
	.word	-12
	.word	4
	.word	_Label_599
	.word	-16
	.word	4
	.word	_Label_600
	.word	-20
	.word	4
	.word	_Label_601
	.word	-24
	.word	4
	.word	_Label_602
	.word	-28
	.word	4
	.word	_Label_603
	.word	-32
	.word	4
	.word	_Label_604
	.word	-36
	.word	4
	.word	_Label_605
	.word	-40
	.word	4
	.word	_Label_606
	.word	-44
	.word	4
	.word	_Label_607
	.word	-48
	.word	4
	.word	_Label_608
	.word	-52
	.word	4
	.word	_Label_609
	.word	-56
	.word	4
	.word	_Label_610
	.word	-60
	.word	4
	.word	_Label_611
	.word	-64
	.word	4
	.word	_Label_612
	.word	-68
	.word	4
	.word	_Label_613
	.word	-72
	.word	4
	.word	_Label_614
	.word	-76
	.word	4
	.word	_Label_615
	.word	-80
	.word	4
	.word	_Label_616
	.word	-84
	.word	4
	.word	_Label_617
	.word	-88
	.word	4
	.word	_Label_618
	.word	-92
	.word	4
	.word	_Label_619
	.word	-96
	.word	4
	.word	0
_Label_595:
	.ascii	"Barbershop"
	.ascii	"::"
	.ascii	"printStatus\0"
	.align
_Label_596:
	.ascii	"Pself\0"
	.align
_Label_597:
	.byte	'I'
	.ascii	"id\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_618:
	.byte	'I'
	.ascii	"p\0"
	.align
_Label_619:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  CLASS GamingParlor  ===============
! 
! Dispatch Table:
! 
_P_Main_GamingParlor:
	.word	_Label_620
	jmp	_Method_P_Main_GamingParlor_1	! 4:	Init
	jmp	_Method_P_Main_GamingParlor_2	! 8:	Request
	jmp	_Method_P_Main_GamingParlor_3	! 12:	Return
	jmp	_Method_P_Main_GamingParlor_4	! 16:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_620:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_621
	.word	_sourceFileName
	.word	26		! line number
	.word	64		! size of instances, in bytes
	.word	_P_Main_GamingParlor
	.word	_P_System_Object
	.word	0
_Label_621:
	.ascii	"GamingParlor\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Main_GamingParlor_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_GamingParlor_1,r1
	push	r1
	mov	7,r1
_Label_722:
	push	r0
	sub	r1,1,r1
	bne	_Label_722
	mov	333,r13		! source line 333
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: mLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   mLock = _P_Synch_Mutex
	set	_P_Synch_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	336,r13		! source line 336
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: nextGroup = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,24,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   nextGroup = _P_Synch_Condition
	set	_P_Synch_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	337,r13		! source line 337
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitList = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   waitList = _P_Synch_Condition
	set	_P_Synch_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	339,r13		! source line 339
	mov	"\0\0SE",r10
!   _temp_625 = &mLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0SE",r10
!   _temp_626 = &nextGroup
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Send message Init
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	341,r13		! source line 341
	mov	"\0\0SE",r10
!   _temp_627 = &waitList
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	344,r13		! source line 344
	mov	"\0\0AS",r10
!   availDice = 8		(4 bytes)
	mov	8,r1
	load	[r14+8],r2
	store	r1,[r2+56]
! ASSIGNMENT STATEMENT...
	mov	346,r13		! source line 346
	mov	"\0\0AS",r10
!   waitingGroups = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+60]
! RETURN STATEMENT...
	mov	346,r13		! source line 346
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GamingParlor_1:
	.word	_sourceFileName
	.word	_Label_628
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_629
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_630
	.word	-12
	.word	4
	.word	_Label_631
	.word	-16
	.word	4
	.word	_Label_632
	.word	-20
	.word	4
	.word	_Label_633
	.word	-24
	.word	4
	.word	_Label_634
	.word	-28
	.word	4
	.word	_Label_635
	.word	-32
	.word	4
	.word	0
_Label_628:
	.ascii	"GamingParlor"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_629:
	.ascii	"Pself\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
! 
! ===============  METHOD Request  ===============
! 
_Method_P_Main_GamingParlor_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_GamingParlor_2,r1
	push	r1
	mov	15,r1
_Label_723:
	push	r0
	sub	r1,1,r1
	bne	_Label_723
	mov	355,r13		! source line 355
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	356,r13		! source line 356
	mov	"\0\0SE",r10
!   _temp_636 = &mLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Send message Lock
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	358,r13		! source line 358
	mov	"\0\0SE",r10
!   _temp_637 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-52]
	load	[r14+8],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_638) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_637  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberofDice  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Send message Print
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	359,r13		! source line 359
	mov	"\0\0AS",r10
!   waitingGroups = waitingGroups + 1		(int)
	load	[r14+8],r1
	load	[r1+60],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+60]
! IF STATEMENT...
	mov	362,r13		! source line 362
	mov	"\0\0IF",r10
!   if waitingGroups <= 1 then goto _Label_640		(int)
	load	[r14+8],r1
	load	[r1+60],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_640
!	jmp	_Label_639
_Label_639:
! THEN...
	mov	363,r13		! source line 363
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	363,r13		! source line 363
	mov	"\0\0SE",r10
!   _temp_641 = &mLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   _temp_642 = &waitList
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_641  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_640:
! WHILE STATEMENT...
	mov	367,r13		! source line 367
	mov	"\0\0WH",r10
_Label_643:
!   if availDice >= numberofDice then goto _Label_645		(int)
	load	[r14+8],r1
	load	[r1+56],r1
	load	[r14+12],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_645
!	jmp	_Label_644
_Label_644:
	mov	367,r13		! source line 367
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	368,r13		! source line 368
	mov	"\0\0SE",r10
!   _temp_646 = &mLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_647 = &nextGroup
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_646  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_643
_Label_645:
! ASSIGNMENT STATEMENT...
	mov	371,r13		! source line 371
	mov	"\0\0AS",r10
!   availDice = availDice - numberofDice		(int)
	load	[r14+8],r1
	load	[r1+56],r1
	load	[r14+12],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+56]
! ASSIGNMENT STATEMENT...
	mov	372,r13		! source line 372
	mov	"\0\0AS",r10
!   waitingGroups = waitingGroups - 1		(int)
	load	[r14+8],r1
	load	[r1+60],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+60]
! SEND STATEMENT...
	mov	375,r13		! source line 375
	mov	"\0\0SE",r10
!   _temp_648 = &mLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   _temp_649 = &waitList
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_648  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	377,r13		! source line 377
	mov	"\0\0SE",r10
!   _temp_650 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-20]
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_651) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_650  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberofDice  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	379,r13		! source line 379
	mov	"\0\0SE",r10
!   _temp_652 = &mLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	379,r13		! source line 379
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GamingParlor_2:
	.word	_sourceFileName
	.word	_Label_653
	.word	8		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_654
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_655
	.word	12
	.word	4
	.word	_Label_656
	.word	-12
	.word	4
	.word	_Label_657
	.word	-16
	.word	4
	.word	_Label_658
	.word	-20
	.word	4
	.word	_Label_659
	.word	-24
	.word	4
	.word	_Label_660
	.word	-28
	.word	4
	.word	_Label_661
	.word	-32
	.word	4
	.word	_Label_662
	.word	-36
	.word	4
	.word	_Label_663
	.word	-40
	.word	4
	.word	_Label_664
	.word	-44
	.word	4
	.word	_Label_665
	.word	-48
	.word	4
	.word	_Label_666
	.word	-52
	.word	4
	.word	_Label_667
	.word	-56
	.word	4
	.word	0
_Label_653:
	.ascii	"GamingParlor"
	.ascii	"::"
	.ascii	"Request\0"
	.align
_Label_654:
	.ascii	"Pself\0"
	.align
_Label_655:
	.byte	'I'
	.ascii	"numberofDice\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
! 
! ===============  METHOD Return  ===============
! 
_Method_P_Main_GamingParlor_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_GamingParlor_3,r1
	push	r1
	mov	9,r1
_Label_724:
	push	r0
	sub	r1,1,r1
	bne	_Label_724
	mov	384,r13		! source line 384
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	385,r13		! source line 385
	mov	"\0\0SE",r10
!   _temp_668 = &mLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	387,r13		! source line 387
	mov	"\0\0AS",r10
!   availDice = availDice + numberofDice		(int)
	load	[r14+8],r1
	load	[r1+56],r1
	load	[r14+12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+56]
! SEND STATEMENT...
	mov	388,r13		! source line 388
	mov	"\0\0SE",r10
!   _temp_669 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-28]
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_670) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_669  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberofDice  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0SE",r10
!   _temp_671 = &mLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_672 = &nextGroup
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_671  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	391,r13		! source line 391
	mov	"\0\0SE",r10
!   _temp_673 = &mLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	391,r13		! source line 391
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GamingParlor_3:
	.word	_sourceFileName
	.word	_Label_674
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_675
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_676
	.word	12
	.word	4
	.word	_Label_677
	.word	-12
	.word	4
	.word	_Label_678
	.word	-16
	.word	4
	.word	_Label_679
	.word	-20
	.word	4
	.word	_Label_680
	.word	-24
	.word	4
	.word	_Label_681
	.word	-28
	.word	4
	.word	_Label_682
	.word	-32
	.word	4
	.word	0
_Label_674:
	.ascii	"GamingParlor"
	.ascii	"::"
	.ascii	"Return\0"
	.align
_Label_675:
	.ascii	"Pself\0"
	.align
_Label_676:
	.byte	'I'
	.ascii	"numberofDice\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Main_GamingParlor_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_GamingParlor_4,r1
	push	r1
	mov	6,r1
_Label_725:
	push	r0
	sub	r1,1,r1
	bne	_Label_725
	mov	394,r13		! source line 394
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_684 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_683 = *_temp_684  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_683  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	399,r13		! source line 399
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_685 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_685  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	400,r13		! source line 400
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=str  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	401,r13		! source line 401
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_686 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_686  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	402,r13		! source line 402
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=count  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	403,r13		! source line 403
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	404,r13		! source line 404
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_687 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_687  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	405,r13		! source line 405
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=availDice  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+56],r1
	store	r1,[r15+0]
!   Call the function
	mov	406,r13		! source line 406
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	407,r13		! source line 407
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	407,r13		! source line 407
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GamingParlor_4:
	.word	_sourceFileName
	.word	_Label_688
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_689
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_690
	.word	12
	.word	4
	.word	_Label_691
	.word	16
	.word	4
	.word	_Label_692
	.word	-12
	.word	4
	.word	_Label_693
	.word	-16
	.word	4
	.word	_Label_694
	.word	-20
	.word	4
	.word	_Label_695
	.word	-24
	.word	4
	.word	_Label_696
	.word	-28
	.word	4
	.word	0
_Label_688:
	.ascii	"GamingParlor"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_689:
	.ascii	"Pself\0"
	.align
_Label_690:
	.byte	'P'
	.ascii	"str\0"
	.align
_Label_691:
	.byte	'I'
	.ascii	"count\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
