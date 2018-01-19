! Name of package being compiled: Kernel
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
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_HoareMutex
	.export	_Method_P_Kernel_HoareMutex_1
	.export	_Method_P_Kernel_HoareMutex_2
	.export	_Method_P_Kernel_HoareMutex_3
	.export	_Method_P_Kernel_HoareMutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_HoareCondition
	.export	_Method_P_Kernel_HoareCondition_1
	.export	_Method_P_Kernel_HoareCondition_2
	.export	_Method_P_Kernel_HoareCondition_3
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_HoareThreadManager
	.export	_Method_P_Kernel_HoareThreadManager_1
	.export	_Method_P_Kernel_HoareThreadManager_2
	.export	_Method_P_Kernel_HoareThreadManager_3
	.export	_Method_P_Kernel_HoareThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_hoarethreadManager
	.export	_P_Kernel_frameManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_hoarethreadManager:
	.skip	8432
_P_Kernel_frameManager:
	.skip	56
	.align
! String constants
_StringConst_147:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_146:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_145:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_144:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_143:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_142:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_141:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_140:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_139:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_138:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_137:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_136:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_135:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_134:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_133:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_132:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_131:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_130:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_129:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_128:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_127:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_126:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_125:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_124:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_123:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_122:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_121:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_120:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_119:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_118:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_117:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_116:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_115:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_114:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_113:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_112:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_111:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_110:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_109:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_108:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_107:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_106:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_105:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_104:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_103:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_102:
	.word	29			! length
	.ascii	"\nFreeThread - Before Signal: "
	.align
_StringConst_101:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_100:
	.word	26			! length
	.ascii	"\nGetANewThread - Wake up: "
	.align
_StringConst_99:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_98:
	.word	23			! length
	.ascii	"\nGetANewThread - Wait: "
	.align
_StringConst_97:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_96:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_95:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_94:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_93:
	.word	2			! length
	.ascii	"t0"
	.align
_StringConst_92:
	.word	37			! length
	.ascii	"Initializing Hoare Thread Manager...\n"
	.align
_StringConst_91:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_90:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_89:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_88:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_87:
	.word	2			! length
	.ascii	"t9"
	.align
_StringConst_86:
	.word	2			! length
	.ascii	"t8"
	.align
_StringConst_85:
	.word	2			! length
	.ascii	"t7"
	.align
_StringConst_84:
	.word	2			! length
	.ascii	"t6"
	.align
_StringConst_83:
	.word	2			! length
	.ascii	"t5"
	.align
_StringConst_82:
	.word	2			! length
	.ascii	"t4"
	.align
_StringConst_81:
	.word	2			! length
	.ascii	"t3"
	.align
_StringConst_80:
	.word	2			! length
	.ascii	"t2"
	.align
_StringConst_79:
	.word	2			! length
	.ascii	"t1"
	.align
_StringConst_78:
	.word	2			! length
	.ascii	"t0"
	.align
_StringConst_77:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_76:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_75:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_74:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_73:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_72:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_71:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_70:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_69:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_68:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_67:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_66:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_65:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_64:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_63:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_62:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_61:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_60:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_59:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_58:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_57:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_56:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_55:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_54:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_53:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_52:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_51:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_50:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_49:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_48:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_47:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_46:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_45:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_44:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_43:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_42:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_41:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_40:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_39:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_38:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_37:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_36:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_35:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_34:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_33:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_32:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_31:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_24:
	.word	41			! length
	.ascii	"DISK INTERRUPTS NOT EXPECTED IN PROJECT 4"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
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
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0x78a9a622,r4		! myHashVal = 2024384034
	cmp	r3,r4
	be	_Label_152
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
_Label_152:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_153
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_153
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_153
_Label_153:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_2104:
	push	r0
	sub	r1,1,r1
	bne	_Label_2104
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_154 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_154  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_2105:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2105
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_158 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_159 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_158  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   _temp_160 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_161 = _temp_160 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_161 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_2106:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2106
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_163 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_164 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_163  sizeInBytes=4
	load	[r14+-24],r1
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
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_165 = _function_151_IdleFunction
	set	_function_151_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_166 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_165  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_167
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_168
	.word	-12
	.word	4
	.word	_Label_169
	.word	-16
	.word	4
	.word	_Label_170
	.word	-20
	.word	4
	.word	_Label_171
	.word	-24
	.word	4
	.word	_Label_172
	.word	-28
	.word	4
	.word	_Label_173
	.word	-32
	.word	4
	.word	_Label_174
	.word	-36
	.word	4
	.word	_Label_175
	.word	-40
	.word	4
	.word	_Label_176
	.word	-44
	.word	4
	.word	_Label_177
	.word	-48
	.word	4
	.word	_Label_178
	.word	-52
	.word	4
	.word	_Label_179
	.word	-56
	.word	4
	.word	_Label_180
	.word	-60
	.word	4
	.word	0
_Label_167:
	.ascii	"InitializeScheduler\0"
	.align
_Label_168:
	.byte	'?'
	.ascii	"_temp_166\0"
	.align
_Label_169:
	.byte	'?'
	.ascii	"_temp_165\0"
	.align
_Label_170:
	.byte	'?'
	.ascii	"_temp_164\0"
	.align
_Label_171:
	.byte	'?'
	.ascii	"_temp_163\0"
	.align
_Label_172:
	.byte	'?'
	.ascii	"_temp_162\0"
	.align
_Label_173:
	.byte	'?'
	.ascii	"_temp_161\0"
	.align
_Label_174:
	.byte	'?'
	.ascii	"_temp_160\0"
	.align
_Label_175:
	.byte	'?'
	.ascii	"_temp_159\0"
	.align
_Label_176:
	.byte	'?'
	.ascii	"_temp_158\0"
	.align
_Label_177:
	.byte	'?'
	.ascii	"_temp_157\0"
	.align
_Label_178:
	.byte	'?'
	.ascii	"_temp_156\0"
	.align
_Label_179:
	.byte	'?'
	.ascii	"_temp_155\0"
	.align
_Label_180:
	.byte	'?'
	.ascii	"_temp_154\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_151_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_151_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_2107:
	push	r0
	sub	r1,1,r1
	bne	_Label_2107
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_181:
!	jmp	_Label_182
_Label_182:
	mov	42,r13		! source line 42
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0IF",r10
	mov	44,r13		! source line 44
	mov	"\0\0SE",r10
!   _temp_186 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_184 else goto _Label_185
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_185
	jmp	_Label_184
_Label_184:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_187
_Label_185:
! ELSE...
	mov	47,r13		! source line 47
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	47,r13		! source line 47
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
! END IF...
_Label_187:
! END WHILE...
	jmp	_Label_181
_Label_183:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_151_IdleFunction:
	.word	_sourceFileName
	.word	_Label_188
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_189
	.word	8
	.word	4
	.word	_Label_190
	.word	-12
	.word	4
	.word	_Label_191
	.word	-16
	.word	4
	.word	0
_Label_188:
	.ascii	"IdleFunction\0"
	.align
_Label_189:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_190:
	.byte	'?'
	.ascii	"_temp_186\0"
	.align
_Label_191:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_2108:
	push	r0
	sub	r1,1,r1
	bne	_Label_2108
	mov	54,r13		! source line 54
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_194 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_194 ) then goto _Label_193		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_193
!	jmp	_Label_192
_Label_192:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_196 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_196 [0 ] into _temp_197
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_195 = _temp_197		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_195  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_193:
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_198 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_198 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	80,r13		! source line 80
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0WH",r10
_Label_199:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_203 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_202  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_202 then goto _Label_201 else goto _Label_200
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_200
	jmp	_Label_201
_Label_200:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_204 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_205 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_199
_Label_201:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_208 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_208 ) then goto _Label_207		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_207
!	jmp	_Label_206
_Label_206:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_210 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_210 [0 ] into _temp_211
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_209 = _temp_211		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_209  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_213 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_212 = *_temp_213  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_212) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_214 = _temp_212 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_207:
! RETURN STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_215
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_216
	.word	8
	.word	4
	.word	_Label_217
	.word	-16
	.word	4
	.word	_Label_218
	.word	-20
	.word	4
	.word	_Label_219
	.word	-24
	.word	4
	.word	_Label_220
	.word	-28
	.word	4
	.word	_Label_221
	.word	-32
	.word	4
	.word	_Label_222
	.word	-36
	.word	4
	.word	_Label_223
	.word	-40
	.word	4
	.word	_Label_224
	.word	-44
	.word	4
	.word	_Label_225
	.word	-48
	.word	4
	.word	_Label_226
	.word	-52
	.word	4
	.word	_Label_227
	.word	-9
	.word	1
	.word	_Label_228
	.word	-56
	.word	4
	.word	_Label_229
	.word	-60
	.word	4
	.word	_Label_230
	.word	-64
	.word	4
	.word	_Label_231
	.word	-68
	.word	4
	.word	_Label_232
	.word	-72
	.word	4
	.word	_Label_233
	.word	-76
	.word	4
	.word	_Label_234
	.word	-80
	.word	4
	.word	0
_Label_215:
	.ascii	"Run\0"
	.align
_Label_216:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_227:
	.byte	'C'
	.ascii	"_temp_202\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_194\0"
	.align
_Label_233:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_234:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_2109:
	push	r0
	sub	r1,1,r1
	bne	_Label_2109
	mov	97,r13		! source line 97
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_235 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_235  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_236 = _function_150_ThreadPrintShort
	set	_function_150_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_237 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_236  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_238
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_239
	.word	-12
	.word	4
	.word	_Label_240
	.word	-16
	.word	4
	.word	_Label_241
	.word	-20
	.word	4
	.word	_Label_242
	.word	-24
	.word	4
	.word	0
_Label_238:
	.ascii	"PrintReadyList\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_242:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_2110:
	push	r0
	sub	r1,1,r1
	bne	_Label_2110
	mov	112,r13		! source line 112
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_243 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_243  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_245 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_244 = *_temp_245  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_244  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	126,r13		! source line 126
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_246 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_246  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	128,r13		! source line 128
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_247
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_248
	.word	-12
	.word	4
	.word	_Label_249
	.word	-16
	.word	4
	.word	_Label_250
	.word	-20
	.word	4
	.word	_Label_251
	.word	-24
	.word	4
	.word	_Label_252
	.word	-28
	.word	4
	.word	_Label_253
	.word	-32
	.word	4
	.word	0
_Label_247:
	.ascii	"ThreadStartMain\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_252:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_253:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_2111:
	push	r0
	sub	r1,1,r1
	bne	_Label_2111
	mov	133,r13		! source line 133
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_254 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_255 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_255  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	151,r13		! source line 151
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_256
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_257
	.word	-12
	.word	4
	.word	_Label_258
	.word	-16
	.word	4
	.word	_Label_259
	.word	-20
	.word	4
	.word	0
_Label_256:
	.ascii	"ThreadFinish\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_259:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_2112:
	push	r0
	sub	r1,1,r1
	bne	_Label_2112
	mov	156,r13		! source line 156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_260 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_260  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_262		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_262
!	jmp	_Label_261
_Label_261:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_263 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_263  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_265 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_264 = *_temp_265  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_264  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_262:
! CALL STATEMENT...
!   _temp_266 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_266  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_267 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_267  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_268 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_268  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_269
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_270
	.word	8
	.word	4
	.word	_Label_271
	.word	-12
	.word	4
	.word	_Label_272
	.word	-16
	.word	4
	.word	_Label_273
	.word	-20
	.word	4
	.word	_Label_274
	.word	-24
	.word	4
	.word	_Label_275
	.word	-28
	.word	4
	.word	_Label_276
	.word	-32
	.word	4
	.word	_Label_277
	.word	-36
	.word	4
	.word	_Label_278
	.word	-40
	.word	4
	.word	0
_Label_269:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_270:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_278:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_2113:
	push	r0
	sub	r1,1,r1
	bne	_Label_2113
	mov	179,r13		! source line 179
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_280		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_280
!	jmp	_Label_279
_Label_279:
! THEN...
	mov	195,r13		! source line 195
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_281
_Label_280:
! ELSE...
	mov	198,r13		! source line 198
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_281:
! RETURN STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_282
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_283
	.word	8
	.word	4
	.word	_Label_284
	.word	-12
	.word	4
	.word	0
_Label_282:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_283:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_284:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_150_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_150_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_2114:
	push	r0
	sub	r1,1,r1
	bne	_Label_2114
	mov	791,r13		! source line 791
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	798,r13		! source line 798
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	799,r13		! source line 799
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_288		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_288
!   _temp_287 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_289
_Label_288:
!   _temp_287 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_289:
!   if _temp_287 then goto _Label_286 else goto _Label_285
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_285
	jmp	_Label_286
_Label_285:
! THEN...
	mov	800,r13		! source line 800
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_290 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_290  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	800,r13		! source line 800
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	801,r13		! source line 801
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_286:
! CALL STATEMENT...
!   _temp_291 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_291  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	803,r13		! source line 803
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_293 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_292 = *_temp_293  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_292  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	804,r13		! source line 804
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_294 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_294  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	805,r13		! source line 805
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	806,r13		! source line 806
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_303 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_302 = *_temp_303  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_297
	cmp	r1,2
	be	_Label_298
	cmp	r1,3
	be	_Label_299
	cmp	r1,4
	be	_Label_300
	cmp	r1,5
	be	_Label_301
	jmp	_Label_295
! CASE 1...
_Label_297:
! CALL STATEMENT...
!   _temp_304 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_304  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	808,r13		! source line 808
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	809,r13		! source line 809
	mov	"\0\0BR",r10
	jmp	_Label_296
! CASE 2...
_Label_298:
! CALL STATEMENT...
!   _temp_305 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_305  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	811,r13		! source line 811
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	812,r13		! source line 812
	mov	"\0\0BR",r10
	jmp	_Label_296
! CASE 3...
_Label_299:
! CALL STATEMENT...
!   _temp_306 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_306  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	814,r13		! source line 814
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	815,r13		! source line 815
	mov	"\0\0BR",r10
	jmp	_Label_296
! CASE 4...
_Label_300:
! CALL STATEMENT...
!   _temp_307 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_307  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	817,r13		! source line 817
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	818,r13		! source line 818
	mov	"\0\0BR",r10
	jmp	_Label_296
! CASE 5...
_Label_301:
! CALL STATEMENT...
!   _temp_308 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_308  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	820,r13		! source line 820
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	821,r13		! source line 821
	mov	"\0\0BR",r10
	jmp	_Label_296
! DEFAULT CASE...
_Label_295:
! CALL STATEMENT...
!   _temp_309 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_309  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	823,r13		! source line 823
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_296:
! CALL STATEMENT...
!   _temp_310 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_310  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	825,r13		! source line 825
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_311 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	826,r13		! source line 826
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_312 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_312  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	827,r13		! source line 827
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	828,r13		! source line 828
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	830,r13		! source line 830
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	830,r13		! source line 830
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	830,r13		! source line 830
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_150_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_313
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_314
	.word	8
	.word	4
	.word	_Label_315
	.word	-16
	.word	4
	.word	_Label_316
	.word	-20
	.word	4
	.word	_Label_317
	.word	-24
	.word	4
	.word	_Label_318
	.word	-28
	.word	4
	.word	_Label_319
	.word	-32
	.word	4
	.word	_Label_320
	.word	-36
	.word	4
	.word	_Label_321
	.word	-40
	.word	4
	.word	_Label_322
	.word	-44
	.word	4
	.word	_Label_323
	.word	-48
	.word	4
	.word	_Label_324
	.word	-52
	.word	4
	.word	_Label_325
	.word	-56
	.word	4
	.word	_Label_326
	.word	-60
	.word	4
	.word	_Label_327
	.word	-64
	.word	4
	.word	_Label_328
	.word	-68
	.word	4
	.word	_Label_329
	.word	-72
	.word	4
	.word	_Label_330
	.word	-76
	.word	4
	.word	_Label_331
	.word	-9
	.word	1
	.word	_Label_332
	.word	-80
	.word	4
	.word	0
_Label_313:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_314:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_331:
	.byte	'C'
	.ascii	"_temp_287\0"
	.align
_Label_332:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_149_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_149_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_2115:
	push	r0
	sub	r1,1,r1
	bne	_Label_2115
	mov	1350,r13		! source line 1350
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_333 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_333  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1354,r13		! source line 1354
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1355,r13		! source line 1355
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1355,r13		! source line 1355
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_149_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_334
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_335
	.word	8
	.word	4
	.word	_Label_336
	.word	-12
	.word	4
	.word	0
_Label_334:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_335:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_2116:
	push	r0
	sub	r1,1,r1
	bne	_Label_2116
	mov	1360,r13		! source line 1360
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_337 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1366,r13		! source line 1366
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1366,r13		! source line 1366
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_338
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_339
	.word	8
	.word	4
	.word	_Label_340
	.word	-12
	.word	4
	.word	0
_Label_338:
	.ascii	"ProcessFinish\0"
	.align
_Label_339:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_2117:
	push	r0
	sub	r1,1,r1
	bne	_Label_2117
	mov	1874,r13		! source line 1874
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1884,r13		! source line 1884
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1886,r13		! source line 1886
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
! ASSIGNMENT STATEMENT...
	mov	1887,r13		! source line 1887
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1887,r13		! source line 1887
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_341
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_341:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	2,r1
_Label_2118:
	push	r0
	sub	r1,1,r1
	bne	_Label_2118
	mov	1892,r13		! source line 1892
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_342 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_342  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1902,r13		! source line 1902
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1902,r13		! source line 1902
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_343
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_344
	.word	-12
	.word	4
	.word	0
_Label_343:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1914,r13		! source line 1914
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1923,r13		! source line 1923
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1923,r13		! source line 1923
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_345
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_345:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_2119:
	push	r0
	sub	r1,1,r1
	bne	_Label_2119
	mov	1928,r13		! source line 1928
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1934,r13		! source line 1934
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_346 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_346  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1935,r13		! source line 1935
	mov	"\0\0CA",r10
	call	_function_148_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1935,r13		! source line 1935
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_347
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_348
	.word	-12
	.word	4
	.word	0
_Label_347:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_2120:
	push	r0
	sub	r1,1,r1
	bne	_Label_2120
	mov	1940,r13		! source line 1940
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1946,r13		! source line 1946
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_349 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_349  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1947,r13		! source line 1947
	mov	"\0\0CA",r10
	call	_function_148_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1947,r13		! source line 1947
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_350
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_351
	.word	-12
	.word	4
	.word	0
_Label_350:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_2121:
	push	r0
	sub	r1,1,r1
	bne	_Label_2121
	mov	1952,r13		! source line 1952
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1958,r13		! source line 1958
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_352 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1959,r13		! source line 1959
	mov	"\0\0CA",r10
	call	_function_148_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1959,r13		! source line 1959
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_353
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_354
	.word	-12
	.word	4
	.word	0
_Label_353:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_2122:
	push	r0
	sub	r1,1,r1
	bne	_Label_2122
	mov	1964,r13		! source line 1964
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1970,r13		! source line 1970
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_355 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1971,r13		! source line 1971
	mov	"\0\0CA",r10
	call	_function_148_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1971,r13		! source line 1971
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_356
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_357
	.word	-12
	.word	4
	.word	0
_Label_356:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_2123:
	push	r0
	sub	r1,1,r1
	bne	_Label_2123
	mov	1976,r13		! source line 1976
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1982,r13		! source line 1982
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_358 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_358  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1983,r13		! source line 1983
	mov	"\0\0CA",r10
	call	_function_148_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1983,r13		! source line 1983
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_359
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_360
	.word	-12
	.word	4
	.word	0
_Label_359:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_2124:
	push	r0
	sub	r1,1,r1
	bne	_Label_2124
	mov	1988,r13		! source line 1988
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1994,r13		! source line 1994
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_361 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1995,r13		! source line 1995
	mov	"\0\0CA",r10
	call	_function_148_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1995,r13		! source line 1995
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_362
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_363
	.word	-12
	.word	4
	.word	0
_Label_362:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_2125:
	push	r0
	sub	r1,1,r1
	bne	_Label_2125
	mov	2000,r13		! source line 2000
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2006,r13		! source line 2006
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_364 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_364  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2007,r13		! source line 2007
	mov	"\0\0CA",r10
	call	_function_148_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2007,r13		! source line 2007
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_365
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_366
	.word	-12
	.word	4
	.word	0
_Label_365:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_148_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_148_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_2126:
	push	r0
	sub	r1,1,r1
	bne	_Label_2126
	mov	2012,r13		! source line 2012
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_367 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_367  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2017,r13		! source line 2017
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2018,r13		! source line 2018
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_368 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_368  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2019,r13		! source line 2019
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2022,r13		! source line 2022
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_372 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_371 = *_temp_372  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_371 == 0 then goto _Label_370		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_370
!	jmp	_Label_369
_Label_369:
! THEN...
	mov	2023,r13		! source line 2023
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_374 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_373 = *_temp_374  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_373) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_375
_Label_370:
! ELSE...
	mov	2025,r13		! source line 2025
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_376 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_376  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2025,r13		! source line 2025
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_375:
! SEND STATEMENT...
	mov	2027,r13		! source line 2027
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	2033,r13		! source line 2033
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	2033,r13		! source line 2033
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_148_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_377
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_378
	.word	8
	.word	4
	.word	_Label_379
	.word	-12
	.word	4
	.word	_Label_380
	.word	-16
	.word	4
	.word	_Label_381
	.word	-20
	.word	4
	.word	_Label_382
	.word	-24
	.word	4
	.word	_Label_383
	.word	-28
	.word	4
	.word	_Label_384
	.word	-32
	.word	4
	.word	_Label_385
	.word	-36
	.word	4
	.word	0
_Label_377:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_378:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_2127:
	push	r0
	sub	r1,1,r1
	bne	_Label_2127
	mov	2038,r13		! source line 2038
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2045,r13		! source line 2045
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	2059,r13		! source line 2059
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_2128
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_386
_Label_2128:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_386
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_386
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_400,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_400:
	jmp	_Label_392	! 1:	
	jmp	_Label_399	! 2:	
	jmp	_Label_389	! 3:	
	jmp	_Label_388	! 4:	
	jmp	_Label_391	! 5:	
	jmp	_Label_390	! 6:	
	jmp	_Label_393	! 7:	
	jmp	_Label_394	! 8:	
	jmp	_Label_395	! 9:	
	jmp	_Label_396	! 10:	
	jmp	_Label_397	! 11:	
	jmp	_Label_398	! 12:	
! CASE 4...
_Label_388:
! RETURN STATEMENT...
	mov	2061,r13		! source line 2061
	mov	"\0\0RE",r10
!   Call the function
	mov	2061,r13		! source line 2061
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_401  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_401  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_389:
! CALL STATEMENT...
!   Call the function
	mov	2063,r13		! source line 2063
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_390:
! RETURN STATEMENT...
	mov	2066,r13		! source line 2066
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2066,r13		! source line 2066
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_402  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_402  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_391:
! RETURN STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2068,r13		! source line 2068
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_403  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_403  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_392:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2070,r13		! source line 2070
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_393:
! RETURN STATEMENT...
	mov	2073,r13		! source line 2073
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2073,r13		! source line 2073
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_404  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_404  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_394:
! RETURN STATEMENT...
	mov	2075,r13		! source line 2075
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2075,r13		! source line 2075
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_405  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_405  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_395:
! RETURN STATEMENT...
	mov	2077,r13		! source line 2077
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	2077,r13		! source line 2077
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_406  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_406  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_396:
! RETURN STATEMENT...
	mov	2079,r13		! source line 2079
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	2079,r13		! source line 2079
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_407  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_407  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_397:
! RETURN STATEMENT...
	mov	2081,r13		! source line 2081
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2081,r13		! source line 2081
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_408  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_408  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_398:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2083,r13		! source line 2083
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	2084,r13		! source line 2084
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_399:
! CALL STATEMENT...
!   Call the function
	mov	2086,r13		! source line 2086
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	2087,r13		! source line 2087
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_386:
! CALL STATEMENT...
!   _temp_409 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_409  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2089,r13		! source line 2089
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2090,r13		! source line 2090
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2091,r13		! source line 2091
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_410 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_410  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2092,r13		! source line 2092
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_387:
! RETURN STATEMENT...
	mov	2094,r13		! source line 2094
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_411
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_412
	.word	8
	.word	4
	.word	_Label_413
	.word	12
	.word	4
	.word	_Label_414
	.word	16
	.word	4
	.word	_Label_415
	.word	20
	.word	4
	.word	_Label_416
	.word	24
	.word	4
	.word	_Label_417
	.word	-12
	.word	4
	.word	_Label_418
	.word	-16
	.word	4
	.word	_Label_419
	.word	-20
	.word	4
	.word	_Label_420
	.word	-24
	.word	4
	.word	_Label_421
	.word	-28
	.word	4
	.word	_Label_422
	.word	-32
	.word	4
	.word	_Label_423
	.word	-36
	.word	4
	.word	_Label_424
	.word	-40
	.word	4
	.word	_Label_425
	.word	-44
	.word	4
	.word	_Label_426
	.word	-48
	.word	4
	.word	0
_Label_411:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_412:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_413:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_414:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_415:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_416:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	2099,r13		! source line 2099
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_427
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_428
	.word	8
	.word	4
	.word	0
_Label_427:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_428:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	2105,r13		! source line 2105
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2105,r13		! source line 2105
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_429
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_429:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	2111,r13		! source line 2111
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2111,r13		! source line 2111
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_430
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_430:
	.ascii	"Handle_Sys_Yield\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	2117,r13		! source line 2117
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2119,r13		! source line 2119
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_431
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_431:
	.ascii	"Handle_Sys_Fork\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	2124,r13		! source line 2124
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2126,r13		! source line 2126
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_432
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_433
	.word	8
	.word	4
	.word	0
_Label_432:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_433:
	.byte	'I'
	.ascii	"processID\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	2131,r13		! source line 2131
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2133,r13		! source line 2133
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_434
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_435
	.word	8
	.word	4
	.word	0
_Label_434:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_435:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	2138,r13		! source line 2138
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_436
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_437
	.word	8
	.word	4
	.word	0
_Label_436:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_437:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	2145,r13		! source line 2145
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2147,r13		! source line 2147
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_438
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_439
	.word	8
	.word	4
	.word	0
_Label_438:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_439:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	2152,r13		! source line 2152
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2154,r13		! source line 2154
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_440
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_441
	.word	8
	.word	4
	.word	_Label_442
	.word	12
	.word	4
	.word	_Label_443
	.word	16
	.word	4
	.word	0
_Label_440:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_441:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_442:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_443:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	2159,r13		! source line 2159
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2161,r13		! source line 2161
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_444
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_445
	.word	8
	.word	4
	.word	_Label_446
	.word	12
	.word	4
	.word	_Label_447
	.word	16
	.word	4
	.word	0
_Label_444:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_445:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_446:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_447:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	2166,r13		! source line 2166
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2168,r13		! source line 2168
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_448
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_449
	.word	8
	.word	4
	.word	_Label_450
	.word	12
	.word	4
	.word	0
_Label_448:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_449:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_450:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	2173,r13		! source line 2173
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2173,r13		! source line 2173
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_451
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_452
	.word	8
	.word	4
	.word	0
_Label_451:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_452:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_453
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_453:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_454
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_454:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_2129:
	push	r0
	sub	r1,1,r1
	bne	_Label_2129
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_456		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_456
!	jmp	_Label_455
_Label_455:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_457 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_457  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	232,r13		! source line 232
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_456:
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_459
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_460
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_461
	.word	12
	.word	4
	.word	_Label_462
	.word	-12
	.word	4
	.word	_Label_463
	.word	-16
	.word	4
	.word	0
_Label_459:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_460:
	.ascii	"Pself\0"
	.align
_Label_461:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_2130:
	push	r0
	sub	r1,1,r1
	bne	_Label_2130
	mov	240,r13		! source line 240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_465		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_465
!	jmp	_Label_464
_Label_464:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_466 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_466  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	246,r13		! source line 246
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_465:
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_468		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_468
!	jmp	_Label_467
_Label_467:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_469 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_470 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_470 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_471 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_468:
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_472
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_473
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_474
	.word	-12
	.word	4
	.word	_Label_475
	.word	-16
	.word	4
	.word	_Label_476
	.word	-20
	.word	4
	.word	_Label_477
	.word	-24
	.word	4
	.word	_Label_478
	.word	-28
	.word	4
	.word	_Label_479
	.word	-32
	.word	4
	.word	0
_Label_472:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_473:
	.ascii	"Pself\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_469\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
_Label_478:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_479:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_2131:
	push	r0
	sub	r1,1,r1
	bne	_Label_2131
	mov	259,r13		! source line 259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_481		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_481
!	jmp	_Label_480
_Label_480:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_482 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_482  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	264,r13		! source line 264
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_481:
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_484		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_484
!	jmp	_Label_483
_Label_483:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_485 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_484:
! ASSIGNMENT STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	271,r13		! source line 271
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_486
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_487
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_488
	.word	-12
	.word	4
	.word	_Label_489
	.word	-16
	.word	4
	.word	_Label_490
	.word	-20
	.word	4
	.word	0
_Label_486:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_487:
	.ascii	"Pself\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_485\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_482\0"
	.align
_Label_490:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_491
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_491:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_492
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_492:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_2132:
	push	r0
	sub	r1,1,r1
	bne	_Label_2132
	mov	294,r13		! source line 294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_494
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_495
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_496
	.word	-12
	.word	4
	.word	0
_Label_494:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_495:
	.ascii	"Pself\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_2133:
	push	r0
	sub	r1,1,r1
	bne	_Label_2133
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_498		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_498
!	jmp	_Label_497
_Label_497:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_499 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_499  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	304,r13		! source line 304
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_498:
! ASSIGNMENT STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	306,r13		! source line 306
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_503		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_503
!   _temp_502 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_504
_Label_503:
!   _temp_502 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_504:
!   if _temp_502 then goto _Label_501 else goto _Label_500
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_500
	jmp	_Label_501
_Label_500:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_505
_Label_501:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_506 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_505:
! ASSIGNMENT STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	313,r13		! source line 313
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_507
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_508
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_509
	.word	-16
	.word	4
	.word	_Label_510
	.word	-9
	.word	1
	.word	_Label_511
	.word	-20
	.word	4
	.word	_Label_512
	.word	-24
	.word	4
	.word	0
_Label_507:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_508:
	.ascii	"Pself\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_510:
	.byte	'C'
	.ascii	"_temp_502\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
_Label_512:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_2134:
	push	r0
	sub	r1,1,r1
	bne	_Label_2134
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_514		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_514
!	jmp	_Label_513
_Label_513:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_515 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_515  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	323,r13		! source line 323
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_514:
! ASSIGNMENT STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	325,r13		! source line 325
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
	mov	326,r13		! source line 326
	mov	"\0\0SE",r10
!   _temp_516 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_518		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_518
!	jmp	_Label_517
_Label_517:
! THEN...
	mov	328,r13		! source line 328
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_519 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_519 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_520 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_521
_Label_518:
! ELSE...
	mov	332,r13		! source line 332
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_521:
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	334,r13		! source line 334
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_522
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_523
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_524
	.word	-12
	.word	4
	.word	_Label_525
	.word	-16
	.word	4
	.word	_Label_526
	.word	-20
	.word	4
	.word	_Label_527
	.word	-24
	.word	4
	.word	_Label_528
	.word	-28
	.word	4
	.word	_Label_529
	.word	-32
	.word	4
	.word	0
_Label_522:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_523:
	.ascii	"Pself\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
_Label_528:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_529:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_2135:
	push	r0
	sub	r1,1,r1
	bne	_Label_2135
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_532		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_532
!	jmp	_Label_531
_Label_531:
!   _temp_530 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_533
_Label_532:
!   _temp_530 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_533:
!   ReturnResult: _temp_530  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_534
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_535
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_536
	.word	-9
	.word	1
	.word	0
_Label_534:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_535:
	.ascii	"Pself\0"
	.align
_Label_536:
	.byte	'C'
	.ascii	"_temp_530\0"
	.align
! 
! ===============  CLASS HoareMutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareMutex:
	.word	_Label_537
	jmp	_Method_P_Kernel_HoareMutex_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareMutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_HoareMutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_HoareMutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_537:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_538
	.word	_sourceFileName
	.word	152		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_HoareMutex
	.word	_P_System_Object
	.word	0
_Label_538:
	.ascii	"HoareMutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_HoareMutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_1,r1
	push	r1
	mov	1,r1
_Label_2136:
	push	r0
	sub	r1,1,r1
	bne	_Label_2136
	mov	362,r13		! source line 362
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	363,r13		! source line 363
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	363,r13		! source line 363
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_1:
	.word	_sourceFileName
	.word	_Label_540
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_541
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_542
	.word	-12
	.word	4
	.word	0
_Label_540:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_541:
	.ascii	"Pself\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_HoareMutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_2,r1
	push	r1
	mov	6,r1
_Label_2137:
	push	r0
	sub	r1,1,r1
	bne	_Label_2137
	mov	368,r13		! source line 368
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	371,r13		! source line 371
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	371,r13		! source line 371
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	372,r13		! source line 372
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_544		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_544
!	jmp	_Label_543
_Label_543:
! THEN...
	mov	373,r13		! source line 373
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_545 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_545  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	373,r13		! source line 373
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_544:
! IF STATEMENT...
	mov	375,r13		! source line 375
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_549		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_549
!   _temp_548 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_550
_Label_549:
!   _temp_548 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_550:
!   if _temp_548 then goto _Label_547 else goto _Label_546
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_546
	jmp	_Label_547
_Label_546:
! THEN...
	mov	376,r13		! source line 376
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	376,r13		! source line 376
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_551
_Label_547:
! ELSE...
	mov	378,r13		! source line 378
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	378,r13		! source line 378
	mov	"\0\0SE",r10
!   _temp_552 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	379,r13		! source line 379
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_551:
! ASSIGNMENT STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	381,r13		! source line 381
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_2:
	.word	_sourceFileName
	.word	_Label_553
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_554
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_555
	.word	-16
	.word	4
	.word	_Label_556
	.word	-9
	.word	1
	.word	_Label_557
	.word	-20
	.word	4
	.word	_Label_558
	.word	-24
	.word	4
	.word	0
_Label_553:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_554:
	.ascii	"Pself\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_556:
	.byte	'C'
	.ascii	"_temp_548\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_558:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_HoareMutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_3,r1
	push	r1
	mov	7,r1
_Label_2138:
	push	r0
	sub	r1,1,r1
	bne	_Label_2138
	mov	386,r13		! source line 386
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	390,r13		! source line 390
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	390,r13		! source line 390
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	391,r13		! source line 391
	mov	"\0\0AS",r10
	mov	391,r13		! source line 391
	mov	"\0\0SE",r10
!   _temp_559 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_561		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_561
!	jmp	_Label_560
_Label_560:
! THEN...
	mov	393,r13		! source line 393
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_562 = t + 76
	load	[r14+-28],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_562 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0SE",r10
!   _temp_563 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-28],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_564
_Label_561:
! ELSE...
	mov	397,r13		! source line 397
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_564:
! ASSIGNMENT STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	399,r13		! source line 399
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_3:
	.word	_sourceFileName
	.word	_Label_565
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_566
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_567
	.word	-12
	.word	4
	.word	_Label_568
	.word	-16
	.word	4
	.word	_Label_569
	.word	-20
	.word	4
	.word	_Label_570
	.word	-24
	.word	4
	.word	_Label_571
	.word	-28
	.word	4
	.word	0
_Label_565:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_566:
	.ascii	"Pself\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_570:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_571:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_HoareMutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_4,r1
	push	r1
	mov	1,r1
_Label_2139:
	push	r0
	sub	r1,1,r1
	bne	_Label_2139
	mov	404,r13		! source line 404
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	405,r13		! source line 405
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_574		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_574
!	jmp	_Label_573
_Label_573:
!   _temp_572 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_575
_Label_574:
!   _temp_572 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_575:
!   ReturnResult: _temp_572  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_4:
	.word	_sourceFileName
	.word	_Label_576
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_577
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_578
	.word	-9
	.word	1
	.word	0
_Label_576:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_577:
	.ascii	"Pself\0"
	.align
_Label_578:
	.byte	'C'
	.ascii	"_temp_572\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_579
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_579:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_580
	.word	_sourceFileName
	.word	166		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_580:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_2140:
	push	r0
	sub	r1,1,r1
	bne	_Label_2140
	mov	445,r13		! source line 445
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	446,r13		! source line 446
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	446,r13		! source line 446
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_582
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_583
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_584
	.word	-12
	.word	4
	.word	0
_Label_582:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_583:
	.ascii	"Pself\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_2141:
	push	r0
	sub	r1,1,r1
	bne	_Label_2141
	mov	451,r13		! source line 451
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0IF",r10
	mov	454,r13		! source line 454
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_587  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_587 then goto _Label_586 else goto _Label_585
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_585
	jmp	_Label_586
_Label_585:
! THEN...
	mov	455,r13		! source line 455
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_588 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_588  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	455,r13		! source line 455
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_586:
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	457,r13		! source line 457
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0SE",r10
!   _temp_589 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	462,r13		! source line 462
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_590
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_591
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_592
	.word	12
	.word	4
	.word	_Label_593
	.word	-16
	.word	4
	.word	_Label_594
	.word	-20
	.word	4
	.word	_Label_595
	.word	-9
	.word	1
	.word	_Label_596
	.word	-24
	.word	4
	.word	0
_Label_590:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_591:
	.ascii	"Pself\0"
	.align
_Label_592:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_595:
	.byte	'C'
	.ascii	"_temp_587\0"
	.align
_Label_596:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_2142:
	push	r0
	sub	r1,1,r1
	bne	_Label_2142
	mov	467,r13		! source line 467
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	471,r13		! source line 471
	mov	"\0\0IF",r10
	mov	471,r13		! source line 471
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_599  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_599 then goto _Label_598 else goto _Label_597
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_597
	jmp	_Label_598
_Label_597:
! THEN...
	mov	472,r13		! source line 472
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_600 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_600  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	472,r13		! source line 472
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_598:
! ASSIGNMENT STATEMENT...
	mov	474,r13		! source line 474
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	474,r13		! source line 474
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	475,r13		! source line 475
	mov	"\0\0AS",r10
	mov	475,r13		! source line 475
	mov	"\0\0SE",r10
!   _temp_601 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	476,r13		! source line 476
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_603		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_603
!	jmp	_Label_602
_Label_602:
! THEN...
	mov	477,r13		! source line 477
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_604 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_604 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0SE",r10
!   _temp_605 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_603:
! ASSIGNMENT STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	480,r13		! source line 480
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_606
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_607
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_608
	.word	12
	.word	4
	.word	_Label_609
	.word	-16
	.word	4
	.word	_Label_610
	.word	-20
	.word	4
	.word	_Label_611
	.word	-24
	.word	4
	.word	_Label_612
	.word	-28
	.word	4
	.word	_Label_613
	.word	-9
	.word	1
	.word	_Label_614
	.word	-32
	.word	4
	.word	_Label_615
	.word	-36
	.word	4
	.word	0
_Label_606:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_607:
	.ascii	"Pself\0"
	.align
_Label_608:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_613:
	.byte	'C'
	.ascii	"_temp_599\0"
	.align
_Label_614:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_615:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_2143:
	push	r0
	sub	r1,1,r1
	bne	_Label_2143
	mov	485,r13		! source line 485
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	489,r13		! source line 489
	mov	"\0\0IF",r10
	mov	489,r13		! source line 489
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_618  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_618 then goto _Label_617 else goto _Label_616
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_616
	jmp	_Label_617
_Label_616:
! THEN...
	mov	490,r13		! source line 490
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_619 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_619  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	490,r13		! source line 490
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_617:
! ASSIGNMENT STATEMENT...
	mov	492,r13		! source line 492
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	492,r13		! source line 492
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	493,r13		! source line 493
	mov	"\0\0WH",r10
_Label_620:
!	jmp	_Label_621
_Label_621:
	mov	493,r13		! source line 493
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	494,r13		! source line 494
	mov	"\0\0AS",r10
	mov	494,r13		! source line 494
	mov	"\0\0SE",r10
!   _temp_623 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	495,r13		! source line 495
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_624
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_624
	jmp	_Label_625
_Label_624:
! THEN...
	mov	496,r13		! source line 496
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	496,r13		! source line 496
	mov	"\0\0BR",r10
	jmp	_Label_622
! END IF...
_Label_625:
! ASSIGNMENT STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_626 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_626 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0SE",r10
!   _temp_627 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_620
_Label_622:
! ASSIGNMENT STATEMENT...
	mov	501,r13		! source line 501
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	501,r13		! source line 501
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	501,r13		! source line 501
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_628
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_629
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_630
	.word	12
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
	.word	-9
	.word	1
	.word	_Label_636
	.word	-32
	.word	4
	.word	_Label_637
	.word	-36
	.word	4
	.word	0
_Label_628:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_629:
	.ascii	"Pself\0"
	.align
_Label_630:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_635:
	.byte	'C'
	.ascii	"_temp_618\0"
	.align
_Label_636:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_637:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS HoareCondition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareCondition:
	.word	_Label_638
	jmp	_Method_P_Kernel_HoareCondition_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareCondition_2	! 8:	Wait
	jmp	_Method_P_Kernel_HoareCondition_3	! 12:	Signal
	.word	0
! 
! Class descriptor:
! 
_Label_638:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_639
	.word	_sourceFileName
	.word	179		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_HoareCondition
	.word	_P_System_Object
	.word	0
_Label_639:
	.ascii	"HoareCondition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_HoareCondition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_1,r1
	push	r1
	mov	4,r1
_Label_2144:
	push	r0
	sub	r1,1,r1
	bne	_Label_2144
	mov	532,r13		! source line 532
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	533,r13		! source line 533
	mov	"\0\0AS",r10
!   countVar = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	534,r13		! source line 534
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: hoareSem = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   hoareSem = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	535,r13		! source line 535
	mov	"\0\0SE",r10
!   _temp_641 = &hoareSem
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
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
	mov	535,r13		! source line 535
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_1:
	.word	_sourceFileName
	.word	_Label_642
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_643
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_644
	.word	-12
	.word	4
	.word	_Label_645
	.word	-16
	.word	4
	.word	0
_Label_642:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_643:
	.ascii	"Pself\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_HoareCondition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_2,r1
	push	r1
	mov	5,r1
_Label_2145:
	push	r0
	sub	r1,1,r1
	bne	_Label_2145
	mov	540,r13		! source line 540
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	545,r13		! source line 545
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	545,r13		! source line 545
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0IF",r10
	mov	547,r13		! source line 547
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_648  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_648 then goto _Label_647 else goto _Label_646
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_646
	jmp	_Label_647
_Label_646:
! THEN...
	mov	548,r13		! source line 548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_649 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_649  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	548,r13		! source line 548
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_647:
! ASSIGNMENT STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0AS",r10
!   countVar = countVar + 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! IF STATEMENT...
	mov	554,r13		! source line 554
	mov	"\0\0IF",r10
!   if nextCount <= 0 then goto _Label_651		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_651
!	jmp	_Label_650
_Label_650:
! THEN...
	mov	555,r13		! source line 555
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	555,r13		! source line 555
	mov	"\0\0SE",r10
!   if intIsZero (threadSem) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
	jmp	_Label_652
_Label_651:
! ELSE...
	mov	557,r13		! source line 557
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	557,r13		! source line 557
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_652:
! SEND STATEMENT...
	mov	559,r13		! source line 559
	mov	"\0\0SE",r10
!   _temp_653 = &hoareSem
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Down
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	560,r13		! source line 560
	mov	"\0\0AS",r10
!   countVar = countVar - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	563,r13		! source line 563
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	563,r13		! source line 563
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	563,r13		! source line 563
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_2:
	.word	_sourceFileName
	.word	_Label_654
	.word	16		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_655
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_656
	.word	12
	.word	4
	.word	_Label_657
	.word	16
	.word	4
	.word	_Label_658
	.word	20
	.word	4
	.word	_Label_659
	.word	-16
	.word	4
	.word	_Label_660
	.word	-20
	.word	4
	.word	_Label_661
	.word	-9
	.word	1
	.word	_Label_662
	.word	-24
	.word	4
	.word	0
_Label_654:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_655:
	.ascii	"Pself\0"
	.align
_Label_656:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_657:
	.byte	'P'
	.ascii	"threadSem\0"
	.align
_Label_658:
	.byte	'I'
	.ascii	"nextCount\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_661:
	.byte	'C'
	.ascii	"_temp_648\0"
	.align
_Label_662:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_HoareCondition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_3,r1
	push	r1
	mov	5,r1
_Label_2146:
	push	r0
	sub	r1,1,r1
	bne	_Label_2146
	mov	568,r13		! source line 568
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	573,r13		! source line 573
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	573,r13		! source line 573
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	574,r13		! source line 574
	mov	"\0\0IF",r10
	mov	574,r13		! source line 574
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_665  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_665 then goto _Label_664 else goto _Label_663
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_663
	jmp	_Label_664
_Label_663:
! THEN...
	mov	575,r13		! source line 575
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_666 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_666  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	575,r13		! source line 575
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_664:
! IF STATEMENT...
	mov	579,r13		! source line 579
	mov	"\0\0IF",r10
!   if countVar <= 0 then goto _Label_668		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_668
!	jmp	_Label_667
_Label_667:
! THEN...
	mov	580,r13		! source line 580
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	580,r13		! source line 580
	mov	"\0\0AS",r10
!   nextCount = nextCount + 1		(int)
	load	[r14+20],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! SEND STATEMENT...
	mov	581,r13		! source line 581
	mov	"\0\0SE",r10
!   _temp_669 = &hoareSem
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	582,r13		! source line 582
	mov	"\0\0SE",r10
!   if intIsZero (threadSem) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Down
	load	[r14+16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	583,r13		! source line 583
	mov	"\0\0AS",r10
!   nextCount = nextCount - 1		(int)
	load	[r14+20],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! END IF...
_Label_668:
! ASSIGNMENT STATEMENT...
	mov	587,r13		! source line 587
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	587,r13		! source line 587
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_3:
	.word	_sourceFileName
	.word	_Label_670
	.word	16		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_671
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_672
	.word	12
	.word	4
	.word	_Label_673
	.word	16
	.word	4
	.word	_Label_674
	.word	20
	.word	4
	.word	_Label_675
	.word	-16
	.word	4
	.word	_Label_676
	.word	-20
	.word	4
	.word	_Label_677
	.word	-9
	.word	1
	.word	_Label_678
	.word	-24
	.word	4
	.word	0
_Label_670:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_671:
	.ascii	"Pself\0"
	.align
_Label_672:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_673:
	.byte	'P'
	.ascii	"threadSem\0"
	.align
_Label_674:
	.byte	'I'
	.ascii	"nextCount\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_677:
	.byte	'C'
	.ascii	"_temp_665\0"
	.align
_Label_678:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_679
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_679:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_680
	.word	_sourceFileName
	.word	193		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_680:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_2147:
	push	r0
	sub	r1,1,r1
	bne	_Label_2147
	mov	598,r13		! source line 598
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	603,r13		! source line 603
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	604,r13		! source line 604
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0AS",r10
!   _temp_681 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_681) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_681 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	607,r13		! source line 607
	mov	"\0\0AS",r10
!   _temp_682 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_682 [0 ] into _temp_683
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_683 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0AS",r10
!   _temp_684 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_684 [999 ] into _temp_685
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
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
	store	r2,[r14+-172]
!   Data Move: *_temp_685 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0AS",r10
!   _temp_686 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_686 [999 ] into _temp_687
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   stackTop = _temp_687		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0AS",r10
!   _temp_688 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_690 = &_temp_689
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_690 = _temp_690 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_692:
!   Data Move: *_temp_690 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_690 = _temp_690 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_691 = _temp_691 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_691) then goto _Label_692
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_692
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_693 = &_temp_689
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_2148
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2148:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_688 = *_temp_693  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_2149:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2149
! ASSIGNMENT STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	612,r13		! source line 612
	mov	"\0\0AS",r10
!   _temp_694 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_696 = &_temp_695
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_696 = _temp_696 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_698:
!   Data Move: *_temp_696 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_696 = _temp_696 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_697 = _temp_697 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_697) then goto _Label_698
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_698
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_699 = &_temp_695
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_2150
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2150:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_694 = *_temp_699  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_2151:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2151
! RETURN STATEMENT...
	mov	612,r13		! source line 612
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_700
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_701
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_702
	.word	12
	.word	4
	.word	_Label_703
	.word	-12
	.word	4
	.word	_Label_704
	.word	-16
	.word	4
	.word	_Label_705
	.word	-20
	.word	4
	.word	_Label_706
	.word	-84
	.word	64
	.word	_Label_707
	.word	-88
	.word	4
	.word	_Label_708
	.word	-92
	.word	4
	.word	_Label_709
	.word	-96
	.word	4
	.word	_Label_710
	.word	-100
	.word	4
	.word	_Label_711
	.word	-156
	.word	56
	.word	_Label_712
	.word	-160
	.word	4
	.word	_Label_713
	.word	-164
	.word	4
	.word	_Label_714
	.word	-168
	.word	4
	.word	_Label_715
	.word	-172
	.word	4
	.word	_Label_716
	.word	-176
	.word	4
	.word	_Label_717
	.word	-180
	.word	4
	.word	_Label_718
	.word	-184
	.word	4
	.word	_Label_719
	.word	-188
	.word	4
	.word	0
_Label_700:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_701:
	.ascii	"Pself\0"
	.align
_Label_702:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_2152:
	push	r0
	sub	r1,1,r1
	bne	_Label_2152
	mov	617,r13		! source line 617
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	628,r13		! source line 628
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	630,r13		! source line 630
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	631,r13		! source line 631
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	632,r13		! source line 632
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	633,r13		! source line 633
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_720 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_720  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	634,r13		! source line 634
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	635,r13		! source line 635
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_722 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_721  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	636,r13		! source line 636
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	636,r13		! source line 636
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_723
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_724
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_725
	.word	12
	.word	4
	.word	_Label_726
	.word	16
	.word	4
	.word	_Label_727
	.word	-12
	.word	4
	.word	_Label_728
	.word	-16
	.word	4
	.word	_Label_729
	.word	-20
	.word	4
	.word	_Label_730
	.word	-24
	.word	4
	.word	_Label_731
	.word	-28
	.word	4
	.word	0
_Label_723:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_724:
	.ascii	"Pself\0"
	.align
_Label_725:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_726:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_730:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_731:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_2153:
	push	r0
	sub	r1,1,r1
	bne	_Label_2153
	mov	641,r13		! source line 641
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	657,r13		! source line 657
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_734 == _P_Kernel_currentThread then goto _Label_733		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_733
!	jmp	_Label_732
_Label_732:
! THEN...
	mov	658,r13		! source line 658
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_735 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_735  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	658,r13		! source line 658
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_733:
! ASSIGNMENT STATEMENT...
	mov	660,r13		! source line 660
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	664,r13		! source line 664
	mov	"\0\0AS",r10
	mov	664,r13		! source line 664
	mov	"\0\0SE",r10
!   _temp_736 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_738		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_738
!	jmp	_Label_737
_Label_737:
! THEN...
	mov	669,r13		! source line 669
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	669,r13		! source line 669
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_740		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_740
!	jmp	_Label_739
_Label_739:
! THEN...
	mov	670,r13		! source line 670
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_741 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_741  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	670,r13		! source line 670
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_740:
! ASSIGNMENT STATEMENT...
	mov	672,r13		! source line 672
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	673,r13		! source line 673
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_743 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_742  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	674,r13		! source line 674
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_738:
! ASSIGNMENT STATEMENT...
	mov	676,r13		! source line 676
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	676,r13		! source line 676
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_744
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_745
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_746
	.word	-12
	.word	4
	.word	_Label_747
	.word	-16
	.word	4
	.word	_Label_748
	.word	-20
	.word	4
	.word	_Label_749
	.word	-24
	.word	4
	.word	_Label_750
	.word	-28
	.word	4
	.word	_Label_751
	.word	-32
	.word	4
	.word	_Label_752
	.word	-36
	.word	4
	.word	_Label_753
	.word	-40
	.word	4
	.word	_Label_754
	.word	-44
	.word	4
	.word	0
_Label_744:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_745:
	.ascii	"Pself\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_752:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_753:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_754:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_2154:
	push	r0
	sub	r1,1,r1
	bne	_Label_2154
	mov	681,r13		! source line 681
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	693,r13		! source line 693
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_756		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_756
!	jmp	_Label_755
_Label_755:
! THEN...
	mov	694,r13		! source line 694
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_757 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_757  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	694,r13		! source line 694
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_756:
! IF STATEMENT...
	mov	697,r13		! source line 697
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_760 == _P_Kernel_currentThread then goto _Label_759		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_759
!	jmp	_Label_758
_Label_758:
! THEN...
	mov	698,r13		! source line 698
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_761 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_761  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	698,r13		! source line 698
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_759:
! ASSIGNMENT STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0AS",r10
	mov	704,r13		! source line 704
	mov	"\0\0SE",r10
!   _temp_762 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_763
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_763
	jmp	_Label_764
_Label_763:
! THEN...
	mov	706,r13		! source line 706
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_765 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_765  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	706,r13		! source line 706
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_764:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	708,r13		! source line 708
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_766
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_767
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_768
	.word	-12
	.word	4
	.word	_Label_769
	.word	-16
	.word	4
	.word	_Label_770
	.word	-20
	.word	4
	.word	_Label_771
	.word	-24
	.word	4
	.word	_Label_772
	.word	-28
	.word	4
	.word	_Label_773
	.word	-32
	.word	4
	.word	0
_Label_766:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_767:
	.ascii	"Pself\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_761\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_773:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_2155:
	push	r0
	sub	r1,1,r1
	bne	_Label_2155
	mov	713,r13		! source line 713
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0IF",r10
!   _temp_777 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_777 [0 ] into _temp_778
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_776 = *_temp_778  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_776 == 606348324 then goto _Label_775		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_775
!	jmp	_Label_774
_Label_774:
! THEN...
	mov	720,r13		! source line 720
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_779 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_779  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	720,r13		! source line 720
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_780
_Label_775:
! ELSE...
	mov	721,r13		! source line 721
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	721,r13		! source line 721
	mov	"\0\0IF",r10
!   _temp_784 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_784 [999 ] into _temp_785
!     make sure index expr is >= 0
	mov	999,r2
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
!   Data Move: _temp_783 = *_temp_785  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_783 == 606348324 then goto _Label_782		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_782
!	jmp	_Label_781
_Label_781:
! THEN...
	mov	722,r13		! source line 722
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_786 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_786  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	722,r13		! source line 722
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_782:
! END IF...
_Label_780:
! RETURN STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_787
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_788
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_789
	.word	-12
	.word	4
	.word	_Label_790
	.word	-16
	.word	4
	.word	_Label_791
	.word	-20
	.word	4
	.word	_Label_792
	.word	-24
	.word	4
	.word	_Label_793
	.word	-28
	.word	4
	.word	_Label_794
	.word	-32
	.word	4
	.word	_Label_795
	.word	-36
	.word	4
	.word	_Label_796
	.word	-40
	.word	4
	.word	0
_Label_787:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_788:
	.ascii	"Pself\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_2156:
	push	r0
	sub	r1,1,r1
	bne	_Label_2156
	mov	728,r13		! source line 728
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	734,r13		! source line 734
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	734,r13		! source line 734
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_797 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_797  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	735,r13		! source line 735
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	736,r13		! source line 736
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_798 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_798  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	737,r13		! source line 737
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_799  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	738,r13		! source line 738
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_800 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_800  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	739,r13		! source line 739
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_801 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_801  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	740,r13		! source line 740
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	741,r13		! source line 741
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_806 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_807 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_806  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_802:
!   Perform the FOR-LOOP termination test
!   if i > _temp_807 then goto _Label_805		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_805
_Label_803:
	mov	741,r13		! source line 741
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_808 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_808  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	742,r13		! source line 742
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_809 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_809  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	743,r13		! source line 743
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_810 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_810  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	744,r13		! source line 744
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_812 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_812 [i ] into _temp_813
!     make sure index expr is >= 0
	load	[r14+-192],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_811 = *_temp_813  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_811  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	745,r13		! source line 745
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_814 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_814  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	746,r13		! source line 746
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_816 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_816 [i ] into _temp_817
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
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
	store	r2,[r14+-124]
!   Data Move: _temp_815 = *_temp_817  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_815  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	747,r13		! source line 747
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_818 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_818  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	748,r13		! source line 748
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_804:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_802
! END FOR
_Label_805:
! CALL STATEMENT...
!   _temp_819 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-116]
!   _temp_820 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_819  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_820  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	750,r13		! source line 750
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_821 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-108]
!   _temp_823 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_823 [0 ] into _temp_824
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_822 = _temp_824		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_821  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_822  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	751,r13		! source line 751
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	752,r13		! source line 752
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_827
	cmp	r1,2
	be	_Label_828
	cmp	r1,3
	be	_Label_829
	cmp	r1,4
	be	_Label_830
	cmp	r1,5
	be	_Label_831
	jmp	_Label_825
! CASE 1...
_Label_827:
! CALL STATEMENT...
!   _temp_832 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_832  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	754,r13		! source line 754
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	755,r13		! source line 755
	mov	"\0\0BR",r10
	jmp	_Label_826
! CASE 2...
_Label_828:
! CALL STATEMENT...
!   _temp_833 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_833  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	757,r13		! source line 757
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	758,r13		! source line 758
	mov	"\0\0BR",r10
	jmp	_Label_826
! CASE 3...
_Label_829:
! CALL STATEMENT...
!   _temp_834 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_834  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	760,r13		! source line 760
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	761,r13		! source line 761
	mov	"\0\0BR",r10
	jmp	_Label_826
! CASE 4...
_Label_830:
! CALL STATEMENT...
!   _temp_835 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_835  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	763,r13		! source line 763
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	764,r13		! source line 764
	mov	"\0\0BR",r10
	jmp	_Label_826
! CASE 5...
_Label_831:
! CALL STATEMENT...
!   _temp_836 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_836  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	766,r13		! source line 766
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	767,r13		! source line 767
	mov	"\0\0BR",r10
	jmp	_Label_826
! DEFAULT CASE...
_Label_825:
! CALL STATEMENT...
!   _temp_837 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_837  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	769,r13		! source line 769
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_826:
! CALL STATEMENT...
!   _temp_838 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_838  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	771,r13		! source line 771
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	772,r13		! source line 772
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	773,r13		! source line 773
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_839 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_839  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	774,r13		! source line 774
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	775,r13		! source line 775
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_844 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_845 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_844  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_840:
!   Perform the FOR-LOOP termination test
!   if i > _temp_845 then goto _Label_843		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_843
_Label_841:
	mov	775,r13		! source line 775
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_846 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_846  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	776,r13		! source line 776
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_847 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_847  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	777,r13		! source line 777
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_848 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_848  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	778,r13		! source line 778
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_850 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_850 [i ] into _temp_851
!     make sure index expr is >= 0
	load	[r14+-192],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_849 = *_temp_851  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_849  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	779,r13		! source line 779
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_852 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_852  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	780,r13		! source line 780
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_854 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_854 [i ] into _temp_855
!     make sure index expr is >= 0
	load	[r14+-192],r2
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
!   Data Move: _temp_853 = *_temp_855  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_853  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	781,r13		! source line 781
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_856 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_856  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	782,r13		! source line 782
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_842:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_840
! END FOR
_Label_843:
! ASSIGNMENT STATEMENT...
	mov	784,r13		! source line 784
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	784,r13		! source line 784
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	784,r13		! source line 784
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_857
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_858
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_859
	.word	-12
	.word	4
	.word	_Label_860
	.word	-16
	.word	4
	.word	_Label_861
	.word	-20
	.word	4
	.word	_Label_862
	.word	-24
	.word	4
	.word	_Label_863
	.word	-28
	.word	4
	.word	_Label_864
	.word	-32
	.word	4
	.word	_Label_865
	.word	-36
	.word	4
	.word	_Label_866
	.word	-40
	.word	4
	.word	_Label_867
	.word	-44
	.word	4
	.word	_Label_868
	.word	-48
	.word	4
	.word	_Label_869
	.word	-52
	.word	4
	.word	_Label_870
	.word	-56
	.word	4
	.word	_Label_871
	.word	-60
	.word	4
	.word	_Label_872
	.word	-64
	.word	4
	.word	_Label_873
	.word	-68
	.word	4
	.word	_Label_874
	.word	-72
	.word	4
	.word	_Label_875
	.word	-76
	.word	4
	.word	_Label_876
	.word	-80
	.word	4
	.word	_Label_877
	.word	-84
	.word	4
	.word	_Label_878
	.word	-88
	.word	4
	.word	_Label_879
	.word	-92
	.word	4
	.word	_Label_880
	.word	-96
	.word	4
	.word	_Label_881
	.word	-100
	.word	4
	.word	_Label_882
	.word	-104
	.word	4
	.word	_Label_883
	.word	-108
	.word	4
	.word	_Label_884
	.word	-112
	.word	4
	.word	_Label_885
	.word	-116
	.word	4
	.word	_Label_886
	.word	-120
	.word	4
	.word	_Label_887
	.word	-124
	.word	4
	.word	_Label_888
	.word	-128
	.word	4
	.word	_Label_889
	.word	-132
	.word	4
	.word	_Label_890
	.word	-136
	.word	4
	.word	_Label_891
	.word	-140
	.word	4
	.word	_Label_892
	.word	-144
	.word	4
	.word	_Label_893
	.word	-148
	.word	4
	.word	_Label_894
	.word	-152
	.word	4
	.word	_Label_895
	.word	-156
	.word	4
	.word	_Label_896
	.word	-160
	.word	4
	.word	_Label_897
	.word	-164
	.word	4
	.word	_Label_898
	.word	-168
	.word	4
	.word	_Label_899
	.word	-172
	.word	4
	.word	_Label_900
	.word	-176
	.word	4
	.word	_Label_901
	.word	-180
	.word	4
	.word	_Label_902
	.word	-184
	.word	4
	.word	_Label_903
	.word	-188
	.word	4
	.word	_Label_904
	.word	-192
	.word	4
	.word	_Label_905
	.word	-196
	.word	4
	.word	0
_Label_857:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_858:
	.ascii	"Pself\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_855\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_854\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_904:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_905:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_906
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_906:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_907
	.word	_sourceFileName
	.word	220		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_907:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11505,r1
_Label_2157:
	push	r0
	sub	r1,1,r1
	bne	_Label_2157
	mov	994,r13		! source line 994
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_908 = _StringConst_77
	set	_StringConst_77,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_908  sizeInBytes=4
	set	-46016,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	1002,r13		! source line 1002
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	1008,r13		! source line 1008
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=16)
	set	41680,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41680,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	1009,r13		! source line 1009
	mov	"\0\0SE",r10
!   _temp_911 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	set	-46004,r2
	store	r1,[r14+r2]
!   Send message Init
	set	-46004,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1012,r13		! source line 1012
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	1013,r13		! source line 1013
	mov	"\0\0SE",r10
!   _temp_913 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	set	-45996,r2
	store	r1,[r14+r2]
!   Send message Init
	set	-45996,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0AS",r10
!   _temp_914 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45992,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_916 = &_temp_915
	set	-45988,r1
	add	r14,r1,r1
	store	r1,[r14+-4344]
!   _temp_916 = _temp_916 + 4
	load	[r14+-4344],r1
	add	r1,4,r1
	store	r1,[r14+-4344]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_918 = zeros  (sizeInBytes=4164)
	add	r14,-4336,r4
	mov	1041,r3
_Label_2158:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2158
!   _temp_918 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4336]
	mov	10,r1
	store	r1,[r14+-4340]
_Label_920:
!   Data Move: *_temp_916 = _temp_918  (sizeInBytes=4164)
	add	r14,-4336,r5
	load	[r14+-4344],r4
	mov	1041,r3
_Label_2159:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2159
!   _temp_916 = _temp_916 + 4164
	load	[r14+-4344],r1
	add	r1,4164,r1
	store	r1,[r14+-4344]
!   _temp_917 = _temp_917 + -1
	load	[r14+-4340],r1
	add	r1,-1,r1
	store	r1,[r14+-4340]
!   if intNotZero (_temp_917) then goto _Label_920
	load	[r14+-4340],r1
	cmp	r1,r0
	bne	_Label_920
!   Initialize the array size...
	mov	10,r1
	set	-45988,r2
	store	r1,[r14+r2]
!   _temp_921 = &_temp_915
	set	-45988,r1
	add	r14,r1,r1
	store	r1,[r14+-168]
!   make sure array has size 10
	set	-45992,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2160
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2160:
!   make sure array has size 10
	load	[r14+-168],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_914 = *_temp_921  (sizeInBytes=41644)
	load	[r14+-168],r5
	set	-45992,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_2161:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2161
! SEND STATEMENT...
	mov	1017,r13		! source line 1017
	mov	"\0\0SE",r10
!   _temp_922 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-164]
!   _temp_923 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_923 [0 ] into _temp_924
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   Prepare Argument: offset=12  value=_temp_922  sizeInBytes=4
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
	mov	1018,r13		! source line 1018
	mov	"\0\0SE",r10
!   _temp_925 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-152]
!   _temp_926 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-148]
!   Move address of _temp_926 [1 ] into _temp_927
!     make sure index expr is >= 0
	mov	1,r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_925  sizeInBytes=4
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
	mov	1019,r13		! source line 1019
	mov	"\0\0SE",r10
!   _temp_928 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-140]
!   _temp_929 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_929 [2 ] into _temp_930
!     make sure index expr is >= 0
	mov	2,r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   Prepare Argument: offset=12  value=_temp_928  sizeInBytes=4
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
	mov	1020,r13		! source line 1020
	mov	"\0\0SE",r10
!   _temp_931 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-128]
!   _temp_932 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-124]
!   Move address of _temp_932 [3 ] into _temp_933
!     make sure index expr is >= 0
	mov	3,r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Prepare Argument: offset=12  value=_temp_931  sizeInBytes=4
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
	mov	1021,r13		! source line 1021
	mov	"\0\0SE",r10
!   _temp_934 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-116]
!   _temp_935 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Move address of _temp_935 [4 ] into _temp_936
!     make sure index expr is >= 0
	mov	4,r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_934  sizeInBytes=4
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
	mov	1022,r13		! source line 1022
	mov	"\0\0SE",r10
!   _temp_937 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-104]
!   _temp_938 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Move address of _temp_938 [5 ] into _temp_939
!     make sure index expr is >= 0
	mov	5,r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_937  sizeInBytes=4
	load	[r14+-104],r1
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
	mov	1023,r13		! source line 1023
	mov	"\0\0SE",r10
!   _temp_940 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-92]
!   _temp_941 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Move address of _temp_941 [6 ] into _temp_942
!     make sure index expr is >= 0
	mov	6,r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_940  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0SE",r10
!   _temp_943 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-80]
!   _temp_944 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_944 [7 ] into _temp_945
!     make sure index expr is >= 0
	mov	7,r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_943  sizeInBytes=4
	load	[r14+-80],r1
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
	mov	1025,r13		! source line 1025
	mov	"\0\0SE",r10
!   _temp_946 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-68]
!   _temp_947 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-64]
!   Move address of _temp_947 [8 ] into _temp_948
!     make sure index expr is >= 0
	mov	8,r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_946  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1026,r13		! source line 1026
	mov	"\0\0SE",r10
!   _temp_949 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-56]
!   _temp_950 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_950 [9 ] into _temp_951
!     make sure index expr is >= 0
	mov	9,r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_949  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1029,r13		! source line 1029
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_956 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_957 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_956  (sizeInBytes=4)
	load	[r14+-44],r1
	set	-46020,r2
	store	r1,[r14+r2]
_Label_952:
!   Perform the FOR-LOOP termination test
!   if i > _temp_957 then goto _Label_955		
	set	-46020,r1
	load	[r14+r1],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_955
_Label_953:
	mov	1029,r13		! source line 1029
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1030,r13		! source line 1030
	mov	"\0\0AS",r10
!   _temp_958 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_958 [i ] into _temp_959
!     make sure index expr is >= 0
	set	-46020,r2
	load	[r14+r2],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_960 = _temp_959 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_960 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1031,r13		! source line 1031
	mov	"\0\0SE",r10
!   _temp_962 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_962 [i ] into _temp_963
!     make sure index expr is >= 0
	set	-46020,r2
	load	[r14+r2],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_961 = _temp_963		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_964 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_961  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_954:
!   i = i + 1
	set	-46020,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46020,r2
	store	r1,[r14+r2]
	jmp	_Label_952
! END FOR
_Label_955:
! RETURN STATEMENT...
	mov	1029,r13		! source line 1029
	mov	"\0\0RE",r10
	set	46024,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_965
	.word	4		! total size of parameters
	.word	46020		! frame size = 46020
	.word	_Label_966
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_967
	.word	-12
	.word	4
	.word	_Label_968
	.word	-16
	.word	4
	.word	_Label_969
	.word	-20
	.word	4
	.word	_Label_970
	.word	-24
	.word	4
	.word	_Label_971
	.word	-28
	.word	4
	.word	_Label_972
	.word	-32
	.word	4
	.word	_Label_973
	.word	-36
	.word	4
	.word	_Label_974
	.word	-40
	.word	4
	.word	_Label_975
	.word	-44
	.word	4
	.word	_Label_976
	.word	-48
	.word	4
	.word	_Label_977
	.word	-52
	.word	4
	.word	_Label_978
	.word	-56
	.word	4
	.word	_Label_979
	.word	-60
	.word	4
	.word	_Label_980
	.word	-64
	.word	4
	.word	_Label_981
	.word	-68
	.word	4
	.word	_Label_982
	.word	-72
	.word	4
	.word	_Label_983
	.word	-76
	.word	4
	.word	_Label_984
	.word	-80
	.word	4
	.word	_Label_985
	.word	-84
	.word	4
	.word	_Label_986
	.word	-88
	.word	4
	.word	_Label_987
	.word	-92
	.word	4
	.word	_Label_988
	.word	-96
	.word	4
	.word	_Label_989
	.word	-100
	.word	4
	.word	_Label_990
	.word	-104
	.word	4
	.word	_Label_991
	.word	-108
	.word	4
	.word	_Label_992
	.word	-112
	.word	4
	.word	_Label_993
	.word	-116
	.word	4
	.word	_Label_994
	.word	-120
	.word	4
	.word	_Label_995
	.word	-124
	.word	4
	.word	_Label_996
	.word	-128
	.word	4
	.word	_Label_997
	.word	-132
	.word	4
	.word	_Label_998
	.word	-136
	.word	4
	.word	_Label_999
	.word	-140
	.word	4
	.word	_Label_1000
	.word	-144
	.word	4
	.word	_Label_1001
	.word	-148
	.word	4
	.word	_Label_1002
	.word	-152
	.word	4
	.word	_Label_1003
	.word	-156
	.word	4
	.word	_Label_1004
	.word	-160
	.word	4
	.word	_Label_1005
	.word	-164
	.word	4
	.word	_Label_1006
	.word	-168
	.word	4
	.word	_Label_1007
	.word	-172
	.word	4
	.word	_Label_1008
	.word	-4336
	.word	4164
	.word	_Label_1009
	.word	-4340
	.word	4
	.word	_Label_1010
	.word	-4344
	.word	4
	.word	_Label_1011
	.word	-45988
	.word	41644
	.word	_Label_1012
	.word	-45992
	.word	4
	.word	_Label_1013
	.word	-45996
	.word	4
	.word	_Label_1014
	.word	-46000
	.word	4
	.word	_Label_1015
	.word	-46004
	.word	4
	.word	_Label_1016
	.word	-46008
	.word	4
	.word	_Label_1017
	.word	-46012
	.word	4
	.word	_Label_1018
	.word	-46016
	.word	4
	.word	_Label_1019
	.word	-46020
	.word	4
	.word	0
_Label_965:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_966:
	.ascii	"Pself\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_980:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_981:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_982:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_922\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_921\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_1019:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_2162:
	push	r0
	sub	r1,1,r1
	bne	_Label_2162
	mov	1038,r13		! source line 1038
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1045,r13		! source line 1045
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1045,r13		! source line 1045
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1020 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1020  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1046,r13		! source line 1046
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1047,r13		! source line 1047
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1025 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1026 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1025  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1021:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1026 then goto _Label_1024		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1024
_Label_1022:
	mov	1047,r13		! source line 1047
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1027 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1027  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1048,r13		! source line 1048
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1049,r13		! source line 1049
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1028 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1028  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1050,r13		! source line 1050
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1030 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1030 [i ] into _temp_1031
!     make sure index expr is >= 0
	load	[r14+-56],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1029 = _temp_1031		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1029  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1051,r13		! source line 1051
	mov	"\0\0CA",r10
	call	_function_150_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1023:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1021
! END FOR
_Label_1024:
! CALL STATEMENT...
!   _temp_1032 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1032  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1053,r13		! source line 1053
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0SE",r10
!   _temp_1033 = _function_149_PrintObjectAddr
	set	_function_149_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1034 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1033  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1055,r13		! source line 1055
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1056,r13		! source line 1056
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_1035
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1036
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1037
	.word	-12
	.word	4
	.word	_Label_1038
	.word	-16
	.word	4
	.word	_Label_1039
	.word	-20
	.word	4
	.word	_Label_1040
	.word	-24
	.word	4
	.word	_Label_1041
	.word	-28
	.word	4
	.word	_Label_1042
	.word	-32
	.word	4
	.word	_Label_1043
	.word	-36
	.word	4
	.word	_Label_1044
	.word	-40
	.word	4
	.word	_Label_1045
	.word	-44
	.word	4
	.word	_Label_1046
	.word	-48
	.word	4
	.word	_Label_1047
	.word	-52
	.word	4
	.word	_Label_1048
	.word	-56
	.word	4
	.word	_Label_1049
	.word	-60
	.word	4
	.word	0
_Label_1035:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1036:
	.ascii	"Pself\0"
	.align
_Label_1037:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1048:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1049:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	10,r1
_Label_2163:
	push	r0
	sub	r1,1,r1
	bne	_Label_2163
	mov	1061,r13		! source line 1061
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1069,r13		! source line 1069
	mov	"\0\0SE",r10
!   _temp_1050 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1073,r13		! source line 1073
	mov	"\0\0WH",r10
_Label_1051:
	mov	1073,r13		! source line 1073
	mov	"\0\0SE",r10
!   _temp_1054 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1052 else goto _Label_1053
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1053
	jmp	_Label_1052
_Label_1052:
	mov	1073,r13		! source line 1073
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1074,r13		! source line 1074
	mov	"\0\0SE",r10
!   _temp_1055 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1056 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1055  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1051
_Label_1053:
! ASSIGNMENT STATEMENT...
	mov	1079,r13		! source line 1079
	mov	"\0\0AS",r10
	mov	1079,r13		! source line 1079
	mov	"\0\0SE",r10
!   _temp_1057 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1080,r13		! source line 1080
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1058 = th + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1058 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1083,r13		! source line 1083
	mov	"\0\0SE",r10
!   _temp_1059 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	1086,r13		! source line 1086
	mov	"\0\0RE",r10
!   ReturnResult: th  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_1060
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1061
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1062
	.word	-12
	.word	4
	.word	_Label_1063
	.word	-16
	.word	4
	.word	_Label_1064
	.word	-20
	.word	4
	.word	_Label_1065
	.word	-24
	.word	4
	.word	_Label_1066
	.word	-28
	.word	4
	.word	_Label_1067
	.word	-32
	.word	4
	.word	_Label_1068
	.word	-36
	.word	4
	.word	_Label_1069
	.word	-40
	.word	4
	.word	0
_Label_1060:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1061:
	.ascii	"Pself\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1063:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1067:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1069:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_2164:
	push	r0
	sub	r1,1,r1
	bne	_Label_2164
	mov	1092,r13		! source line 1092
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1098,r13		! source line 1098
	mov	"\0\0SE",r10
!   _temp_1070 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	1102,r13		! source line 1102
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1071 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1071 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1103,r13		! source line 1103
	mov	"\0\0SE",r10
!   _temp_1072 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0SE",r10
!   _temp_1073 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1074 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1073  sizeInBytes=4
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
	mov	1110,r13		! source line 1110
	mov	"\0\0SE",r10
!   _temp_1075 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	1110,r13		! source line 1110
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1076
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1077
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1078
	.word	12
	.word	4
	.word	_Label_1079
	.word	-12
	.word	4
	.word	_Label_1080
	.word	-16
	.word	4
	.word	_Label_1081
	.word	-20
	.word	4
	.word	_Label_1082
	.word	-24
	.word	4
	.word	_Label_1083
	.word	-28
	.word	4
	.word	_Label_1084
	.word	-32
	.word	4
	.word	0
_Label_1076:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1077:
	.ascii	"Pself\0"
	.align
_Label_1078:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
! 
! ===============  CLASS HoareThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareThreadManager:
	.word	_Label_1085
	jmp	_Method_P_Kernel_HoareThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_HoareThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_HoareThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1085:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1086
	.word	_sourceFileName
	.word	238		! line number
	.word	8432		! size of instances, in bytes
	.word	_P_Kernel_HoareThreadManager
	.word	_P_System_Object
	.word	0
_Label_1086:
	.ascii	"HoareThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_HoareThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareThreadManager_1,r1
	push	r1
	mov	3156,r1
_Label_2165:
	push	r0
	sub	r1,1,r1
	bne	_Label_2165
	mov	839,r13		! source line 839
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1087 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-12624]
!   Prepare Argument: offset=8  value=_temp_1087  sizeInBytes=4
	load	[r14+-12624],r1
	store	r1,[r15+0]
!   Call the function
	mov	847,r13		! source line 847
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	850,r13		! source line 850
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadSem = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,8352,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadSem = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+8352]
! SEND STATEMENT...
	mov	851,r13		! source line 851
	mov	"\0\0SE",r10
!   _temp_1089 = &threadSem
	load	[r14+8],r1
	add	r1,8352,r1
	store	r1,[r14+-12616]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-12616],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	853,r13		! source line 853
	mov	"\0\0AS",r10
!   nextCount = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+8348]
! ASSIGNMENT STATEMENT...
	mov	856,r13		! source line 856
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8336,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8336]
! ASSIGNMENT STATEMENT...
	mov	859,r13		! source line 859
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=40)
	load	[r14+8],r4
	add	r4,8392,r4
	mov	10,r3
_Label_2166:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2166
!   aThreadBecameFree = _P_Kernel_HoareCondition
	set	_P_Kernel_HoareCondition,r1
	load	[r14+8],r2
	store	r1,[r2+8392]
! SEND STATEMENT...
	mov	860,r13		! source line 860
	mov	"\0\0SE",r10
!   _temp_1092 = &aThreadBecameFree
	load	[r14+8],r1
	add	r1,8392,r1
	store	r1,[r14+-12604]
!   Send message Init
	load	[r14+-12604],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	863,r13		! source line 863
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,8372,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_HoareMutex
	set	_P_Kernel_HoareMutex,r1
	load	[r14+8],r2
	store	r1,[r2+8372]
! SEND STATEMENT...
	mov	864,r13		! source line 864
	mov	"\0\0SE",r10
!   _temp_1094 = &threadManagerLock
	load	[r14+8],r1
	add	r1,8372,r1
	store	r1,[r14+-12596]
!   Send message Init
	load	[r14+-12596],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	867,r13		! source line 867
	mov	"\0\0AS",r10
!   _temp_1095 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12592]
!   NEW ARRAY Constructor...
!   _temp_1097 = &_temp_1096
	add	r14,-12588,r1
	store	r1,[r14+-4256]
!   _temp_1097 = _temp_1097 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1099 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_2167:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2167
!   _temp_1099 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	2,r1
	store	r1,[r14+-4252]
_Label_1101:
!   Data Move: *_temp_1097 = _temp_1099  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_2168:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2168
!   _temp_1097 = _temp_1097 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1098 = _temp_1098 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1098) then goto _Label_1101
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1101
!   Initialize the array size...
	mov	2,r1
	store	r1,[r14+-12588]
!   _temp_1102 = &_temp_1096
	add	r14,-12588,r1
	store	r1,[r14+-80]
!   make sure array has size 2
	load	[r14+-12592],r1
	load	[r1],r1
	set	2, r2
	cmp	r1,0
	be	_Label_2169
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2169:
!   make sure array has size 2
	load	[r14+-80],r1
	load	[r1],r1
	set	2, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1095 = *_temp_1102  (sizeInBytes=8332)
	load	[r14+-80],r5
	load	[r14+-12592],r4
	mov	2083,r3
_Label_2170:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2170
! SEND STATEMENT...
	mov	868,r13		! source line 868
	mov	"\0\0SE",r10
!   _temp_1103 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-76]
!   _temp_1104 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Move address of _temp_1104 [0 ] into _temp_1105
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_1103  sizeInBytes=4
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
! ASSIGNMENT STATEMENT...
	mov	872,r13		! source line 872
	mov	"\0\0AS",r10
!   _temp_1106 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-64]
!   Move address of _temp_1106 [0 ] into _temp_1107
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_1108 = _temp_1107 + 76
	load	[r14+-60],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_1108 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-56],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	873,r13		! source line 873
	mov	"\0\0SE",r10
!   _temp_1110 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   Move address of _temp_1110 [0 ] into _temp_1111
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-44]
!   _temp_1109 = _temp_1111		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-52]
!   _temp_1112 = &freeList
	load	[r14+8],r1
	add	r1,8336,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_1109  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	874,r13		! source line 874
	mov	"\0\0AS",r10
!   _temp_1113 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1113 [1 ] into _temp_1114
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1115 = _temp_1114 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1115 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	875,r13		! source line 875
	mov	"\0\0SE",r10
!   _temp_1117 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1117 [1 ] into _temp_1118
!     make sure index expr is >= 0
	mov	1,r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1116 = _temp_1118		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1119 = &freeList
	load	[r14+8],r1
	add	r1,8336,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1116  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	875,r13		! source line 875
	mov	"\0\0RE",r10
	add	r15,12628,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareThreadManager_1:
	.word	_sourceFileName
	.word	_Label_1120
	.word	4		! total size of parameters
	.word	12624		! frame size = 12624
	.word	_Label_1121
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1122
	.word	-12
	.word	4
	.word	_Label_1123
	.word	-16
	.word	4
	.word	_Label_1124
	.word	-20
	.word	4
	.word	_Label_1125
	.word	-24
	.word	4
	.word	_Label_1126
	.word	-28
	.word	4
	.word	_Label_1127
	.word	-32
	.word	4
	.word	_Label_1128
	.word	-36
	.word	4
	.word	_Label_1129
	.word	-40
	.word	4
	.word	_Label_1130
	.word	-44
	.word	4
	.word	_Label_1131
	.word	-48
	.word	4
	.word	_Label_1132
	.word	-52
	.word	4
	.word	_Label_1133
	.word	-56
	.word	4
	.word	_Label_1134
	.word	-60
	.word	4
	.word	_Label_1135
	.word	-64
	.word	4
	.word	_Label_1136
	.word	-68
	.word	4
	.word	_Label_1137
	.word	-72
	.word	4
	.word	_Label_1138
	.word	-76
	.word	4
	.word	_Label_1139
	.word	-80
	.word	4
	.word	_Label_1140
	.word	-84
	.word	4
	.word	_Label_1141
	.word	-4248
	.word	4164
	.word	_Label_1142
	.word	-4252
	.word	4
	.word	_Label_1143
	.word	-4256
	.word	4
	.word	_Label_1144
	.word	-12588
	.word	8332
	.word	_Label_1145
	.word	-12592
	.word	4
	.word	_Label_1146
	.word	-12596
	.word	4
	.word	_Label_1147
	.word	-12600
	.word	4
	.word	_Label_1148
	.word	-12604
	.word	4
	.word	_Label_1149
	.word	-12608
	.word	4
	.word	_Label_1150
	.word	-12612
	.word	4
	.word	_Label_1151
	.word	-12616
	.word	4
	.word	_Label_1152
	.word	-12620
	.word	4
	.word	_Label_1153
	.word	-12624
	.word	4
	.word	0
_Label_1120:
	.ascii	"HoareThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1121:
	.ascii	"Pself\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_HoareThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_2171:
	push	r0
	sub	r1,1,r1
	bne	_Label_2171
	mov	881,r13		! source line 881
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	888,r13		! source line 888
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	888,r13		! source line 888
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1154 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1154  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	889,r13		! source line 889
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	890,r13		! source line 890
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1159 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1160 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1159  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1155:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1160 then goto _Label_1158		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1158
_Label_1156:
	mov	890,r13		! source line 890
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1161 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1161  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	891,r13		! source line 891
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	892,r13		! source line 892
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1162 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1162  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	893,r13		! source line 893
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1164 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1164 [i ] into _temp_1165
!     make sure index expr is >= 0
	load	[r14+-56],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1163 = _temp_1165		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1163  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	894,r13		! source line 894
	mov	"\0\0CA",r10
	call	_function_150_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1157:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1155
! END FOR
_Label_1158:
! CALL STATEMENT...
!   _temp_1166 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1166  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	896,r13		! source line 896
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	897,r13		! source line 897
	mov	"\0\0SE",r10
!   _temp_1167 = _function_149_PrintObjectAddr
	set	_function_149_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1168 = &freeList
	load	[r14+8],r1
	add	r1,8336,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1167  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	898,r13		! source line 898
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	899,r13		! source line 899
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareThreadManager_2:
	.word	_sourceFileName
	.word	_Label_1169
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1170
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1171
	.word	-12
	.word	4
	.word	_Label_1172
	.word	-16
	.word	4
	.word	_Label_1173
	.word	-20
	.word	4
	.word	_Label_1174
	.word	-24
	.word	4
	.word	_Label_1175
	.word	-28
	.word	4
	.word	_Label_1176
	.word	-32
	.word	4
	.word	_Label_1177
	.word	-36
	.word	4
	.word	_Label_1178
	.word	-40
	.word	4
	.word	_Label_1179
	.word	-44
	.word	4
	.word	_Label_1180
	.word	-48
	.word	4
	.word	_Label_1181
	.word	-52
	.word	4
	.word	_Label_1182
	.word	-56
	.word	4
	.word	_Label_1183
	.word	-60
	.word	4
	.word	0
_Label_1169:
	.ascii	"HoareThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1170:
	.ascii	"Pself\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1182:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1183:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_HoareThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareThreadManager_3,r1
	push	r1
	mov	30,r1
_Label_2172:
	push	r0
	sub	r1,1,r1
	bne	_Label_2172
	mov	904,r13		! source line 904
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	912,r13		! source line 912
	mov	"\0\0SE",r10
!   _temp_1184 = &threadManagerLock
	load	[r14+8],r1
	add	r1,8372,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	917,r13		! source line 917
	mov	"\0\0WH",r10
_Label_1185:
	mov	917,r13		! source line 917
	mov	"\0\0SE",r10
!   _temp_1188 = &freeList
	load	[r14+8],r1
	add	r1,8336,r1
	store	r1,[r14+-104]
!   Send message IsEmpty
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1186 else goto _Label_1187
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1187
	jmp	_Label_1186
_Label_1186:
	mov	917,r13		! source line 917
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_1189 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_1189  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	918,r13		! source line 918
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1191 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1190 = *_temp_1191  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1190  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	919,r13		! source line 919
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0SE",r10
!   _temp_1192 = &threadManagerLock
	load	[r14+8],r1
	add	r1,8372,r1
	store	r1,[r14+-88]
!   _temp_1193 = &threadSem
	load	[r14+8],r1
	add	r1,8352,r1
	store	r1,[r14+-84]
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1195) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1196 = _temp_1195 + 8348
	load	[r14+-76],r1
	add	r1,8348,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1194 = *_temp_1196  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   _temp_1197 = &aThreadBecameFree
	load	[r14+8],r1
	add	r1,8392,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_1192  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1193  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1194  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+12]
!   Send message Wait
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1198 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1198  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	923,r13		! source line 923
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	925,r13		! source line 925
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_1199) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1185
_Label_1187:
! CALL STATEMENT...
!   _temp_1200 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1200  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1202 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1201 = *_temp_1202  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1201  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	932,r13		! source line 932
	mov	"\0\0AS",r10
	mov	932,r13		! source line 932
	mov	"\0\0SE",r10
!   _temp_1203 = &freeList
	load	[r14+8],r1
	add	r1,8336,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	933,r13		! source line 933
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1204 = th + 76
	load	[r14+-112],r1
	add	r1,76,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_1204 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-40],r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_1205 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1205  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	934,r13		! source line 934
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	935,r13		! source line 935
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1206) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	939,r13		! source line 939
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1210) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1211 = _temp_1210 + 8348
	load	[r14+-24],r1
	add	r1,8348,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1209 = *_temp_1211  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_1209 <= 0 then goto _Label_1208		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1208
!	jmp	_Label_1207
_Label_1207:
! THEN...
	mov	940,r13		! source line 940
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	940,r13		! source line 940
	mov	"\0\0SE",r10
!   _temp_1212 = &threadSem
	load	[r14+8],r1
	add	r1,8352,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
	jmp	_Label_1213
_Label_1208:
! ELSE...
	mov	942,r13		! source line 942
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	942,r13		! source line 942
	mov	"\0\0SE",r10
!   _temp_1214 = &threadManagerLock
	load	[r14+8],r1
	add	r1,8372,r1
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
_Label_1213:
! RETURN STATEMENT...
	mov	946,r13		! source line 946
	mov	"\0\0RE",r10
!   ReturnResult: th  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareThreadManager_3:
	.word	_sourceFileName
	.word	_Label_1215
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_1216
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1217
	.word	-12
	.word	4
	.word	_Label_1218
	.word	-16
	.word	4
	.word	_Label_1219
	.word	-20
	.word	4
	.word	_Label_1220
	.word	-24
	.word	4
	.word	_Label_1221
	.word	-28
	.word	4
	.word	_Label_1222
	.word	-32
	.word	4
	.word	_Label_1223
	.word	-36
	.word	4
	.word	_Label_1224
	.word	-40
	.word	4
	.word	_Label_1225
	.word	-44
	.word	4
	.word	_Label_1226
	.word	-48
	.word	4
	.word	_Label_1227
	.word	-52
	.word	4
	.word	_Label_1228
	.word	-56
	.word	4
	.word	_Label_1229
	.word	-60
	.word	4
	.word	_Label_1230
	.word	-64
	.word	4
	.word	_Label_1231
	.word	-68
	.word	4
	.word	_Label_1232
	.word	-72
	.word	4
	.word	_Label_1233
	.word	-76
	.word	4
	.word	_Label_1234
	.word	-80
	.word	4
	.word	_Label_1235
	.word	-84
	.word	4
	.word	_Label_1236
	.word	-88
	.word	4
	.word	_Label_1237
	.word	-92
	.word	4
	.word	_Label_1238
	.word	-96
	.word	4
	.word	_Label_1239
	.word	-100
	.word	4
	.word	_Label_1240
	.word	-104
	.word	4
	.word	_Label_1241
	.word	-108
	.word	4
	.word	_Label_1242
	.word	-112
	.word	4
	.word	0
_Label_1215:
	.ascii	"HoareThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1216:
	.ascii	"Pself\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1242:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_HoareThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareThreadManager_4,r1
	push	r1
	mov	23,r1
_Label_2173:
	push	r0
	sub	r1,1,r1
	bne	_Label_2173
	mov	952,r13		! source line 952
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	958,r13		! source line 958
	mov	"\0\0SE",r10
!   _temp_1243 = &threadManagerLock
	load	[r14+8],r1
	add	r1,8372,r1
	store	r1,[r14+-84]
!   Send message Lock
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	962,r13		! source line 962
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1244 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-80]
!   Data Move: *_temp_1244 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	963,r13		! source line 963
	mov	"\0\0SE",r10
!   _temp_1245 = &freeList
	load	[r14+8],r1
	add	r1,8336,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1246 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1246  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	967,r13		! source line 967
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1248 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_1247 = *_temp_1248  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1247  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	968,r13		! source line 968
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_1249 = &threadManagerLock
	load	[r14+8],r1
	add	r1,8372,r1
	store	r1,[r14+-60]
!   _temp_1250 = &threadSem
	load	[r14+8],r1
	add	r1,8352,r1
	store	r1,[r14+-56]
	load	[r14+8],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_1252) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1253 = _temp_1252 + 8348
	load	[r14+-48],r1
	add	r1,8348,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1251 = *_temp_1253  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   _temp_1254 = &aThreadBecameFree
	load	[r14+8],r1
	add	r1,8392,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_1249  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1250  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1251  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+12]
!   Send message Signal
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! CALL STATEMENT...
!   _temp_1255 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1255  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	972,r13		! source line 972
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1256) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1260) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1261 = _temp_1260 + 8348
	load	[r14+-24],r1
	add	r1,8348,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1259 = *_temp_1261  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_1259 <= 0 then goto _Label_1258		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1258
!	jmp	_Label_1257
_Label_1257:
! THEN...
	mov	978,r13		! source line 978
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0SE",r10
!   _temp_1262 = &threadSem
	load	[r14+8],r1
	add	r1,8352,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
	jmp	_Label_1263
_Label_1258:
! ELSE...
	mov	980,r13		! source line 980
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	980,r13		! source line 980
	mov	"\0\0SE",r10
!   _temp_1264 = &threadManagerLock
	load	[r14+8],r1
	add	r1,8372,r1
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
_Label_1263:
! RETURN STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1265
	.word	8		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_1266
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1267
	.word	12
	.word	4
	.word	_Label_1268
	.word	-12
	.word	4
	.word	_Label_1269
	.word	-16
	.word	4
	.word	_Label_1270
	.word	-20
	.word	4
	.word	_Label_1271
	.word	-24
	.word	4
	.word	_Label_1272
	.word	-28
	.word	4
	.word	_Label_1273
	.word	-32
	.word	4
	.word	_Label_1274
	.word	-36
	.word	4
	.word	_Label_1275
	.word	-40
	.word	4
	.word	_Label_1276
	.word	-44
	.word	4
	.word	_Label_1277
	.word	-48
	.word	4
	.word	_Label_1278
	.word	-52
	.word	4
	.word	_Label_1279
	.word	-56
	.word	4
	.word	_Label_1280
	.word	-60
	.word	4
	.word	_Label_1281
	.word	-64
	.word	4
	.word	_Label_1282
	.word	-68
	.word	4
	.word	_Label_1283
	.word	-72
	.word	4
	.word	_Label_1284
	.word	-76
	.word	4
	.word	_Label_1285
	.word	-80
	.word	4
	.word	_Label_1286
	.word	-84
	.word	4
	.word	0
_Label_1265:
	.ascii	"HoareThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1266:
	.ascii	"Pself\0"
	.align
_Label_1267:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1287
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1287:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1288
	.word	_sourceFileName
	.word	261		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1288:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_2174:
	push	r0
	sub	r1,1,r1
	bne	_Label_2174
	mov	1124,r13		! source line 1124
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1125,r13		! source line 1125
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	1126,r13		! source line 1126
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	1127,r13		! source line 1127
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_2175:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2175
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	1128,r13		! source line 1128
	mov	"\0\0SE",r10
!   _temp_1290 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	1128,r13		! source line 1128
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1291
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1292
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1293
	.word	-12
	.word	4
	.word	_Label_1294
	.word	-16
	.word	4
	.word	0
_Label_1291:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1292:
	.ascii	"Pself\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_2176:
	push	r0
	sub	r1,1,r1
	bne	_Label_2176
	mov	1138,r13		! source line 1138
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1143,r13		! source line 1143
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1295) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0SE",r10
!   _temp_1296 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1297 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1297  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1145,r13		! source line 1145
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1146,r13		! source line 1146
	mov	"\0\0CA",r10
	call	_function_150_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	1156,r13		! source line 1156
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1156,r13		! source line 1156
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_1298
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1299
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1300
	.word	-12
	.word	4
	.word	_Label_1301
	.word	-16
	.word	4
	.word	_Label_1302
	.word	-20
	.word	4
	.word	0
_Label_1298:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1299:
	.ascii	"Pself\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_2177:
	push	r0
	sub	r1,1,r1
	bne	_Label_2177
	mov	1161,r13		! source line 1161
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1303 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1303  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1165,r13		! source line 1165
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1304  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1166,r13		! source line 1166
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1305 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1305  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1167,r13		! source line 1167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1168,r13		! source line 1168
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1306 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1306  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1169,r13		! source line 1169
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1170,r13		! source line 1170
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1308		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1308
!	jmp	_Label_1307
_Label_1307:
! THEN...
	mov	1171,r13		! source line 1171
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1309 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1309  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1171,r13		! source line 1171
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1310
_Label_1308:
! ELSE...
	mov	1172,r13		! source line 1172
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1172,r13		! source line 1172
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1312		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1312
!	jmp	_Label_1311
_Label_1311:
! THEN...
	mov	1173,r13		! source line 1173
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1313 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1313  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1173,r13		! source line 1173
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1314
_Label_1312:
! ELSE...
	mov	1174,r13		! source line 1174
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1174,r13		! source line 1174
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1316		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1316
!	jmp	_Label_1315
_Label_1315:
! THEN...
	mov	1175,r13		! source line 1175
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1317 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1317  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1175,r13		! source line 1175
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1318
_Label_1316:
! ELSE...
	mov	1177,r13		! source line 1177
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1319 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1319  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1177,r13		! source line 1177
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1318:
! END IF...
_Label_1314:
! END IF...
_Label_1310:
! CALL STATEMENT...
!   _temp_1320 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1320  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1179,r13		! source line 1179
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1180,r13		! source line 1180
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1321 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1321  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1181,r13		! source line 1181
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1182,r13		! source line 1182
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1183,r13		! source line 1183
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1183,r13		! source line 1183
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_1322
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1323
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1324
	.word	-12
	.word	4
	.word	_Label_1325
	.word	-16
	.word	4
	.word	_Label_1326
	.word	-20
	.word	4
	.word	_Label_1327
	.word	-24
	.word	4
	.word	_Label_1328
	.word	-28
	.word	4
	.word	_Label_1329
	.word	-32
	.word	4
	.word	_Label_1330
	.word	-36
	.word	4
	.word	_Label_1331
	.word	-40
	.word	4
	.word	_Label_1332
	.word	-44
	.word	4
	.word	_Label_1333
	.word	-48
	.word	4
	.word	0
_Label_1322:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1323:
	.ascii	"Pself\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1334
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1334:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1335
	.word	_sourceFileName
	.word	281		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1335:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	386,r1
_Label_2178:
	push	r0
	sub	r1,1,r1
	bne	_Label_2178
	mov	1194,r13		! source line 1194
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1203,r13		! source line 1203
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! ASSIGNMENT STATEMENT...
	mov	1206,r13		! source line 1206
	mov	"\0\0AS",r10
!   _temp_1337 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1536]
!   NEW ARRAY Constructor...
!   _temp_1339 = &_temp_1338
	add	r14,-1532,r1
	store	r1,[r14+-288]
!   _temp_1339 = _temp_1339 + 4
	load	[r14+-288],r1
	add	r1,4,r1
	store	r1,[r14+-288]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1341 = zeros  (sizeInBytes=124)
	add	r14,-280,r4
	mov	31,r3
_Label_2179:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2179
!   _temp_1341 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-280]
	mov	10,r1
	store	r1,[r14+-284]
_Label_1343:
!   Data Move: *_temp_1339 = _temp_1341  (sizeInBytes=124)
	add	r14,-280,r5
	load	[r14+-288],r4
	mov	31,r3
_Label_2180:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2180
!   _temp_1339 = _temp_1339 + 124
	load	[r14+-288],r1
	add	r1,124,r1
	store	r1,[r14+-288]
!   _temp_1340 = _temp_1340 + -1
	load	[r14+-284],r1
	add	r1,-1,r1
	store	r1,[r14+-284]
!   if intNotZero (_temp_1340) then goto _Label_1343
	load	[r14+-284],r1
	cmp	r1,r0
	bne	_Label_1343
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1532]
!   _temp_1344 = &_temp_1338
	add	r14,-1532,r1
	store	r1,[r14+-152]
!   make sure array has size 10
	load	[r14+-1536],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2181
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2181:
!   make sure array has size 10
	load	[r14+-152],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1337 = *_temp_1344  (sizeInBytes=1244)
	load	[r14+-152],r5
	load	[r14+-1536],r4
	mov	311,r3
_Label_2182:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2182
! ASSIGNMENT STATEMENT...
	mov	1209,r13		! source line 1209
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	1210,r13		! source line 1210
	mov	"\0\0SE",r10
!   _temp_1346 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-144]
!   Send message Init
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1213,r13		! source line 1213
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! SEND STATEMENT...
	mov	1214,r13		! source line 1214
	mov	"\0\0SE",r10
!   _temp_1348 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-136]
!   Send message Init
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1217,r13		! source line 1217
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! SEND STATEMENT...
	mov	1218,r13		! source line 1218
	mov	"\0\0SE",r10
!   _temp_1350 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-128]
!   Send message Init
	load	[r14+-128],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1221,r13		! source line 1221
	mov	"\0\0AS",r10
!   nextPid = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! SEND STATEMENT...
	mov	1224,r13		! source line 1224
	mov	"\0\0SE",r10
!   _temp_1351 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-124]
!   Move address of _temp_1351 [0 ] into _temp_1352
!     make sure index expr is >= 0
	mov	0,r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1225,r13		! source line 1225
	mov	"\0\0SE",r10
!   _temp_1353 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Move address of _temp_1353 [1 ] into _temp_1354
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-116],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-112]
!   Send message Init
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1226,r13		! source line 1226
	mov	"\0\0SE",r10
!   _temp_1355 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Move address of _temp_1355 [2 ] into _temp_1356
!     make sure index expr is >= 0
	mov	2,r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-104]
!   Send message Init
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1227,r13		! source line 1227
	mov	"\0\0SE",r10
!   _temp_1357 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Move address of _temp_1357 [3 ] into _temp_1358
!     make sure index expr is >= 0
	mov	3,r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1228,r13		! source line 1228
	mov	"\0\0SE",r10
!   _temp_1359 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Move address of _temp_1359 [4 ] into _temp_1360
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   Send message Init
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1229,r13		! source line 1229
	mov	"\0\0SE",r10
!   _temp_1361 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-84]
!   Move address of _temp_1361 [5 ] into _temp_1362
!     make sure index expr is >= 0
	mov	5,r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-80]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1230,r13		! source line 1230
	mov	"\0\0SE",r10
!   _temp_1363 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_1363 [6 ] into _temp_1364
!     make sure index expr is >= 0
	mov	6,r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1231,r13		! source line 1231
	mov	"\0\0SE",r10
!   _temp_1365 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-68]
!   Move address of _temp_1365 [7 ] into _temp_1366
!     make sure index expr is >= 0
	mov	7,r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1232,r13		! source line 1232
	mov	"\0\0SE",r10
!   _temp_1367 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Move address of _temp_1367 [8 ] into _temp_1368
!     make sure index expr is >= 0
	mov	8,r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0SE",r10
!   _temp_1369 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_1369 [9 ] into _temp_1370
!     make sure index expr is >= 0
	mov	9,r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1236,r13		! source line 1236
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1375 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1376 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1375  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-1544]
_Label_1371:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1376 then goto _Label_1374		
	load	[r14+-1544],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1374
_Label_1372:
	mov	1236,r13		! source line 1236
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1237,r13		! source line 1237
	mov	"\0\0AS",r10
!   _temp_1377 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1377 [i ] into _temp_1378
!     make sure index expr is >= 0
	load	[r14+-1544],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1379 = _temp_1378 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1379 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1238,r13		! source line 1238
	mov	"\0\0SE",r10
!   _temp_1381 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1381 [i ] into _temp_1382
!     make sure index expr is >= 0
	load	[r14+-1544],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1380 = _temp_1382		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1383 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1380  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1373:
!   i = i + 1
	load	[r14+-1544],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1544]
	jmp	_Label_1371
! END FOR
_Label_1374:
! RETURN STATEMENT...
	mov	1236,r13		! source line 1236
	mov	"\0\0RE",r10
	add	r15,1548,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1384
	.word	4		! total size of parameters
	.word	1544		! frame size = 1544
	.word	_Label_1385
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1386
	.word	-12
	.word	4
	.word	_Label_1387
	.word	-16
	.word	4
	.word	_Label_1388
	.word	-20
	.word	4
	.word	_Label_1389
	.word	-24
	.word	4
	.word	_Label_1390
	.word	-28
	.word	4
	.word	_Label_1391
	.word	-32
	.word	4
	.word	_Label_1392
	.word	-36
	.word	4
	.word	_Label_1393
	.word	-40
	.word	4
	.word	_Label_1394
	.word	-44
	.word	4
	.word	_Label_1395
	.word	-48
	.word	4
	.word	_Label_1396
	.word	-52
	.word	4
	.word	_Label_1397
	.word	-56
	.word	4
	.word	_Label_1398
	.word	-60
	.word	4
	.word	_Label_1399
	.word	-64
	.word	4
	.word	_Label_1400
	.word	-68
	.word	4
	.word	_Label_1401
	.word	-72
	.word	4
	.word	_Label_1402
	.word	-76
	.word	4
	.word	_Label_1403
	.word	-80
	.word	4
	.word	_Label_1404
	.word	-84
	.word	4
	.word	_Label_1405
	.word	-88
	.word	4
	.word	_Label_1406
	.word	-92
	.word	4
	.word	_Label_1407
	.word	-96
	.word	4
	.word	_Label_1408
	.word	-100
	.word	4
	.word	_Label_1409
	.word	-104
	.word	4
	.word	_Label_1410
	.word	-108
	.word	4
	.word	_Label_1411
	.word	-112
	.word	4
	.word	_Label_1412
	.word	-116
	.word	4
	.word	_Label_1413
	.word	-120
	.word	4
	.word	_Label_1414
	.word	-124
	.word	4
	.word	_Label_1415
	.word	-128
	.word	4
	.word	_Label_1416
	.word	-132
	.word	4
	.word	_Label_1417
	.word	-136
	.word	4
	.word	_Label_1418
	.word	-140
	.word	4
	.word	_Label_1419
	.word	-144
	.word	4
	.word	_Label_1420
	.word	-148
	.word	4
	.word	_Label_1421
	.word	-152
	.word	4
	.word	_Label_1422
	.word	-156
	.word	4
	.word	_Label_1423
	.word	-280
	.word	124
	.word	_Label_1424
	.word	-284
	.word	4
	.word	_Label_1425
	.word	-288
	.word	4
	.word	_Label_1426
	.word	-1532
	.word	1244
	.word	_Label_1427
	.word	-1536
	.word	4
	.word	_Label_1428
	.word	-1540
	.word	4
	.word	_Label_1429
	.word	-1544
	.word	4
	.word	0
_Label_1384:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1385:
	.ascii	"Pself\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1429:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_2183:
	push	r0
	sub	r1,1,r1
	bne	_Label_2183
	mov	1245,r13		! source line 1245
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1252,r13		! source line 1252
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1252,r13		! source line 1252
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1430 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1430  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1253,r13		! source line 1253
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1254,r13		! source line 1254
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1435 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1436 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1435  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1431:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1436 then goto _Label_1434		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1434
_Label_1432:
	mov	1254,r13		! source line 1254
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1437 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1437  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1255,r13		! source line 1255
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1256,r13		! source line 1256
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1438 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1438  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1257,r13		! source line 1257
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1258,r13		! source line 1258
	mov	"\0\0SE",r10
!   _temp_1439 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1439 [i ] into _temp_1440
!     make sure index expr is >= 0
	load	[r14+-52],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1433:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1431
! END FOR
_Label_1434:
! CALL STATEMENT...
!   _temp_1441 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1441  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1260,r13		! source line 1260
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1261,r13		! source line 1261
	mov	"\0\0SE",r10
!   _temp_1442 = _function_149_PrintObjectAddr
	set	_function_149_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1443 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1442  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1262,r13		! source line 1262
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1263,r13		! source line 1263
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1263,r13		! source line 1263
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	1263,r13		! source line 1263
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1444
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1445
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1446
	.word	-12
	.word	4
	.word	_Label_1447
	.word	-16
	.word	4
	.word	_Label_1448
	.word	-20
	.word	4
	.word	_Label_1449
	.word	-24
	.word	4
	.word	_Label_1450
	.word	-28
	.word	4
	.word	_Label_1451
	.word	-32
	.word	4
	.word	_Label_1452
	.word	-36
	.word	4
	.word	_Label_1453
	.word	-40
	.word	4
	.word	_Label_1454
	.word	-44
	.word	4
	.word	_Label_1455
	.word	-48
	.word	4
	.word	_Label_1456
	.word	-52
	.word	4
	.word	_Label_1457
	.word	-56
	.word	4
	.word	0
_Label_1444:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1445:
	.ascii	"Pself\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1456:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1457:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_2184:
	push	r0
	sub	r1,1,r1
	bne	_Label_2184
	mov	1268,r13		! source line 1268
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1275,r13		! source line 1275
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1275,r13		! source line 1275
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1458 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1458  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1276,r13		! source line 1276
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1277,r13		! source line 1277
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1463 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1464 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1463  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1459:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1464 then goto _Label_1462		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1462
_Label_1460:
	mov	1277,r13		! source line 1277
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1465 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1465  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1278,r13		! source line 1278
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1279,r13		! source line 1279
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	1280,r13		! source line 1280
	mov	"\0\0SE",r10
!   _temp_1466 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1466 [i ] into _temp_1467
!     make sure index expr is >= 0
	load	[r14+-48],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1461:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1459
! END FOR
_Label_1462:
! CALL STATEMENT...
!   _temp_1468 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1468  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1282,r13		! source line 1282
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1283,r13		! source line 1283
	mov	"\0\0SE",r10
!   _temp_1469 = _function_149_PrintObjectAddr
	set	_function_149_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1470 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1469  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1284,r13		! source line 1284
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1285,r13		! source line 1285
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1285,r13		! source line 1285
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	1285,r13		! source line 1285
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1471
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1472
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1473
	.word	-12
	.word	4
	.word	_Label_1474
	.word	-16
	.word	4
	.word	_Label_1475
	.word	-20
	.word	4
	.word	_Label_1476
	.word	-24
	.word	4
	.word	_Label_1477
	.word	-28
	.word	4
	.word	_Label_1478
	.word	-32
	.word	4
	.word	_Label_1479
	.word	-36
	.word	4
	.word	_Label_1480
	.word	-40
	.word	4
	.word	_Label_1481
	.word	-44
	.word	4
	.word	_Label_1482
	.word	-48
	.word	4
	.word	_Label_1483
	.word	-52
	.word	4
	.word	0
_Label_1471:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1472:
	.ascii	"Pself\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1475:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1466\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1482:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1483:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	11,r1
_Label_2185:
	push	r0
	sub	r1,1,r1
	bne	_Label_2185
	mov	1290,r13		! source line 1290
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1298,r13		! source line 1298
	mov	"\0\0SE",r10
!   _temp_1484 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1302,r13		! source line 1302
	mov	"\0\0WH",r10
_Label_1485:
	mov	1302,r13		! source line 1302
	mov	"\0\0SE",r10
!   _temp_1488 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1486 else goto _Label_1487
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1487
	jmp	_Label_1486
_Label_1486:
	mov	1302,r13		! source line 1302
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1303,r13		! source line 1303
	mov	"\0\0SE",r10
!   _temp_1489 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1490 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1489  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1485
_Label_1487:
! ASSIGNMENT STATEMENT...
	mov	1310,r13		! source line 1310
	mov	"\0\0AS",r10
	mov	1310,r13		! source line 1310
	mov	"\0\0SE",r10
!   _temp_1491 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=p  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1311,r13		! source line 1311
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1492 = p + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1492 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1312,r13		! source line 1312
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1493 = p + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1493 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1313,r13		! source line 1313
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1312],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1312]
! SEND STATEMENT...
	mov	1315,r13		! source line 1315
	mov	"\0\0SE",r10
!   _temp_1494 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	1318,r13		! source line 1318
	mov	"\0\0RE",r10
!   ReturnResult: p  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1495
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1496
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1497
	.word	-12
	.word	4
	.word	_Label_1498
	.word	-16
	.word	4
	.word	_Label_1499
	.word	-20
	.word	4
	.word	_Label_1500
	.word	-24
	.word	4
	.word	_Label_1501
	.word	-28
	.word	4
	.word	_Label_1502
	.word	-32
	.word	4
	.word	_Label_1503
	.word	-36
	.word	4
	.word	_Label_1504
	.word	-40
	.word	4
	.word	_Label_1505
	.word	-44
	.word	4
	.word	0
_Label_1495:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1496:
	.ascii	"Pself\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1505:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	8,r1
_Label_2186:
	push	r0
	sub	r1,1,r1
	bne	_Label_2186
	mov	1323,r13		! source line 1323
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1330,r13		! source line 1330
	mov	"\0\0SE",r10
!   _temp_1506 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	1334,r13		! source line 1334
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1507 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1507 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1335,r13		! source line 1335
	mov	"\0\0SE",r10
!   _temp_1508 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1339,r13		! source line 1339
	mov	"\0\0SE",r10
!   _temp_1509 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1510 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1509  sizeInBytes=4
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
	mov	1342,r13		! source line 1342
	mov	"\0\0SE",r10
!   _temp_1511 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	1342,r13		! source line 1342
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1512
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1513
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1514
	.word	12
	.word	4
	.word	_Label_1515
	.word	-12
	.word	4
	.word	_Label_1516
	.word	-16
	.word	4
	.word	_Label_1517
	.word	-20
	.word	4
	.word	_Label_1518
	.word	-24
	.word	4
	.word	_Label_1519
	.word	-28
	.word	4
	.word	_Label_1520
	.word	-32
	.word	4
	.word	0
_Label_1512:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1513:
	.ascii	"Pself\0"
	.align
_Label_1514:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1521
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1521:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1522
	.word	_sourceFileName
	.word	304		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1522:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_2187:
	push	r0
	sub	r1,1,r1
	bne	_Label_2187
	mov	1375,r13		! source line 1375
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1523 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1523  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1381,r13		! source line 1381
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1382,r13		! source line 1382
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1383,r13		! source line 1383
	mov	"\0\0SE",r10
!   _temp_1525 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=27  sizeInBytes=4
	mov	27,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1384,r13		! source line 1384
	mov	"\0\0AS",r10
!   numberFreeFrames = 27		(4 bytes)
	mov	27,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1386,r13		! source line 1386
	mov	"\0\0SE",r10
!   _temp_1527 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1387,r13		! source line 1387
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0SE",r10
!   _temp_1529 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1394,r13		! source line 1394
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1534 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1535 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1534  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1530:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1535 then goto _Label_1533		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1533
_Label_1531:
	mov	1394,r13		! source line 1394
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1538 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1538) then goto _Label_1537
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1537
!	jmp	_Label_1536
_Label_1536:
! THEN...
	mov	1398,r13		! source line 1398
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1539 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1539  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1398,r13		! source line 1398
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1537:
!   Increment the FOR-LOOP index variable and jump back
_Label_1532:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1530
! END FOR
_Label_1533:
! RETURN STATEMENT...
	mov	1394,r13		! source line 1394
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1540
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1541
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1542
	.word	-12
	.word	4
	.word	_Label_1543
	.word	-16
	.word	4
	.word	_Label_1544
	.word	-20
	.word	4
	.word	_Label_1545
	.word	-24
	.word	4
	.word	_Label_1546
	.word	-28
	.word	4
	.word	_Label_1547
	.word	-32
	.word	4
	.word	_Label_1548
	.word	-36
	.word	4
	.word	_Label_1549
	.word	-40
	.word	4
	.word	_Label_1550
	.word	-44
	.word	4
	.word	_Label_1551
	.word	-48
	.word	4
	.word	_Label_1552
	.word	-52
	.word	4
	.word	_Label_1553
	.word	-56
	.word	4
	.word	0
_Label_1540:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1541:
	.ascii	"Pself\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1553:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_2188:
	push	r0
	sub	r1,1,r1
	bne	_Label_2188
	mov	1405,r13		! source line 1405
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1409,r13		! source line 1409
	mov	"\0\0SE",r10
!   _temp_1554 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1555 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1555  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1410,r13		! source line 1410
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1556 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1556  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1411,r13		! source line 1411
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1557 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1557  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1412,r13		! source line 1412
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1413,r13		! source line 1413
	mov	"\0\0SE",r10
!   _temp_1558 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1414,r13		! source line 1414
	mov	"\0\0SE",r10
!   _temp_1559 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1414,r13		! source line 1414
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1560
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1561
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1562
	.word	-12
	.word	4
	.word	_Label_1563
	.word	-16
	.word	4
	.word	_Label_1564
	.word	-20
	.word	4
	.word	_Label_1565
	.word	-24
	.word	4
	.word	_Label_1566
	.word	-28
	.word	4
	.word	_Label_1567
	.word	-32
	.word	4
	.word	0
_Label_1560:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1561:
	.ascii	"Pself\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1559\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1558\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1557\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1556\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1555\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_2189:
	push	r0
	sub	r1,1,r1
	bne	_Label_2189
	mov	1419,r13		! source line 1419
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1427,r13		! source line 1427
	mov	"\0\0SE",r10
!   _temp_1568 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1430,r13		! source line 1430
	mov	"\0\0WH",r10
_Label_1569:
!   if numberFreeFrames >= 1 then goto _Label_1571		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1571
!	jmp	_Label_1570
_Label_1570:
	mov	1430,r13		! source line 1430
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1431,r13		! source line 1431
	mov	"\0\0SE",r10
!   _temp_1572 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1573 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1572  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1569
_Label_1571:
! ASSIGNMENT STATEMENT...
	mov	1435,r13		! source line 1435
	mov	"\0\0AS",r10
	mov	1435,r13		! source line 1435
	mov	"\0\0SE",r10
!   _temp_1574 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1436,r13		! source line 1436
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1439,r13		! source line 1439
	mov	"\0\0SE",r10
!   _temp_1575 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0AS",r10
!   _temp_1576 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1576		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1577
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1578
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1579
	.word	-12
	.word	4
	.word	_Label_1580
	.word	-16
	.word	4
	.word	_Label_1581
	.word	-20
	.word	4
	.word	_Label_1582
	.word	-24
	.word	4
	.word	_Label_1583
	.word	-28
	.word	4
	.word	_Label_1584
	.word	-32
	.word	4
	.word	_Label_1585
	.word	-36
	.word	4
	.word	_Label_1586
	.word	-40
	.word	4
	.word	0
_Label_1577:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1578:
	.ascii	"Pself\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1575\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1574\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1573\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
_Label_1585:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1586:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	15,r1
_Label_2190:
	push	r0
	sub	r1,1,r1
	bne	_Label_2190
	mov	1449,r13		! source line 1449
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0SE",r10
!   _temp_1587 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1460,r13		! source line 1460
	mov	"\0\0WH",r10
_Label_1588:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1590		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1590
!	jmp	_Label_1589
_Label_1589:
	mov	1460,r13		! source line 1460
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1461,r13		! source line 1461
	mov	"\0\0SE",r10
!   _temp_1591 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1592 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1591  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1588
_Label_1590:
! FOR STATEMENT...
	mov	1465,r13		! source line 1465
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1597 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1598 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1597  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1593:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1598 then goto _Label_1596		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1596
_Label_1594:
	mov	1465,r13		! source line 1465
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1466,r13		! source line 1466
	mov	"\0\0AS",r10
	mov	1466,r13		! source line 1466
	mov	"\0\0SE",r10
!   _temp_1599 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message FindZeroAndSet
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=pageOffset  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	1468,r13		! source line 1468
	mov	"\0\0AS",r10
!   _temp_1600 = pageOffset * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1600		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1470,r13		! source line 1470
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1595:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1593
! END FOR
_Label_1596:
! ASSIGNMENT STATEMENT...
	mov	1475,r13		! source line 1475
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1478,r13		! source line 1478
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1601 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1601 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1481,r13		! source line 1481
	mov	"\0\0SE",r10
!   _temp_1602 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1481,r13		! source line 1481
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1603
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1604
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1605
	.word	12
	.word	4
	.word	_Label_1606
	.word	16
	.word	4
	.word	_Label_1607
	.word	-12
	.word	4
	.word	_Label_1608
	.word	-16
	.word	4
	.word	_Label_1609
	.word	-20
	.word	4
	.word	_Label_1610
	.word	-24
	.word	4
	.word	_Label_1611
	.word	-28
	.word	4
	.word	_Label_1612
	.word	-32
	.word	4
	.word	_Label_1613
	.word	-36
	.word	4
	.word	_Label_1614
	.word	-40
	.word	4
	.word	_Label_1615
	.word	-44
	.word	4
	.word	_Label_1616
	.word	-48
	.word	4
	.word	_Label_1617
	.word	-52
	.word	4
	.word	_Label_1618
	.word	-56
	.word	4
	.word	0
_Label_1603:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1604:
	.ascii	"Pself\0"
	.align
_Label_1605:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1606:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1587\0"
	.align
_Label_1616:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1617:
	.byte	'I'
	.ascii	"pageOffset\0"
	.align
_Label_1618:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	17,r1
_Label_2191:
	push	r0
	sub	r1,1,r1
	bne	_Label_2191
	mov	1486,r13		! source line 1486
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1495,r13		! source line 1495
	mov	"\0\0SE",r10
!   _temp_1619 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   Send message Lock
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1624 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1627 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1626 = *_temp_1627  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_1625 = _temp_1626 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1624  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_1620:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1625 then goto _Label_1623		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1623
_Label_1621:
	mov	1498,r13		! source line 1498
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0AS",r10
	mov	1499,r13		! source line 1499
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! ASSIGNMENT STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0AS",r10
!   _temp_1628 = frameAddr - 1048576		(int)
	load	[r14+-64],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitNumber = _temp_1628 div 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0SE",r10
!   _temp_1629 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=bitNumber  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1622:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1620
! END FOR
_Label_1623:
! ASSIGNMENT STATEMENT...
	mov	1505,r13		! source line 1505
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1631 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1630 = *_temp_1631  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_1630		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1508,r13		! source line 1508
	mov	"\0\0SE",r10
!   _temp_1632 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1633 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1632  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	1511,r13		! source line 1511
	mov	"\0\0SE",r10
!   _temp_1634 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1511,r13		! source line 1511
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1635
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1636
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1637
	.word	12
	.word	4
	.word	_Label_1638
	.word	-12
	.word	4
	.word	_Label_1639
	.word	-16
	.word	4
	.word	_Label_1640
	.word	-20
	.word	4
	.word	_Label_1641
	.word	-24
	.word	4
	.word	_Label_1642
	.word	-28
	.word	4
	.word	_Label_1643
	.word	-32
	.word	4
	.word	_Label_1644
	.word	-36
	.word	4
	.word	_Label_1645
	.word	-40
	.word	4
	.word	_Label_1646
	.word	-44
	.word	4
	.word	_Label_1647
	.word	-48
	.word	4
	.word	_Label_1648
	.word	-52
	.word	4
	.word	_Label_1649
	.word	-56
	.word	4
	.word	_Label_1650
	.word	-60
	.word	4
	.word	_Label_1651
	.word	-64
	.word	4
	.word	_Label_1652
	.word	-68
	.word	4
	.word	0
_Label_1635:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1636:
	.ascii	"Pself\0"
	.align
_Label_1637:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1650:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1651:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1652:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1653
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1653:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1654
	.word	_sourceFileName
	.word	323		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1654:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_2192:
	push	r0
	sub	r1,1,r1
	bne	_Label_2192
	mov	1522,r13		! source line 1522
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1526,r13		! source line 1526
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0AS",r10
!   _temp_1655 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1657 = &_temp_1656
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1657 = _temp_1657 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1659:
!   Data Move: *_temp_1657 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1657 = _temp_1657 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1658 = _temp_1658 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1658) then goto _Label_1659
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1659
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1660 = &_temp_1656
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_2193
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2193:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1655 = *_temp_1660  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_2194:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2194
! RETURN STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1661
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1662
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1663
	.word	-12
	.word	4
	.word	_Label_1664
	.word	-16
	.word	4
	.word	_Label_1665
	.word	-20
	.word	4
	.word	_Label_1666
	.word	-104
	.word	84
	.word	_Label_1667
	.word	-108
	.word	4
	.word	0
_Label_1661:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1662:
	.ascii	"Pself\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_2195:
	push	r0
	sub	r1,1,r1
	bne	_Label_2195
	mov	1532,r13		! source line 1532
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1668 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1668  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1537,r13		! source line 1537
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1669 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1669  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1538,r13		! source line 1538
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1539,r13		! source line 1539
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1674 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1675 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1674  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1670:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1675 then goto _Label_1673		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1673
_Label_1671:
	mov	1539,r13		! source line 1539
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1676 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1676  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1540,r13		! source line 1540
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1678 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1678 [i ] into _temp_1679
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
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
	store	r2,[r14+-136]
!   _temp_1677 = _temp_1679		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1677  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1541,r13		! source line 1541
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1680 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1680  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1542,r13		! source line 1542
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1682 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1682 [i ] into _temp_1683
!     make sure index expr is >= 0
	load	[r14+-168],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_1681 = *_temp_1683  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1681  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1543,r13		! source line 1543
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1684 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1684  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1544,r13		! source line 1544
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1685 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1685  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1545,r13		! source line 1545
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1686 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1686  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1546,r13		! source line 1546
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1547,r13		! source line 1547
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1688) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1687  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1687  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1547,r13		! source line 1547
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1689 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1689  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1548,r13		! source line 1548
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1549,r13		! source line 1549
	mov	"\0\0IF",r10
	mov	1549,r13		! source line 1549
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1693) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1692  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1692) then goto _Label_1691
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1691
!	jmp	_Label_1690
_Label_1690:
! THEN...
	mov	1550,r13		! source line 1550
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1550,r13		! source line 1550
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1695) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1694  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1694  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1550,r13		! source line 1550
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1696
_Label_1691:
! ELSE...
	mov	1552,r13		! source line 1552
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1697 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1697  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1552,r13		! source line 1552
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1696:
! CALL STATEMENT...
!   _temp_1698 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1698  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1554,r13		! source line 1554
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1555,r13		! source line 1555
	mov	"\0\0IF",r10
	mov	1555,r13		! source line 1555
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1701) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1699 else goto _Label_1700
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1700
	jmp	_Label_1699
_Label_1699:
! THEN...
	mov	1556,r13		! source line 1556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1702 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1702  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1556,r13		! source line 1556
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1703
_Label_1700:
! ELSE...
	mov	1558,r13		! source line 1558
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1704 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1704  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1558,r13		! source line 1558
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1703:
! CALL STATEMENT...
!   _temp_1705 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1705  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1560,r13		! source line 1560
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1561,r13		! source line 1561
	mov	"\0\0IF",r10
	mov	1561,r13		! source line 1561
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1708) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1706 else goto _Label_1707
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1707
	jmp	_Label_1706
_Label_1706:
! THEN...
	mov	1562,r13		! source line 1562
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1709 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1709  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1562,r13		! source line 1562
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1710
_Label_1707:
! ELSE...
	mov	1564,r13		! source line 1564
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1711 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1711  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1564,r13		! source line 1564
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1710:
! CALL STATEMENT...
!   _temp_1712 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1712  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1566,r13		! source line 1566
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1567,r13		! source line 1567
	mov	"\0\0IF",r10
	mov	1567,r13		! source line 1567
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1715) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1713 else goto _Label_1714
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1714
	jmp	_Label_1713
_Label_1713:
! THEN...
	mov	1568,r13		! source line 1568
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1716 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1716  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1568,r13		! source line 1568
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1717
_Label_1714:
! ELSE...
	mov	1570,r13		! source line 1570
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1718 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1718  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1570,r13		! source line 1570
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1717:
! CALL STATEMENT...
!   _temp_1719 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1719  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1572,r13		! source line 1572
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1573,r13		! source line 1573
	mov	"\0\0IF",r10
	mov	1573,r13		! source line 1573
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1722) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1720 else goto _Label_1721
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1721
	jmp	_Label_1720
_Label_1720:
! THEN...
	mov	1574,r13		! source line 1574
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1723 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1723  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1574,r13		! source line 1574
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1724
_Label_1721:
! ELSE...
	mov	1576,r13		! source line 1576
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1725 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1725  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1576,r13		! source line 1576
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1724:
! CALL STATEMENT...
!   Call the function
	mov	1578,r13		! source line 1578
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1672:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1670
! END FOR
_Label_1673:
! RETURN STATEMENT...
	mov	1539,r13		! source line 1539
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1726
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1727
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1728
	.word	-12
	.word	4
	.word	_Label_1729
	.word	-16
	.word	4
	.word	_Label_1730
	.word	-20
	.word	4
	.word	_Label_1731
	.word	-24
	.word	4
	.word	_Label_1732
	.word	-28
	.word	4
	.word	_Label_1733
	.word	-32
	.word	4
	.word	_Label_1734
	.word	-36
	.word	4
	.word	_Label_1735
	.word	-40
	.word	4
	.word	_Label_1736
	.word	-44
	.word	4
	.word	_Label_1737
	.word	-48
	.word	4
	.word	_Label_1738
	.word	-52
	.word	4
	.word	_Label_1739
	.word	-56
	.word	4
	.word	_Label_1740
	.word	-60
	.word	4
	.word	_Label_1741
	.word	-64
	.word	4
	.word	_Label_1742
	.word	-68
	.word	4
	.word	_Label_1743
	.word	-72
	.word	4
	.word	_Label_1744
	.word	-76
	.word	4
	.word	_Label_1745
	.word	-80
	.word	4
	.word	_Label_1746
	.word	-84
	.word	4
	.word	_Label_1747
	.word	-88
	.word	4
	.word	_Label_1748
	.word	-92
	.word	4
	.word	_Label_1749
	.word	-96
	.word	4
	.word	_Label_1750
	.word	-100
	.word	4
	.word	_Label_1751
	.word	-104
	.word	4
	.word	_Label_1752
	.word	-108
	.word	4
	.word	_Label_1753
	.word	-112
	.word	4
	.word	_Label_1754
	.word	-116
	.word	4
	.word	_Label_1755
	.word	-120
	.word	4
	.word	_Label_1756
	.word	-124
	.word	4
	.word	_Label_1757
	.word	-128
	.word	4
	.word	_Label_1758
	.word	-132
	.word	4
	.word	_Label_1759
	.word	-136
	.word	4
	.word	_Label_1760
	.word	-140
	.word	4
	.word	_Label_1761
	.word	-144
	.word	4
	.word	_Label_1762
	.word	-148
	.word	4
	.word	_Label_1763
	.word	-152
	.word	4
	.word	_Label_1764
	.word	-156
	.word	4
	.word	_Label_1765
	.word	-160
	.word	4
	.word	_Label_1766
	.word	-164
	.word	4
	.word	_Label_1767
	.word	-168
	.word	4
	.word	0
_Label_1726:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1727:
	.ascii	"Pself\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1767:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_2196:
	push	r0
	sub	r1,1,r1
	bne	_Label_2196
	mov	1584,r13		! source line 1584
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1589,r13		! source line 1589
	mov	"\0\0RE",r10
!   _temp_1770 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1770 [entry ] into _temp_1771
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1769 = *_temp_1771  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1768 = _temp_1769 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1768  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1772
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1773
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1774
	.word	12
	.word	4
	.word	_Label_1775
	.word	-12
	.word	4
	.word	_Label_1776
	.word	-16
	.word	4
	.word	_Label_1777
	.word	-20
	.word	4
	.word	_Label_1778
	.word	-24
	.word	4
	.word	0
_Label_1772:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1773:
	.ascii	"Pself\0"
	.align
_Label_1774:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_2197:
	push	r0
	sub	r1,1,r1
	bne	_Label_2197
	mov	1594,r13		! source line 1594
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1598,r13		! source line 1598
	mov	"\0\0RE",r10
!   _temp_1781 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1781 [entry ] into _temp_1782
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1780 = *_temp_1782  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1779 = _temp_1780 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1779  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1783
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1784
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1785
	.word	12
	.word	4
	.word	_Label_1786
	.word	-12
	.word	4
	.word	_Label_1787
	.word	-16
	.word	4
	.word	_Label_1788
	.word	-20
	.word	4
	.word	_Label_1789
	.word	-24
	.word	4
	.word	0
_Label_1783:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1784:
	.ascii	"Pself\0"
	.align
_Label_1785:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1782\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1781\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1780\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1779\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_2198:
	push	r0
	sub	r1,1,r1
	bne	_Label_2198
	mov	1603,r13		! source line 1603
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1608,r13		! source line 1608
	mov	"\0\0AS",r10
!   _temp_1790 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1790 [entry ] into _temp_1791
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1795 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1795 [entry ] into _temp_1796
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1794 = *_temp_1796  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1793 = _temp_1794 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1792 = _temp_1793 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1791 = _temp_1792  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1608,r13		! source line 1608
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1797
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1798
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1799
	.word	12
	.word	4
	.word	_Label_1800
	.word	16
	.word	4
	.word	_Label_1801
	.word	-12
	.word	4
	.word	_Label_1802
	.word	-16
	.word	4
	.word	_Label_1803
	.word	-20
	.word	4
	.word	_Label_1804
	.word	-24
	.word	4
	.word	_Label_1805
	.word	-28
	.word	4
	.word	_Label_1806
	.word	-32
	.word	4
	.word	_Label_1807
	.word	-36
	.word	4
	.word	0
_Label_1797:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1798:
	.ascii	"Pself\0"
	.align
_Label_1799:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1800:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_2199:
	push	r0
	sub	r1,1,r1
	bne	_Label_2199
	mov	1613,r13		! source line 1613
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0RE",r10
!   _temp_1811 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1811 [entry ] into _temp_1812
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1810 = *_temp_1812  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1809 = _temp_1810 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1809) then goto _Label_1813
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1813
!   _temp_1808 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1814
_Label_1813:
!   _temp_1808 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1814:
!   ReturnResult: _temp_1808  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_1815
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1816
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1817
	.word	12
	.word	4
	.word	_Label_1818
	.word	-16
	.word	4
	.word	_Label_1819
	.word	-20
	.word	4
	.word	_Label_1820
	.word	-24
	.word	4
	.word	_Label_1821
	.word	-28
	.word	4
	.word	_Label_1822
	.word	-9
	.word	1
	.word	0
_Label_1815:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1816:
	.ascii	"Pself\0"
	.align
_Label_1817:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1810\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1809\0"
	.align
_Label_1822:
	.byte	'C'
	.ascii	"_temp_1808\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_2200:
	push	r0
	sub	r1,1,r1
	bne	_Label_2200
	mov	1622,r13		! source line 1622
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1626,r13		! source line 1626
	mov	"\0\0RE",r10
!   _temp_1826 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1826 [entry ] into _temp_1827
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1825 = *_temp_1827  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1824 = _temp_1825 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1824) then goto _Label_1828
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1828
!   _temp_1823 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1829
_Label_1828:
!   _temp_1823 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1829:
!   ReturnResult: _temp_1823  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_1830
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1831
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1832
	.word	12
	.word	4
	.word	_Label_1833
	.word	-16
	.word	4
	.word	_Label_1834
	.word	-20
	.word	4
	.word	_Label_1835
	.word	-24
	.word	4
	.word	_Label_1836
	.word	-28
	.word	4
	.word	_Label_1837
	.word	-9
	.word	1
	.word	0
_Label_1830:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1831:
	.ascii	"Pself\0"
	.align
_Label_1832:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1837:
	.byte	'C'
	.ascii	"_temp_1823\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_2201:
	push	r0
	sub	r1,1,r1
	bne	_Label_2201
	mov	1631,r13		! source line 1631
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1635,r13		! source line 1635
	mov	"\0\0RE",r10
!   _temp_1841 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1841 [entry ] into _temp_1842
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1840 = *_temp_1842  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1839 = _temp_1840 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1839) then goto _Label_1843
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1843
!   _temp_1838 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1844
_Label_1843:
!   _temp_1838 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1844:
!   ReturnResult: _temp_1838  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_1845
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1846
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1847
	.word	12
	.word	4
	.word	_Label_1848
	.word	-16
	.word	4
	.word	_Label_1849
	.word	-20
	.word	4
	.word	_Label_1850
	.word	-24
	.word	4
	.word	_Label_1851
	.word	-28
	.word	4
	.word	_Label_1852
	.word	-9
	.word	1
	.word	0
_Label_1845:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1846:
	.ascii	"Pself\0"
	.align
_Label_1847:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1852:
	.byte	'C'
	.ascii	"_temp_1838\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_2202:
	push	r0
	sub	r1,1,r1
	bne	_Label_2202
	mov	1640,r13		! source line 1640
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1644,r13		! source line 1644
	mov	"\0\0RE",r10
!   _temp_1856 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1856 [entry ] into _temp_1857
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1855 = *_temp_1857  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1854 = _temp_1855 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1854) then goto _Label_1858
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1858
!   _temp_1853 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1859
_Label_1858:
!   _temp_1853 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1859:
!   ReturnResult: _temp_1853  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_1860
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1861
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1862
	.word	12
	.word	4
	.word	_Label_1863
	.word	-16
	.word	4
	.word	_Label_1864
	.word	-20
	.word	4
	.word	_Label_1865
	.word	-24
	.word	4
	.word	_Label_1866
	.word	-28
	.word	4
	.word	_Label_1867
	.word	-9
	.word	1
	.word	0
_Label_1860:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1861:
	.ascii	"Pself\0"
	.align
_Label_1862:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1867:
	.byte	'C'
	.ascii	"_temp_1853\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_2203:
	push	r0
	sub	r1,1,r1
	bne	_Label_2203
	mov	1649,r13		! source line 1649
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1653,r13		! source line 1653
	mov	"\0\0AS",r10
!   _temp_1868 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1868 [entry ] into _temp_1869
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1872 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1872 [entry ] into _temp_1873
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1871 = *_temp_1873  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1870 = _temp_1871 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1869 = _temp_1870  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1653,r13		! source line 1653
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_1874
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1875
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1876
	.word	12
	.word	4
	.word	_Label_1877
	.word	-12
	.word	4
	.word	_Label_1878
	.word	-16
	.word	4
	.word	_Label_1879
	.word	-20
	.word	4
	.word	_Label_1880
	.word	-24
	.word	4
	.word	_Label_1881
	.word	-28
	.word	4
	.word	_Label_1882
	.word	-32
	.word	4
	.word	0
_Label_1874:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1875:
	.ascii	"Pself\0"
	.align
_Label_1876:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1882:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_2204:
	push	r0
	sub	r1,1,r1
	bne	_Label_2204
	mov	1658,r13		! source line 1658
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1662,r13		! source line 1662
	mov	"\0\0AS",r10
!   _temp_1883 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1883 [entry ] into _temp_1884
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1887 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1887 [entry ] into _temp_1888
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1886 = *_temp_1888  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1885 = _temp_1886 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1884 = _temp_1885  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1662,r13		! source line 1662
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_1889
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1890
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1891
	.word	12
	.word	4
	.word	_Label_1892
	.word	-12
	.word	4
	.word	_Label_1893
	.word	-16
	.word	4
	.word	_Label_1894
	.word	-20
	.word	4
	.word	_Label_1895
	.word	-24
	.word	4
	.word	_Label_1896
	.word	-28
	.word	4
	.word	_Label_1897
	.word	-32
	.word	4
	.word	0
_Label_1889:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1890:
	.ascii	"Pself\0"
	.align
_Label_1891:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_2205:
	push	r0
	sub	r1,1,r1
	bne	_Label_2205
	mov	1667,r13		! source line 1667
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1671,r13		! source line 1671
	mov	"\0\0AS",r10
!   _temp_1898 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1898 [entry ] into _temp_1899
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1902 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1902 [entry ] into _temp_1903
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1901 = *_temp_1903  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1900 = _temp_1901 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1899 = _temp_1900  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1671,r13		! source line 1671
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_1904
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1905
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1906
	.word	12
	.word	4
	.word	_Label_1907
	.word	-12
	.word	4
	.word	_Label_1908
	.word	-16
	.word	4
	.word	_Label_1909
	.word	-20
	.word	4
	.word	_Label_1910
	.word	-24
	.word	4
	.word	_Label_1911
	.word	-28
	.word	4
	.word	_Label_1912
	.word	-32
	.word	4
	.word	0
_Label_1904:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1905:
	.ascii	"Pself\0"
	.align
_Label_1906:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1900\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_2206:
	push	r0
	sub	r1,1,r1
	bne	_Label_2206
	mov	1676,r13		! source line 1676
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1680,r13		! source line 1680
	mov	"\0\0AS",r10
!   _temp_1913 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1913 [entry ] into _temp_1914
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1917 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1917 [entry ] into _temp_1918
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1916 = *_temp_1918  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1915 = _temp_1916 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1914 = _temp_1915  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1680,r13		! source line 1680
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_1919
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1920
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1921
	.word	12
	.word	4
	.word	_Label_1922
	.word	-12
	.word	4
	.word	_Label_1923
	.word	-16
	.word	4
	.word	_Label_1924
	.word	-20
	.word	4
	.word	_Label_1925
	.word	-24
	.word	4
	.word	_Label_1926
	.word	-28
	.word	4
	.word	_Label_1927
	.word	-32
	.word	4
	.word	0
_Label_1919:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1920:
	.ascii	"Pself\0"
	.align
_Label_1921:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_2207:
	push	r0
	sub	r1,1,r1
	bne	_Label_2207
	mov	1685,r13		! source line 1685
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1689,r13		! source line 1689
	mov	"\0\0AS",r10
!   _temp_1928 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1928 [entry ] into _temp_1929
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1932 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1932 [entry ] into _temp_1933
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1931 = *_temp_1933  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1930 = _temp_1931 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1929 = _temp_1930  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1689,r13		! source line 1689
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_1934
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1935
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1936
	.word	12
	.word	4
	.word	_Label_1937
	.word	-12
	.word	4
	.word	_Label_1938
	.word	-16
	.word	4
	.word	_Label_1939
	.word	-20
	.word	4
	.word	_Label_1940
	.word	-24
	.word	4
	.word	_Label_1941
	.word	-28
	.word	4
	.word	_Label_1942
	.word	-32
	.word	4
	.word	0
_Label_1934:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1935:
	.ascii	"Pself\0"
	.align
_Label_1936:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_2208:
	push	r0
	sub	r1,1,r1
	bne	_Label_2208
	mov	1694,r13		! source line 1694
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1698,r13		! source line 1698
	mov	"\0\0AS",r10
!   _temp_1943 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1943 [entry ] into _temp_1944
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1947 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1947 [entry ] into _temp_1948
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1946 = *_temp_1948  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1945 = _temp_1946 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1944 = _temp_1945  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1698,r13		! source line 1698
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_1949
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1950
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1951
	.word	12
	.word	4
	.word	_Label_1952
	.word	-12
	.word	4
	.word	_Label_1953
	.word	-16
	.word	4
	.word	_Label_1954
	.word	-20
	.word	4
	.word	_Label_1955
	.word	-24
	.word	4
	.word	_Label_1956
	.word	-28
	.word	4
	.word	_Label_1957
	.word	-32
	.word	4
	.word	0
_Label_1949:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1950:
	.ascii	"Pself\0"
	.align
_Label_1951:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1947\0"
	.align
_Label_1954:
	.byte	'?'
	.ascii	"_temp_1946\0"
	.align
_Label_1955:
	.byte	'?'
	.ascii	"_temp_1945\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_1957:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_2209:
	push	r0
	sub	r1,1,r1
	bne	_Label_2209
	mov	1703,r13		! source line 1703
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1707,r13		! source line 1707
	mov	"\0\0AS",r10
!   _temp_1958 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1958 [entry ] into _temp_1959
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1962 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1962 [entry ] into _temp_1963
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1961 = *_temp_1963  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1960 = _temp_1961 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1959 = _temp_1960  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1707,r13		! source line 1707
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_1964
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1965
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1966
	.word	12
	.word	4
	.word	_Label_1967
	.word	-12
	.word	4
	.word	_Label_1968
	.word	-16
	.word	4
	.word	_Label_1969
	.word	-20
	.word	4
	.word	_Label_1970
	.word	-24
	.word	4
	.word	_Label_1971
	.word	-28
	.word	4
	.word	_Label_1972
	.word	-32
	.word	4
	.word	0
_Label_1964:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1965:
	.ascii	"Pself\0"
	.align
_Label_1966:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_2210:
	push	r0
	sub	r1,1,r1
	bne	_Label_2210
	mov	1712,r13		! source line 1712
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1716,r13		! source line 1716
	mov	"\0\0AS",r10
!   _temp_1973 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1973 [entry ] into _temp_1974
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1977 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1977 [entry ] into _temp_1978
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1976 = *_temp_1978  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1975 = _temp_1976 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1974 = _temp_1975  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1716,r13		! source line 1716
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_1979
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1980
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1981
	.word	12
	.word	4
	.word	_Label_1982
	.word	-12
	.word	4
	.word	_Label_1983
	.word	-16
	.word	4
	.word	_Label_1984
	.word	-20
	.word	4
	.word	_Label_1985
	.word	-24
	.word	4
	.word	_Label_1986
	.word	-28
	.word	4
	.word	_Label_1987
	.word	-32
	.word	4
	.word	0
_Label_1979:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1980:
	.ascii	"Pself\0"
	.align
_Label_1981:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1982:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1973\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_2211:
	push	r0
	sub	r1,1,r1
	bne	_Label_2211
	mov	1721,r13		! source line 1721
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1989 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1989 [0 ] into _temp_1990
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_1988 = _temp_1990		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1991 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1988  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1991  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1727,r13		! source line 1727
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1727,r13		! source line 1727
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_1992
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1993
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1994
	.word	-12
	.word	4
	.word	_Label_1995
	.word	-16
	.word	4
	.word	_Label_1996
	.word	-20
	.word	4
	.word	_Label_1997
	.word	-24
	.word	4
	.word	0
_Label_1992:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1993:
	.ascii	"Pself\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1990\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1988\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_2212:
	push	r0
	sub	r1,1,r1
	bne	_Label_2212
	mov	1732,r13		! source line 1732
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1747,r13		! source line 1747
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1998
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1998
	jmp	_Label_1999
_Label_1998:
! THEN...
	mov	1748,r13		! source line 1748
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1748,r13		! source line 1748
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2000
_Label_1999:
! ELSE...
	mov	1749,r13		! source line 1749
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1749,r13		! source line 1749
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2002		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2002
!	jmp	_Label_2001
_Label_2001:
! THEN...
	mov	1750,r13		! source line 1750
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1750,r13		! source line 1750
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2002:
! END IF...
_Label_2000:
! ASSIGNMENT STATEMENT...
	mov	1752,r13		! source line 1752
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1753,r13		! source line 1753
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1756,r13		! source line 1756
	mov	"\0\0WH",r10
_Label_2003:
!	jmp	_Label_2004
_Label_2004:
	mov	1756,r13		! source line 1756
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1757,r13		! source line 1757
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2007		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2007
!	jmp	_Label_2006
_Label_2006:
! THEN...
	mov	1758,r13		! source line 1758
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2008 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2008  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1758,r13		! source line 1758
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1759,r13		! source line 1759
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2007:
! IF STATEMENT...
	mov	1761,r13		! source line 1761
	mov	"\0\0IF",r10
	mov	1761,r13		! source line 1761
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2012) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2011  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2011 then goto _Label_2010 else goto _Label_2009
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2009
	jmp	_Label_2010
_Label_2009:
! THEN...
	mov	1762,r13		! source line 1762
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2013 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2013  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1762,r13		! source line 1762
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1763,r13		! source line 1763
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2010:
! ASSIGNMENT STATEMENT...
	mov	1765,r13		! source line 1765
	mov	"\0\0AS",r10
	mov	1765,r13		! source line 1765
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2015) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2014  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2014 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1767,r13		! source line 1767
	mov	"\0\0WH",r10
_Label_2016:
!   if offset >= 8192 then goto _Label_2018		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2018
!	jmp	_Label_2017
_Label_2017:
	mov	1767,r13		! source line 1767
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1770,r13		! source line 1770
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2019 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2019  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1771,r13		! source line 1771
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1772,r13		! source line 1772
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1773,r13		! source line 1773
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1775,r13		! source line 1775
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2021		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2021
!	jmp	_Label_2020
_Label_2020:
! THEN...
	mov	1776,r13		! source line 1776
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1776,r13		! source line 1776
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2021:
! END WHILE...
	jmp	_Label_2016
_Label_2018:
! ASSIGNMENT STATEMENT...
	mov	1779,r13		! source line 1779
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1780,r13		! source line 1780
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2003
_Label_2005:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2022
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2023
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2024
	.word	12
	.word	4
	.word	_Label_2025
	.word	16
	.word	4
	.word	_Label_2026
	.word	20
	.word	4
	.word	_Label_2027
	.word	-9
	.word	1
	.word	_Label_2028
	.word	-16
	.word	4
	.word	_Label_2029
	.word	-20
	.word	4
	.word	_Label_2030
	.word	-24
	.word	4
	.word	_Label_2031
	.word	-28
	.word	4
	.word	_Label_2032
	.word	-10
	.word	1
	.word	_Label_2033
	.word	-32
	.word	4
	.word	_Label_2034
	.word	-36
	.word	4
	.word	_Label_2035
	.word	-40
	.word	4
	.word	_Label_2036
	.word	-44
	.word	4
	.word	_Label_2037
	.word	-48
	.word	4
	.word	0
_Label_2022:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2023:
	.ascii	"Pself\0"
	.align
_Label_2024:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2025:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2026:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2027:
	.byte	'C'
	.ascii	"_temp_2019\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2032:
	.byte	'C'
	.ascii	"_temp_2011\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2034:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2035:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2036:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2037:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_2213:
	push	r0
	sub	r1,1,r1
	bne	_Label_2213
	mov	1786,r13		! source line 1786
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1797,r13		! source line 1797
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2038
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2038
	jmp	_Label_2039
_Label_2038:
! THEN...
	mov	1798,r13		! source line 1798
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1798,r13		! source line 1798
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2040
_Label_2039:
! ELSE...
	mov	1799,r13		! source line 1799
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1799,r13		! source line 1799
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2042		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2042
!	jmp	_Label_2041
_Label_2041:
! THEN...
	mov	1800,r13		! source line 1800
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1800,r13		! source line 1800
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2042:
! END IF...
_Label_2040:
! ASSIGNMENT STATEMENT...
	mov	1802,r13		! source line 1802
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1803,r13		! source line 1803
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1804,r13		! source line 1804
	mov	"\0\0WH",r10
_Label_2043:
!	jmp	_Label_2044
_Label_2044:
	mov	1804,r13		! source line 1804
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1805,r13		! source line 1805
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2049		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2049
	jmp	_Label_2046
_Label_2049:
	mov	1806,r13		! source line 1806
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2051) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2050  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2050 then goto _Label_2048 else goto _Label_2046
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2046
	jmp	_Label_2048
_Label_2048:
	mov	1807,r13		! source line 1807
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2053) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_2052  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2052 then goto _Label_2047 else goto _Label_2046
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2046
	jmp	_Label_2047
_Label_2046:
! THEN...
	mov	1808,r13		! source line 1808
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1808,r13		! source line 1808
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2047:
! ASSIGNMENT STATEMENT...
	mov	1810,r13		! source line 1810
	mov	"\0\0AS",r10
	mov	1810,r13		! source line 1810
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2055) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2054  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2054 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1811,r13		! source line 1811
	mov	"\0\0WH",r10
_Label_2056:
!   if offset >= 8192 then goto _Label_2058		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2058
!	jmp	_Label_2057
_Label_2057:
	mov	1811,r13		! source line 1811
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1812,r13		! source line 1812
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2059 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2059  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1813,r13		! source line 1813
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1814,r13		! source line 1814
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1815,r13		! source line 1815
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1816,r13		! source line 1816
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1817,r13		! source line 1817
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2061		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2061
!	jmp	_Label_2060
_Label_2060:
! THEN...
	mov	1818,r13		! source line 1818
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1818,r13		! source line 1818
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2061:
! END WHILE...
	jmp	_Label_2056
_Label_2058:
! ASSIGNMENT STATEMENT...
	mov	1821,r13		! source line 1821
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1822,r13		! source line 1822
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2043
_Label_2045:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2062
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2063
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2064
	.word	12
	.word	4
	.word	_Label_2065
	.word	16
	.word	4
	.word	_Label_2066
	.word	20
	.word	4
	.word	_Label_2067
	.word	-9
	.word	1
	.word	_Label_2068
	.word	-16
	.word	4
	.word	_Label_2069
	.word	-20
	.word	4
	.word	_Label_2070
	.word	-24
	.word	4
	.word	_Label_2071
	.word	-10
	.word	1
	.word	_Label_2072
	.word	-28
	.word	4
	.word	_Label_2073
	.word	-11
	.word	1
	.word	_Label_2074
	.word	-32
	.word	4
	.word	_Label_2075
	.word	-36
	.word	4
	.word	_Label_2076
	.word	-40
	.word	4
	.word	_Label_2077
	.word	-44
	.word	4
	.word	0
_Label_2062:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2063:
	.ascii	"Pself\0"
	.align
_Label_2064:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2065:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2066:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2067:
	.byte	'C'
	.ascii	"_temp_2059\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
_Label_2071:
	.byte	'C'
	.ascii	"_temp_2052\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2073:
	.byte	'C'
	.ascii	"_temp_2050\0"
	.align
_Label_2074:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2075:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2076:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2077:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_2214:
	push	r0
	sub	r1,1,r1
	bne	_Label_2214
	mov	1828,r13		! source line 1828
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1852,r13		! source line 1852
	mov	"\0\0IF",r10
	mov	1852,r13		! source line 1852
	mov	"\0\0SE",r10
!   _temp_2081 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2082) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2081  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2080  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2080 >= 4 then goto _Label_2079		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2079
!	jmp	_Label_2078
_Label_2078:
! THEN...
	mov	1855,r13		! source line 1855
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1855,r13		! source line 1855
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2079:
! IF STATEMENT...
	mov	1859,r13		! source line 1859
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2084		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2084
!	jmp	_Label_2083
_Label_2083:
! THEN...
	mov	1860,r13		! source line 1860
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1860,r13		! source line 1860
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2084:
! ASSIGNMENT STATEMENT...
	mov	1863,r13		! source line 1863
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1865,r13		! source line 1865
	mov	"\0\0RE",r10
	mov	1865,r13		! source line 1865
	mov	"\0\0SE",r10
!   _temp_2087 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2086 = _temp_2087 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2088 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2089) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2086  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2088  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2085  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2085  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_2090
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2091
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2092
	.word	12
	.word	4
	.word	_Label_2093
	.word	16
	.word	4
	.word	_Label_2094
	.word	20
	.word	4
	.word	_Label_2095
	.word	-12
	.word	4
	.word	_Label_2096
	.word	-16
	.word	4
	.word	_Label_2097
	.word	-20
	.word	4
	.word	_Label_2098
	.word	-24
	.word	4
	.word	_Label_2099
	.word	-28
	.word	4
	.word	_Label_2100
	.word	-32
	.word	4
	.word	_Label_2101
	.word	-36
	.word	4
	.word	_Label_2102
	.word	-40
	.word	4
	.word	_Label_2103
	.word	-44
	.word	4
	.word	0
_Label_2090:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2091:
	.ascii	"Pself\0"
	.align
_Label_2092:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2093:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2094:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2096:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2085\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2082\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2081\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2080\0"
	.align
_Label_2103:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
