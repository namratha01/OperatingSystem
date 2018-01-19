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
	.import	_P_System_PrintMemory
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
	.import	_P_BitMap_TestBitMap
	.import	_P_Kernel_TimerInterruptHandler
	.import	_P_Kernel_DiskInterruptHandler
	.import	_P_Kernel_SerialInterruptHandler
	.import	_P_Kernel_IllegalInstructionHandler
	.import	_P_Kernel_ArithmeticExceptionHandler
	.import	_P_Kernel_AddressExceptionHandler
	.import	_P_Kernel_PageInvalidExceptionHandler
	.import	_P_Kernel_PageReadonlyExceptionHandler
	.import	_P_Kernel_PrivilegedInstructionHandler
	.import	_P_Kernel_AlignmentExceptionHandler
	.import	_P_Kernel_SyscallTrapHandler
	.import	_P_Kernel_Handle_Sys_Fork
	.import	_P_Kernel_Handle_Sys_Yield
	.import	_P_Kernel_Handle_Sys_Exec
	.import	_P_Kernel_Handle_Sys_Join
	.import	_P_Kernel_Handle_Sys_Exit
	.import	_P_Kernel_Handle_Sys_Create
	.import	_P_Kernel_Handle_Sys_Open
	.import	_P_Kernel_Handle_Sys_Read
	.import	_P_Kernel_Handle_Sys_Write
	.import	_P_Kernel_Handle_Sys_Seek
	.import	_P_Kernel_Handle_Sys_Close
	.import	_P_Kernel_Handle_Sys_Shutdown
	.import	_P_Kernel_InitializeScheduler
	.import	_P_Kernel_Run
	.import	_P_Kernel_PrintReadyList
	.import	_P_Kernel_ThreadStartMain
	.import	_P_Kernel_ThreadFinish
	.import	_P_Kernel_FatalError_ThreadVersion
	.import	_P_Kernel_SetInterruptsTo
	.import	_P_Kernel_ProcessFinish
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Kernel_Semaphore
! The following class and its methods are from other packages
	.import	_P_Kernel_Mutex
! The following class and its methods are from other packages
	.import	_P_Kernel_HoareMutex
! The following class and its methods are from other packages
	.import	_P_Kernel_Condition
! The following class and its methods are from other packages
	.import	_P_Kernel_HoareCondition
! The following class and its methods are from other packages
	.import	_P_Kernel_Thread
! The following class and its methods are from other packages
	.import	_P_Kernel_ThreadManager
! The following class and its methods are from other packages
	.import	_P_Kernel_HoareThreadManager
! The following class and its methods are from other packages
	.import	_P_Kernel_ProcessControlBlock
! The following class and its methods are from other packages
	.import	_P_Kernel_ProcessManager
! The following class and its methods are from other packages
	.import	_P_Kernel_FrameManager
! The following class and its methods are from other packages
	.import	_P_Kernel_AddrSpace
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
	.import	_P_Kernel_readyList
	.import	_P_Kernel_currentThread
	.import	_P_Kernel_mainThread
	.import	_P_Kernel_idleThread
	.import	_P_Kernel_threadsToBeDestroyed
	.import	_P_Kernel_currentInterruptStatus
	.import	_P_Kernel_processManager
	.import	_P_Kernel_threadManager
	.import	_P_Kernel_hoarethreadManager
	.import	_P_Kernel_frameManager
! Global variables in this package
	.data
_Global_uniqueNumberLock:
! Static object
	.word	_P_Kernel_Mutex
	.word	0
	.word	0
	.word	0
	.word	0
_Global_nextUnique:
	.word	0x00000001		! decimal value = 1
_Global_allDone:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_freeze:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_allDone2:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_histogram:
! Static array
	.word	27		! number of elements
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.align
	.align
! String constants
_StringConst_31:
	.word	49			! length
	.ascii	"Data corruption, indicating that frame was shared"
	.align
_StringConst_30:
	.word	35			! length
	.ascii	"Bad frame number in some addr space"
	.align
_StringConst_29:
	.word	32			! length
	.ascii	"addrSpace.numberOfPages is wrong"
	.align
_StringConst_28:
	.word	43			! length
	.ascii	"Problems with bits in some page table entry"
	.align
_StringConst_27:
	.word	35			! length
	.ascii	"Bad frame number in some addr space"
	.align
_StringConst_26:
	.word	32			! length
	.ascii	"addrSpace.numberOfPages is wrong"
	.align
_StringConst_25:
	.word	57			! length
	.ascii	"\n\n***** FRAME-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_24:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_23:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_22:
	.word	66			! length
	.ascii	"\n\nHere is a histogram showing how many times each frame was used:\n"
	.align
_StringConst_21:
	.word	16			! length
	.ascii	"TestFrameManager"
	.align
_StringConst_20:
	.word	36			! length
	.ascii	"\n\n*****  FRAME-MANAGER TEST  *****\n\n"
	.align
_StringConst_19:
	.word	31			! length
	.ascii	"Concurrency control failure (2)"
	.align
_StringConst_18:
	.word	59			! length
	.ascii	"\n\n***** PROCESS-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_17:
	.word	31			! length
	.ascii	"Concurrency control failure (1)"
	.align
_StringConst_16:
	.word	18			! length
	.ascii	"TestProcessManager"
	.align
_StringConst_15:
	.word	38			! length
	.ascii	"\n\n*****  PROCESS-MANAGER TEST  *****\n\n"
	.align
_StringConst_14:
	.word	31			! length
	.ascii	"Concurrency control failure (2)"
	.align
_StringConst_13:
	.word	58			! length
	.ascii	"\n\n***** THREAD-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_12:
	.word	31			! length
	.ascii	"Concurrency control failure (1)"
	.align
_StringConst_11:
	.word	17			! length
	.ascii	"TestThreadManager"
	.align
_StringConst_10:
	.word	37			! length
	.ascii	"\n\n*****  THREAD-MANAGER TEST  *****\n\n"
	.align
_StringConst_9:
	.word	15			! length
	.ascii	"\nThread started"
	.align
_StringConst_8:
	.word	64			! length
	.ascii	"\n\n***** HOARE THREAD-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_7:
	.word	4			! length
	.ascii	"test"
	.align
_StringConst_6:
	.word	5			! length
	.ascii	"THTM5"
	.align
_StringConst_5:
	.word	5			! length
	.ascii	"THTM4"
	.align
_StringConst_4:
	.word	5			! length
	.ascii	"THTM3"
	.align
_StringConst_3:
	.word	5			! length
	.ascii	"THTM2"
	.align
_StringConst_2:
	.word	5			! length
	.ascii	"THTM1"
	.align
_StringConst_1:
	.word	43			! length
	.ascii	"\n\n*****  HOARE THREAD-MANAGER TEST  *****\n\n"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0xeb2db4a8,r3		! .  hashVal = -349326168
	call	_CheckVersion_P_Main_	! .
	cmp	r1,0			! .
	be	_Label_43		! .
	ret				! .
_Label_43:				! .
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
	set	0xeb2db4a8,r4		! myHashVal = -349326168
	cmp	r3,r4
	be	_Label_44
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
_Label_44:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_45
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_45
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_45
! Make sure _P_Kernel_ has hash value 0x78a9a622 (decimal 2024384034)
	set	_packageName,r2
	set	0x78a9a622,r3
	call	_CheckVersion_P_Kernel_
	.import	_CheckVersion_P_Kernel_
	cmp	r1,0
	bne	_Label_45
_Label_45:
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
	mov	10,r1
_Label_601:
	push	r0
	sub	r1,1,r1
	bne	_Label_601
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0SE",r10
!   _temp_46 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-44]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	20,r13		! source line 20
	mov	"\0\0CA",r10
	call	_P_Kernel_InitializeScheduler
! ASSIGNMENT STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_processManager = zeros  (sizeInBytes=1316)
	set	_P_Kernel_processManager,r4
	mov	329,r3
_Label_602:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_602
!   _P_Kernel_processManager = _P_Kernel_ProcessManager
	set	_P_Kernel_ProcessManager,r1
	set	_P_Kernel_processManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_48 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadManager = zeros  (sizeInBytes=41696)
	set	_P_Kernel_threadManager,r4
	mov	10424,r3
_Label_603:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_603
!   _P_Kernel_threadManager = _P_Kernel_ThreadManager
	set	_P_Kernel_ThreadManager,r1
	set	_P_Kernel_threadManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0SE",r10
!   _temp_50 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_hoarethreadManager = zeros  (sizeInBytes=8432)
	set	_P_Kernel_hoarethreadManager,r4
	mov	2108,r3
_Label_604:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_604
!   _P_Kernel_hoarethreadManager = _P_Kernel_HoareThreadManager
	set	_P_Kernel_HoareThreadManager,r1
	set	_P_Kernel_hoarethreadManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0SE",r10
!   _temp_52 = &_P_Kernel_hoarethreadManager
	set	_P_Kernel_hoarethreadManager,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	35,r13		! source line 35
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_frameManager = zeros  (sizeInBytes=56)
	set	_P_Kernel_frameManager,r4
	mov	14,r3
_Label_605:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_605
!   _P_Kernel_frameManager = _P_Kernel_FrameManager
	set	_P_Kernel_FrameManager,r1
	set	_P_Kernel_frameManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	36,r13		! source line 36
	mov	"\0\0SE",r10
!   _temp_54 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	116,r13		! source line 116
	mov	"\0\0CA",r10
	call	_function_39_RunThreadManagerTests
! CALL STATEMENT...
!   Call the function
	mov	117,r13		! source line 117
	mov	"\0\0CA",r10
	call	_function_37_RunProcessManagerTests
! CALL STATEMENT...
!   Call the function
	mov	118,r13		! source line 118
	mov	"\0\0CA",r10
	call	_function_35_RunFrameManagerTests
! CALL STATEMENT...
!   Call the function
	mov	119,r13		! source line 119
	mov	"\0\0CA",r10
	call	_function_41_RunHoareThreadManagerTests
! CALL STATEMENT...
!   Call the function
	mov	121,r13		! source line 121
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	121,r13		! source line 121
	mov	"\0\0RE",r10
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_55
	.word	0		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_56
	.word	-12
	.word	4
	.word	_Label_57
	.word	-16
	.word	4
	.word	_Label_58
	.word	-20
	.word	4
	.word	_Label_59
	.word	-24
	.word	4
	.word	_Label_60
	.word	-28
	.word	4
	.word	_Label_61
	.word	-32
	.word	4
	.word	_Label_62
	.word	-36
	.word	4
	.word	_Label_63
	.word	-40
	.word	4
	.word	_Label_64
	.word	-44
	.word	4
	.word	0
_Label_55:
	.ascii	"main\0"
	.align
_Label_56:
	.byte	'?'
	.ascii	"_temp_54\0"
	.align
_Label_57:
	.byte	'?'
	.ascii	"_temp_53\0"
	.align
_Label_58:
	.byte	'?'
	.ascii	"_temp_52\0"
	.align
_Label_59:
	.byte	'?'
	.ascii	"_temp_51\0"
	.align
_Label_60:
	.byte	'?'
	.ascii	"_temp_50\0"
	.align
_Label_61:
	.byte	'?'
	.ascii	"_temp_49\0"
	.align
_Label_62:
	.byte	'?'
	.ascii	"_temp_48\0"
	.align
_Label_63:
	.byte	'?'
	.ascii	"_temp_47\0"
	.align
_Label_64:
	.byte	'?'
	.ascii	"_temp_46\0"
	.align
! 
! ===============  FUNCTION GetUniqueNumber  ===============
! 
_function_42_GetUniqueNumber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_42_GetUniqueNumber,r1
	push	r1
	mov	4,r1
_Label_606:
	push	r0
	sub	r1,1,r1
	bne	_Label_606
	mov	137,r13		! source line 137
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	139,r13		! source line 139
	mov	"\0\0SE",r10
!   _temp_65 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-16]
!   Send message Lock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	140,r13		! source line 140
	mov	"\0\0AS",r10
!   i = _Global_nextUnique		(4 bytes)
	set	_Global_nextUnique,r1
	load	[r1],r1
	store	r1,[r14+-20]
! ASSIGNMENT STATEMENT...
	mov	141,r13		! source line 141
	mov	"\0\0AS",r10
!   _Global_nextUnique = _Global_nextUnique + count		(int)
	set	_Global_nextUnique,r1
	load	[r1],r1
	load	[r14+8],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_nextUnique,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	142,r13		! source line 142
	mov	"\0\0SE",r10
!   _temp_66 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
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
	mov	143,r13		! source line 143
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_42_GetUniqueNumber:
	.word	_sourceFileName
	.word	_Label_67
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_68
	.word	8
	.word	4
	.word	_Label_69
	.word	-12
	.word	4
	.word	_Label_70
	.word	-16
	.word	4
	.word	_Label_71
	.word	-20
	.word	4
	.word	0
_Label_67:
	.ascii	"GetUniqueNumber\0"
	.align
_Label_68:
	.byte	'I'
	.ascii	"count\0"
	.align
_Label_69:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_70:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_71:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION RunHoareThreadManagerTests  ===============
! 
_function_41_RunHoareThreadManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_41_RunHoareThreadManagerTests,r1
	push	r1
	mov	35,r1
_Label_607:
	push	r0
	sub	r1,1,r1
	bne	_Label_607
	mov	174,r13		! source line 174
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	178,r13		! source line 178
	mov	"\0\0SE",r10
!   _temp_72 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
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
	mov	179,r13		! source line 179
	mov	"\0\0SE",r10
!   _temp_73 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-124],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	180,r13		! source line 180
	mov	"\0\0SE",r10
!   _temp_74 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-120]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	181,r13		! source line 181
	mov	"\0\0AS",r10
!   _Global_nextUnique = 1		(4 bytes)
	mov	1,r1
	set	_Global_nextUnique,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_75 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_75  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	183,r13		! source line 183
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	186,r13		! source line 186
	mov	"\0\0SE",r10
!   _temp_76 = &_P_Kernel_hoarethreadManager
	set	_P_Kernel_hoarethreadManager,r1
	store	r1,[r14+-112]
!   Send message Print
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	188,r13		! source line 188
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-108]
!   th = alloc (_temp_77)
	load	[r14+-108],r1
	call	_heapAlloc
	store	r1,[r14+-136]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-136],r4
	mov	1041,r3
_Label_608:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_608
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-136],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	189,r13		! source line 189
	mov	"\0\0SE",r10
!   _temp_79 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-100]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_79  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	190,r13		! source line 190
	mov	"\0\0SE",r10
!   _temp_80 = _function_40_TestHoareThreadManager
	set	_function_40_TestHoareThreadManager,r1
	store	r1,[r14+-96]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_80  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	191,r13		! source line 191
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-92]
!   th = alloc (_temp_81)
	load	[r14+-92],r1
	call	_heapAlloc
	store	r1,[r14+-136]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-136],r4
	mov	1041,r3
_Label_609:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_609
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-136],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	192,r13		! source line 192
	mov	"\0\0SE",r10
!   _temp_83 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-84]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_83  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0SE",r10
!   _temp_84 = _function_40_TestHoareThreadManager
	set	_function_40_TestHoareThreadManager,r1
	store	r1,[r14+-80]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_84  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-76]
!   th = alloc (_temp_85)
	load	[r14+-76],r1
	call	_heapAlloc
	store	r1,[r14+-136]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-136],r4
	mov	1041,r3
_Label_610:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_610
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-136],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0SE",r10
!   _temp_87 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-68]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_87  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	196,r13		! source line 196
	mov	"\0\0SE",r10
!   _temp_88 = _function_40_TestHoareThreadManager
	set	_function_40_TestHoareThreadManager,r1
	store	r1,[r14+-64]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_88  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	197,r13		! source line 197
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-60]
!   th = alloc (_temp_89)
	load	[r14+-60],r1
	call	_heapAlloc
	store	r1,[r14+-136]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-136],r4
	mov	1041,r3
_Label_611:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_611
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-136],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0SE",r10
!   _temp_91 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-52]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_91  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	199,r13		! source line 199
	mov	"\0\0SE",r10
!   _temp_92 = _function_40_TestHoareThreadManager
	set	_function_40_TestHoareThreadManager,r1
	store	r1,[r14+-48]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_92  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	200,r13		! source line 200
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-44]
!   th = alloc (_temp_93)
	load	[r14+-44],r1
	call	_heapAlloc
	store	r1,[r14+-136]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-136],r4
	mov	1041,r3
_Label_612:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_612
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-136],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0SE",r10
!   _temp_95 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-36]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_95  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	202,r13		! source line 202
	mov	"\0\0SE",r10
!   _temp_96 = _function_40_TestHoareThreadManager
	set	_function_40_TestHoareThreadManager,r1
	store	r1,[r14+-32]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_96  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	205,r13		! source line 205
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_101 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_102 = 2		(4 bytes)
	mov	2,r1
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_101  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-132]
_Label_97:
!   Perform the FOR-LOOP termination test
!   if i > _temp_102 then goto _Label_100		
	load	[r14+-132],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_100
_Label_98:
	mov	205,r13		! source line 205
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	206,r13		! source line 206
	mov	"\0\0SE",r10
!   _temp_103 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-20]
!   Send message Down
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_99:
!   i = i + 1
	load	[r14+-132],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-132]
	jmp	_Label_97
! END FOR
_Label_100:
! CALL STATEMENT...
!   _temp_104 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_104  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	208,r13		! source line 208
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_105 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_105  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	210,r13		! source line 210
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	210,r13		! source line 210
	mov	"\0\0RE",r10
	add	r15,144,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_41_RunHoareThreadManagerTests:
	.word	_sourceFileName
	.word	_Label_106
	.word	0		! total size of parameters
	.word	140		! frame size = 140
	.word	_Label_107
	.word	-12
	.word	4
	.word	_Label_108
	.word	-16
	.word	4
	.word	_Label_109
	.word	-20
	.word	4
	.word	_Label_110
	.word	-24
	.word	4
	.word	_Label_111
	.word	-28
	.word	4
	.word	_Label_112
	.word	-32
	.word	4
	.word	_Label_113
	.word	-36
	.word	4
	.word	_Label_114
	.word	-40
	.word	4
	.word	_Label_115
	.word	-44
	.word	4
	.word	_Label_116
	.word	-48
	.word	4
	.word	_Label_117
	.word	-52
	.word	4
	.word	_Label_118
	.word	-56
	.word	4
	.word	_Label_119
	.word	-60
	.word	4
	.word	_Label_120
	.word	-64
	.word	4
	.word	_Label_121
	.word	-68
	.word	4
	.word	_Label_122
	.word	-72
	.word	4
	.word	_Label_123
	.word	-76
	.word	4
	.word	_Label_124
	.word	-80
	.word	4
	.word	_Label_125
	.word	-84
	.word	4
	.word	_Label_126
	.word	-88
	.word	4
	.word	_Label_127
	.word	-92
	.word	4
	.word	_Label_128
	.word	-96
	.word	4
	.word	_Label_129
	.word	-100
	.word	4
	.word	_Label_130
	.word	-104
	.word	4
	.word	_Label_131
	.word	-108
	.word	4
	.word	_Label_132
	.word	-112
	.word	4
	.word	_Label_133
	.word	-116
	.word	4
	.word	_Label_134
	.word	-120
	.word	4
	.word	_Label_135
	.word	-124
	.word	4
	.word	_Label_136
	.word	-128
	.word	4
	.word	_Label_137
	.word	-132
	.word	4
	.word	_Label_138
	.word	-136
	.word	4
	.word	0
_Label_106:
	.ascii	"RunHoareThreadManagerTests\0"
	.align
_Label_107:
	.byte	'?'
	.ascii	"_temp_105\0"
	.align
_Label_108:
	.byte	'?'
	.ascii	"_temp_104\0"
	.align
_Label_109:
	.byte	'?'
	.ascii	"_temp_103\0"
	.align
_Label_110:
	.byte	'?'
	.ascii	"_temp_102\0"
	.align
_Label_111:
	.byte	'?'
	.ascii	"_temp_101\0"
	.align
_Label_112:
	.byte	'?'
	.ascii	"_temp_96\0"
	.align
_Label_113:
	.byte	'?'
	.ascii	"_temp_95\0"
	.align
_Label_114:
	.byte	'?'
	.ascii	"_temp_94\0"
	.align
_Label_115:
	.byte	'?'
	.ascii	"_temp_93\0"
	.align
_Label_116:
	.byte	'?'
	.ascii	"_temp_92\0"
	.align
_Label_117:
	.byte	'?'
	.ascii	"_temp_91\0"
	.align
_Label_118:
	.byte	'?'
	.ascii	"_temp_90\0"
	.align
_Label_119:
	.byte	'?'
	.ascii	"_temp_89\0"
	.align
_Label_120:
	.byte	'?'
	.ascii	"_temp_88\0"
	.align
_Label_121:
	.byte	'?'
	.ascii	"_temp_87\0"
	.align
_Label_122:
	.byte	'?'
	.ascii	"_temp_86\0"
	.align
_Label_123:
	.byte	'?'
	.ascii	"_temp_85\0"
	.align
_Label_124:
	.byte	'?'
	.ascii	"_temp_84\0"
	.align
_Label_125:
	.byte	'?'
	.ascii	"_temp_83\0"
	.align
_Label_126:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_127:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_128:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_129:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_130:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
_Label_131:
	.byte	'?'
	.ascii	"_temp_77\0"
	.align
_Label_132:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_133:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_134:
	.byte	'?'
	.ascii	"_temp_74\0"
	.align
_Label_135:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_136:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_137:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_138:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestHoareThreadManager  ===============
! 
_function_40_TestHoareThreadManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_40_TestHoareThreadManager,r1
	push	r1
	mov	16,r1
_Label_613:
	push	r0
	sub	r1,1,r1
	bne	_Label_613
	mov	220,r13		! source line 220
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_139 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_139  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	223,r13		! source line 223
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! FOR STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_144 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_145 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_144  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_140:
!   Perform the FOR-LOOP termination test
!   if i > _temp_145 then goto _Label_143		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_143
_Label_141:
	mov	224,r13		! source line 224
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	226,r13		! source line 226
	mov	"\0\0AS",r10
	mov	226,r13		! source line 226
	mov	"\0\0SE",r10
!   _temp_146 = &_P_Kernel_hoarethreadManager
	set	_P_Kernel_hoarethreadManager,r1
	store	r1,[r14+-40]
!   Send message GetANewThread
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! FOR STATEMENT...
	mov	227,r13		! source line 227
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_151 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_152 = 40 + i		(int)
	mov	40,r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_151  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-60]
_Label_147:
!   Perform the FOR-LOOP termination test
!   if j > _temp_152 then goto _Label_150		
	load	[r14+-60],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_150
_Label_148:
	mov	227,r13		! source line 227
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	228,r13		! source line 228
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_149:
!   j = j + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_147
! END FOR
_Label_150:
! SEND STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0SE",r10
!   _temp_153 = &_P_Kernel_hoarethreadManager
	set	_P_Kernel_hoarethreadManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! FOR STATEMENT...
	mov	232,r13		! source line 232
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_158 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_159 = 10 - i		(int)
	mov	10,r1
	load	[r14+-56],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_158  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-60]
_Label_154:
!   Perform the FOR-LOOP termination test
!   if j > _temp_159 then goto _Label_157		
	load	[r14+-60],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_157
_Label_155:
	mov	232,r13		! source line 232
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_156:
!   j = j + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_154
! END FOR
_Label_157:
!   Increment the FOR-LOOP index variable and jump back
_Label_142:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_140
! END FOR
_Label_143:
! SEND STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0SE",r10
!   _temp_160 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	238,r13		! source line 238
	mov	"\0\0SE",r10
!   _temp_161 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	238,r13		! source line 238
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_40_TestHoareThreadManager:
	.word	_sourceFileName
	.word	_Label_162
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_163
	.word	8
	.word	4
	.word	_Label_164
	.word	-12
	.word	4
	.word	_Label_165
	.word	-16
	.word	4
	.word	_Label_166
	.word	-20
	.word	4
	.word	_Label_167
	.word	-24
	.word	4
	.word	_Label_168
	.word	-28
	.word	4
	.word	_Label_169
	.word	-32
	.word	4
	.word	_Label_170
	.word	-36
	.word	4
	.word	_Label_171
	.word	-40
	.word	4
	.word	_Label_172
	.word	-44
	.word	4
	.word	_Label_173
	.word	-48
	.word	4
	.word	_Label_174
	.word	-52
	.word	4
	.word	_Label_175
	.word	-56
	.word	4
	.word	_Label_176
	.word	-60
	.word	4
	.word	_Label_177
	.word	-64
	.word	4
	.word	0
_Label_162:
	.ascii	"TestHoareThreadManager\0"
	.align
_Label_163:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_161\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_160\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_159\0"
	.align
_Label_167:
	.byte	'?'
	.ascii	"_temp_158\0"
	.align
_Label_168:
	.byte	'?'
	.ascii	"_temp_153\0"
	.align
_Label_169:
	.byte	'?'
	.ascii	"_temp_152\0"
	.align
_Label_170:
	.byte	'?'
	.ascii	"_temp_151\0"
	.align
_Label_171:
	.byte	'?'
	.ascii	"_temp_146\0"
	.align
_Label_172:
	.byte	'?'
	.ascii	"_temp_145\0"
	.align
_Label_173:
	.byte	'?'
	.ascii	"_temp_144\0"
	.align
_Label_174:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_175:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_176:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_177:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION RunThreadManagerTests  ===============
! 
_function_39_RunThreadManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_39_RunThreadManagerTests,r1
	push	r1
	mov	21,r1
_Label_614:
	push	r0
	sub	r1,1,r1
	bne	_Label_614
	mov	258,r13		! source line 258
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0SE",r10
!   _temp_178 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0SE",r10
!   _temp_179 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
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
	mov	264,r13		! source line 264
	mov	"\0\0SE",r10
!   _temp_180 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	265,r13		! source line 265
	mov	"\0\0AS",r10
!   _Global_nextUnique = 1		(4 bytes)
	mov	1,r1
	set	_Global_nextUnique,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_181 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_181  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	267,r13		! source line 267
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_186 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_187 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_186  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-76]
_Label_182:
!   Perform the FOR-LOOP termination test
!   if i > _temp_187 then goto _Label_185		
	load	[r14+-76],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_185
_Label_183:
	mov	269,r13		! source line 269
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-48]
!   th = alloc (_temp_188)
	load	[r14+-48],r1
	call	_heapAlloc
	store	r1,[r14+-80]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-80],r4
	mov	1041,r3
_Label_615:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_615
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0SE",r10
!   _temp_190 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-40]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_190  sizeInBytes=4
	load	[r14+-40],r1
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
	mov	272,r13		! source line 272
	mov	"\0\0SE",r10
!   _temp_191 = _function_38_TestThreadManager
	set	_function_38_TestThreadManager,r1
	store	r1,[r14+-36]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_191  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_184:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_182
! END FOR
_Label_185:
! FOR STATEMENT...
	mov	277,r13		! source line 277
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_196 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_197 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_196  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-76]
_Label_192:
!   Perform the FOR-LOOP termination test
!   if i > _temp_197 then goto _Label_195		
	load	[r14+-76],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_195
_Label_193:
	mov	277,r13		! source line 277
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	278,r13		! source line 278
	mov	"\0\0SE",r10
!   _temp_198 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_194:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_192
! END FOR
_Label_195:
! IF STATEMENT...
	mov	281,r13		! source line 281
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	281,r13		! source line 281
	mov	"\0\0CA",r10
	call	_function_42_GetUniqueNumber
!   Retrieve Result: targetName=_temp_201  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if _temp_201 == 401 then goto _Label_200		(int)
	load	[r14+-20],r1
	mov	401,r2
	cmp	r1,r2
	be	_Label_200
!	jmp	_Label_199
_Label_199:
! THEN...
	mov	282,r13		! source line 282
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_202 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_202  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	282,r13		! source line 282
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_200:
! CALL STATEMENT...
!   _temp_203 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_203  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	284,r13		! source line 284
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	284,r13		! source line 284
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_39_RunThreadManagerTests:
	.word	_sourceFileName
	.word	_Label_204
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_205
	.word	-12
	.word	4
	.word	_Label_206
	.word	-16
	.word	4
	.word	_Label_207
	.word	-20
	.word	4
	.word	_Label_208
	.word	-24
	.word	4
	.word	_Label_209
	.word	-28
	.word	4
	.word	_Label_210
	.word	-32
	.word	4
	.word	_Label_211
	.word	-36
	.word	4
	.word	_Label_212
	.word	-40
	.word	4
	.word	_Label_213
	.word	-44
	.word	4
	.word	_Label_214
	.word	-48
	.word	4
	.word	_Label_215
	.word	-52
	.word	4
	.word	_Label_216
	.word	-56
	.word	4
	.word	_Label_217
	.word	-60
	.word	4
	.word	_Label_218
	.word	-64
	.word	4
	.word	_Label_219
	.word	-68
	.word	4
	.word	_Label_220
	.word	-72
	.word	4
	.word	_Label_221
	.word	-76
	.word	4
	.word	_Label_222
	.word	-80
	.word	4
	.word	0
_Label_204:
	.ascii	"RunThreadManagerTests\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_191\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_190\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_188\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_187\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_186\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_181\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_180\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_179\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_178\0"
	.align
_Label_221:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_222:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestThreadManager  ===============
! 
_function_38_TestThreadManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_38_TestThreadManager,r1
	push	r1
	mov	22,r1
_Label_616:
	push	r0
	sub	r1,1,r1
	bne	_Label_616
	mov	296,r13		! source line 296
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_227 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_228 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_227  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+-76]
_Label_223:
!   Perform the FOR-LOOP termination test
!   if i > _temp_228 then goto _Label_226		
	load	[r14+-76],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_226
_Label_224:
	mov	300,r13		! source line 300
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	301,r13		! source line 301
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	302,r13		! source line 302
	mov	"\0\0CA",r10
	call	_function_42_GetUniqueNumber
!   Retrieve Result: targetName=e  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0AS",r10
	mov	303,r13		! source line 303
	mov	"\0\0SE",r10
!   _temp_229 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-64]
!   Send message GetANewThread
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_230 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-60]
!   Move address of _temp_230 [0 ] into _temp_231
!     make sure index expr is >= 0
	mov	0,r2
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
!   Data Move: *_temp_231 = e  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r14+-56],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_236 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_237 = 10 + i		(int)
	mov	10,r1
	load	[r14+-76],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_236  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-80]
_Label_232:
!   Perform the FOR-LOOP termination test
!   if j > _temp_237 then goto _Label_235		
	load	[r14+-80],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_235
_Label_233:
	mov	305,r13		! source line 305
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_234:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_232
! END FOR
_Label_235:
! IF STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0IF",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_241 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Move address of _temp_241 [0 ] into _temp_242
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: _temp_240 = *_temp_242  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if e == _temp_240 then goto _Label_239		(int)
	load	[r14+-84],r1
	load	[r14+-44],r2
	cmp	r1,r2
	be	_Label_239
!	jmp	_Label_238
_Label_238:
! THEN...
	mov	309,r13		! source line 309
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_243 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_243  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	309,r13		! source line 309
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_239:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	311,r13		! source line 311
	mov	"\0\0CE",r10
	call	printChar
! SEND STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0SE",r10
!   _temp_244 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! FOR STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_249 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_250 = 10 - i		(int)
	mov	10,r1
	load	[r14+-76],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_249  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-80]
_Label_245:
!   Perform the FOR-LOOP termination test
!   if j > _temp_250 then goto _Label_248		
	load	[r14+-80],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_248
_Label_246:
	mov	313,r13		! source line 313
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_247:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_245
! END FOR
_Label_248:
!   Increment the FOR-LOOP index variable and jump back
_Label_225:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_223
! END FOR
_Label_226:
! SEND STATEMENT...
	mov	317,r13		! source line 317
	mov	"\0\0SE",r10
!   _temp_251 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	318,r13		! source line 318
	mov	"\0\0SE",r10
!   _temp_252 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	318,r13		! source line 318
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_38_TestThreadManager:
	.word	_sourceFileName
	.word	_Label_253
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_254
	.word	8
	.word	4
	.word	_Label_255
	.word	-12
	.word	4
	.word	_Label_256
	.word	-16
	.word	4
	.word	_Label_257
	.word	-20
	.word	4
	.word	_Label_258
	.word	-24
	.word	4
	.word	_Label_259
	.word	-28
	.word	4
	.word	_Label_260
	.word	-32
	.word	4
	.word	_Label_261
	.word	-36
	.word	4
	.word	_Label_262
	.word	-40
	.word	4
	.word	_Label_263
	.word	-44
	.word	4
	.word	_Label_264
	.word	-48
	.word	4
	.word	_Label_265
	.word	-52
	.word	4
	.word	_Label_266
	.word	-56
	.word	4
	.word	_Label_267
	.word	-60
	.word	4
	.word	_Label_268
	.word	-64
	.word	4
	.word	_Label_269
	.word	-68
	.word	4
	.word	_Label_270
	.word	-72
	.word	4
	.word	_Label_271
	.word	-76
	.word	4
	.word	_Label_272
	.word	-80
	.word	4
	.word	_Label_273
	.word	-84
	.word	4
	.word	_Label_274
	.word	-88
	.word	4
	.word	0
_Label_253:
	.ascii	"TestThreadManager\0"
	.align
_Label_254:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_271:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_272:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_273:
	.byte	'I'
	.ascii	"e\0"
	.align
_Label_274:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION RunProcessManagerTests  ===============
! 
_function_37_RunProcessManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_37_RunProcessManagerTests,r1
	push	r1
	mov	21,r1
_Label_617:
	push	r0
	sub	r1,1,r1
	bne	_Label_617
	mov	338,r13		! source line 338
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0SE",r10
!   _temp_275 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	343,r13		! source line 343
	mov	"\0\0SE",r10
!   _temp_276 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
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
	mov	344,r13		! source line 344
	mov	"\0\0SE",r10
!   _temp_277 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	345,r13		! source line 345
	mov	"\0\0AS",r10
!   _Global_nextUnique = 1		(4 bytes)
	mov	1,r1
	set	_Global_nextUnique,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_278 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_278  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	347,r13		! source line 347
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	349,r13		! source line 349
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_283 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_284 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_283  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-76]
_Label_279:
!   Perform the FOR-LOOP termination test
!   if i > _temp_284 then goto _Label_282		
	load	[r14+-76],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_282
_Label_280:
	mov	349,r13		! source line 349
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	350,r13		! source line 350
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-48]
!   th = alloc (_temp_285)
	load	[r14+-48],r1
	call	_heapAlloc
	store	r1,[r14+-80]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-80],r4
	mov	1041,r3
_Label_618:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_618
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	351,r13		! source line 351
	mov	"\0\0SE",r10
!   _temp_287 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-40]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_287  sizeInBytes=4
	load	[r14+-40],r1
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
	mov	352,r13		! source line 352
	mov	"\0\0SE",r10
!   _temp_288 = _function_36_TestProcessManager
	set	_function_36_TestProcessManager,r1
	store	r1,[r14+-36]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_288  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_281:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_279
! END FOR
_Label_282:
! FOR STATEMENT...
	mov	357,r13		! source line 357
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_293 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_294 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_293  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-76]
_Label_289:
!   Perform the FOR-LOOP termination test
!   if i > _temp_294 then goto _Label_292		
	load	[r14+-76],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_292
_Label_290:
	mov	357,r13		! source line 357
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	358,r13		! source line 358
	mov	"\0\0SE",r10
!   _temp_295 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_291:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_289
! END FOR
_Label_292:
! IF STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	361,r13		! source line 361
	mov	"\0\0CA",r10
	call	_function_42_GetUniqueNumber
!   Retrieve Result: targetName=_temp_298  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if _temp_298 == 401 then goto _Label_297		(int)
	load	[r14+-20],r1
	mov	401,r2
	cmp	r1,r2
	be	_Label_297
!	jmp	_Label_296
_Label_296:
! THEN...
	mov	362,r13		! source line 362
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_299 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_299  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	362,r13		! source line 362
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_297:
! CALL STATEMENT...
!   _temp_300 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_300  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	364,r13		! source line 364
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	364,r13		! source line 364
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_37_RunProcessManagerTests:
	.word	_sourceFileName
	.word	_Label_301
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_302
	.word	-12
	.word	4
	.word	_Label_303
	.word	-16
	.word	4
	.word	_Label_304
	.word	-20
	.word	4
	.word	_Label_305
	.word	-24
	.word	4
	.word	_Label_306
	.word	-28
	.word	4
	.word	_Label_307
	.word	-32
	.word	4
	.word	_Label_308
	.word	-36
	.word	4
	.word	_Label_309
	.word	-40
	.word	4
	.word	_Label_310
	.word	-44
	.word	4
	.word	_Label_311
	.word	-48
	.word	4
	.word	_Label_312
	.word	-52
	.word	4
	.word	_Label_313
	.word	-56
	.word	4
	.word	_Label_314
	.word	-60
	.word	4
	.word	_Label_315
	.word	-64
	.word	4
	.word	_Label_316
	.word	-68
	.word	4
	.word	_Label_317
	.word	-72
	.word	4
	.word	_Label_318
	.word	-76
	.word	4
	.word	_Label_319
	.word	-80
	.word	4
	.word	0
_Label_301:
	.ascii	"RunProcessManagerTests\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_318:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_319:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestProcessManager  ===============
! 
_function_36_TestProcessManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_36_TestProcessManager,r1
	push	r1
	mov	20,r1
_Label_619:
	push	r0
	sub	r1,1,r1
	bne	_Label_619
	mov	377,r13		! source line 377
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_324 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_325 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_324  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-68]
_Label_320:
!   Perform the FOR-LOOP termination test
!   if i > _temp_325 then goto _Label_323		
	load	[r14+-68],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_323
_Label_321:
	mov	381,r13		! source line 381
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	382,r13		! source line 382
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	383,r13		! source line 383
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	383,r13		! source line 383
	mov	"\0\0CA",r10
	call	_function_42_GetUniqueNumber
!   Retrieve Result: targetName=e  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	384,r13		! source line 384
	mov	"\0\0AS",r10
	mov	384,r13		! source line 384
	mov	"\0\0SE",r10
!   _temp_326 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   Send message GetANewProcess
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	385,r13		! source line 385
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_327 = pcb + 28
	load	[r14+-80],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_327 = e  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-52],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	386,r13		! source line 386
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_332 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_333 = 10 + i		(int)
	mov	10,r1
	load	[r14+-68],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_332  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-72]
_Label_328:
!   Perform the FOR-LOOP termination test
!   if j > _temp_333 then goto _Label_331		
	load	[r14+-72],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_331
_Label_329:
	mov	386,r13		! source line 386
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	387,r13		! source line 387
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_330:
!   j = j + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_328
! END FOR
_Label_331:
! IF STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0IF",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_337 = pcb + 28
	load	[r14+-80],r1
	add	r1,28,r1
	store	r1,[r14+-36]
!   Data Move: _temp_336 = *_temp_337  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if e == _temp_336 then goto _Label_335		(int)
	load	[r14+-76],r1
	load	[r14+-40],r2
	cmp	r1,r2
	be	_Label_335
!	jmp	_Label_334
_Label_334:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_338 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_338  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	390,r13		! source line 390
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_335:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	392,r13		! source line 392
	mov	"\0\0CE",r10
	call	printChar
! SEND STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0SE",r10
!   _temp_339 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=pcb  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! FOR STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_344 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_345 = 10 - i		(int)
	mov	10,r1
	load	[r14+-68],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_344  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-72]
_Label_340:
!   Perform the FOR-LOOP termination test
!   if j > _temp_345 then goto _Label_343		
	load	[r14+-72],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_343
_Label_341:
	mov	394,r13		! source line 394
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_342:
!   j = j + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_340
! END FOR
_Label_343:
!   Increment the FOR-LOOP index variable and jump back
_Label_322:
!   i = i + 1
	load	[r14+-68],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
	jmp	_Label_320
! END FOR
_Label_323:
! SEND STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0SE",r10
!   _temp_346 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0SE",r10
!   _temp_347 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_36_TestProcessManager:
	.word	_sourceFileName
	.word	_Label_348
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_349
	.word	8
	.word	4
	.word	_Label_350
	.word	-12
	.word	4
	.word	_Label_351
	.word	-16
	.word	4
	.word	_Label_352
	.word	-20
	.word	4
	.word	_Label_353
	.word	-24
	.word	4
	.word	_Label_354
	.word	-28
	.word	4
	.word	_Label_355
	.word	-32
	.word	4
	.word	_Label_356
	.word	-36
	.word	4
	.word	_Label_357
	.word	-40
	.word	4
	.word	_Label_358
	.word	-44
	.word	4
	.word	_Label_359
	.word	-48
	.word	4
	.word	_Label_360
	.word	-52
	.word	4
	.word	_Label_361
	.word	-56
	.word	4
	.word	_Label_362
	.word	-60
	.word	4
	.word	_Label_363
	.word	-64
	.word	4
	.word	_Label_364
	.word	-68
	.word	4
	.word	_Label_365
	.word	-72
	.word	4
	.word	_Label_366
	.word	-76
	.word	4
	.word	_Label_367
	.word	-80
	.word	4
	.word	0
_Label_348:
	.ascii	"TestProcessManager\0"
	.align
_Label_349:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_364:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_365:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_366:
	.byte	'I'
	.ascii	"e\0"
	.align
_Label_367:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION RunFrameManagerTests  ===============
! 
_function_35_RunFrameManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_35_RunFrameManagerTests,r1
	push	r1
	mov	28,r1
_Label_620:
	push	r0
	sub	r1,1,r1
	bne	_Label_620
	mov	420,r13		! source line 420
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	424,r13		! source line 424
	mov	"\0\0SE",r10
!   _temp_368 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0SE",r10
!   _temp_369 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   _temp_370 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_370  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	427,r13		! source line 427
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_375 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_376 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_375  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-100]
_Label_371:
!   Perform the FOR-LOOP termination test
!   if i > _temp_376 then goto _Label_374		
	load	[r14+-100],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_374
_Label_372:
	mov	429,r13		! source line 429
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-76]
!   th = alloc (_temp_377)
	load	[r14+-76],r1
	call	_heapAlloc
	store	r1,[r14+-108]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-108],r4
	mov	1041,r3
_Label_621:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_621
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-108],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0SE",r10
!   _temp_379 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-68]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_379  sizeInBytes=4
	load	[r14+-68],r1
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
	mov	432,r13		! source line 432
	mov	"\0\0SE",r10
!   _temp_380 = _function_34_TestFrameManager
	set	_function_34_TestFrameManager,r1
	store	r1,[r14+-64]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_380  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_373:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_371
! END FOR
_Label_374:
! FOR STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_385 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_386 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_385  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-100]
_Label_381:
!   Perform the FOR-LOOP termination test
!   if i > _temp_386 then goto _Label_384		
	load	[r14+-100],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_384
_Label_382:
	mov	437,r13		! source line 437
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0SE",r10
!   _temp_387 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-52]
!   Send message Down
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_383:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_381
! END FOR
_Label_384:
! CALL STATEMENT...
!   _temp_388 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_388  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	441,r13		! source line 441
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	442,r13		! source line 442
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_393 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_394 = 26		(4 bytes)
	mov	26,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_393  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-100]
_Label_389:
!   Perform the FOR-LOOP termination test
!   if i > _temp_394 then goto _Label_392		
	load	[r14+-100],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_392
_Label_390:
	mov	442,r13		! source line 442
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_395 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_395  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	443,r13		! source line 443
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	444,r13		! source line 444
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_396 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_396  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	445,r13		! source line 445
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	446,r13		! source line 446
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_401 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_403 = &_Global_histogram
	set	_Global_histogram,r1
	store	r1,[r14+-20]
!   Move address of _temp_403 [i ] into _temp_404
!     make sure index expr is >= 0
	load	[r14+-100],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
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
	store	r2,[r14+-16]
!   Data Move: _temp_402 = *_temp_404  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_401  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-104]
_Label_397:
!   Perform the FOR-LOOP termination test
!   if j > _temp_402 then goto _Label_400		
	load	[r14+-104],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_400
_Label_398:
	mov	446,r13		! source line 446
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=42  sizeInBytes=1
	mov	42,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	447,r13		! source line 447
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_399:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_397
! END FOR
_Label_400:
! CALL STATEMENT...
!   Call the function
	mov	449,r13		! source line 449
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_391:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_389
! END FOR
_Label_392:
! CALL STATEMENT...
!   _temp_405 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_405  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	452,r13		! source line 452
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	452,r13		! source line 452
	mov	"\0\0RE",r10
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_35_RunFrameManagerTests:
	.word	_sourceFileName
	.word	_Label_406
	.word	0		! total size of parameters
	.word	112		! frame size = 112
	.word	_Label_407
	.word	-12
	.word	4
	.word	_Label_408
	.word	-16
	.word	4
	.word	_Label_409
	.word	-20
	.word	4
	.word	_Label_410
	.word	-24
	.word	4
	.word	_Label_411
	.word	-28
	.word	4
	.word	_Label_412
	.word	-32
	.word	4
	.word	_Label_413
	.word	-36
	.word	4
	.word	_Label_414
	.word	-40
	.word	4
	.word	_Label_415
	.word	-44
	.word	4
	.word	_Label_416
	.word	-48
	.word	4
	.word	_Label_417
	.word	-52
	.word	4
	.word	_Label_418
	.word	-56
	.word	4
	.word	_Label_419
	.word	-60
	.word	4
	.word	_Label_420
	.word	-64
	.word	4
	.word	_Label_421
	.word	-68
	.word	4
	.word	_Label_422
	.word	-72
	.word	4
	.word	_Label_423
	.word	-76
	.word	4
	.word	_Label_424
	.word	-80
	.word	4
	.word	_Label_425
	.word	-84
	.word	4
	.word	_Label_426
	.word	-88
	.word	4
	.word	_Label_427
	.word	-92
	.word	4
	.word	_Label_428
	.word	-96
	.word	4
	.word	_Label_429
	.word	-100
	.word	4
	.word	_Label_430
	.word	-104
	.word	4
	.word	_Label_431
	.word	-108
	.word	4
	.word	0
_Label_406:
	.ascii	"RunFrameManagerTests\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_429:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_430:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_431:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestFrameManager  ===============
! 
_function_34_TestFrameManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_34_TestFrameManager,r1
	push	r1
	mov	30,r1
_Label_622:
	push	r0
	sub	r1,1,r1
	bne	_Label_622
	mov	476,r13		! source line 476
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0AS",r10
	mov	480,r13		! source line 480
	mov	"\0\0SE",r10
!   _temp_432 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   Send message GetANewProcess
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! FOR STATEMENT...
	mov	481,r13		! source line 481
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_437 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-92]
!   Calculate and save the FOR-LOOP ending value
!   _temp_438 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-88]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_437  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+-100]
_Label_433:
!   Perform the FOR-LOOP termination test
!   if i > _temp_438 then goto _Label_436		
	load	[r14+-100],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_436
_Label_434:
	mov	481,r13		! source line 481
	mov	"\0\0FB",r10
! FOR STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_443 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_444 = 19		(4 bytes)
	mov	19,r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: sz = _temp_443  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-112]
_Label_439:
!   Perform the FOR-LOOP termination test
!   if sz > _temp_444 then goto _Label_442		
	load	[r14+-112],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_442
_Label_440:
	mov	482,r13		! source line 482
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	483,r13		! source line 483
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	484,r13		! source line 484
	mov	"\0\0CA",r10
	call	_function_42_GetUniqueNumber
!   Retrieve Result: targetName=newData  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! SEND STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_446 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   _temp_445 = _temp_446		(4 bytes)
	load	[r14+-72],r1
	store	r1,[r14+-76]
!   _temp_447 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_445  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_449 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_448 = _temp_449		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_448  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=newData  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Call the function
	mov	486,r13		! source line 486
	mov	"\0\0CA",r10
	call	_function_33_CheckAddrSpace
! FOR STATEMENT...
	mov	487,r13		! source line 487
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_454 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_455 = 10 + i		(int)
	mov	10,r1
	load	[r14+-100],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_454  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-104]
_Label_450:
!   Perform the FOR-LOOP termination test
!   if j > _temp_455 then goto _Label_453		
	load	[r14+-104],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_453
_Label_451:
	mov	487,r13		! source line 487
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_452:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_450
! END FOR
_Label_453:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	490,r13		! source line 490
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_457 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_456 = _temp_457		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_456  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=newData  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Call the function
	mov	491,r13		! source line 491
	mov	"\0\0CA",r10
	call	_function_32_CheckAddrSpace2
! SEND STATEMENT...
	mov	492,r13		! source line 492
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_459 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_458 = _temp_459		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-40]
!   _temp_460 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_458  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! FOR STATEMENT...
	mov	493,r13		! source line 493
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_465 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_466 = 10 - i		(int)
	mov	10,r1
	load	[r14+-100],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_465  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-104]
_Label_461:
!   Perform the FOR-LOOP termination test
!   if j > _temp_466 then goto _Label_464		
	load	[r14+-104],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_464
_Label_462:
	mov	493,r13		! source line 493
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	494,r13		! source line 494
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_463:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_461
! END FOR
_Label_464:
!   Increment the FOR-LOOP index variable and jump back
_Label_441:
!   sz = sz + 1
	load	[r14+-112],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
	jmp	_Label_439
! END FOR
_Label_442:
!   Increment the FOR-LOOP index variable and jump back
_Label_435:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_433
! END FOR
_Label_436:
! SEND STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0SE",r10
!   _temp_467 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-20]
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0SE",r10
!   _temp_468 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=pcb  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0SE",r10
!   _temp_469 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0RE",r10
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_34_TestFrameManager:
	.word	_sourceFileName
	.word	_Label_470
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_471
	.word	8
	.word	4
	.word	_Label_472
	.word	-12
	.word	4
	.word	_Label_473
	.word	-16
	.word	4
	.word	_Label_474
	.word	-20
	.word	4
	.word	_Label_475
	.word	-24
	.word	4
	.word	_Label_476
	.word	-28
	.word	4
	.word	_Label_477
	.word	-32
	.word	4
	.word	_Label_478
	.word	-36
	.word	4
	.word	_Label_479
	.word	-40
	.word	4
	.word	_Label_480
	.word	-44
	.word	4
	.word	_Label_481
	.word	-48
	.word	4
	.word	_Label_482
	.word	-52
	.word	4
	.word	_Label_483
	.word	-56
	.word	4
	.word	_Label_484
	.word	-60
	.word	4
	.word	_Label_485
	.word	-64
	.word	4
	.word	_Label_486
	.word	-68
	.word	4
	.word	_Label_487
	.word	-72
	.word	4
	.word	_Label_488
	.word	-76
	.word	4
	.word	_Label_489
	.word	-80
	.word	4
	.word	_Label_490
	.word	-84
	.word	4
	.word	_Label_491
	.word	-88
	.word	4
	.word	_Label_492
	.word	-92
	.word	4
	.word	_Label_493
	.word	-96
	.word	4
	.word	_Label_494
	.word	-100
	.word	4
	.word	_Label_495
	.word	-104
	.word	4
	.word	_Label_496
	.word	-108
	.word	4
	.word	_Label_497
	.word	-112
	.word	4
	.word	_Label_498
	.word	-116
	.word	4
	.word	0
_Label_470:
	.ascii	"TestFrameManager\0"
	.align
_Label_471:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_469\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_468\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_467\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_465\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_494:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_495:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_496:
	.byte	'I'
	.ascii	"newData\0"
	.align
_Label_497:
	.byte	'I'
	.ascii	"sz\0"
	.align
_Label_498:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION CheckAddrSpace  ===============
! 
_function_33_CheckAddrSpace:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_33_CheckAddrSpace,r1
	push	r1
	mov	23,r1
_Label_623:
	push	r0
	sub	r1,1,r1
	bne	_Label_623
	mov	508,r13		! source line 508
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	510,r13		! source line 510
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_502 = addrSpace + 4
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Data Move: _temp_501 = *_temp_502  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_501 == n then goto _Label_500		(int)
	load	[r14+-80],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_500
!	jmp	_Label_499
_Label_499:
! THEN...
	mov	511,r13		! source line 511
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_503 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_503  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	511,r13		! source line 511
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_500:
! FOR STATEMENT...
	mov	513,r13		! source line 513
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_508 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_509 = n - 1		(int)
	load	[r14+12],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_508  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-84]
_Label_504:
!   Perform the FOR-LOOP termination test
!   if i > _temp_509 then goto _Label_507		
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_507
_Label_505:
	mov	513,r13		! source line 513
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	514,r13		! source line 514
	mov	"\0\0AS",r10
	mov	514,r13		! source line 514
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	515,r13		! source line 515
	mov	"\0\0AS",r10
!   _temp_510 = frameAddr - 1048576		(int)
	load	[r14+-88],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   frameNumber = _temp_510 div 8192		(int)
	load	[r14+-60],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
! IF STATEMENT...
	mov	517,r13		! source line 517
	mov	"\0\0IF",r10
!   if frameNumber >= 0 then goto _Label_514		(int)
	load	[r14+-92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_514
	jmp	_Label_511
_Label_514:
!   if frameNumber < 27 then goto _Label_513		(int)
	load	[r14+-92],r1
	mov	27,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_513
	jmp	_Label_511
_Label_513:
!   _temp_515 = frameAddr rem 8192		(int)
	load	[r14+-88],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
!   if intIsZero (_temp_515) then goto _Label_512
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_512
!	jmp	_Label_511
_Label_511:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_516 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_516  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	520,r13		! source line 520
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_512:
! ASSIGNMENT STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0AS",r10
!   _temp_517 = &_Global_histogram
	set	_Global_histogram,r1
	store	r1,[r14+-48]
!   Move address of _temp_517 [frameNumber ] into _temp_518
!     make sure index expr is >= 0
	load	[r14+-92],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-44]
!   _temp_521 = &_Global_histogram
	set	_Global_histogram,r1
	store	r1,[r14+-32]
!   Move address of _temp_521 [frameNumber ] into _temp_522
!     make sure index expr is >= 0
	load	[r14+-92],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
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
	store	r2,[r14+-28]
!   Data Move: _temp_520 = *_temp_522  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_519 = _temp_520 + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Data Move: *_temp_518 = _temp_519  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+-44],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	523,r13		! source line 523
	mov	"\0\0IF",r10
	mov	523,r13		! source line 523
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_529  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_529) then goto _Label_528
	load	[r14+-24],r1
	cmp	r1,r0
	be	_Label_528
	jmp	_Label_523
_Label_528:
	mov	524,r13		! source line 524
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_523 else goto _Label_527
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_527
	jmp	_Label_523
_Label_527:
	mov	525,r13		! source line 525
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_523 else goto _Label_526
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_526
	jmp	_Label_523
_Label_526:
	mov	526,r13		! source line 526
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_530  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_530 then goto _Label_525 else goto _Label_523
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_523
	jmp	_Label_525
_Label_525:
	mov	527,r13		! source line 527
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_531  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_531 then goto _Label_524 else goto _Label_523
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_523
	jmp	_Label_524
_Label_523:
! THEN...
	mov	528,r13		! source line 528
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_532 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_532  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	528,r13		! source line 528
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_524:
! ASSIGNMENT STATEMENT...
	mov	530,r13		! source line 530
	mov	"\0\0AS",r10
!   if intIsZero (frameAddr) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_533 = uniq + i		(int)
	load	[r14+16],r1
	load	[r14+-84],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   Data Move: *frameAddr = _temp_533  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+-88],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_506:
!   i = i + 1
	load	[r14+-84],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
	jmp	_Label_504
! END FOR
_Label_507:
! RETURN STATEMENT...
	mov	513,r13		! source line 513
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_33_CheckAddrSpace:
	.word	_sourceFileName
	.word	_Label_534
	.word	12		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_535
	.word	8
	.word	4
	.word	_Label_536
	.word	12
	.word	4
	.word	_Label_537
	.word	16
	.word	4
	.word	_Label_538
	.word	-16
	.word	4
	.word	_Label_539
	.word	-20
	.word	4
	.word	_Label_540
	.word	-9
	.word	1
	.word	_Label_541
	.word	-10
	.word	1
	.word	_Label_542
	.word	-24
	.word	4
	.word	_Label_543
	.word	-28
	.word	4
	.word	_Label_544
	.word	-32
	.word	4
	.word	_Label_545
	.word	-36
	.word	4
	.word	_Label_546
	.word	-40
	.word	4
	.word	_Label_547
	.word	-44
	.word	4
	.word	_Label_548
	.word	-48
	.word	4
	.word	_Label_549
	.word	-52
	.word	4
	.word	_Label_550
	.word	-56
	.word	4
	.word	_Label_551
	.word	-60
	.word	4
	.word	_Label_552
	.word	-64
	.word	4
	.word	_Label_553
	.word	-68
	.word	4
	.word	_Label_554
	.word	-72
	.word	4
	.word	_Label_555
	.word	-76
	.word	4
	.word	_Label_556
	.word	-80
	.word	4
	.word	_Label_557
	.word	-84
	.word	4
	.word	_Label_558
	.word	-88
	.word	4
	.word	_Label_559
	.word	-92
	.word	4
	.word	0
_Label_534:
	.ascii	"CheckAddrSpace\0"
	.align
_Label_535:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_536:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_537:
	.byte	'I'
	.ascii	"uniq\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_540:
	.byte	'C'
	.ascii	"_temp_531\0"
	.align
_Label_541:
	.byte	'C'
	.ascii	"_temp_530\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_518\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_510\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_557:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_558:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_559:
	.byte	'I'
	.ascii	"frameNumber\0"
	.align
! 
! ===============  FUNCTION CheckAddrSpace2  ===============
! 
_function_32_CheckAddrSpace2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_32_CheckAddrSpace2,r1
	push	r1
	mov	16,r1
_Label_624:
	push	r0
	sub	r1,1,r1
	bne	_Label_624
	mov	541,r13		! source line 541
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_563 = addrSpace + 4
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   Data Move: _temp_562 = *_temp_563  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if _temp_562 == n then goto _Label_561		(int)
	load	[r14+-52],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_561
!	jmp	_Label_560
_Label_560:
! THEN...
	mov	544,r13		! source line 544
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_564 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_564  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	544,r13		! source line 544
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_561:
! FOR STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_569 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_570 = n - 1		(int)
	load	[r14+12],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_569  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-56]
_Label_565:
!   Perform the FOR-LOOP termination test
!   if i > _temp_570 then goto _Label_568		
	load	[r14+-56],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_568
_Label_566:
	mov	546,r13		! source line 546
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0AS",r10
	mov	547,r13		! source line 547
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	548,r13		! source line 548
	mov	"\0\0AS",r10
!   _temp_571 = frameAddr - 1048576		(int)
	load	[r14+-60],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   frameNumber = _temp_571 div 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! IF STATEMENT...
	mov	550,r13		! source line 550
	mov	"\0\0IF",r10
!   if frameNumber >= 0 then goto _Label_575		(int)
	load	[r14+-64],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_575
	jmp	_Label_572
_Label_575:
!   if frameNumber < 27 then goto _Label_574		(int)
	load	[r14+-64],r1
	mov	27,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_574
	jmp	_Label_572
_Label_574:
!   _temp_576 = frameAddr rem 8192		(int)
	load	[r14+-60],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_576) then goto _Label_573
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_573
!	jmp	_Label_572
_Label_572:
! THEN...
	mov	553,r13		! source line 553
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_577 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_577  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	553,r13		! source line 553
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_573:
! IF STATEMENT...
	mov	555,r13		! source line 555
	mov	"\0\0IF",r10
!   if intIsZero (frameAddr) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_580 = *frameAddr  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_581 = uniq + i		(int)
	load	[r14+16],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if _temp_580 == _temp_581 then goto _Label_579		(int)
	load	[r14+-20],r1
	load	[r14+-16],r2
	cmp	r1,r2
	be	_Label_579
!	jmp	_Label_578
_Label_578:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_582 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_582  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	556,r13		! source line 556
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_579:
!   Increment the FOR-LOOP index variable and jump back
_Label_567:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_565
! END FOR
_Label_568:
! RETURN STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_32_CheckAddrSpace2:
	.word	_sourceFileName
	.word	_Label_583
	.word	12		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_584
	.word	8
	.word	4
	.word	_Label_585
	.word	12
	.word	4
	.word	_Label_586
	.word	16
	.word	4
	.word	_Label_587
	.word	-12
	.word	4
	.word	_Label_588
	.word	-16
	.word	4
	.word	_Label_589
	.word	-20
	.word	4
	.word	_Label_590
	.word	-24
	.word	4
	.word	_Label_591
	.word	-28
	.word	4
	.word	_Label_592
	.word	-32
	.word	4
	.word	_Label_593
	.word	-36
	.word	4
	.word	_Label_594
	.word	-40
	.word	4
	.word	_Label_595
	.word	-44
	.word	4
	.word	_Label_596
	.word	-48
	.word	4
	.word	_Label_597
	.word	-52
	.word	4
	.word	_Label_598
	.word	-56
	.word	4
	.word	_Label_599
	.word	-60
	.word	4
	.word	_Label_600
	.word	-64
	.word	4
	.word	0
_Label_583:
	.ascii	"CheckAddrSpace2\0"
	.align
_Label_584:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_585:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_586:
	.byte	'I'
	.ascii	"uniq\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_598:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_599:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_600:
	.byte	'I'
	.ascii	"frameNumber\0"
	.align
