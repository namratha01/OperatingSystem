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
	.export	_P_Kernel_InitFirstProcess
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
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
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
	.export	_P_Kernel_userThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_hoarethreadManager
	.export	_P_Kernel_frameManager
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_userThread:
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
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_241:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_240:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_239:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_238:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_237:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_236:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_235:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_234:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_233:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_232:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_231:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_230:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_229:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_228:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_227:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_226:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_225:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_224:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_223:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_222:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_221:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_220:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_219:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_218:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_217:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_216:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_215:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_214:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_213:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_212:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_211:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_210:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_209:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_208:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_207:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_206:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_205:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_204:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_203:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_202:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_201:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_200:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_199:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_198:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_197:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_196:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_195:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_194:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_193:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_192:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_191:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_190:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_189:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_188:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_187:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_186:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_185:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_184:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_183:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_182:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_181:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_180:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_179:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_178:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_177:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_176:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_175:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_174:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_173:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_172:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_171:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_170:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_169:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_168:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_167:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_166:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_165:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_164:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_163:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_162:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_161:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_160:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_159:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_158:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_157:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_156:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_155:
	.word	32			! length
	.ascii	"Initializing Process Manager...\n"
	.align
_StringConst_154:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_153:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_152:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_151:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_150:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_149:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_148:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_147:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_146:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_145:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_144:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_143:
	.word	29			! length
	.ascii	"\nFreeThread - Before Signal: "
	.align
_StringConst_142:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_141:
	.word	26			! length
	.ascii	"\nGetANewThread - Wake up: "
	.align
_StringConst_140:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_139:
	.word	23			! length
	.ascii	"\nGetANewThread - Wait: "
	.align
_StringConst_138:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_137:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_136:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_135:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_134:
	.word	2			! length
	.ascii	"t0"
	.align
_StringConst_133:
	.word	37			! length
	.ascii	"Initializing Hoare Thread Manager...\n"
	.align
_StringConst_132:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_131:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_130:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_129:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_128:
	.word	2			! length
	.ascii	"t9"
	.align
_StringConst_127:
	.word	2			! length
	.ascii	"t8"
	.align
_StringConst_126:
	.word	2			! length
	.ascii	"t7"
	.align
_StringConst_125:
	.word	2			! length
	.ascii	"t6"
	.align
_StringConst_124:
	.word	2			! length
	.ascii	"t5"
	.align
_StringConst_123:
	.word	2			! length
	.ascii	"t4"
	.align
_StringConst_122:
	.word	2			! length
	.ascii	"t3"
	.align
_StringConst_121:
	.word	2			! length
	.ascii	"t2"
	.align
_StringConst_120:
	.word	2			! length
	.ascii	"t1"
	.align
_StringConst_119:
	.word	2			! length
	.ascii	"t0"
	.align
_StringConst_118:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_117:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_116:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_115:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_114:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_113:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_112:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_111:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_110:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_109:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_108:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_107:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_106:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_105:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_104:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_103:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_102:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_101:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_100:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_99:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_98:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_97:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_96:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_95:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_94:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_93:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_92:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_91:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_90:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_89:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_88:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_87:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_86:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_85:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_84:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_83:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_82:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_81:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_80:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_79:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_78:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_77:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_76:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_75:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_74:
	.word	12			! length
	.ascii	"\nfileDesc = "
	.align
_StringConst_73:
	.word	25			! length
	.ascii	"Handle_Sys_Close invoked!"
	.align
_StringConst_72:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_71:
	.word	17			! length
	.ascii	"\nnewCurrentPos = "
	.align
_StringConst_70:
	.word	12			! length
	.ascii	"\nfileDesc = "
	.align
_StringConst_69:
	.word	24			! length
	.ascii	"Handle_Sys_Seek invoked!"
	.align
_StringConst_68:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_67:
	.word	15			! length
	.ascii	"\nsizeInBytes = "
	.align
_StringConst_66:
	.word	23			! length
	.ascii	"\nvirt addr of buffer = "
	.align
_StringConst_65:
	.word	12			! length
	.ascii	"\nfileDesc = "
	.align
_StringConst_64:
	.word	25			! length
	.ascii	"Handle_Sys_Write invoked!"
	.align
_StringConst_63:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_62:
	.word	15			! length
	.ascii	"\nsizeInBytes = "
	.align
_StringConst_61:
	.word	23			! length
	.ascii	"\nvirt addr of buffer = "
	.align
_StringConst_60:
	.word	12			! length
	.ascii	"\nfileDesc = "
	.align
_StringConst_59:
	.word	24			! length
	.ascii	"Handle_Sys_Read invoked!"
	.align
_StringConst_58:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_57:
	.word	13			! length
	.ascii	"\nfilename =  "
	.align
_StringConst_56:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_55:
	.word	25			! length
	.ascii	"Handle_Sys_Open invoked!\n"
	.align
_StringConst_54:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_53:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_52:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_51:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_50:
	.word	27			! length
	.ascii	"Handle_Sys_Create invoked!\n"
	.align
_StringConst_49:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_48:
	.word	12			! length
	.ascii	"processID = "
	.align
_StringConst_47:
	.word	25			! length
	.ascii	"Handle_Sys_Join invoked!\n"
	.align
_StringConst_46:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_45:
	.word	24			! length
	.ascii	"Handle_Sys_Fork invoked!"
	.align
_StringConst_44:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_43:
	.word	25			! length
	.ascii	"Handle_Sys_Yield invoked!"
	.align
_StringConst_42:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_41:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_40:
	.word	16			! length
	.ascii	"\nreturnStatus = "
	.align
_StringConst_39:
	.word	24			! length
	.ascii	"Handle_Sys_Exit invoked!"
	.align
_StringConst_38:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_37:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_36:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_35:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_34:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_33:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_32:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_31:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_26:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_25:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_24:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_23:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_22:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_21:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_20:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_19:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_18:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_17:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_16:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_15:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_14:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_13:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_12:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_11:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_10:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_9:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_8:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_7:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_6:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_5:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_4:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
_StringConst_3:
	.word	27			! length
	.ascii	"Loading initial program...\n"
	.align
_StringConst_2:
	.word	12			! length
	.ascii	"TestProgram1"
	.align
_StringConst_1:
	.word	11			! length
	.ascii	"UserProgram"
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
	set	0x9e43f9a6,r4		! myHashVal = -1639712346
	cmp	r3,r4
	be	_Label_250
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
_Label_250:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_251
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_251
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_251
_Label_251:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	7,r1
_Label_3391:
	push	r0
	sub	r1,1,r1
	bne	_Label_3391
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	13,r13		! source line 13
	mov	"\0\0AS",r10
	mov	13,r13		! source line 13
	mov	"\0\0SE",r10
!   _temp_252 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message GetANewThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=userprogramThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	15,r13		! source line 15
	mov	"\0\0SE",r10
!   _temp_253 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-16]
!   if intIsZero (userprogramThread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_253  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0SE",r10
!   _temp_254 = _function_249_StartUserProcess
	set	_function_249_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (userprogramThread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_254  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_255
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_256
	.word	-12
	.word	4
	.word	_Label_257
	.word	-16
	.word	4
	.word	_Label_258
	.word	-20
	.word	4
	.word	_Label_259
	.word	-24
	.word	4
	.word	0
_Label_255:
	.ascii	"InitFirstProcess\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_259:
	.byte	'P'
	.ascii	"userprogramThread\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_249_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_249_StartUserProcess,r1
	push	r1
	mov	25,r1
_Label_3392:
	push	r0
	sub	r1,1,r1
	bne	_Label_3392
	mov	23,r13		! source line 23
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	35,r13		! source line 35
	mov	"\0\0AS",r10
	mov	35,r13		! source line 35
	mov	"\0\0SE",r10
!   _temp_260 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-76]
!   Send message GetANewProcess
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=p  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	38,r13		! source line 38
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_261 = p + 24
	load	[r14+-80],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_261 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-72],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	39,r13		! source line 39
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_262 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_262 = p  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
	mov	43,r13		! source line 43
	mov	"\0\0SE",r10
!   _temp_263 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-64]
!   _temp_264 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_263  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=filePtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! CALL STATEMENT...
!   _temp_265 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_265  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	44,r13		! source line 44
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	45,r13		! source line 45
	mov	"\0\0AS",r10
	mov	45,r13		! source line 45
	mov	"\0\0SE",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_267 = p + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_266 = _temp_267		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (filePtr) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_266  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! SEND STATEMENT...
	mov	46,r13		! source line 46
	mov	"\0\0SE",r10
!   _temp_268 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=filePtr  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	50,r13		! source line 50
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_270 = p + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_271 = _temp_270 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_269 = *_temp_271  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   InitUserStackTop = _temp_269 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	51,r13		! source line 51
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_272 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_272 [999 ] into _temp_273
!     make sure index expr is >= 0
	mov	999,r2
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
!   initSystemStackTop = _temp_273		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	56,r13		! source line 56
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	57,r13		! source line 57
	mov	"\0\0SE",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_274 = p + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Send message SetToThisPageTable
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	58,r13		! source line 58
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_275 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_275 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_276 = initSystemStackTop		(4 bytes)
	load	[r14+-92],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=InitUserStackTop  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_276  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	62,r13		! source line 62
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	62,r13		! source line 62
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_249_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_277
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_278
	.word	8
	.word	4
	.word	_Label_279
	.word	-12
	.word	4
	.word	_Label_280
	.word	-16
	.word	4
	.word	_Label_281
	.word	-20
	.word	4
	.word	_Label_282
	.word	-24
	.word	4
	.word	_Label_283
	.word	-28
	.word	4
	.word	_Label_284
	.word	-32
	.word	4
	.word	_Label_285
	.word	-36
	.word	4
	.word	_Label_286
	.word	-40
	.word	4
	.word	_Label_287
	.word	-44
	.word	4
	.word	_Label_288
	.word	-48
	.word	4
	.word	_Label_289
	.word	-52
	.word	4
	.word	_Label_290
	.word	-56
	.word	4
	.word	_Label_291
	.word	-60
	.word	4
	.word	_Label_292
	.word	-64
	.word	4
	.word	_Label_293
	.word	-68
	.word	4
	.word	_Label_294
	.word	-72
	.word	4
	.word	_Label_295
	.word	-76
	.word	4
	.word	_Label_296
	.word	-80
	.word	4
	.word	_Label_297
	.word	-84
	.word	4
	.word	_Label_298
	.word	-88
	.word	4
	.word	_Label_299
	.word	-92
	.word	4
	.word	_Label_300
	.word	-96
	.word	4
	.word	0
_Label_277:
	.ascii	"StartUserProcess\0"
	.align
_Label_278:
	.byte	'I'
	.ascii	"sup\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_296:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_297:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_298:
	.byte	'I'
	.ascii	"InitUserStackTop\0"
	.align
_Label_299:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
_Label_300:
	.byte	'P'
	.ascii	"filePtr\0"
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
_Label_3393:
	push	r0
	sub	r1,1,r1
	bne	_Label_3393
	mov	67,r13		! source line 67
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	74,r13		! source line 74
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_301 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_301  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	75,r13		! source line 75
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	76,r13		! source line 76
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
	mov	77,r13		! source line 77
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
	mov	78,r13		! source line 78
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_3394:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3394
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	79,r13		! source line 79
	mov	"\0\0SE",r10
!   _temp_305 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-44]
!   _temp_306 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_305  sizeInBytes=4
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
	mov	80,r13		! source line 80
	mov	"\0\0AS",r10
!   _temp_307 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_308 = _temp_307 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_308 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	81,r13		! source line 81
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_3395:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3395
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0SE",r10
!   _temp_310 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-24]
!   _temp_311 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_310  sizeInBytes=4
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
	mov	83,r13		! source line 83
	mov	"\0\0SE",r10
!   _temp_312 = _function_248_IdleFunction
	set	_function_248_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_313 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_312  sizeInBytes=4
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
	mov	84,r13		! source line 84
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	87,r13		! source line 87
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	87,r13		! source line 87
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
	.word	_Label_314
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_315
	.word	-12
	.word	4
	.word	_Label_316
	.word	-16
	.word	4
	.word	_Label_317
	.word	-20
	.word	4
	.word	_Label_318
	.word	-24
	.word	4
	.word	_Label_319
	.word	-28
	.word	4
	.word	_Label_320
	.word	-32
	.word	4
	.word	_Label_321
	.word	-36
	.word	4
	.word	_Label_322
	.word	-40
	.word	4
	.word	_Label_323
	.word	-44
	.word	4
	.word	_Label_324
	.word	-48
	.word	4
	.word	_Label_325
	.word	-52
	.word	4
	.word	_Label_326
	.word	-56
	.word	4
	.word	_Label_327
	.word	-60
	.word	4
	.word	0
_Label_314:
	.ascii	"InitializeScheduler\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_248_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_248_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3396:
	push	r0
	sub	r1,1,r1
	bne	_Label_3396
	mov	92,r13		! source line 92
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	102,r13		! source line 102
	mov	"\0\0WH",r10
_Label_328:
!	jmp	_Label_329
_Label_329:
	mov	102,r13		! source line 102
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	103,r13		! source line 103
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	103,r13		! source line 103
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0IF",r10
	mov	104,r13		! source line 104
	mov	"\0\0SE",r10
!   _temp_333 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_331 else goto _Label_332
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_332
	jmp	_Label_331
_Label_331:
! THEN...
	mov	105,r13		! source line 105
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_334
_Label_332:
! ELSE...
	mov	107,r13		! source line 107
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	107,r13		! source line 107
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
_Label_334:
! END WHILE...
	jmp	_Label_328
_Label_330:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_248_IdleFunction:
	.word	_sourceFileName
	.word	_Label_335
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_336
	.word	8
	.word	4
	.word	_Label_337
	.word	-12
	.word	4
	.word	_Label_338
	.word	-16
	.word	4
	.word	0
_Label_335:
	.ascii	"IdleFunction\0"
	.align
_Label_336:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_338:
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
_Label_3397:
	push	r0
	sub	r1,1,r1
	bne	_Label_3397
	mov	114,r13		! source line 114
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	127,r13		! source line 127
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	128,r13		! source line 128
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
	mov	130,r13		! source line 130
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_341 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_341 ) then goto _Label_340		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_340
!	jmp	_Label_339
_Label_339:
! THEN...
	mov	131,r13		! source line 131
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_343 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_343 [0 ] into _temp_344
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
!   _temp_342 = _temp_344		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_342  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	131,r13		! source line 131
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_340:
! ASSIGNMENT STATEMENT...
	mov	133,r13		! source line 133
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_345 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_345 = 3  (sizeInBytes=4)
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
	mov	140,r13		! source line 140
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0WH",r10
_Label_346:
	mov	144,r13		! source line 144
	mov	"\0\0SE",r10
!   _temp_350 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_349  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_349 then goto _Label_348 else goto _Label_347
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_347
	jmp	_Label_348
_Label_347:
	mov	144,r13		! source line 144
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	145,r13		! source line 145
	mov	"\0\0AS",r10
	mov	145,r13		! source line 145
	mov	"\0\0SE",r10
!   _temp_351 = &_P_Kernel_threadsToBeDestroyed
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
	mov	146,r13		! source line 146
	mov	"\0\0SE",r10
!   _temp_352 = &_P_Kernel_threadManager
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
	jmp	_Label_346
_Label_348:
! IF STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_355 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_355 ) then goto _Label_354		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_354
!	jmp	_Label_353
_Label_353:
! THEN...
	mov	150,r13		! source line 150
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_357 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_357 [0 ] into _temp_358
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
!   _temp_356 = _temp_358		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	150,r13		! source line 150
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_360 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_359 = *_temp_360  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_359) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_361 = _temp_359 + 32
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
_Label_354:
! RETURN STATEMENT...
	mov	149,r13		! source line 149
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
	.word	_Label_362
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_363
	.word	8
	.word	4
	.word	_Label_364
	.word	-16
	.word	4
	.word	_Label_365
	.word	-20
	.word	4
	.word	_Label_366
	.word	-24
	.word	4
	.word	_Label_367
	.word	-28
	.word	4
	.word	_Label_368
	.word	-32
	.word	4
	.word	_Label_369
	.word	-36
	.word	4
	.word	_Label_370
	.word	-40
	.word	4
	.word	_Label_371
	.word	-44
	.word	4
	.word	_Label_372
	.word	-48
	.word	4
	.word	_Label_373
	.word	-52
	.word	4
	.word	_Label_374
	.word	-9
	.word	1
	.word	_Label_375
	.word	-56
	.word	4
	.word	_Label_376
	.word	-60
	.word	4
	.word	_Label_377
	.word	-64
	.word	4
	.word	_Label_378
	.word	-68
	.word	4
	.word	_Label_379
	.word	-72
	.word	4
	.word	_Label_380
	.word	-76
	.word	4
	.word	_Label_381
	.word	-80
	.word	4
	.word	0
_Label_362:
	.ascii	"Run\0"
	.align
_Label_363:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_374:
	.byte	'C'
	.ascii	"_temp_349\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_380:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_381:
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
_Label_3398:
	push	r0
	sub	r1,1,r1
	bne	_Label_3398
	mov	157,r13		! source line 157
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
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_382 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_382  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0SE",r10
!   _temp_383 = _function_247_ThreadPrintShort
	set	_function_247_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_384 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_383  sizeInBytes=4
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
	mov	167,r13		! source line 167
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	167,r13		! source line 167
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
	.word	_Label_385
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_386
	.word	-12
	.word	4
	.word	_Label_387
	.word	-16
	.word	4
	.word	_Label_388
	.word	-20
	.word	4
	.word	_Label_389
	.word	-24
	.word	4
	.word	0
_Label_385:
	.ascii	"PrintReadyList\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_389:
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
_Label_3399:
	push	r0
	sub	r1,1,r1
	bne	_Label_3399
	mov	172,r13		! source line 172
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	184,r13		! source line 184
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	184,r13		! source line 184
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	185,r13		! source line 185
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_390 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_390  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_392 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_391 = *_temp_392  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_391  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	186,r13		! source line 186
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	187,r13		! source line 187
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_393 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_393  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	188,r13		! source line 188
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	188,r13		! source line 188
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
	.word	_Label_394
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_395
	.word	-12
	.word	4
	.word	_Label_396
	.word	-16
	.word	4
	.word	_Label_397
	.word	-20
	.word	4
	.word	_Label_398
	.word	-24
	.word	4
	.word	_Label_399
	.word	-28
	.word	4
	.word	_Label_400
	.word	-32
	.word	4
	.word	0
_Label_394:
	.ascii	"ThreadStartMain\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_399:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_400:
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
_Label_3400:
	push	r0
	sub	r1,1,r1
	bne	_Label_3400
	mov	193,r13		! source line 193
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	204,r13		! source line 204
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	204,r13		! source line 204
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	208,r13		! source line 208
	mov	"\0\0SE",r10
!   _temp_401 = &_P_Kernel_threadsToBeDestroyed
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
	mov	209,r13		! source line 209
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
!   _temp_402 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_402  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	211,r13		! source line 211
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	211,r13		! source line 211
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
	.word	_Label_403
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_404
	.word	-12
	.word	4
	.word	_Label_405
	.word	-16
	.word	4
	.word	_Label_406
	.word	-20
	.word	4
	.word	0
_Label_403:
	.ascii	"ThreadFinish\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_406:
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
_Label_3401:
	push	r0
	sub	r1,1,r1
	bne	_Label_3401
	mov	216,r13		! source line 216
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	224,r13		! source line 224
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_407 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_407  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	225,r13		! source line 225
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	226,r13		! source line 226
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_409		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_409
!	jmp	_Label_408
_Label_408:
! THEN...
	mov	227,r13		! source line 227
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_410 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_410  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	227,r13		! source line 227
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_412 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_411 = *_temp_412  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_411  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	228,r13		! source line 228
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_409:
! CALL STATEMENT...
!   _temp_413 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_413  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	230,r13		! source line 230
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	231,r13		! source line 231
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_414 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_414  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	232,r13		! source line 232
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_415 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_415  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	233,r13		! source line 233
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	234,r13		! source line 234
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	234,r13		! source line 234
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
	.word	_Label_416
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_417
	.word	8
	.word	4
	.word	_Label_418
	.word	-12
	.word	4
	.word	_Label_419
	.word	-16
	.word	4
	.word	_Label_420
	.word	-20
	.word	4
	.word	_Label_421
	.word	-24
	.word	4
	.word	_Label_422
	.word	-28
	.word	4
	.word	_Label_423
	.word	-32
	.word	4
	.word	_Label_424
	.word	-36
	.word	4
	.word	_Label_425
	.word	-40
	.word	4
	.word	0
_Label_416:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_417:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_425:
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
_Label_3402:
	push	r0
	sub	r1,1,r1
	bne	_Label_3402
	mov	239,r13		! source line 239
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	252,r13		! source line 252
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_427		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_427
!	jmp	_Label_426
_Label_426:
! THEN...
	mov	255,r13		! source line 255
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	256,r13		! source line 256
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_428
_Label_427:
! ELSE...
	mov	258,r13		! source line 258
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	259,r13		! source line 259
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_428:
! RETURN STATEMENT...
	mov	261,r13		! source line 261
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
	.word	_Label_429
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_430
	.word	8
	.word	4
	.word	_Label_431
	.word	-12
	.word	4
	.word	0
_Label_429:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_430:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_431:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_247_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_247_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3403:
	push	r0
	sub	r1,1,r1
	bne	_Label_3403
	mov	851,r13		! source line 851
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	859,r13		! source line 859
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_435		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_435
!   _temp_434 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_436
_Label_435:
!   _temp_434 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_436:
!   if _temp_434 then goto _Label_433 else goto _Label_432
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_432
	jmp	_Label_433
_Label_432:
! THEN...
	mov	860,r13		! source line 860
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_437 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_437  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_433:
! CALL STATEMENT...
!   _temp_438 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_438  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	863,r13		! source line 863
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_440 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_439 = *_temp_440  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_439  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	864,r13		! source line 864
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_441 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_441  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	865,r13		! source line 865
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	866,r13		! source line 866
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_450 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_449 = *_temp_450  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_444
	cmp	r1,2
	be	_Label_445
	cmp	r1,3
	be	_Label_446
	cmp	r1,4
	be	_Label_447
	cmp	r1,5
	be	_Label_448
	jmp	_Label_442
! CASE 1...
_Label_444:
! CALL STATEMENT...
!   _temp_451 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_451  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	868,r13		! source line 868
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	869,r13		! source line 869
	mov	"\0\0BR",r10
	jmp	_Label_443
! CASE 2...
_Label_445:
! CALL STATEMENT...
!   _temp_452 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_452  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	871,r13		! source line 871
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	872,r13		! source line 872
	mov	"\0\0BR",r10
	jmp	_Label_443
! CASE 3...
_Label_446:
! CALL STATEMENT...
!   _temp_453 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_453  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	874,r13		! source line 874
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	875,r13		! source line 875
	mov	"\0\0BR",r10
	jmp	_Label_443
! CASE 4...
_Label_447:
! CALL STATEMENT...
!   _temp_454 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_454  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	877,r13		! source line 877
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	878,r13		! source line 878
	mov	"\0\0BR",r10
	jmp	_Label_443
! CASE 5...
_Label_448:
! CALL STATEMENT...
!   _temp_455 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_455  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	880,r13		! source line 880
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	881,r13		! source line 881
	mov	"\0\0BR",r10
	jmp	_Label_443
! DEFAULT CASE...
_Label_442:
! CALL STATEMENT...
!   _temp_456 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_456  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	883,r13		! source line 883
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_443:
! CALL STATEMENT...
!   _temp_457 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_457  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	885,r13		! source line 885
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_458 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_458  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	886,r13		! source line 886
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_459 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_459  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	887,r13		! source line 887
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	888,r13		! source line 888
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	890,r13		! source line 890
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	890,r13		! source line 890
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	890,r13		! source line 890
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_247_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_460
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_461
	.word	8
	.word	4
	.word	_Label_462
	.word	-16
	.word	4
	.word	_Label_463
	.word	-20
	.word	4
	.word	_Label_464
	.word	-24
	.word	4
	.word	_Label_465
	.word	-28
	.word	4
	.word	_Label_466
	.word	-32
	.word	4
	.word	_Label_467
	.word	-36
	.word	4
	.word	_Label_468
	.word	-40
	.word	4
	.word	_Label_469
	.word	-44
	.word	4
	.word	_Label_470
	.word	-48
	.word	4
	.word	_Label_471
	.word	-52
	.word	4
	.word	_Label_472
	.word	-56
	.word	4
	.word	_Label_473
	.word	-60
	.word	4
	.word	_Label_474
	.word	-64
	.word	4
	.word	_Label_475
	.word	-68
	.word	4
	.word	_Label_476
	.word	-72
	.word	4
	.word	_Label_477
	.word	-76
	.word	4
	.word	_Label_478
	.word	-9
	.word	1
	.word	_Label_479
	.word	-80
	.word	4
	.word	0
_Label_460:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_461:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_478:
	.byte	'C'
	.ascii	"_temp_434\0"
	.align
_Label_479:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_246_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_246_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3404:
	push	r0
	sub	r1,1,r1
	bne	_Label_3404
	mov	1411,r13		! source line 1411
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_480 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_480  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1415,r13		! source line 1415
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1416,r13		! source line 1416
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1416,r13		! source line 1416
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_246_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_481
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_482
	.word	8
	.word	4
	.word	_Label_483
	.word	-12
	.word	4
	.word	0
_Label_481:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_482:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_480\0"
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
_Label_3405:
	push	r0
	sub	r1,1,r1
	bne	_Label_3405
	mov	1421,r13		! source line 1421
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_484 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_484  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1427,r13		! source line 1427
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1427,r13		! source line 1427
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
	.word	_Label_485
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_486
	.word	8
	.word	4
	.word	_Label_487
	.word	-12
	.word	4
	.word	0
_Label_485:
	.ascii	"ProcessFinish\0"
	.align
_Label_486:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_484\0"
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
_Label_3406:
	push	r0
	sub	r1,1,r1
	bne	_Label_3406
	mov	1935,r13		! source line 1935
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1945,r13		! source line 1945
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1947,r13		! source line 1947
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
	mov	1948,r13		! source line 1948
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1948,r13		! source line 1948
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
	.word	_Label_488
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_488:
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
	mov	7,r1
_Label_3407:
	push	r0
	sub	r1,1,r1
	bne	_Label_3407
	mov	1953,r13		! source line 1953
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1965,r13		! source line 1965
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1967,r13		! source line 1967
	mov	"\0\0IF",r10
!   _temp_492 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_493 = _temp_492 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_491 = *_temp_493  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_491 == 0 then goto _Label_490		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_490
!	jmp	_Label_489
_Label_489:
! THEN...
	mov	1968,r13		! source line 1968
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1968,r13		! source line 1968
	mov	"\0\0SE",r10
!   _temp_495 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_496 = _temp_495 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_494 = *_temp_496  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_494) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_490:
! RETURN STATEMENT...
	mov	1967,r13		! source line 1967
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_497
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_498
	.word	-12
	.word	4
	.word	_Label_499
	.word	-16
	.word	4
	.word	_Label_500
	.word	-20
	.word	4
	.word	_Label_501
	.word	-24
	.word	4
	.word	_Label_502
	.word	-28
	.word	4
	.word	_Label_503
	.word	-32
	.word	4
	.word	0
_Label_497:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_491\0"
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
	mov	1975,r13		! source line 1975
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1984,r13		! source line 1984
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1984,r13		! source line 1984
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
	.word	_Label_504
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_504:
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
_Label_3408:
	push	r0
	sub	r1,1,r1
	bne	_Label_3408
	mov	1989,r13		! source line 1989
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1995,r13		! source line 1995
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_505 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_505  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1996,r13		! source line 1996
	mov	"\0\0CA",r10
	call	_function_245_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1996,r13		! source line 1996
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
	.word	_Label_506
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_507
	.word	-12
	.word	4
	.word	0
_Label_506:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_505\0"
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
_Label_3409:
	push	r0
	sub	r1,1,r1
	bne	_Label_3409
	mov	2001,r13		! source line 2001
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2007,r13		! source line 2007
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_508 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_508  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2008,r13		! source line 2008
	mov	"\0\0CA",r10
	call	_function_245_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2008,r13		! source line 2008
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
	.word	_Label_509
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_510
	.word	-12
	.word	4
	.word	0
_Label_509:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_508\0"
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
_Label_3410:
	push	r0
	sub	r1,1,r1
	bne	_Label_3410
	mov	2013,r13		! source line 2013
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2019,r13		! source line 2019
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_511 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_511  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2020,r13		! source line 2020
	mov	"\0\0CA",r10
	call	_function_245_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2020,r13		! source line 2020
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
	.word	_Label_512
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_513
	.word	-12
	.word	4
	.word	0
_Label_512:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_511\0"
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
_Label_3411:
	push	r0
	sub	r1,1,r1
	bne	_Label_3411
	mov	2025,r13		! source line 2025
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2031,r13		! source line 2031
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_514 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_514  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2032,r13		! source line 2032
	mov	"\0\0CA",r10
	call	_function_245_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2032,r13		! source line 2032
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
	.word	_Label_515
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_516
	.word	-12
	.word	4
	.word	0
_Label_515:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_514\0"
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
_Label_3412:
	push	r0
	sub	r1,1,r1
	bne	_Label_3412
	mov	2037,r13		! source line 2037
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2043,r13		! source line 2043
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_517 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_517  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2044,r13		! source line 2044
	mov	"\0\0CA",r10
	call	_function_245_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2044,r13		! source line 2044
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
	.word	_Label_518
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_519
	.word	-12
	.word	4
	.word	0
_Label_518:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_517\0"
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
_Label_3413:
	push	r0
	sub	r1,1,r1
	bne	_Label_3413
	mov	2049,r13		! source line 2049
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2055,r13		! source line 2055
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_520 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_520  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2056,r13		! source line 2056
	mov	"\0\0CA",r10
	call	_function_245_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2056,r13		! source line 2056
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
	.word	_Label_521
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_522
	.word	-12
	.word	4
	.word	0
_Label_521:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_520\0"
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
_Label_3414:
	push	r0
	sub	r1,1,r1
	bne	_Label_3414
	mov	2061,r13		! source line 2061
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_523 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_523  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2068,r13		! source line 2068
	mov	"\0\0CA",r10
	call	_function_245_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2068,r13		! source line 2068
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
	.word	_Label_524
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_525
	.word	-12
	.word	4
	.word	0
_Label_524:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_245_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_245_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3415:
	push	r0
	sub	r1,1,r1
	bne	_Label_3415
	mov	2073,r13		! source line 2073
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_526 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_526  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2078,r13		! source line 2078
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2079,r13		! source line 2079
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_527 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_527  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2080,r13		! source line 2080
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2083,r13		! source line 2083
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_531 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_530 = *_temp_531  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_530 == 0 then goto _Label_529		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_529
!	jmp	_Label_528
_Label_528:
! THEN...
	mov	2084,r13		! source line 2084
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2084,r13		! source line 2084
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_533 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_532 = *_temp_533  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_532) then goto _runtimeErrorNullPointer
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
	jmp	_Label_534
_Label_529:
! ELSE...
	mov	2086,r13		! source line 2086
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_535 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_535  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2086,r13		! source line 2086
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_534:
! SEND STATEMENT...
	mov	2088,r13		! source line 2088
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
	mov	2094,r13		! source line 2094
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	2094,r13		! source line 2094
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_245_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_536
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_537
	.word	8
	.word	4
	.word	_Label_538
	.word	-12
	.word	4
	.word	_Label_539
	.word	-16
	.word	4
	.word	_Label_540
	.word	-20
	.word	4
	.word	_Label_541
	.word	-24
	.word	4
	.word	_Label_542
	.word	-28
	.word	4
	.word	_Label_543
	.word	-32
	.word	4
	.word	_Label_544
	.word	-36
	.word	4
	.word	0
_Label_536:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_537:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_526\0"
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
_Label_3416:
	push	r0
	sub	r1,1,r1
	bne	_Label_3416
	mov	2099,r13		! source line 2099
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2106,r13		! source line 2106
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	2120,r13		! source line 2120
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3417
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_545
_Label_3417:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_545
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_545
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_559,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_559:
	jmp	_Label_551	! 1:	
	jmp	_Label_558	! 2:	
	jmp	_Label_548	! 3:	
	jmp	_Label_547	! 4:	
	jmp	_Label_550	! 5:	
	jmp	_Label_549	! 6:	
	jmp	_Label_552	! 7:	
	jmp	_Label_553	! 8:	
	jmp	_Label_554	! 9:	
	jmp	_Label_555	! 10:	
	jmp	_Label_556	! 11:	
	jmp	_Label_557	! 12:	
! CASE 4...
_Label_547:
! RETURN STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0RE",r10
!   Call the function
	mov	2122,r13		! source line 2122
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_560  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_560  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_548:
! CALL STATEMENT...
!   Call the function
	mov	2124,r13		! source line 2124
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_549:
! RETURN STATEMENT...
	mov	2127,r13		! source line 2127
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2127,r13		! source line 2127
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_561  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_561  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_550:
! RETURN STATEMENT...
	mov	2129,r13		! source line 2129
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2129,r13		! source line 2129
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_562  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_562  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_551:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2131,r13		! source line 2131
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	2132,r13		! source line 2132
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_552:
! RETURN STATEMENT...
	mov	2134,r13		! source line 2134
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2134,r13		! source line 2134
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_563  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_563  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_553:
! RETURN STATEMENT...
	mov	2136,r13		! source line 2136
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2136,r13		! source line 2136
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_564  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_564  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_554:
! RETURN STATEMENT...
	mov	2138,r13		! source line 2138
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
	mov	2138,r13		! source line 2138
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_565  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_565  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_555:
! RETURN STATEMENT...
	mov	2140,r13		! source line 2140
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
	mov	2140,r13		! source line 2140
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_566  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_566  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_556:
! RETURN STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2142,r13		! source line 2142
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_567  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_567  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_557:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2144,r13		! source line 2144
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	2145,r13		! source line 2145
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_558:
! CALL STATEMENT...
!   Call the function
	mov	2147,r13		! source line 2147
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	2148,r13		! source line 2148
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_545:
! CALL STATEMENT...
!   _temp_568 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_568  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2150,r13		! source line 2150
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2151,r13		! source line 2151
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2152,r13		! source line 2152
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_569 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_569  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2153,r13		! source line 2153
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_546:
! RETURN STATEMENT...
	mov	2155,r13		! source line 2155
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
	.word	_Label_570
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_571
	.word	8
	.word	4
	.word	_Label_572
	.word	12
	.word	4
	.word	_Label_573
	.word	16
	.word	4
	.word	_Label_574
	.word	20
	.word	4
	.word	_Label_575
	.word	24
	.word	4
	.word	_Label_576
	.word	-12
	.word	4
	.word	_Label_577
	.word	-16
	.word	4
	.word	_Label_578
	.word	-20
	.word	4
	.word	_Label_579
	.word	-24
	.word	4
	.word	_Label_580
	.word	-28
	.word	4
	.word	_Label_581
	.word	-32
	.word	4
	.word	_Label_582
	.word	-36
	.word	4
	.word	_Label_583
	.word	-40
	.word	4
	.word	_Label_584
	.word	-44
	.word	4
	.word	_Label_585
	.word	-48
	.word	4
	.word	0
_Label_570:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_571:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_572:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_573:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_574:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_575:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_560\0"
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
	mov	4,r1
_Label_3418:
	push	r0
	sub	r1,1,r1
	bne	_Label_3418
	mov	2160,r13		! source line 2160
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_586 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_586  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2161,r13		! source line 2161
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_587 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_587  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2162,r13		! source line 2162
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2163,r13		! source line 2163
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_588 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_588  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2164,r13		! source line 2164
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_589
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_590
	.word	8
	.word	4
	.word	_Label_591
	.word	-12
	.word	4
	.word	_Label_592
	.word	-16
	.word	4
	.word	_Label_593
	.word	-20
	.word	4
	.word	0
_Label_589:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_590:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_586\0"
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
	mov	2,r1
_Label_3419:
	push	r0
	sub	r1,1,r1
	bne	_Label_3419
	mov	2169,r13		! source line 2169
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_594 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_594  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2171,r13		! source line 2171
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_595
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_596
	.word	-12
	.word	4
	.word	0
_Label_595:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_594\0"
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
	mov	3,r1
_Label_3420:
	push	r0
	sub	r1,1,r1
	bne	_Label_3420
	mov	2177,r13		! source line 2177
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_597 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_597  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2178,r13		! source line 2178
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_598 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_598  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2179,r13		! source line 2179
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2179,r13		! source line 2179
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_599
	.word	0		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_600
	.word	-12
	.word	4
	.word	_Label_601
	.word	-16
	.word	4
	.word	0
_Label_599:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_597\0"
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
	mov	3,r1
_Label_3421:
	push	r0
	sub	r1,1,r1
	bne	_Label_3421
	mov	2184,r13		! source line 2184
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_602 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_602  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2185,r13		! source line 2185
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_603 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_603  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2186,r13		! source line 2186
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2187,r13		! source line 2187
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_604
	.word	0		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_605
	.word	-12
	.word	4
	.word	_Label_606
	.word	-16
	.word	4
	.word	0
_Label_604:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_602\0"
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
	mov	4,r1
_Label_3422:
	push	r0
	sub	r1,1,r1
	bne	_Label_3422
	mov	2192,r13		! source line 2192
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_607 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_607  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2193,r13		! source line 2193
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_608 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_608  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2194,r13		! source line 2194
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2195,r13		! source line 2195
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_609 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_609  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2196,r13		! source line 2196
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2197,r13		! source line 2197
	mov	"\0\0RE",r10
!   ReturnResult: 2000  (sizeInBytes=4)
	mov	2000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_610
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_611
	.word	8
	.word	4
	.word	_Label_612
	.word	-12
	.word	4
	.word	_Label_613
	.word	-16
	.word	4
	.word	_Label_614
	.word	-20
	.word	4
	.word	0
_Label_610:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_611:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_607\0"
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
	mov	69,r1
_Label_3423:
	push	r0
	sub	r1,1,r1
	bne	_Label_3423
	mov	2202,r13		! source line 2202
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-224,r4
	mov	23,r3
_Label_3424:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3424
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	2214,r13		! source line 2214
	mov	"\0\0AS",r10
	mov	2214,r13		! source line 2214
	mov	"\0\0SE",r10
!   _temp_616 = &strBuffer
	add	r14,-248,r1
	store	r1,[r14+-128]
!   _temp_617 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-124]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_619 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-116]
!   Data Move: _temp_618 = *_temp_619  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_618) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_620 = _temp_618 + 32
	load	[r14+-120],r1
	add	r1,32,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=12  value=_temp_616  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_617  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2217,r13		! source line 2217
	mov	"\0\0IF",r10
!   if i >= 0 then goto _Label_622		(int)
	load	[r14+-252],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_622
!	jmp	_Label_621
_Label_621:
! THEN...
	mov	2218,r13		! source line 2218
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2218,r13		! source line 2218
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_622:
! SEND STATEMENT...
	mov	2222,r13		! source line 2222
	mov	"\0\0SE",r10
!   _temp_623 = &newAddrSpace
	add	r14,-224,r1
	store	r1,[r14+-108]
!   Send message Init
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2227,r13		! source line 2227
	mov	"\0\0AS",r10
	mov	2227,r13		! source line 2227
	mov	"\0\0SE",r10
!   _temp_624 = &strBuffer
	add	r14,-248,r1
	store	r1,[r14+-104]
!   _temp_625 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_624  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=filePtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-268]
! IF STATEMENT...
	mov	2228,r13		! source line 2228
	mov	"\0\0IF",r10
!   if intIsZero (filePtr) then goto _Label_626
	load	[r14+-268],r1
	cmp	r1,r0
	be	_Label_626
	jmp	_Label_627
_Label_626:
! THEN...
	mov	2229,r13		! source line 2229
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2229,r13		! source line 2229
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_627:
! ASSIGNMENT STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0AS",r10
	mov	2231,r13		! source line 2231
	mov	"\0\0SE",r10
!   _temp_628 = &newAddrSpace
	add	r14,-224,r1
	store	r1,[r14+-96]
!   if intIsZero (filePtr) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_628  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-268],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-256]
! SEND STATEMENT...
	mov	2232,r13		! source line 2232
	mov	"\0\0SE",r10
!   _temp_629 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=filePtr  sizeInBytes=4
	load	[r14+-268],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2235,r13		! source line 2235
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_632 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_631 = *_temp_632  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_631) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_633 = _temp_631 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   _temp_630 = _temp_633		(4 bytes)
	load	[r14+-76],r1
	store	r1,[r14+-88]
!   _temp_634 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_630  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2236,r13		! source line 2236
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_636 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_635 = *_temp_636  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_635) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_637 = _temp_635 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_637 = newAddrSpace  (sizeInBytes=92)
	add	r14,-224,r5
	load	[r14+-60],r4
	mov	23,r3
_Label_3425:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3425
! ASSIGNMENT STATEMENT...
	mov	2239,r13		! source line 2239
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_640 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_639 = *_temp_640  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_639) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_641 = _temp_639 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_642 = _temp_641 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_638 = *_temp_642  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   InitUserStackTop = _temp_638 * 8192		(int)
	load	[r14+-56],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	2240,r13		! source line 2240
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_643 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_643 [999 ] into _temp_644
!     make sure index expr is >= 0
	mov	999,r2
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
!   initSystemStackTop = _temp_644		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2246,r13		! source line 2246
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_646 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_645 = *_temp_646  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_645) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_647 = _temp_645 + 32
	load	[r14+-28],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Send message SetToThisPageTable
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2247,r13		! source line 2247
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_648 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_648 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_649 = initSystemStackTop		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=InitUserStackTop  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_649  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	2251,r13		! source line 2251
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2253,r13		! source line 2253
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_650
	.word	4		! total size of parameters
	.word	276		! frame size = 276
	.word	_Label_651
	.word	8
	.word	4
	.word	_Label_652
	.word	-12
	.word	4
	.word	_Label_653
	.word	-16
	.word	4
	.word	_Label_654
	.word	-20
	.word	4
	.word	_Label_655
	.word	-24
	.word	4
	.word	_Label_656
	.word	-28
	.word	4
	.word	_Label_657
	.word	-32
	.word	4
	.word	_Label_658
	.word	-36
	.word	4
	.word	_Label_659
	.word	-40
	.word	4
	.word	_Label_660
	.word	-44
	.word	4
	.word	_Label_661
	.word	-48
	.word	4
	.word	_Label_662
	.word	-52
	.word	4
	.word	_Label_663
	.word	-56
	.word	4
	.word	_Label_664
	.word	-60
	.word	4
	.word	_Label_665
	.word	-64
	.word	4
	.word	_Label_666
	.word	-68
	.word	4
	.word	_Label_667
	.word	-72
	.word	4
	.word	_Label_668
	.word	-76
	.word	4
	.word	_Label_669
	.word	-80
	.word	4
	.word	_Label_670
	.word	-84
	.word	4
	.word	_Label_671
	.word	-88
	.word	4
	.word	_Label_672
	.word	-92
	.word	4
	.word	_Label_673
	.word	-96
	.word	4
	.word	_Label_674
	.word	-100
	.word	4
	.word	_Label_675
	.word	-104
	.word	4
	.word	_Label_676
	.word	-108
	.word	4
	.word	_Label_677
	.word	-112
	.word	4
	.word	_Label_678
	.word	-116
	.word	4
	.word	_Label_679
	.word	-120
	.word	4
	.word	_Label_680
	.word	-124
	.word	4
	.word	_Label_681
	.word	-128
	.word	4
	.word	_Label_682
	.word	-132
	.word	4
	.word	_Label_683
	.word	-224
	.word	92
	.word	_Label_684
	.word	-248
	.word	24
	.word	_Label_685
	.word	-252
	.word	4
	.word	_Label_686
	.word	-256
	.word	4
	.word	_Label_687
	.word	-260
	.word	4
	.word	_Label_688
	.word	-264
	.word	4
	.word	_Label_689
	.word	-268
	.word	4
	.word	0
_Label_650:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_651:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_683:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_684:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_685:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_686:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_687:
	.byte	'I'
	.ascii	"InitUserStackTop\0"
	.align
_Label_688:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
_Label_689:
	.byte	'P'
	.ascii	"filePtr\0"
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
	mov	23,r1
_Label_3426:
	push	r0
	sub	r1,1,r1
	bne	_Label_3426
	mov	2258,r13		! source line 2258
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2263,r13		! source line 2263
	mov	"\0\0AS",r10
	mov	2263,r13		! source line 2263
	mov	"\0\0SE",r10
!   _temp_690 = &strBuffer
	add	r14,-80,r1
	store	r1,[r14+-56]
!   _temp_691 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_693 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_692 = *_temp_693  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_692) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_694 = _temp_692 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_690  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_691  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! IF STATEMENT...
	mov	2265,r13		! source line 2265
	mov	"\0\0IF",r10
!   if i >= 0 then goto _Label_696		(int)
	load	[r14+-84],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_696
!	jmp	_Label_695
_Label_695:
! THEN...
	mov	2266,r13		! source line 2266
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2266,r13		! source line 2266
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_696:
! CALL STATEMENT...
!   _temp_697 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_697  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2269,r13		! source line 2269
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_698 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_698  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2270,r13		! source line 2270
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_699 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_699  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2271,r13		! source line 2271
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_700 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_700  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2272,r13		! source line 2272
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_701 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_701  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2273,r13		! source line 2273
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_702 = &strBuffer
	add	r14,-80,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_702  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2274,r13		! source line 2274
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_703 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_703  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2275,r13		! source line 2275
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2276,r13		! source line 2276
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_704
	.word	4		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_705
	.word	8
	.word	4
	.word	_Label_706
	.word	-12
	.word	4
	.word	_Label_707
	.word	-16
	.word	4
	.word	_Label_708
	.word	-20
	.word	4
	.word	_Label_709
	.word	-24
	.word	4
	.word	_Label_710
	.word	-28
	.word	4
	.word	_Label_711
	.word	-32
	.word	4
	.word	_Label_712
	.word	-36
	.word	4
	.word	_Label_713
	.word	-40
	.word	4
	.word	_Label_714
	.word	-44
	.word	4
	.word	_Label_715
	.word	-48
	.word	4
	.word	_Label_716
	.word	-52
	.word	4
	.word	_Label_717
	.word	-56
	.word	4
	.word	_Label_718
	.word	-80
	.word	24
	.word	_Label_719
	.word	-84
	.word	4
	.word	0
_Label_704:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_705:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_718:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_719:
	.byte	'I'
	.ascii	"i\0"
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
	mov	22,r1
_Label_3427:
	push	r0
	sub	r1,1,r1
	bne	_Label_3427
	mov	2281,r13		! source line 2281
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2286,r13		! source line 2286
	mov	"\0\0AS",r10
	mov	2286,r13		! source line 2286
	mov	"\0\0SE",r10
!   _temp_720 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-52]
!   _temp_721 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-48]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_723 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_722 = *_temp_723  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_722) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_724 = _temp_722 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_720  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_721  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	2288,r13		! source line 2288
	mov	"\0\0IF",r10
!   if i >= 0 then goto _Label_726		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_726
!	jmp	_Label_725
_Label_725:
! THEN...
	mov	2289,r13		! source line 2289
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2289,r13		! source line 2289
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_726:
! CALL STATEMENT...
!   _temp_727 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_727  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2291,r13		! source line 2291
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_728 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_728  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2292,r13		! source line 2292
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_729 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_729  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2293,r13		! source line 2293
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_730 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_730  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2294,r13		! source line 2294
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_731 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_731  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2295,r13		! source line 2295
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_732 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_732  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2296,r13		! source line 2296
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2298,r13		! source line 2298
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_733
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_734
	.word	8
	.word	4
	.word	_Label_735
	.word	-12
	.word	4
	.word	_Label_736
	.word	-16
	.word	4
	.word	_Label_737
	.word	-20
	.word	4
	.word	_Label_738
	.word	-24
	.word	4
	.word	_Label_739
	.word	-28
	.word	4
	.word	_Label_740
	.word	-32
	.word	4
	.word	_Label_741
	.word	-36
	.word	4
	.word	_Label_742
	.word	-40
	.word	4
	.word	_Label_743
	.word	-44
	.word	4
	.word	_Label_744
	.word	-48
	.word	4
	.word	_Label_745
	.word	-52
	.word	4
	.word	_Label_746
	.word	-76
	.word	24
	.word	_Label_747
	.word	-80
	.word	4
	.word	0
_Label_733:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_734:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_746:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_747:
	.byte	'I'
	.ascii	"i\0"
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
	mov	7,r1
_Label_3428:
	push	r0
	sub	r1,1,r1
	bne	_Label_3428
	mov	2303,r13		! source line 2303
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_748 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_748  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2304,r13		! source line 2304
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_749 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_749  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2305,r13		! source line 2305
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2306,r13		! source line 2306
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_750 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_750  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2307,r13		! source line 2307
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_751 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_751  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2308,r13		! source line 2308
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_752 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_752  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2309,r13		! source line 2309
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2310,r13		! source line 2310
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_753 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_753  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2311,r13		! source line 2311
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2312,r13		! source line 2312
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_754
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_755
	.word	8
	.word	4
	.word	_Label_756
	.word	12
	.word	4
	.word	_Label_757
	.word	16
	.word	4
	.word	_Label_758
	.word	-12
	.word	4
	.word	_Label_759
	.word	-16
	.word	4
	.word	_Label_760
	.word	-20
	.word	4
	.word	_Label_761
	.word	-24
	.word	4
	.word	_Label_762
	.word	-28
	.word	4
	.word	_Label_763
	.word	-32
	.word	4
	.word	0
_Label_754:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_755:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_756:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_757:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_748\0"
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
	mov	7,r1
_Label_3429:
	push	r0
	sub	r1,1,r1
	bne	_Label_3429
	mov	2317,r13		! source line 2317
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_764 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_764  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2318,r13		! source line 2318
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_765 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_765  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2319,r13		! source line 2319
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2320,r13		! source line 2320
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_766 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_766  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2321,r13		! source line 2321
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_767 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_767  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2322,r13		! source line 2322
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_768 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_768  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2323,r13		! source line 2323
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2324,r13		! source line 2324
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_769 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_769  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2325,r13		! source line 2325
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2326,r13		! source line 2326
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_770
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_771
	.word	8
	.word	4
	.word	_Label_772
	.word	12
	.word	4
	.word	_Label_773
	.word	16
	.word	4
	.word	_Label_774
	.word	-12
	.word	4
	.word	_Label_775
	.word	-16
	.word	4
	.word	_Label_776
	.word	-20
	.word	4
	.word	_Label_777
	.word	-24
	.word	4
	.word	_Label_778
	.word	-28
	.word	4
	.word	_Label_779
	.word	-32
	.word	4
	.word	0
_Label_770:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_771:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_772:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_773:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_769\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_768\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_767\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_766\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_764\0"
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
	mov	5,r1
_Label_3430:
	push	r0
	sub	r1,1,r1
	bne	_Label_3430
	mov	2331,r13		! source line 2331
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_780 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_780  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2332,r13		! source line 2332
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_781 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_781  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2333,r13		! source line 2333
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2334,r13		! source line 2334
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_782 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_782  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2335,r13		! source line 2335
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2336,r13		! source line 2336
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_783 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_783  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2337,r13		! source line 2337
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2338,r13		! source line 2338
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_784
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_785
	.word	8
	.word	4
	.word	_Label_786
	.word	12
	.word	4
	.word	_Label_787
	.word	-12
	.word	4
	.word	_Label_788
	.word	-16
	.word	4
	.word	_Label_789
	.word	-20
	.word	4
	.word	_Label_790
	.word	-24
	.word	4
	.word	0
_Label_784:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_785:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_786:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_780\0"
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
	mov	4,r1
_Label_3431:
	push	r0
	sub	r1,1,r1
	bne	_Label_3431
	mov	2343,r13		! source line 2343
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_791 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_791  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2344,r13		! source line 2344
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_792 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_792  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2345,r13		! source line 2345
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2346,r13		! source line 2346
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_793 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_793  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2347,r13		! source line 2347
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2347,r13		! source line 2347
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_794
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_795
	.word	8
	.word	4
	.word	_Label_796
	.word	-12
	.word	4
	.word	_Label_797
	.word	-16
	.word	4
	.word	_Label_798
	.word	-20
	.word	4
	.word	0
_Label_794:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_795:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_244_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_244_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3432:
	push	r0
	sub	r1,1,r1
	bne	_Label_3432
	mov	2937,r13		! source line 2937
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2939,r13		! source line 2939
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2940,r13		! source line 2940
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2941,r13		! source line 2941
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_799 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_799  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2942,r13		! source line 2942
	mov	"\0\0AS",r10
!   _temp_800 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_800) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_802 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_802) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_801 = *_temp_802  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_800 = _temp_801  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2943,r13		! source line 2943
	mov	"\0\0AS",r10
!   _temp_803 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_803) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_805 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_805) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_804 = *_temp_805  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_803 = _temp_804  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2944,r13		! source line 2944
	mov	"\0\0AS",r10
!   _temp_806 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_806) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_808 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_808) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_807 = *_temp_808  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_806 = _temp_807  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2944,r13		! source line 2944
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_244_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_809
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_810
	.word	8
	.word	4
	.word	_Label_811
	.word	12
	.word	4
	.word	_Label_812
	.word	-16
	.word	4
	.word	_Label_813
	.word	-9
	.word	1
	.word	_Label_814
	.word	-20
	.word	4
	.word	_Label_815
	.word	-24
	.word	4
	.word	_Label_816
	.word	-10
	.word	1
	.word	_Label_817
	.word	-28
	.word	4
	.word	_Label_818
	.word	-32
	.word	4
	.word	_Label_819
	.word	-11
	.word	1
	.word	_Label_820
	.word	-36
	.word	4
	.word	_Label_821
	.word	-12
	.word	1
	.word	_Label_822
	.word	-40
	.word	4
	.word	_Label_823
	.word	-44
	.word	4
	.word	0
_Label_809:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_810:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_811:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_813:
	.byte	'C'
	.ascii	"_temp_807\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_816:
	.byte	'C'
	.ascii	"_temp_804\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_819:
	.byte	'C'
	.ascii	"_temp_801\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_821:
	.byte	'C'
	.ascii	"_temp_799\0"
	.align
_Label_822:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_823:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_243_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_243_printFCB,r1
	push	r1
	mov	3,r1
_Label_3433:
	push	r0
	sub	r1,1,r1
	bne	_Label_3433
	mov	2947,r13		! source line 2947
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_825 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_824 = *_temp_825  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_824  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2948,r13		! source line 2948
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2949,r13		! source line 2949
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2949,r13		! source line 2949
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_243_printFCB:
	.word	_sourceFileName
	.word	_Label_826
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_827
	.word	8
	.word	4
	.word	_Label_828
	.word	-12
	.word	4
	.word	_Label_829
	.word	-16
	.word	4
	.word	0
_Label_826:
	.ascii	"printFCB\0"
	.align
_Label_827:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_242_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_242_printOpen,r1
	push	r1
	mov	4,r1
_Label_3434:
	push	r0
	sub	r1,1,r1
	bne	_Label_3434
	mov	2952,r13		! source line 2952
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_830 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_830  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2953,r13		! source line 2953
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_831 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_831  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2954,r13		! source line 2954
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_832 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_832  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2955,r13		! source line 2955
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2956,r13		! source line 2956
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2956,r13		! source line 2956
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_242_printOpen:
	.word	_sourceFileName
	.word	_Label_833
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_834
	.word	8
	.word	4
	.word	_Label_835
	.word	-12
	.word	4
	.word	_Label_836
	.word	-16
	.word	4
	.word	_Label_837
	.word	-20
	.word	4
	.word	0
_Label_833:
	.ascii	"printOpen\0"
	.align
_Label_834:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_838
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_838:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_839
	.word	_sourceFileName
	.word	127		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_839:
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
_Label_3435:
	push	r0
	sub	r1,1,r1
	bne	_Label_3435
	mov	290,r13		! source line 290
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	291,r13		! source line 291
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_841		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_841
!	jmp	_Label_840
_Label_840:
! THEN...
	mov	292,r13		! source line 292
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_842 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_842  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	292,r13		! source line 292
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_841:
! ASSIGNMENT STATEMENT...
	mov	294,r13		! source line 294
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
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
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_844
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_845
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_846
	.word	12
	.word	4
	.word	_Label_847
	.word	-12
	.word	4
	.word	_Label_848
	.word	-16
	.word	4
	.word	0
_Label_844:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_845:
	.ascii	"Pself\0"
	.align
_Label_846:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_842\0"
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
_Label_3436:
	push	r0
	sub	r1,1,r1
	bne	_Label_3436
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	304,r13		! source line 304
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_850		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_850
!	jmp	_Label_849
_Label_849:
! THEN...
	mov	306,r13		! source line 306
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_851 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_851  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	306,r13		! source line 306
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_850:
! ASSIGNMENT STATEMENT...
	mov	308,r13		! source line 308
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
	mov	309,r13		! source line 309
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_853		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_853
!	jmp	_Label_852
_Label_852:
! THEN...
	mov	310,r13		! source line 310
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0AS",r10
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_854 = &waitingThreads
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
	mov	311,r13		! source line 311
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_855 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_855 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0SE",r10
!   _temp_856 = &_P_Kernel_readyList
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
_Label_853:
! ASSIGNMENT STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	314,r13		! source line 314
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	314,r13		! source line 314
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
	.word	_Label_857
	.word	4		! total size of parameters
	.word	32		! frame size = 32
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
	.word	0
_Label_857:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
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
	.ascii	"_temp_851\0"
	.align
_Label_863:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_864:
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
_Label_3437:
	push	r0
	sub	r1,1,r1
	bne	_Label_3437
	mov	319,r13		! source line 319
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	322,r13		! source line 322
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	323,r13		! source line 323
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_866		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_866
!	jmp	_Label_865
_Label_865:
! THEN...
	mov	324,r13		! source line 324
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_867 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_867  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	324,r13		! source line 324
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_866:
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
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
	mov	327,r13		! source line 327
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_869		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_869
!	jmp	_Label_868
_Label_868:
! THEN...
	mov	328,r13		! source line 328
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0SE",r10
!   _temp_870 = &waitingThreads
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
	mov	329,r13		! source line 329
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
_Label_869:
! ASSIGNMENT STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	331,r13		! source line 331
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	331,r13		! source line 331
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
	.word	_Label_871
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_872
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_873
	.word	-12
	.word	4
	.word	_Label_874
	.word	-16
	.word	4
	.word	_Label_875
	.word	-20
	.word	4
	.word	0
_Label_871:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_872:
	.ascii	"Pself\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_875:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_876
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_876:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_877
	.word	_sourceFileName
	.word	140		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_877:
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
_Label_3438:
	push	r0
	sub	r1,1,r1
	bne	_Label_3438
	mov	354,r13		! source line 354
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	355,r13		! source line 355
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
	mov	355,r13		! source line 355
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
	.word	_Label_879
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_880
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_881
	.word	-12
	.word	4
	.word	0
_Label_879:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_880:
	.ascii	"Pself\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_878\0"
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
_Label_3439:
	push	r0
	sub	r1,1,r1
	bne	_Label_3439
	mov	360,r13		! source line 360
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	363,r13		! source line 363
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_883		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_883
!	jmp	_Label_882
_Label_882:
! THEN...
	mov	364,r13		! source line 364
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_884 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_884  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	364,r13		! source line 364
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_883:
! ASSIGNMENT STATEMENT...
	mov	366,r13		! source line 366
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	366,r13		! source line 366
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	367,r13		! source line 367
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_888		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_888
!   _temp_887 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_889
_Label_888:
!   _temp_887 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_889:
!   if _temp_887 then goto _Label_886 else goto _Label_885
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_885
	jmp	_Label_886
_Label_885:
! THEN...
	mov	368,r13		! source line 368
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	368,r13		! source line 368
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_890
_Label_886:
! ELSE...
	mov	370,r13		! source line 370
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	370,r13		! source line 370
	mov	"\0\0SE",r10
!   _temp_891 = &waitingThreads
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
	mov	371,r13		! source line 371
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
_Label_890:
! ASSIGNMENT STATEMENT...
	mov	373,r13		! source line 373
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	373,r13		! source line 373
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	373,r13		! source line 373
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
	.word	_Label_892
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_893
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_894
	.word	-16
	.word	4
	.word	_Label_895
	.word	-9
	.word	1
	.word	_Label_896
	.word	-20
	.word	4
	.word	_Label_897
	.word	-24
	.word	4
	.word	0
_Label_892:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_893:
	.ascii	"Pself\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_895:
	.byte	'C'
	.ascii	"_temp_887\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_897:
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
_Label_3440:
	push	r0
	sub	r1,1,r1
	bne	_Label_3440
	mov	378,r13		! source line 378
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	382,r13		! source line 382
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_899		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_899
!	jmp	_Label_898
_Label_898:
! THEN...
	mov	383,r13		! source line 383
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_900 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_900  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	383,r13		! source line 383
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_899:
! ASSIGNMENT STATEMENT...
	mov	385,r13		! source line 385
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	385,r13		! source line 385
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	386,r13		! source line 386
	mov	"\0\0AS",r10
	mov	386,r13		! source line 386
	mov	"\0\0SE",r10
!   _temp_901 = &waitingThreads
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
	mov	387,r13		! source line 387
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_903		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_903
!	jmp	_Label_902
_Label_902:
! THEN...
	mov	388,r13		! source line 388
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	388,r13		! source line 388
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_904 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_904 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0SE",r10
!   _temp_905 = &_P_Kernel_readyList
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
	mov	390,r13		! source line 390
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_906
_Label_903:
! ELSE...
	mov	392,r13		! source line 392
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_906:
! ASSIGNMENT STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	394,r13		! source line 394
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	394,r13		! source line 394
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
	.word	_Label_907
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_908
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_909
	.word	-12
	.word	4
	.word	_Label_910
	.word	-16
	.word	4
	.word	_Label_911
	.word	-20
	.word	4
	.word	_Label_912
	.word	-24
	.word	4
	.word	_Label_913
	.word	-28
	.word	4
	.word	_Label_914
	.word	-32
	.word	4
	.word	0
_Label_907:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_908:
	.ascii	"Pself\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_901\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_913:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_914:
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
_Label_3441:
	push	r0
	sub	r1,1,r1
	bne	_Label_3441
	mov	399,r13		! source line 399
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	400,r13		! source line 400
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_917		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_917
!	jmp	_Label_916
_Label_916:
!   _temp_915 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_918
_Label_917:
!   _temp_915 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_918:
!   ReturnResult: _temp_915  (sizeInBytes=1)
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
	.word	_Label_919
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_920
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_921
	.word	-9
	.word	1
	.word	0
_Label_919:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_920:
	.ascii	"Pself\0"
	.align
_Label_921:
	.byte	'C'
	.ascii	"_temp_915\0"
	.align
! 
! ===============  CLASS HoareMutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareMutex:
	.word	_Label_922
	jmp	_Method_P_Kernel_HoareMutex_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareMutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_HoareMutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_HoareMutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_922:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_923
	.word	_sourceFileName
	.word	154		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_HoareMutex
	.word	_P_System_Object
	.word	0
_Label_923:
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
_Label_3442:
	push	r0
	sub	r1,1,r1
	bne	_Label_3442
	mov	422,r13		! source line 422
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	423,r13		! source line 423
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
	mov	423,r13		! source line 423
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
	.word	_Label_925
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_926
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_927
	.word	-12
	.word	4
	.word	0
_Label_925:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_926:
	.ascii	"Pself\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_924\0"
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
_Label_3443:
	push	r0
	sub	r1,1,r1
	bne	_Label_3443
	mov	428,r13		! source line 428
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	431,r13		! source line 431
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_929		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_929
!	jmp	_Label_928
_Label_928:
! THEN...
	mov	433,r13		! source line 433
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_930 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_930  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	433,r13		! source line 433
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_929:
! IF STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_934		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_934
!   _temp_933 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_935
_Label_934:
!   _temp_933 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_935:
!   if _temp_933 then goto _Label_932 else goto _Label_931
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_931
	jmp	_Label_932
_Label_931:
! THEN...
	mov	436,r13		! source line 436
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_936
_Label_932:
! ELSE...
	mov	438,r13		! source line 438
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0SE",r10
!   _temp_937 = &waitingThreads
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
	mov	439,r13		! source line 439
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
_Label_936:
! ASSIGNMENT STATEMENT...
	mov	441,r13		! source line 441
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	441,r13		! source line 441
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	441,r13		! source line 441
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
	.word	_Label_938
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_939
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_940
	.word	-16
	.word	4
	.word	_Label_941
	.word	-9
	.word	1
	.word	_Label_942
	.word	-20
	.word	4
	.word	_Label_943
	.word	-24
	.word	4
	.word	0
_Label_938:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_939:
	.ascii	"Pself\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_941:
	.byte	'C'
	.ascii	"_temp_933\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_943:
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
_Label_3444:
	push	r0
	sub	r1,1,r1
	bne	_Label_3444
	mov	446,r13		! source line 446
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	450,r13		! source line 450
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	450,r13		! source line 450
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	451,r13		! source line 451
	mov	"\0\0AS",r10
	mov	451,r13		! source line 451
	mov	"\0\0SE",r10
!   _temp_944 = &waitingThreads
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
	mov	452,r13		! source line 452
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_946		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_946
!	jmp	_Label_945
_Label_945:
! THEN...
	mov	453,r13		! source line 453
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_947 = t + 76
	load	[r14+-28],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_947 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0SE",r10
!   _temp_948 = &_P_Kernel_readyList
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
	mov	455,r13		! source line 455
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-28],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_949
_Label_946:
! ELSE...
	mov	457,r13		! source line 457
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_949:
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	459,r13		! source line 459
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	459,r13		! source line 459
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
	.word	_Label_950
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_951
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_952
	.word	-12
	.word	4
	.word	_Label_953
	.word	-16
	.word	4
	.word	_Label_954
	.word	-20
	.word	4
	.word	_Label_955
	.word	-24
	.word	4
	.word	_Label_956
	.word	-28
	.word	4
	.word	0
_Label_950:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_951:
	.ascii	"Pself\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_955:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_956:
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
_Label_3445:
	push	r0
	sub	r1,1,r1
	bne	_Label_3445
	mov	464,r13		! source line 464
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	465,r13		! source line 465
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_959		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_959
!	jmp	_Label_958
_Label_958:
!   _temp_957 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_960
_Label_959:
!   _temp_957 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_960:
!   ReturnResult: _temp_957  (sizeInBytes=1)
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
	.word	_Label_961
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_962
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_963
	.word	-9
	.word	1
	.word	0
_Label_961:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_962:
	.ascii	"Pself\0"
	.align
_Label_963:
	.byte	'C'
	.ascii	"_temp_957\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_964
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_964:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_965
	.word	_sourceFileName
	.word	168		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_965:
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
_Label_3446:
	push	r0
	sub	r1,1,r1
	bne	_Label_3446
	mov	505,r13		! source line 505
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	506,r13		! source line 506
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
	mov	506,r13		! source line 506
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
	.word	_Label_967
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_968
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_969
	.word	-12
	.word	4
	.word	0
_Label_967:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_968:
	.ascii	"Pself\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_966\0"
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
_Label_3447:
	push	r0
	sub	r1,1,r1
	bne	_Label_3447
	mov	511,r13		! source line 511
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	514,r13		! source line 514
	mov	"\0\0IF",r10
	mov	514,r13		! source line 514
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
!   Retrieve Result: targetName=_temp_972  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_972 then goto _Label_971 else goto _Label_970
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_970
	jmp	_Label_971
_Label_970:
! THEN...
	mov	515,r13		! source line 515
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_973 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_973  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	515,r13		! source line 515
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_971:
! ASSIGNMENT STATEMENT...
	mov	517,r13		! source line 517
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	517,r13		! source line 517
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	518,r13		! source line 518
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
	mov	519,r13		! source line 519
	mov	"\0\0SE",r10
!   _temp_974 = &waitingThreads
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
	mov	520,r13		! source line 520
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
	mov	521,r13		! source line 521
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
	mov	522,r13		! source line 522
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	522,r13		! source line 522
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	522,r13		! source line 522
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
	.word	_Label_975
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_976
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_977
	.word	12
	.word	4
	.word	_Label_978
	.word	-16
	.word	4
	.word	_Label_979
	.word	-20
	.word	4
	.word	_Label_980
	.word	-9
	.word	1
	.word	_Label_981
	.word	-24
	.word	4
	.word	0
_Label_975:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_976:
	.ascii	"Pself\0"
	.align
_Label_977:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_980:
	.byte	'C'
	.ascii	"_temp_972\0"
	.align
_Label_981:
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
_Label_3448:
	push	r0
	sub	r1,1,r1
	bne	_Label_3448
	mov	527,r13		! source line 527
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	531,r13		! source line 531
	mov	"\0\0IF",r10
	mov	531,r13		! source line 531
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
!   Retrieve Result: targetName=_temp_984  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_984 then goto _Label_983 else goto _Label_982
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_982
	jmp	_Label_983
_Label_982:
! THEN...
	mov	532,r13		! source line 532
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_985 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_985  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	532,r13		! source line 532
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_983:
! ASSIGNMENT STATEMENT...
	mov	534,r13		! source line 534
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	534,r13		! source line 534
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	535,r13		! source line 535
	mov	"\0\0AS",r10
	mov	535,r13		! source line 535
	mov	"\0\0SE",r10
!   _temp_986 = &waitingThreads
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
	mov	536,r13		! source line 536
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_988		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_988
!	jmp	_Label_987
_Label_987:
! THEN...
	mov	537,r13		! source line 537
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	537,r13		! source line 537
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_989 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_989 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	538,r13		! source line 538
	mov	"\0\0SE",r10
!   _temp_990 = &_P_Kernel_readyList
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
_Label_988:
! ASSIGNMENT STATEMENT...
	mov	540,r13		! source line 540
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	540,r13		! source line 540
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	540,r13		! source line 540
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
	.word	_Label_991
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_992
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_993
	.word	12
	.word	4
	.word	_Label_994
	.word	-16
	.word	4
	.word	_Label_995
	.word	-20
	.word	4
	.word	_Label_996
	.word	-24
	.word	4
	.word	_Label_997
	.word	-28
	.word	4
	.word	_Label_998
	.word	-9
	.word	1
	.word	_Label_999
	.word	-32
	.word	4
	.word	_Label_1000
	.word	-36
	.word	4
	.word	0
_Label_991:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_992:
	.ascii	"Pself\0"
	.align
_Label_993:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_998:
	.byte	'C'
	.ascii	"_temp_984\0"
	.align
_Label_999:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1000:
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
_Label_3449:
	push	r0
	sub	r1,1,r1
	bne	_Label_3449
	mov	545,r13		! source line 545
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	549,r13		! source line 549
	mov	"\0\0IF",r10
	mov	549,r13		! source line 549
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
!   Retrieve Result: targetName=_temp_1003  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1003 then goto _Label_1002 else goto _Label_1001
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1001
	jmp	_Label_1002
_Label_1001:
! THEN...
	mov	550,r13		! source line 550
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1004 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1004  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	550,r13		! source line 550
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1002:
! ASSIGNMENT STATEMENT...
	mov	552,r13		! source line 552
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	552,r13		! source line 552
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0WH",r10
_Label_1005:
!	jmp	_Label_1006
_Label_1006:
	mov	553,r13		! source line 553
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	554,r13		! source line 554
	mov	"\0\0AS",r10
	mov	554,r13		! source line 554
	mov	"\0\0SE",r10
!   _temp_1008 = &waitingThreads
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
	mov	555,r13		! source line 555
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_1009
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1009
	jmp	_Label_1010
_Label_1009:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	556,r13		! source line 556
	mov	"\0\0BR",r10
	jmp	_Label_1007
! END IF...
_Label_1010:
! ASSIGNMENT STATEMENT...
	mov	558,r13		! source line 558
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1011 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1011 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	559,r13		! source line 559
	mov	"\0\0SE",r10
!   _temp_1012 = &_P_Kernel_readyList
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
	jmp	_Label_1005
_Label_1007:
! ASSIGNMENT STATEMENT...
	mov	561,r13		! source line 561
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	561,r13		! source line 561
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	561,r13		! source line 561
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
	.word	_Label_1013
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1014
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1015
	.word	12
	.word	4
	.word	_Label_1016
	.word	-16
	.word	4
	.word	_Label_1017
	.word	-20
	.word	4
	.word	_Label_1018
	.word	-24
	.word	4
	.word	_Label_1019
	.word	-28
	.word	4
	.word	_Label_1020
	.word	-9
	.word	1
	.word	_Label_1021
	.word	-32
	.word	4
	.word	_Label_1022
	.word	-36
	.word	4
	.word	0
_Label_1013:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1014:
	.ascii	"Pself\0"
	.align
_Label_1015:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1020:
	.byte	'C'
	.ascii	"_temp_1003\0"
	.align
_Label_1021:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1022:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS HoareCondition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareCondition:
	.word	_Label_1023
	jmp	_Method_P_Kernel_HoareCondition_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareCondition_2	! 8:	Wait
	jmp	_Method_P_Kernel_HoareCondition_3	! 12:	Signal
	.word	0
! 
! Class descriptor:
! 
_Label_1023:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1024
	.word	_sourceFileName
	.word	181		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_HoareCondition
	.word	_P_System_Object
	.word	0
_Label_1024:
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
_Label_3450:
	push	r0
	sub	r1,1,r1
	bne	_Label_3450
	mov	592,r13		! source line 592
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	593,r13		! source line 593
	mov	"\0\0AS",r10
!   countVar = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	594,r13		! source line 594
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
	mov	595,r13		! source line 595
	mov	"\0\0SE",r10
!   _temp_1026 = &hoareSem
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
	mov	595,r13		! source line 595
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
	.word	_Label_1027
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1028
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1029
	.word	-12
	.word	4
	.word	_Label_1030
	.word	-16
	.word	4
	.word	0
_Label_1027:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1028:
	.ascii	"Pself\0"
	.align
_Label_1029:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1030:
	.byte	'?'
	.ascii	"_temp_1025\0"
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
_Label_3451:
	push	r0
	sub	r1,1,r1
	bne	_Label_3451
	mov	600,r13		! source line 600
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	605,r13		! source line 605
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	605,r13		! source line 605
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	607,r13		! source line 607
	mov	"\0\0IF",r10
	mov	607,r13		! source line 607
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
!   Retrieve Result: targetName=_temp_1033  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1033 then goto _Label_1032 else goto _Label_1031
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1031
	jmp	_Label_1032
_Label_1031:
! THEN...
	mov	608,r13		! source line 608
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1034 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1034  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	608,r13		! source line 608
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1032:
! ASSIGNMENT STATEMENT...
	mov	613,r13		! source line 613
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
	mov	614,r13		! source line 614
	mov	"\0\0IF",r10
!   if nextCount <= 0 then goto _Label_1036		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1036
!	jmp	_Label_1035
_Label_1035:
! THEN...
	mov	615,r13		! source line 615
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	615,r13		! source line 615
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
	jmp	_Label_1037
_Label_1036:
! ELSE...
	mov	617,r13		! source line 617
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	617,r13		! source line 617
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
_Label_1037:
! SEND STATEMENT...
	mov	619,r13		! source line 619
	mov	"\0\0SE",r10
!   _temp_1038 = &hoareSem
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
	mov	620,r13		! source line 620
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
	mov	623,r13		! source line 623
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	623,r13		! source line 623
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
	.word	_Label_1039
	.word	16		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1040
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1041
	.word	12
	.word	4
	.word	_Label_1042
	.word	16
	.word	4
	.word	_Label_1043
	.word	20
	.word	4
	.word	_Label_1044
	.word	-16
	.word	4
	.word	_Label_1045
	.word	-20
	.word	4
	.word	_Label_1046
	.word	-9
	.word	1
	.word	_Label_1047
	.word	-24
	.word	4
	.word	0
_Label_1039:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1040:
	.ascii	"Pself\0"
	.align
_Label_1041:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1042:
	.byte	'P'
	.ascii	"threadSem\0"
	.align
_Label_1043:
	.byte	'I'
	.ascii	"nextCount\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1046:
	.byte	'C'
	.ascii	"_temp_1033\0"
	.align
_Label_1047:
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
_Label_3452:
	push	r0
	sub	r1,1,r1
	bne	_Label_3452
	mov	628,r13		! source line 628
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	633,r13		! source line 633
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	634,r13		! source line 634
	mov	"\0\0IF",r10
	mov	634,r13		! source line 634
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
!   Retrieve Result: targetName=_temp_1050  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1050 then goto _Label_1049 else goto _Label_1048
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1048
	jmp	_Label_1049
_Label_1048:
! THEN...
	mov	635,r13		! source line 635
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1051 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1051  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	635,r13		! source line 635
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1049:
! IF STATEMENT...
	mov	639,r13		! source line 639
	mov	"\0\0IF",r10
!   if countVar <= 0 then goto _Label_1053		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1053
!	jmp	_Label_1052
_Label_1052:
! THEN...
	mov	640,r13		! source line 640
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	640,r13		! source line 640
	mov	"\0\0AS",r10
!   nextCount = nextCount + 1		(int)
	load	[r14+20],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! SEND STATEMENT...
	mov	641,r13		! source line 641
	mov	"\0\0SE",r10
!   _temp_1054 = &hoareSem
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
	mov	642,r13		! source line 642
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
	mov	643,r13		! source line 643
	mov	"\0\0AS",r10
!   nextCount = nextCount - 1		(int)
	load	[r14+20],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! END IF...
_Label_1053:
! ASSIGNMENT STATEMENT...
	mov	647,r13		! source line 647
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	647,r13		! source line 647
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
	.word	_Label_1055
	.word	16		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1056
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1057
	.word	12
	.word	4
	.word	_Label_1058
	.word	16
	.word	4
	.word	_Label_1059
	.word	20
	.word	4
	.word	_Label_1060
	.word	-16
	.word	4
	.word	_Label_1061
	.word	-20
	.word	4
	.word	_Label_1062
	.word	-9
	.word	1
	.word	_Label_1063
	.word	-24
	.word	4
	.word	0
_Label_1055:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1056:
	.ascii	"Pself\0"
	.align
_Label_1057:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1058:
	.byte	'P'
	.ascii	"threadSem\0"
	.align
_Label_1059:
	.byte	'I'
	.ascii	"nextCount\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1062:
	.byte	'C'
	.ascii	"_temp_1050\0"
	.align
_Label_1063:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1064
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
_Label_1064:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1065
	.word	_sourceFileName
	.word	195		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1065:
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
_Label_3453:
	push	r0
	sub	r1,1,r1
	bne	_Label_3453
	mov	658,r13		! source line 658
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	663,r13		! source line 663
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	664,r13		! source line 664
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	666,r13		! source line 666
	mov	"\0\0AS",r10
!   _temp_1066 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1066) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1066 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	667,r13		! source line 667
	mov	"\0\0AS",r10
!   _temp_1067 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1067 [0 ] into _temp_1068
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
!   Data Move: *_temp_1068 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	668,r13		! source line 668
	mov	"\0\0AS",r10
!   _temp_1069 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1069 [999 ] into _temp_1070
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
!   Data Move: *_temp_1070 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	669,r13		! source line 669
	mov	"\0\0AS",r10
!   _temp_1071 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1071 [999 ] into _temp_1072
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
!   stackTop = _temp_1072		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	670,r13		! source line 670
	mov	"\0\0AS",r10
!   _temp_1073 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1075 = &_temp_1074
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1075 = _temp_1075 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1077:
!   Data Move: *_temp_1075 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1075 = _temp_1075 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1076 = _temp_1076 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1076) then goto _Label_1077
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1077
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1078 = &_temp_1074
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3454
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3454:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1073 = *_temp_1078  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3455:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3455
! ASSIGNMENT STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	672,r13		! source line 672
	mov	"\0\0AS",r10
!   _temp_1079 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1081 = &_temp_1080
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1081 = _temp_1081 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1083:
!   Data Move: *_temp_1081 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1081 = _temp_1081 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1082 = _temp_1082 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1082) then goto _Label_1083
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1083
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1084 = &_temp_1080
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3456
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3456:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1079 = *_temp_1084  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3457:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3457
! RETURN STATEMENT...
	mov	672,r13		! source line 672
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
	.word	_Label_1085
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1086
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1087
	.word	12
	.word	4
	.word	_Label_1088
	.word	-12
	.word	4
	.word	_Label_1089
	.word	-16
	.word	4
	.word	_Label_1090
	.word	-20
	.word	4
	.word	_Label_1091
	.word	-84
	.word	64
	.word	_Label_1092
	.word	-88
	.word	4
	.word	_Label_1093
	.word	-92
	.word	4
	.word	_Label_1094
	.word	-96
	.word	4
	.word	_Label_1095
	.word	-100
	.word	4
	.word	_Label_1096
	.word	-156
	.word	56
	.word	_Label_1097
	.word	-160
	.word	4
	.word	_Label_1098
	.word	-164
	.word	4
	.word	_Label_1099
	.word	-168
	.word	4
	.word	_Label_1100
	.word	-172
	.word	4
	.word	_Label_1101
	.word	-176
	.word	4
	.word	_Label_1102
	.word	-180
	.word	4
	.word	_Label_1103
	.word	-184
	.word	4
	.word	_Label_1104
	.word	-188
	.word	4
	.word	0
_Label_1085:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1086:
	.ascii	"Pself\0"
	.align
_Label_1087:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1066\0"
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
_Label_3458:
	push	r0
	sub	r1,1,r1
	bne	_Label_3458
	mov	677,r13		! source line 677
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	688,r13		! source line 688
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	688,r13		! source line 688
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	690,r13		! source line 690
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	691,r13		! source line 691
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	692,r13		! source line 692
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
	mov	693,r13		! source line 693
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1105 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1105  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	694,r13		! source line 694
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	695,r13		! source line 695
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1107 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1106  sizeInBytes=4
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
	mov	696,r13		! source line 696
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	696,r13		! source line 696
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	696,r13		! source line 696
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
	.word	_Label_1108
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1109
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1110
	.word	12
	.word	4
	.word	_Label_1111
	.word	16
	.word	4
	.word	_Label_1112
	.word	-12
	.word	4
	.word	_Label_1113
	.word	-16
	.word	4
	.word	_Label_1114
	.word	-20
	.word	4
	.word	_Label_1115
	.word	-24
	.word	4
	.word	_Label_1116
	.word	-28
	.word	4
	.word	0
_Label_1108:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1109:
	.ascii	"Pself\0"
	.align
_Label_1110:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1111:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1115:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1116:
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
_Label_3459:
	push	r0
	sub	r1,1,r1
	bne	_Label_3459
	mov	701,r13		! source line 701
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	717,r13		! source line 717
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1119 == _P_Kernel_currentThread then goto _Label_1118		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1118
!	jmp	_Label_1117
_Label_1117:
! THEN...
	mov	718,r13		! source line 718
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1120 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1120  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	718,r13		! source line 718
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1118:
! ASSIGNMENT STATEMENT...
	mov	720,r13		! source line 720
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	720,r13		! source line 720
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	724,r13		! source line 724
	mov	"\0\0AS",r10
	mov	724,r13		! source line 724
	mov	"\0\0SE",r10
!   _temp_1121 = &_P_Kernel_readyList
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
	mov	725,r13		! source line 725
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_1123		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1123
!	jmp	_Label_1122
_Label_1122:
! THEN...
	mov	729,r13		! source line 729
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	729,r13		! source line 729
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1125		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1125
!	jmp	_Label_1124
_Label_1124:
! THEN...
	mov	730,r13		! source line 730
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1126 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1126  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	730,r13		! source line 730
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1125:
! ASSIGNMENT STATEMENT...
	mov	732,r13		! source line 732
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	733,r13		! source line 733
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1128 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1127  sizeInBytes=4
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
	mov	734,r13		! source line 734
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_1123:
! ASSIGNMENT STATEMENT...
	mov	736,r13		! source line 736
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	736,r13		! source line 736
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	736,r13		! source line 736
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
	.word	_Label_1129
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1130
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1131
	.word	-12
	.word	4
	.word	_Label_1132
	.word	-16
	.word	4
	.word	_Label_1133
	.word	-20
	.word	4
	.word	_Label_1134
	.word	-24
	.word	4
	.word	_Label_1135
	.word	-28
	.word	4
	.word	_Label_1136
	.word	-32
	.word	4
	.word	_Label_1137
	.word	-36
	.word	4
	.word	_Label_1138
	.word	-40
	.word	4
	.word	_Label_1139
	.word	-44
	.word	4
	.word	0
_Label_1129:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1130:
	.ascii	"Pself\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1137:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1138:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1139:
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
_Label_3460:
	push	r0
	sub	r1,1,r1
	bne	_Label_3460
	mov	741,r13		! source line 741
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	753,r13		! source line 753
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1141		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1141
!	jmp	_Label_1140
_Label_1140:
! THEN...
	mov	754,r13		! source line 754
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1142 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1142  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	754,r13		! source line 754
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1141:
! IF STATEMENT...
	mov	757,r13		! source line 757
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1145 == _P_Kernel_currentThread then goto _Label_1144		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1144
!	jmp	_Label_1143
_Label_1143:
! THEN...
	mov	758,r13		! source line 758
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1146 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1146  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	758,r13		! source line 758
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1144:
! ASSIGNMENT STATEMENT...
	mov	763,r13		! source line 763
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	764,r13		! source line 764
	mov	"\0\0AS",r10
	mov	764,r13		! source line 764
	mov	"\0\0SE",r10
!   _temp_1147 = &_P_Kernel_readyList
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
	mov	765,r13		! source line 765
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1148
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1148
	jmp	_Label_1149
_Label_1148:
! THEN...
	mov	766,r13		! source line 766
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1150 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1150  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	766,r13		! source line 766
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1149:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	768,r13		! source line 768
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	768,r13		! source line 768
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
	.word	_Label_1151
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1152
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1153
	.word	-12
	.word	4
	.word	_Label_1154
	.word	-16
	.word	4
	.word	_Label_1155
	.word	-20
	.word	4
	.word	_Label_1156
	.word	-24
	.word	4
	.word	_Label_1157
	.word	-28
	.word	4
	.word	_Label_1158
	.word	-32
	.word	4
	.word	0
_Label_1151:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1152:
	.ascii	"Pself\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1158:
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
_Label_3461:
	push	r0
	sub	r1,1,r1
	bne	_Label_3461
	mov	773,r13		! source line 773
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	779,r13		! source line 779
	mov	"\0\0IF",r10
!   _temp_1162 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1162 [0 ] into _temp_1163
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
!   Data Move: _temp_1161 = *_temp_1163  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1161 == 606348324 then goto _Label_1160		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1160
!	jmp	_Label_1159
_Label_1159:
! THEN...
	mov	780,r13		! source line 780
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1164 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1164  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	780,r13		! source line 780
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1165
_Label_1160:
! ELSE...
	mov	781,r13		! source line 781
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	781,r13		! source line 781
	mov	"\0\0IF",r10
!   _temp_1169 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1169 [999 ] into _temp_1170
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
!   Data Move: _temp_1168 = *_temp_1170  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1168 == 606348324 then goto _Label_1167		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1167
!	jmp	_Label_1166
_Label_1166:
! THEN...
	mov	782,r13		! source line 782
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1171 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1171  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	782,r13		! source line 782
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1167:
! END IF...
_Label_1165:
! RETURN STATEMENT...
	mov	779,r13		! source line 779
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
	.word	_Label_1172
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1173
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1174
	.word	-12
	.word	4
	.word	_Label_1175
	.word	-16
	.word	4
	.word	_Label_1176
	.word	-20
	.word	4
	.word	_Label_1177
	.word	-24
	.word	4
	.word	_Label_1178
	.word	-28
	.word	4
	.word	_Label_1179
	.word	-32
	.word	4
	.word	_Label_1180
	.word	-36
	.word	4
	.word	_Label_1181
	.word	-40
	.word	4
	.word	0
_Label_1172:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1173:
	.ascii	"Pself\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1161\0"
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
_Label_3462:
	push	r0
	sub	r1,1,r1
	bne	_Label_3462
	mov	788,r13		! source line 788
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	794,r13		! source line 794
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	794,r13		! source line 794
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1182 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1182  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	795,r13		! source line 795
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	796,r13		! source line 796
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1183 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1183  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	797,r13		! source line 797
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1184  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	798,r13		! source line 798
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1185 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1185  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	799,r13		! source line 799
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1186 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1186  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	800,r13		! source line 800
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	801,r13		! source line 801
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1191 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1192 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1191  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1187:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1192 then goto _Label_1190		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1190
_Label_1188:
	mov	801,r13		! source line 801
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1193 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1193  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	802,r13		! source line 802
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1194 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1194  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	803,r13		! source line 803
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1195 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1195  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	804,r13		! source line 804
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1197 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1197 [i ] into _temp_1198
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
!   Data Move: _temp_1196 = *_temp_1198  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1196  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	805,r13		! source line 805
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1199 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1199  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	806,r13		! source line 806
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1201 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1201 [i ] into _temp_1202
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
!   Data Move: _temp_1200 = *_temp_1202  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1200  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	807,r13		! source line 807
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1203 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1203  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	808,r13		! source line 808
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1189:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1187
! END FOR
_Label_1190:
! CALL STATEMENT...
!   _temp_1204 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-116]
!   _temp_1205 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1204  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1205  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	810,r13		! source line 810
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1206 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-108]
!   _temp_1208 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1208 [0 ] into _temp_1209
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
!   _temp_1207 = _temp_1209		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1206  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1207  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	811,r13		! source line 811
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	812,r13		! source line 812
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1212
	cmp	r1,2
	be	_Label_1213
	cmp	r1,3
	be	_Label_1214
	cmp	r1,4
	be	_Label_1215
	cmp	r1,5
	be	_Label_1216
	jmp	_Label_1210
! CASE 1...
_Label_1212:
! CALL STATEMENT...
!   _temp_1217 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1217  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	814,r13		! source line 814
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	815,r13		! source line 815
	mov	"\0\0BR",r10
	jmp	_Label_1211
! CASE 2...
_Label_1213:
! CALL STATEMENT...
!   _temp_1218 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1218  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	817,r13		! source line 817
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	818,r13		! source line 818
	mov	"\0\0BR",r10
	jmp	_Label_1211
! CASE 3...
_Label_1214:
! CALL STATEMENT...
!   _temp_1219 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1219  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	820,r13		! source line 820
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	821,r13		! source line 821
	mov	"\0\0BR",r10
	jmp	_Label_1211
! CASE 4...
_Label_1215:
! CALL STATEMENT...
!   _temp_1220 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1220  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	823,r13		! source line 823
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0BR",r10
	jmp	_Label_1211
! CASE 5...
_Label_1216:
! CALL STATEMENT...
!   _temp_1221 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1221  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	826,r13		! source line 826
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	827,r13		! source line 827
	mov	"\0\0BR",r10
	jmp	_Label_1211
! DEFAULT CASE...
_Label_1210:
! CALL STATEMENT...
!   _temp_1222 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1222  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	829,r13		! source line 829
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1211:
! CALL STATEMENT...
!   _temp_1223 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1223  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	831,r13		! source line 831
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	832,r13		! source line 832
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	833,r13		! source line 833
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1224 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1224  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	834,r13		! source line 834
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	835,r13		! source line 835
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1229 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1230 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1229  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1225:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1230 then goto _Label_1228		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1228
_Label_1226:
	mov	835,r13		! source line 835
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1231 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1231  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	836,r13		! source line 836
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1232 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1232  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	837,r13		! source line 837
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1233 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1233  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	838,r13		! source line 838
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1235 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1235 [i ] into _temp_1236
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
!   Data Move: _temp_1234 = *_temp_1236  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1234  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	839,r13		! source line 839
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1237 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1237  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	840,r13		! source line 840
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1239 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1239 [i ] into _temp_1240
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
!   Data Move: _temp_1238 = *_temp_1240  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1238  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	841,r13		! source line 841
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1241 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1241  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	842,r13		! source line 842
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1227:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1225
! END FOR
_Label_1228:
! ASSIGNMENT STATEMENT...
	mov	844,r13		! source line 844
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	844,r13		! source line 844
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	844,r13		! source line 844
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
	.word	_Label_1242
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1243
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1244
	.word	-12
	.word	4
	.word	_Label_1245
	.word	-16
	.word	4
	.word	_Label_1246
	.word	-20
	.word	4
	.word	_Label_1247
	.word	-24
	.word	4
	.word	_Label_1248
	.word	-28
	.word	4
	.word	_Label_1249
	.word	-32
	.word	4
	.word	_Label_1250
	.word	-36
	.word	4
	.word	_Label_1251
	.word	-40
	.word	4
	.word	_Label_1252
	.word	-44
	.word	4
	.word	_Label_1253
	.word	-48
	.word	4
	.word	_Label_1254
	.word	-52
	.word	4
	.word	_Label_1255
	.word	-56
	.word	4
	.word	_Label_1256
	.word	-60
	.word	4
	.word	_Label_1257
	.word	-64
	.word	4
	.word	_Label_1258
	.word	-68
	.word	4
	.word	_Label_1259
	.word	-72
	.word	4
	.word	_Label_1260
	.word	-76
	.word	4
	.word	_Label_1261
	.word	-80
	.word	4
	.word	_Label_1262
	.word	-84
	.word	4
	.word	_Label_1263
	.word	-88
	.word	4
	.word	_Label_1264
	.word	-92
	.word	4
	.word	_Label_1265
	.word	-96
	.word	4
	.word	_Label_1266
	.word	-100
	.word	4
	.word	_Label_1267
	.word	-104
	.word	4
	.word	_Label_1268
	.word	-108
	.word	4
	.word	_Label_1269
	.word	-112
	.word	4
	.word	_Label_1270
	.word	-116
	.word	4
	.word	_Label_1271
	.word	-120
	.word	4
	.word	_Label_1272
	.word	-124
	.word	4
	.word	_Label_1273
	.word	-128
	.word	4
	.word	_Label_1274
	.word	-132
	.word	4
	.word	_Label_1275
	.word	-136
	.word	4
	.word	_Label_1276
	.word	-140
	.word	4
	.word	_Label_1277
	.word	-144
	.word	4
	.word	_Label_1278
	.word	-148
	.word	4
	.word	_Label_1279
	.word	-152
	.word	4
	.word	_Label_1280
	.word	-156
	.word	4
	.word	_Label_1281
	.word	-160
	.word	4
	.word	_Label_1282
	.word	-164
	.word	4
	.word	_Label_1283
	.word	-168
	.word	4
	.word	_Label_1284
	.word	-172
	.word	4
	.word	_Label_1285
	.word	-176
	.word	4
	.word	_Label_1286
	.word	-180
	.word	4
	.word	_Label_1287
	.word	-184
	.word	4
	.word	_Label_1288
	.word	-188
	.word	4
	.word	_Label_1289
	.word	-192
	.word	4
	.word	_Label_1290
	.word	-196
	.word	4
	.word	0
_Label_1242:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1243:
	.ascii	"Pself\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1289:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1290:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1291
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1291:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1292
	.word	_sourceFileName
	.word	222		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1292:
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
_Label_3463:
	push	r0
	sub	r1,1,r1
	bne	_Label_3463
	mov	1054,r13		! source line 1054
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1293 = _StringConst_118
	set	_StringConst_118,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1293  sizeInBytes=4
	set	-46016,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	1062,r13		! source line 1062
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1065,r13		! source line 1065
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
	mov	1068,r13		! source line 1068
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
	mov	1069,r13		! source line 1069
	mov	"\0\0SE",r10
!   _temp_1296 = &aThreadBecameFree
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
	mov	1072,r13		! source line 1072
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
	mov	1073,r13		! source line 1073
	mov	"\0\0SE",r10
!   _temp_1298 = &threadManagerLock
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
	mov	1076,r13		! source line 1076
	mov	"\0\0AS",r10
!   _temp_1299 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45992,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1301 = &_temp_1300
	set	-45988,r1
	add	r14,r1,r1
	store	r1,[r14+-4344]
!   _temp_1301 = _temp_1301 + 4
	load	[r14+-4344],r1
	add	r1,4,r1
	store	r1,[r14+-4344]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1303 = zeros  (sizeInBytes=4164)
	add	r14,-4336,r4
	mov	1041,r3
_Label_3464:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3464
!   _temp_1303 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4336]
	mov	10,r1
	store	r1,[r14+-4340]
_Label_1305:
!   Data Move: *_temp_1301 = _temp_1303  (sizeInBytes=4164)
	add	r14,-4336,r5
	load	[r14+-4344],r4
	mov	1041,r3
_Label_3465:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3465
!   _temp_1301 = _temp_1301 + 4164
	load	[r14+-4344],r1
	add	r1,4164,r1
	store	r1,[r14+-4344]
!   _temp_1302 = _temp_1302 + -1
	load	[r14+-4340],r1
	add	r1,-1,r1
	store	r1,[r14+-4340]
!   if intNotZero (_temp_1302) then goto _Label_1305
	load	[r14+-4340],r1
	cmp	r1,r0
	bne	_Label_1305
!   Initialize the array size...
	mov	10,r1
	set	-45988,r2
	store	r1,[r14+r2]
!   _temp_1306 = &_temp_1300
	set	-45988,r1
	add	r14,r1,r1
	store	r1,[r14+-168]
!   make sure array has size 10
	set	-45992,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3466
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3466:
!   make sure array has size 10
	load	[r14+-168],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1299 = *_temp_1306  (sizeInBytes=41644)
	load	[r14+-168],r5
	set	-45992,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3467:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3467
! SEND STATEMENT...
	mov	1077,r13		! source line 1077
	mov	"\0\0SE",r10
!   _temp_1307 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-164]
!   _temp_1308 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_1308 [0 ] into _temp_1309
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
!   Prepare Argument: offset=12  value=_temp_1307  sizeInBytes=4
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
	mov	1078,r13		! source line 1078
	mov	"\0\0SE",r10
!   _temp_1310 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-152]
!   _temp_1311 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-148]
!   Move address of _temp_1311 [1 ] into _temp_1312
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
!   Prepare Argument: offset=12  value=_temp_1310  sizeInBytes=4
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
	mov	1079,r13		! source line 1079
	mov	"\0\0SE",r10
!   _temp_1313 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-140]
!   _temp_1314 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_1314 [2 ] into _temp_1315
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
!   Prepare Argument: offset=12  value=_temp_1313  sizeInBytes=4
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
	mov	1080,r13		! source line 1080
	mov	"\0\0SE",r10
!   _temp_1316 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-128]
!   _temp_1317 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-124]
!   Move address of _temp_1317 [3 ] into _temp_1318
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
!   Prepare Argument: offset=12  value=_temp_1316  sizeInBytes=4
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
	mov	1081,r13		! source line 1081
	mov	"\0\0SE",r10
!   _temp_1319 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-116]
!   _temp_1320 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Move address of _temp_1320 [4 ] into _temp_1321
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
!   Prepare Argument: offset=12  value=_temp_1319  sizeInBytes=4
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
	mov	1082,r13		! source line 1082
	mov	"\0\0SE",r10
!   _temp_1322 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-104]
!   _temp_1323 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Move address of _temp_1323 [5 ] into _temp_1324
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
!   Prepare Argument: offset=12  value=_temp_1322  sizeInBytes=4
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
	mov	1083,r13		! source line 1083
	mov	"\0\0SE",r10
!   _temp_1325 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-92]
!   _temp_1326 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Move address of _temp_1326 [6 ] into _temp_1327
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
!   Prepare Argument: offset=12  value=_temp_1325  sizeInBytes=4
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
	mov	1084,r13		! source line 1084
	mov	"\0\0SE",r10
!   _temp_1328 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-80]
!   _temp_1329 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_1329 [7 ] into _temp_1330
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
!   Prepare Argument: offset=12  value=_temp_1328  sizeInBytes=4
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
	mov	1085,r13		! source line 1085
	mov	"\0\0SE",r10
!   _temp_1331 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-68]
!   _temp_1332 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-64]
!   Move address of _temp_1332 [8 ] into _temp_1333
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
!   Prepare Argument: offset=12  value=_temp_1331  sizeInBytes=4
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
	mov	1086,r13		! source line 1086
	mov	"\0\0SE",r10
!   _temp_1334 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-56]
!   _temp_1335 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_1335 [9 ] into _temp_1336
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
!   Prepare Argument: offset=12  value=_temp_1334  sizeInBytes=4
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
	mov	1089,r13		! source line 1089
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1341 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1342 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1341  (sizeInBytes=4)
	load	[r14+-44],r1
	set	-46020,r2
	store	r1,[r14+r2]
_Label_1337:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1342 then goto _Label_1340		
	set	-46020,r1
	load	[r14+r1],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1340
_Label_1338:
	mov	1089,r13		! source line 1089
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1090,r13		! source line 1090
	mov	"\0\0AS",r10
!   _temp_1343 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1343 [i ] into _temp_1344
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
!   _temp_1345 = _temp_1344 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1345 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1091,r13		! source line 1091
	mov	"\0\0SE",r10
!   _temp_1347 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1347 [i ] into _temp_1348
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
!   _temp_1346 = _temp_1348		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1349 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1346  sizeInBytes=4
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
_Label_1339:
!   i = i + 1
	set	-46020,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46020,r2
	store	r1,[r14+r2]
	jmp	_Label_1337
! END FOR
_Label_1340:
! RETURN STATEMENT...
	mov	1089,r13		! source line 1089
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
	.word	_Label_1350
	.word	4		! total size of parameters
	.word	46020		! frame size = 46020
	.word	_Label_1351
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1352
	.word	-12
	.word	4
	.word	_Label_1353
	.word	-16
	.word	4
	.word	_Label_1354
	.word	-20
	.word	4
	.word	_Label_1355
	.word	-24
	.word	4
	.word	_Label_1356
	.word	-28
	.word	4
	.word	_Label_1357
	.word	-32
	.word	4
	.word	_Label_1358
	.word	-36
	.word	4
	.word	_Label_1359
	.word	-40
	.word	4
	.word	_Label_1360
	.word	-44
	.word	4
	.word	_Label_1361
	.word	-48
	.word	4
	.word	_Label_1362
	.word	-52
	.word	4
	.word	_Label_1363
	.word	-56
	.word	4
	.word	_Label_1364
	.word	-60
	.word	4
	.word	_Label_1365
	.word	-64
	.word	4
	.word	_Label_1366
	.word	-68
	.word	4
	.word	_Label_1367
	.word	-72
	.word	4
	.word	_Label_1368
	.word	-76
	.word	4
	.word	_Label_1369
	.word	-80
	.word	4
	.word	_Label_1370
	.word	-84
	.word	4
	.word	_Label_1371
	.word	-88
	.word	4
	.word	_Label_1372
	.word	-92
	.word	4
	.word	_Label_1373
	.word	-96
	.word	4
	.word	_Label_1374
	.word	-100
	.word	4
	.word	_Label_1375
	.word	-104
	.word	4
	.word	_Label_1376
	.word	-108
	.word	4
	.word	_Label_1377
	.word	-112
	.word	4
	.word	_Label_1378
	.word	-116
	.word	4
	.word	_Label_1379
	.word	-120
	.word	4
	.word	_Label_1380
	.word	-124
	.word	4
	.word	_Label_1381
	.word	-128
	.word	4
	.word	_Label_1382
	.word	-132
	.word	4
	.word	_Label_1383
	.word	-136
	.word	4
	.word	_Label_1384
	.word	-140
	.word	4
	.word	_Label_1385
	.word	-144
	.word	4
	.word	_Label_1386
	.word	-148
	.word	4
	.word	_Label_1387
	.word	-152
	.word	4
	.word	_Label_1388
	.word	-156
	.word	4
	.word	_Label_1389
	.word	-160
	.word	4
	.word	_Label_1390
	.word	-164
	.word	4
	.word	_Label_1391
	.word	-168
	.word	4
	.word	_Label_1392
	.word	-172
	.word	4
	.word	_Label_1393
	.word	-4336
	.word	4164
	.word	_Label_1394
	.word	-4340
	.word	4
	.word	_Label_1395
	.word	-4344
	.word	4
	.word	_Label_1396
	.word	-45988
	.word	41644
	.word	_Label_1397
	.word	-45992
	.word	4
	.word	_Label_1398
	.word	-45996
	.word	4
	.word	_Label_1399
	.word	-46000
	.word	4
	.word	_Label_1400
	.word	-46004
	.word	4
	.word	_Label_1401
	.word	-46008
	.word	4
	.word	_Label_1402
	.word	-46012
	.word	4
	.word	_Label_1403
	.word	-46016
	.word	4
	.word	_Label_1404
	.word	-46020
	.word	4
	.word	0
_Label_1350:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1351:
	.ascii	"Pself\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1404:
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
_Label_3468:
	push	r0
	sub	r1,1,r1
	bne	_Label_3468
	mov	1098,r13		! source line 1098
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1105,r13		! source line 1105
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1105,r13		! source line 1105
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1405 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1405  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1106,r13		! source line 1106
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1410 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1411 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1410  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1406:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1411 then goto _Label_1409		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1409
_Label_1407:
	mov	1107,r13		! source line 1107
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1412 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1412  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1108,r13		! source line 1108
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1109,r13		! source line 1109
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1413 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1413  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1110,r13		! source line 1110
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1415 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1415 [i ] into _temp_1416
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
!   _temp_1414 = _temp_1416		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1414  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1111,r13		! source line 1111
	mov	"\0\0CA",r10
	call	_function_247_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1408:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1406
! END FOR
_Label_1409:
! CALL STATEMENT...
!   _temp_1417 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1417  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1113,r13		! source line 1113
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1114,r13		! source line 1114
	mov	"\0\0SE",r10
!   _temp_1418 = _function_246_PrintObjectAddr
	set	_function_246_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1419 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1418  sizeInBytes=4
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
	mov	1115,r13		! source line 1115
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1116,r13		! source line 1116
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1116,r13		! source line 1116
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	1116,r13		! source line 1116
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
	.word	_Label_1420
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1421
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1422
	.word	-12
	.word	4
	.word	_Label_1423
	.word	-16
	.word	4
	.word	_Label_1424
	.word	-20
	.word	4
	.word	_Label_1425
	.word	-24
	.word	4
	.word	_Label_1426
	.word	-28
	.word	4
	.word	_Label_1427
	.word	-32
	.word	4
	.word	_Label_1428
	.word	-36
	.word	4
	.word	_Label_1429
	.word	-40
	.word	4
	.word	_Label_1430
	.word	-44
	.word	4
	.word	_Label_1431
	.word	-48
	.word	4
	.word	_Label_1432
	.word	-52
	.word	4
	.word	_Label_1433
	.word	-56
	.word	4
	.word	_Label_1434
	.word	-60
	.word	4
	.word	0
_Label_1420:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1421:
	.ascii	"Pself\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1433:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1434:
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
_Label_3469:
	push	r0
	sub	r1,1,r1
	bne	_Label_3469
	mov	1121,r13		! source line 1121
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1129,r13		! source line 1129
	mov	"\0\0SE",r10
!   _temp_1435 = &threadManagerLock
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
	mov	1133,r13		! source line 1133
	mov	"\0\0WH",r10
_Label_1436:
	mov	1133,r13		! source line 1133
	mov	"\0\0SE",r10
!   _temp_1439 = &freeList
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
!   if result==true then goto _Label_1437 else goto _Label_1438
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1438
	jmp	_Label_1437
_Label_1437:
	mov	1133,r13		! source line 1133
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0SE",r10
!   _temp_1440 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1441 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1440  sizeInBytes=4
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
	jmp	_Label_1436
_Label_1438:
! ASSIGNMENT STATEMENT...
	mov	1139,r13		! source line 1139
	mov	"\0\0AS",r10
	mov	1139,r13		! source line 1139
	mov	"\0\0SE",r10
!   _temp_1442 = &freeList
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
	mov	1140,r13		! source line 1140
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1443 = th + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1443 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1143,r13		! source line 1143
	mov	"\0\0SE",r10
!   _temp_1444 = &threadManagerLock
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
	mov	1146,r13		! source line 1146
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
	.word	_Label_1445
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1446
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1447
	.word	-12
	.word	4
	.word	_Label_1448
	.word	-16
	.word	4
	.word	_Label_1449
	.word	-20
	.word	4
	.word	_Label_1450
	.word	-24
	.word	4
	.word	_Label_1451
	.word	-28
	.word	4
	.word	_Label_1452
	.word	-32
	.word	4
	.word	_Label_1453
	.word	-36
	.word	4
	.word	_Label_1454
	.word	-40
	.word	4
	.word	0
_Label_1445:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1446:
	.ascii	"Pself\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1454:
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
_Label_3470:
	push	r0
	sub	r1,1,r1
	bne	_Label_3470
	mov	1152,r13		! source line 1152
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0SE",r10
!   _temp_1455 = &threadManagerLock
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
	mov	1162,r13		! source line 1162
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1456 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1456 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1163,r13		! source line 1163
	mov	"\0\0SE",r10
!   _temp_1457 = &freeList
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
	mov	1167,r13		! source line 1167
	mov	"\0\0SE",r10
!   _temp_1458 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1459 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1458  sizeInBytes=4
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
	mov	1170,r13		! source line 1170
	mov	"\0\0SE",r10
!   _temp_1460 = &threadManagerLock
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
	mov	1170,r13		! source line 1170
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
	.word	_Label_1461
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1462
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1463
	.word	12
	.word	4
	.word	_Label_1464
	.word	-12
	.word	4
	.word	_Label_1465
	.word	-16
	.word	4
	.word	_Label_1466
	.word	-20
	.word	4
	.word	_Label_1467
	.word	-24
	.word	4
	.word	_Label_1468
	.word	-28
	.word	4
	.word	_Label_1469
	.word	-32
	.word	4
	.word	0
_Label_1461:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1462:
	.ascii	"Pself\0"
	.align
_Label_1463:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
! 
! ===============  CLASS HoareThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareThreadManager:
	.word	_Label_1470
	jmp	_Method_P_Kernel_HoareThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_HoareThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_HoareThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1470:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1471
	.word	_sourceFileName
	.word	240		! line number
	.word	8432		! size of instances, in bytes
	.word	_P_Kernel_HoareThreadManager
	.word	_P_System_Object
	.word	0
_Label_1471:
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
_Label_3471:
	push	r0
	sub	r1,1,r1
	bne	_Label_3471
	mov	899,r13		! source line 899
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1472 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-12624]
!   Prepare Argument: offset=8  value=_temp_1472  sizeInBytes=4
	load	[r14+-12624],r1
	store	r1,[r15+0]
!   Call the function
	mov	907,r13		! source line 907
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	910,r13		! source line 910
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
	mov	911,r13		! source line 911
	mov	"\0\0SE",r10
!   _temp_1474 = &threadSem
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
	mov	913,r13		! source line 913
	mov	"\0\0AS",r10
!   nextCount = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+8348]
! ASSIGNMENT STATEMENT...
	mov	916,r13		! source line 916
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
	mov	919,r13		! source line 919
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=40)
	load	[r14+8],r4
	add	r4,8392,r4
	mov	10,r3
_Label_3472:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3472
!   aThreadBecameFree = _P_Kernel_HoareCondition
	set	_P_Kernel_HoareCondition,r1
	load	[r14+8],r2
	store	r1,[r2+8392]
! SEND STATEMENT...
	mov	920,r13		! source line 920
	mov	"\0\0SE",r10
!   _temp_1477 = &aThreadBecameFree
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
	mov	923,r13		! source line 923
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
	mov	924,r13		! source line 924
	mov	"\0\0SE",r10
!   _temp_1479 = &threadManagerLock
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
	mov	927,r13		! source line 927
	mov	"\0\0AS",r10
!   _temp_1480 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12592]
!   NEW ARRAY Constructor...
!   _temp_1482 = &_temp_1481
	add	r14,-12588,r1
	store	r1,[r14+-4256]
!   _temp_1482 = _temp_1482 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1484 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_3473:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3473
!   _temp_1484 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	2,r1
	store	r1,[r14+-4252]
_Label_1486:
!   Data Move: *_temp_1482 = _temp_1484  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_3474:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3474
!   _temp_1482 = _temp_1482 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1483 = _temp_1483 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1483) then goto _Label_1486
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1486
!   Initialize the array size...
	mov	2,r1
	store	r1,[r14+-12588]
!   _temp_1487 = &_temp_1481
	add	r14,-12588,r1
	store	r1,[r14+-80]
!   make sure array has size 2
	load	[r14+-12592],r1
	load	[r1],r1
	set	2, r2
	cmp	r1,0
	be	_Label_3475
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3475:
!   make sure array has size 2
	load	[r14+-80],r1
	load	[r1],r1
	set	2, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1480 = *_temp_1487  (sizeInBytes=8332)
	load	[r14+-80],r5
	load	[r14+-12592],r4
	mov	2083,r3
_Label_3476:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3476
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_1488 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-76]
!   _temp_1489 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Move address of _temp_1489 [0 ] into _temp_1490
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
!   Prepare Argument: offset=12  value=_temp_1488  sizeInBytes=4
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
	mov	932,r13		! source line 932
	mov	"\0\0AS",r10
!   _temp_1491 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-64]
!   Move address of _temp_1491 [0 ] into _temp_1492
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
!   _temp_1493 = _temp_1492 + 76
	load	[r14+-60],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_1493 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-56],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	933,r13		! source line 933
	mov	"\0\0SE",r10
!   _temp_1495 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   Move address of _temp_1495 [0 ] into _temp_1496
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
!   _temp_1494 = _temp_1496		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-52]
!   _temp_1497 = &freeList
	load	[r14+8],r1
	add	r1,8336,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_1494  sizeInBytes=4
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
	mov	934,r13		! source line 934
	mov	"\0\0AS",r10
!   _temp_1498 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1498 [1 ] into _temp_1499
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
!   _temp_1500 = _temp_1499 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1500 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	935,r13		! source line 935
	mov	"\0\0SE",r10
!   _temp_1502 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1502 [1 ] into _temp_1503
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
!   _temp_1501 = _temp_1503		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1504 = &freeList
	load	[r14+8],r1
	add	r1,8336,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1501  sizeInBytes=4
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
	mov	935,r13		! source line 935
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
	.word	_Label_1505
	.word	4		! total size of parameters
	.word	12624		! frame size = 12624
	.word	_Label_1506
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1507
	.word	-12
	.word	4
	.word	_Label_1508
	.word	-16
	.word	4
	.word	_Label_1509
	.word	-20
	.word	4
	.word	_Label_1510
	.word	-24
	.word	4
	.word	_Label_1511
	.word	-28
	.word	4
	.word	_Label_1512
	.word	-32
	.word	4
	.word	_Label_1513
	.word	-36
	.word	4
	.word	_Label_1514
	.word	-40
	.word	4
	.word	_Label_1515
	.word	-44
	.word	4
	.word	_Label_1516
	.word	-48
	.word	4
	.word	_Label_1517
	.word	-52
	.word	4
	.word	_Label_1518
	.word	-56
	.word	4
	.word	_Label_1519
	.word	-60
	.word	4
	.word	_Label_1520
	.word	-64
	.word	4
	.word	_Label_1521
	.word	-68
	.word	4
	.word	_Label_1522
	.word	-72
	.word	4
	.word	_Label_1523
	.word	-76
	.word	4
	.word	_Label_1524
	.word	-80
	.word	4
	.word	_Label_1525
	.word	-84
	.word	4
	.word	_Label_1526
	.word	-4248
	.word	4164
	.word	_Label_1527
	.word	-4252
	.word	4
	.word	_Label_1528
	.word	-4256
	.word	4
	.word	_Label_1529
	.word	-12588
	.word	8332
	.word	_Label_1530
	.word	-12592
	.word	4
	.word	_Label_1531
	.word	-12596
	.word	4
	.word	_Label_1532
	.word	-12600
	.word	4
	.word	_Label_1533
	.word	-12604
	.word	4
	.word	_Label_1534
	.word	-12608
	.word	4
	.word	_Label_1535
	.word	-12612
	.word	4
	.word	_Label_1536
	.word	-12616
	.word	4
	.word	_Label_1537
	.word	-12620
	.word	4
	.word	_Label_1538
	.word	-12624
	.word	4
	.word	0
_Label_1505:
	.ascii	"HoareThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1506:
	.ascii	"Pself\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1472\0"
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
_Label_3477:
	push	r0
	sub	r1,1,r1
	bne	_Label_3477
	mov	941,r13		! source line 941
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	948,r13		! source line 948
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	948,r13		! source line 948
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1539 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1539  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	949,r13		! source line 949
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	950,r13		! source line 950
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1544 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1545 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1544  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1540:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1545 then goto _Label_1543		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1543
_Label_1541:
	mov	950,r13		! source line 950
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1546 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1546  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	951,r13		! source line 951
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	952,r13		! source line 952
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1547 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1547  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	953,r13		! source line 953
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1549 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1549 [i ] into _temp_1550
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
!   _temp_1548 = _temp_1550		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1548  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	954,r13		! source line 954
	mov	"\0\0CA",r10
	call	_function_247_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1542:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1540
! END FOR
_Label_1543:
! CALL STATEMENT...
!   _temp_1551 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1551  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	956,r13		! source line 956
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0SE",r10
!   _temp_1552 = _function_246_PrintObjectAddr
	set	_function_246_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1553 = &freeList
	load	[r14+8],r1
	add	r1,8336,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1552  sizeInBytes=4
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
	mov	958,r13		! source line 958
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	959,r13		! source line 959
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	959,r13		! source line 959
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
	.word	_Label_1554
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1555
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1556
	.word	-12
	.word	4
	.word	_Label_1557
	.word	-16
	.word	4
	.word	_Label_1558
	.word	-20
	.word	4
	.word	_Label_1559
	.word	-24
	.word	4
	.word	_Label_1560
	.word	-28
	.word	4
	.word	_Label_1561
	.word	-32
	.word	4
	.word	_Label_1562
	.word	-36
	.word	4
	.word	_Label_1563
	.word	-40
	.word	4
	.word	_Label_1564
	.word	-44
	.word	4
	.word	_Label_1565
	.word	-48
	.word	4
	.word	_Label_1566
	.word	-52
	.word	4
	.word	_Label_1567
	.word	-56
	.word	4
	.word	_Label_1568
	.word	-60
	.word	4
	.word	0
_Label_1554:
	.ascii	"HoareThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1555:
	.ascii	"Pself\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1567:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1568:
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
_Label_3478:
	push	r0
	sub	r1,1,r1
	bne	_Label_3478
	mov	964,r13		! source line 964
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	972,r13		! source line 972
	mov	"\0\0SE",r10
!   _temp_1569 = &threadManagerLock
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
	mov	977,r13		! source line 977
	mov	"\0\0WH",r10
_Label_1570:
	mov	977,r13		! source line 977
	mov	"\0\0SE",r10
!   _temp_1573 = &freeList
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
!   if result==true then goto _Label_1571 else goto _Label_1572
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1572
	jmp	_Label_1571
_Label_1571:
	mov	977,r13		! source line 977
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_1574 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_1574  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	978,r13		! source line 978
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1576 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1575 = *_temp_1576  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1575  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	979,r13		! source line 979
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	981,r13		! source line 981
	mov	"\0\0SE",r10
!   _temp_1577 = &threadManagerLock
	load	[r14+8],r1
	add	r1,8372,r1
	store	r1,[r14+-88]
!   _temp_1578 = &threadSem
	load	[r14+8],r1
	add	r1,8352,r1
	store	r1,[r14+-84]
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1580) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1581 = _temp_1580 + 8348
	load	[r14+-76],r1
	add	r1,8348,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1579 = *_temp_1581  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   _temp_1582 = &aThreadBecameFree
	load	[r14+8],r1
	add	r1,8392,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_1577  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1578  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1579  sizeInBytes=4
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
!   _temp_1583 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1583  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	983,r13		! source line 983
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	985,r13		! source line 985
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_1584) then goto _runtimeErrorNullPointer
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
	jmp	_Label_1570
_Label_1572:
! CALL STATEMENT...
!   _temp_1585 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1585  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	990,r13		! source line 990
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1587 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1586 = *_temp_1587  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1586  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	991,r13		! source line 991
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	992,r13		! source line 992
	mov	"\0\0AS",r10
	mov	992,r13		! source line 992
	mov	"\0\0SE",r10
!   _temp_1588 = &freeList
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
	mov	993,r13		! source line 993
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1589 = th + 76
	load	[r14+-112],r1
	add	r1,76,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_1589 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-40],r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_1590 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1590  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	994,r13		! source line 994
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	995,r13		! source line 995
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1591) then goto _runtimeErrorNullPointer
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
	mov	999,r13		! source line 999
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1595) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1596 = _temp_1595 + 8348
	load	[r14+-24],r1
	add	r1,8348,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1594 = *_temp_1596  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_1594 <= 0 then goto _Label_1593		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1593
!	jmp	_Label_1592
_Label_1592:
! THEN...
	mov	1000,r13		! source line 1000
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0SE",r10
!   _temp_1597 = &threadSem
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
	jmp	_Label_1598
_Label_1593:
! ELSE...
	mov	1002,r13		! source line 1002
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0SE",r10
!   _temp_1599 = &threadManagerLock
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
_Label_1598:
! RETURN STATEMENT...
	mov	1006,r13		! source line 1006
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
	.word	_Label_1600
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_1601
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1602
	.word	-12
	.word	4
	.word	_Label_1603
	.word	-16
	.word	4
	.word	_Label_1604
	.word	-20
	.word	4
	.word	_Label_1605
	.word	-24
	.word	4
	.word	_Label_1606
	.word	-28
	.word	4
	.word	_Label_1607
	.word	-32
	.word	4
	.word	_Label_1608
	.word	-36
	.word	4
	.word	_Label_1609
	.word	-40
	.word	4
	.word	_Label_1610
	.word	-44
	.word	4
	.word	_Label_1611
	.word	-48
	.word	4
	.word	_Label_1612
	.word	-52
	.word	4
	.word	_Label_1613
	.word	-56
	.word	4
	.word	_Label_1614
	.word	-60
	.word	4
	.word	_Label_1615
	.word	-64
	.word	4
	.word	_Label_1616
	.word	-68
	.word	4
	.word	_Label_1617
	.word	-72
	.word	4
	.word	_Label_1618
	.word	-76
	.word	4
	.word	_Label_1619
	.word	-80
	.word	4
	.word	_Label_1620
	.word	-84
	.word	4
	.word	_Label_1621
	.word	-88
	.word	4
	.word	_Label_1622
	.word	-92
	.word	4
	.word	_Label_1623
	.word	-96
	.word	4
	.word	_Label_1624
	.word	-100
	.word	4
	.word	_Label_1625
	.word	-104
	.word	4
	.word	_Label_1626
	.word	-108
	.word	4
	.word	_Label_1627
	.word	-112
	.word	4
	.word	0
_Label_1600:
	.ascii	"HoareThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1601:
	.ascii	"Pself\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1587\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1575\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1574\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1573\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1627:
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
_Label_3479:
	push	r0
	sub	r1,1,r1
	bne	_Label_3479
	mov	1012,r13		! source line 1012
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1018,r13		! source line 1018
	mov	"\0\0SE",r10
!   _temp_1628 = &threadManagerLock
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
	mov	1022,r13		! source line 1022
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1629 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-80]
!   Data Move: *_temp_1629 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1023,r13		! source line 1023
	mov	"\0\0SE",r10
!   _temp_1630 = &freeList
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
!   _temp_1631 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1631  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1027,r13		! source line 1027
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1633 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_1632 = *_temp_1633  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1632  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	1028,r13		! source line 1028
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1030,r13		! source line 1030
	mov	"\0\0SE",r10
!   _temp_1634 = &threadManagerLock
	load	[r14+8],r1
	add	r1,8372,r1
	store	r1,[r14+-60]
!   _temp_1635 = &threadSem
	load	[r14+8],r1
	add	r1,8352,r1
	store	r1,[r14+-56]
	load	[r14+8],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_1637) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1638 = _temp_1637 + 8348
	load	[r14+-48],r1
	add	r1,8348,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1636 = *_temp_1638  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   _temp_1639 = &aThreadBecameFree
	load	[r14+8],r1
	add	r1,8392,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_1634  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1635  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1636  sizeInBytes=4
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
!   _temp_1640 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1640  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1032,r13		! source line 1032
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1033,r13		! source line 1033
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1641) then goto _runtimeErrorNullPointer
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
	mov	1037,r13		! source line 1037
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1645) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1646 = _temp_1645 + 8348
	load	[r14+-24],r1
	add	r1,8348,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1644 = *_temp_1646  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_1644 <= 0 then goto _Label_1643		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1643
!	jmp	_Label_1642
_Label_1642:
! THEN...
	mov	1038,r13		! source line 1038
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1038,r13		! source line 1038
	mov	"\0\0SE",r10
!   _temp_1647 = &threadSem
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
	jmp	_Label_1648
_Label_1643:
! ELSE...
	mov	1040,r13		! source line 1040
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0SE",r10
!   _temp_1649 = &threadManagerLock
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
_Label_1648:
! RETURN STATEMENT...
	mov	1037,r13		! source line 1037
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
	.word	_Label_1650
	.word	8		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_1651
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1652
	.word	12
	.word	4
	.word	_Label_1653
	.word	-12
	.word	4
	.word	_Label_1654
	.word	-16
	.word	4
	.word	_Label_1655
	.word	-20
	.word	4
	.word	_Label_1656
	.word	-24
	.word	4
	.word	_Label_1657
	.word	-28
	.word	4
	.word	_Label_1658
	.word	-32
	.word	4
	.word	_Label_1659
	.word	-36
	.word	4
	.word	_Label_1660
	.word	-40
	.word	4
	.word	_Label_1661
	.word	-44
	.word	4
	.word	_Label_1662
	.word	-48
	.word	4
	.word	_Label_1663
	.word	-52
	.word	4
	.word	_Label_1664
	.word	-56
	.word	4
	.word	_Label_1665
	.word	-60
	.word	4
	.word	_Label_1666
	.word	-64
	.word	4
	.word	_Label_1667
	.word	-68
	.word	4
	.word	_Label_1668
	.word	-72
	.word	4
	.word	_Label_1669
	.word	-76
	.word	4
	.word	_Label_1670
	.word	-80
	.word	4
	.word	_Label_1671
	.word	-84
	.word	4
	.word	0
_Label_1650:
	.ascii	"HoareThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1651:
	.ascii	"Pself\0"
	.align
_Label_1652:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1660:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1661:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1662:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1672
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1672:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1673
	.word	_sourceFileName
	.word	263		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1673:
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
_Label_3480:
	push	r0
	sub	r1,1,r1
	bne	_Label_3480
	mov	1184,r13		! source line 1184
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1185,r13		! source line 1185
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3481:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3481
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	1188,r13		! source line 1188
	mov	"\0\0SE",r10
!   _temp_1675 = &addrSpace
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
	mov	1188,r13		! source line 1188
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
	.word	_Label_1676
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1677
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1678
	.word	-12
	.word	4
	.word	_Label_1679
	.word	-16
	.word	4
	.word	0
_Label_1676:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1677:
	.ascii	"Pself\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1674\0"
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
_Label_3482:
	push	r0
	sub	r1,1,r1
	bne	_Label_3482
	mov	1198,r13		! source line 1198
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1203,r13		! source line 1203
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1680) then goto _runtimeErrorNullPointer
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
	mov	1204,r13		! source line 1204
	mov	"\0\0SE",r10
!   _temp_1681 = &addrSpace
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
!   _temp_1682 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1682  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1205,r13		! source line 1205
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1206,r13		! source line 1206
	mov	"\0\0CA",r10
	call	_function_247_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	1216,r13		! source line 1216
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1216,r13		! source line 1216
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
	.word	_Label_1683
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1684
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1685
	.word	-12
	.word	4
	.word	_Label_1686
	.word	-16
	.word	4
	.word	_Label_1687
	.word	-20
	.word	4
	.word	0
_Label_1683:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1684:
	.ascii	"Pself\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1680\0"
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
_Label_3483:
	push	r0
	sub	r1,1,r1
	bne	_Label_3483
	mov	1221,r13		! source line 1221
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1688 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1688  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1225,r13		! source line 1225
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1689  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1226,r13		! source line 1226
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1690 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1690  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1227,r13		! source line 1227
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1228,r13		! source line 1228
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1691 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1691  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1229,r13		! source line 1229
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1230,r13		! source line 1230
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1693		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1693
!	jmp	_Label_1692
_Label_1692:
! THEN...
	mov	1231,r13		! source line 1231
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1694 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1694  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1231,r13		! source line 1231
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1695
_Label_1693:
! ELSE...
	mov	1232,r13		! source line 1232
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1232,r13		! source line 1232
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1697		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1697
!	jmp	_Label_1696
_Label_1696:
! THEN...
	mov	1233,r13		! source line 1233
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1698 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1698  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1233,r13		! source line 1233
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1699
_Label_1697:
! ELSE...
	mov	1234,r13		! source line 1234
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1234,r13		! source line 1234
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1701		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1701
!	jmp	_Label_1700
_Label_1700:
! THEN...
	mov	1235,r13		! source line 1235
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1702 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1702  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1235,r13		! source line 1235
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1703
_Label_1701:
! ELSE...
	mov	1237,r13		! source line 1237
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1704 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1704  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1237,r13		! source line 1237
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1703:
! END IF...
_Label_1699:
! END IF...
_Label_1695:
! CALL STATEMENT...
!   _temp_1705 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1705  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1239,r13		! source line 1239
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1240,r13		! source line 1240
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1706 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1706  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1241,r13		! source line 1241
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1242,r13		! source line 1242
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1243,r13		! source line 1243
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1243,r13		! source line 1243
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
	.word	_Label_1707
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1708
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1709
	.word	-12
	.word	4
	.word	_Label_1710
	.word	-16
	.word	4
	.word	_Label_1711
	.word	-20
	.word	4
	.word	_Label_1712
	.word	-24
	.word	4
	.word	_Label_1713
	.word	-28
	.word	4
	.word	_Label_1714
	.word	-32
	.word	4
	.word	_Label_1715
	.word	-36
	.word	4
	.word	_Label_1716
	.word	-40
	.word	4
	.word	_Label_1717
	.word	-44
	.word	4
	.word	_Label_1718
	.word	-48
	.word	4
	.word	0
_Label_1707:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1708:
	.ascii	"Pself\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1719
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1719:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1720
	.word	_sourceFileName
	.word	283		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1720:
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
	mov	387,r1
_Label_3484:
	push	r0
	sub	r1,1,r1
	bne	_Label_3484
	mov	1254,r13		! source line 1254
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1721 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-1544]
!   Prepare Argument: offset=8  value=_temp_1721  sizeInBytes=4
	load	[r14+-1544],r1
	store	r1,[r15+0]
!   Call the function
	mov	1261,r13		! source line 1261
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1264,r13		! source line 1264
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
	mov	1267,r13		! source line 1267
	mov	"\0\0AS",r10
!   _temp_1723 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1536]
!   NEW ARRAY Constructor...
!   _temp_1725 = &_temp_1724
	add	r14,-1532,r1
	store	r1,[r14+-288]
!   _temp_1725 = _temp_1725 + 4
	load	[r14+-288],r1
	add	r1,4,r1
	store	r1,[r14+-288]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1727 = zeros  (sizeInBytes=124)
	add	r14,-280,r4
	mov	31,r3
_Label_3485:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3485
!   _temp_1727 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-280]
	mov	10,r1
	store	r1,[r14+-284]
_Label_1729:
!   Data Move: *_temp_1725 = _temp_1727  (sizeInBytes=124)
	add	r14,-280,r5
	load	[r14+-288],r4
	mov	31,r3
_Label_3486:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3486
!   _temp_1725 = _temp_1725 + 124
	load	[r14+-288],r1
	add	r1,124,r1
	store	r1,[r14+-288]
!   _temp_1726 = _temp_1726 + -1
	load	[r14+-284],r1
	add	r1,-1,r1
	store	r1,[r14+-284]
!   if intNotZero (_temp_1726) then goto _Label_1729
	load	[r14+-284],r1
	cmp	r1,r0
	bne	_Label_1729
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1532]
!   _temp_1730 = &_temp_1724
	add	r14,-1532,r1
	store	r1,[r14+-152]
!   make sure array has size 10
	load	[r14+-1536],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3487
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3487:
!   make sure array has size 10
	load	[r14+-152],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1723 = *_temp_1730  (sizeInBytes=1244)
	load	[r14+-152],r5
	load	[r14+-1536],r4
	mov	311,r3
_Label_3488:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3488
! ASSIGNMENT STATEMENT...
	mov	1270,r13		! source line 1270
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
	mov	1271,r13		! source line 1271
	mov	"\0\0SE",r10
!   _temp_1732 = &aProcessBecameFree
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
	mov	1274,r13		! source line 1274
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
	mov	1275,r13		! source line 1275
	mov	"\0\0SE",r10
!   _temp_1734 = &aProcessDied
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
	mov	1278,r13		! source line 1278
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
	mov	1279,r13		! source line 1279
	mov	"\0\0SE",r10
!   _temp_1736 = &processManagerLock
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
	mov	1282,r13		! source line 1282
	mov	"\0\0AS",r10
!   nextPid = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! SEND STATEMENT...
	mov	1285,r13		! source line 1285
	mov	"\0\0SE",r10
!   _temp_1737 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-124]
!   Move address of _temp_1737 [0 ] into _temp_1738
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
	mov	1286,r13		! source line 1286
	mov	"\0\0SE",r10
!   _temp_1739 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Move address of _temp_1739 [1 ] into _temp_1740
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
	mov	1287,r13		! source line 1287
	mov	"\0\0SE",r10
!   _temp_1741 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Move address of _temp_1741 [2 ] into _temp_1742
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
	mov	1288,r13		! source line 1288
	mov	"\0\0SE",r10
!   _temp_1743 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Move address of _temp_1743 [3 ] into _temp_1744
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
	mov	1289,r13		! source line 1289
	mov	"\0\0SE",r10
!   _temp_1745 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Move address of _temp_1745 [4 ] into _temp_1746
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
	mov	1290,r13		! source line 1290
	mov	"\0\0SE",r10
!   _temp_1747 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-84]
!   Move address of _temp_1747 [5 ] into _temp_1748
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
	mov	1291,r13		! source line 1291
	mov	"\0\0SE",r10
!   _temp_1749 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_1749 [6 ] into _temp_1750
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
	mov	1292,r13		! source line 1292
	mov	"\0\0SE",r10
!   _temp_1751 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-68]
!   Move address of _temp_1751 [7 ] into _temp_1752
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
	mov	1293,r13		! source line 1293
	mov	"\0\0SE",r10
!   _temp_1753 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Move address of _temp_1753 [8 ] into _temp_1754
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
	mov	1294,r13		! source line 1294
	mov	"\0\0SE",r10
!   _temp_1755 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_1755 [9 ] into _temp_1756
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
	mov	1297,r13		! source line 1297
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1761 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1762 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1761  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-1548]
_Label_1757:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1762 then goto _Label_1760		
	load	[r14+-1548],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1760
_Label_1758:
	mov	1297,r13		! source line 1297
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1298,r13		! source line 1298
	mov	"\0\0AS",r10
!   _temp_1763 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1763 [i ] into _temp_1764
!     make sure index expr is >= 0
	load	[r14+-1548],r2
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
!   _temp_1765 = _temp_1764 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1765 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1299,r13		! source line 1299
	mov	"\0\0SE",r10
!   _temp_1767 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1767 [i ] into _temp_1768
!     make sure index expr is >= 0
	load	[r14+-1548],r2
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
!   _temp_1766 = _temp_1768		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1769 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1766  sizeInBytes=4
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
_Label_1759:
!   i = i + 1
	load	[r14+-1548],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1548]
	jmp	_Label_1757
! END FOR
_Label_1760:
! RETURN STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0RE",r10
	add	r15,1552,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1770
	.word	4		! total size of parameters
	.word	1548		! frame size = 1548
	.word	_Label_1771
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1772
	.word	-12
	.word	4
	.word	_Label_1773
	.word	-16
	.word	4
	.word	_Label_1774
	.word	-20
	.word	4
	.word	_Label_1775
	.word	-24
	.word	4
	.word	_Label_1776
	.word	-28
	.word	4
	.word	_Label_1777
	.word	-32
	.word	4
	.word	_Label_1778
	.word	-36
	.word	4
	.word	_Label_1779
	.word	-40
	.word	4
	.word	_Label_1780
	.word	-44
	.word	4
	.word	_Label_1781
	.word	-48
	.word	4
	.word	_Label_1782
	.word	-52
	.word	4
	.word	_Label_1783
	.word	-56
	.word	4
	.word	_Label_1784
	.word	-60
	.word	4
	.word	_Label_1785
	.word	-64
	.word	4
	.word	_Label_1786
	.word	-68
	.word	4
	.word	_Label_1787
	.word	-72
	.word	4
	.word	_Label_1788
	.word	-76
	.word	4
	.word	_Label_1789
	.word	-80
	.word	4
	.word	_Label_1790
	.word	-84
	.word	4
	.word	_Label_1791
	.word	-88
	.word	4
	.word	_Label_1792
	.word	-92
	.word	4
	.word	_Label_1793
	.word	-96
	.word	4
	.word	_Label_1794
	.word	-100
	.word	4
	.word	_Label_1795
	.word	-104
	.word	4
	.word	_Label_1796
	.word	-108
	.word	4
	.word	_Label_1797
	.word	-112
	.word	4
	.word	_Label_1798
	.word	-116
	.word	4
	.word	_Label_1799
	.word	-120
	.word	4
	.word	_Label_1800
	.word	-124
	.word	4
	.word	_Label_1801
	.word	-128
	.word	4
	.word	_Label_1802
	.word	-132
	.word	4
	.word	_Label_1803
	.word	-136
	.word	4
	.word	_Label_1804
	.word	-140
	.word	4
	.word	_Label_1805
	.word	-144
	.word	4
	.word	_Label_1806
	.word	-148
	.word	4
	.word	_Label_1807
	.word	-152
	.word	4
	.word	_Label_1808
	.word	-156
	.word	4
	.word	_Label_1809
	.word	-280
	.word	124
	.word	_Label_1810
	.word	-284
	.word	4
	.word	_Label_1811
	.word	-288
	.word	4
	.word	_Label_1812
	.word	-1532
	.word	1244
	.word	_Label_1813
	.word	-1536
	.word	4
	.word	_Label_1814
	.word	-1540
	.word	4
	.word	_Label_1815
	.word	-1544
	.word	4
	.word	_Label_1816
	.word	-1548
	.word	4
	.word	0
_Label_1770:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1771:
	.ascii	"Pself\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1764\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1816:
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
_Label_3489:
	push	r0
	sub	r1,1,r1
	bne	_Label_3489
	mov	1306,r13		! source line 1306
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1313,r13		! source line 1313
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1313,r13		! source line 1313
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1817 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1817  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1314,r13		! source line 1314
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1315,r13		! source line 1315
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1822 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1823 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1822  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1818:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1823 then goto _Label_1821		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1821
_Label_1819:
	mov	1315,r13		! source line 1315
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1824 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1824  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1316,r13		! source line 1316
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1317,r13		! source line 1317
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1825 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1825  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1318,r13		! source line 1318
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1319,r13		! source line 1319
	mov	"\0\0SE",r10
!   _temp_1826 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1826 [i ] into _temp_1827
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
_Label_1820:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1818
! END FOR
_Label_1821:
! CALL STATEMENT...
!   _temp_1828 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1828  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1321,r13		! source line 1321
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1322,r13		! source line 1322
	mov	"\0\0SE",r10
!   _temp_1829 = _function_246_PrintObjectAddr
	set	_function_246_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1830 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1829  sizeInBytes=4
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
	mov	1323,r13		! source line 1323
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1324,r13		! source line 1324
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1324,r13		! source line 1324
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	1324,r13		! source line 1324
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
	.word	_Label_1831
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1832
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1833
	.word	-12
	.word	4
	.word	_Label_1834
	.word	-16
	.word	4
	.word	_Label_1835
	.word	-20
	.word	4
	.word	_Label_1836
	.word	-24
	.word	4
	.word	_Label_1837
	.word	-28
	.word	4
	.word	_Label_1838
	.word	-32
	.word	4
	.word	_Label_1839
	.word	-36
	.word	4
	.word	_Label_1840
	.word	-40
	.word	4
	.word	_Label_1841
	.word	-44
	.word	4
	.word	_Label_1842
	.word	-48
	.word	4
	.word	_Label_1843
	.word	-52
	.word	4
	.word	_Label_1844
	.word	-56
	.word	4
	.word	0
_Label_1831:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1832:
	.ascii	"Pself\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1817\0"
	.align
_Label_1843:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1844:
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
_Label_3490:
	push	r0
	sub	r1,1,r1
	bne	_Label_3490
	mov	1329,r13		! source line 1329
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1336,r13		! source line 1336
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1336,r13		! source line 1336
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1845 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1845  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1337,r13		! source line 1337
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1338,r13		! source line 1338
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1850 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1851 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1850  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1846:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1851 then goto _Label_1849		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1849
_Label_1847:
	mov	1338,r13		! source line 1338
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1852 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1852  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1339,r13		! source line 1339
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1340,r13		! source line 1340
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	1341,r13		! source line 1341
	mov	"\0\0SE",r10
!   _temp_1853 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1853 [i ] into _temp_1854
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
_Label_1848:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1846
! END FOR
_Label_1849:
! CALL STATEMENT...
!   _temp_1855 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1855  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1343,r13		! source line 1343
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1344,r13		! source line 1344
	mov	"\0\0SE",r10
!   _temp_1856 = _function_246_PrintObjectAddr
	set	_function_246_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1857 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1856  sizeInBytes=4
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
	mov	1345,r13		! source line 1345
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1346,r13		! source line 1346
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1346,r13		! source line 1346
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	1346,r13		! source line 1346
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
	.word	_Label_1858
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1859
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1860
	.word	-12
	.word	4
	.word	_Label_1861
	.word	-16
	.word	4
	.word	_Label_1862
	.word	-20
	.word	4
	.word	_Label_1863
	.word	-24
	.word	4
	.word	_Label_1864
	.word	-28
	.word	4
	.word	_Label_1865
	.word	-32
	.word	4
	.word	_Label_1866
	.word	-36
	.word	4
	.word	_Label_1867
	.word	-40
	.word	4
	.word	_Label_1868
	.word	-44
	.word	4
	.word	_Label_1869
	.word	-48
	.word	4
	.word	_Label_1870
	.word	-52
	.word	4
	.word	0
_Label_1858:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1859:
	.ascii	"Pself\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1869:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1870:
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
_Label_3491:
	push	r0
	sub	r1,1,r1
	bne	_Label_3491
	mov	1351,r13		! source line 1351
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1359,r13		! source line 1359
	mov	"\0\0SE",r10
!   _temp_1871 = &processManagerLock
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
	mov	1363,r13		! source line 1363
	mov	"\0\0WH",r10
_Label_1872:
	mov	1363,r13		! source line 1363
	mov	"\0\0SE",r10
!   _temp_1875 = &freeList
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
!   if result==true then goto _Label_1873 else goto _Label_1874
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1874
	jmp	_Label_1873
_Label_1873:
	mov	1363,r13		! source line 1363
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1364,r13		! source line 1364
	mov	"\0\0SE",r10
!   _temp_1876 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1877 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1876  sizeInBytes=4
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
	jmp	_Label_1872
_Label_1874:
! ASSIGNMENT STATEMENT...
	mov	1371,r13		! source line 1371
	mov	"\0\0AS",r10
	mov	1371,r13		! source line 1371
	mov	"\0\0SE",r10
!   _temp_1878 = &freeList
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
	mov	1372,r13		! source line 1372
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1879 = p + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1879 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1373,r13		! source line 1373
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1880 = p + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1880 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1374,r13		! source line 1374
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
	mov	1376,r13		! source line 1376
	mov	"\0\0SE",r10
!   _temp_1881 = &processManagerLock
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
	mov	1379,r13		! source line 1379
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
	.word	_Label_1882
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1883
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1884
	.word	-12
	.word	4
	.word	_Label_1885
	.word	-16
	.word	4
	.word	_Label_1886
	.word	-20
	.word	4
	.word	_Label_1887
	.word	-24
	.word	4
	.word	_Label_1888
	.word	-28
	.word	4
	.word	_Label_1889
	.word	-32
	.word	4
	.word	_Label_1890
	.word	-36
	.word	4
	.word	_Label_1891
	.word	-40
	.word	4
	.word	_Label_1892
	.word	-44
	.word	4
	.word	0
_Label_1882:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1883:
	.ascii	"Pself\0"
	.align
_Label_1884:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1885:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1886:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1878\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1877\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1876\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1892:
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
_Label_3492:
	push	r0
	sub	r1,1,r1
	bne	_Label_3492
	mov	1384,r13		! source line 1384
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1391,r13		! source line 1391
	mov	"\0\0SE",r10
!   _temp_1893 = &processManagerLock
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
	mov	1395,r13		! source line 1395
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1894 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1894 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1396,r13		! source line 1396
	mov	"\0\0SE",r10
!   _temp_1895 = &freeList
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
	mov	1400,r13		! source line 1400
	mov	"\0\0SE",r10
!   _temp_1896 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1897 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1896  sizeInBytes=4
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
	mov	1403,r13		! source line 1403
	mov	"\0\0SE",r10
!   _temp_1898 = &processManagerLock
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
	mov	1403,r13		! source line 1403
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
	.word	_Label_1899
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1900
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1901
	.word	12
	.word	4
	.word	_Label_1902
	.word	-12
	.word	4
	.word	_Label_1903
	.word	-16
	.word	4
	.word	_Label_1904
	.word	-20
	.word	4
	.word	_Label_1905
	.word	-24
	.word	4
	.word	_Label_1906
	.word	-28
	.word	4
	.word	_Label_1907
	.word	-32
	.word	4
	.word	0
_Label_1899:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1900:
	.ascii	"Pself\0"
	.align
_Label_1901:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1908
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1908:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1909
	.word	_sourceFileName
	.word	306		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1909:
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
_Label_3493:
	push	r0
	sub	r1,1,r1
	bne	_Label_3493
	mov	1436,r13		! source line 1436
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1910 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1910  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1442,r13		! source line 1442
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1443,r13		! source line 1443
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
	mov	1444,r13		! source line 1444
	mov	"\0\0SE",r10
!   _temp_1912 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
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
	mov	1445,r13		! source line 1445
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1446,r13		! source line 1446
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
	mov	1447,r13		! source line 1447
	mov	"\0\0SE",r10
!   _temp_1914 = &frameManagerLock
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
	mov	1448,r13		! source line 1448
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
	mov	1449,r13		! source line 1449
	mov	"\0\0SE",r10
!   _temp_1916 = &newFramesAvailable
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
	mov	1455,r13		! source line 1455
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1921 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1922 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1921  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1917:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1922 then goto _Label_1920		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1920
_Label_1918:
	mov	1455,r13		! source line 1455
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1458,r13		! source line 1458
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1925 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1925) then goto _Label_1924
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1924
!	jmp	_Label_1923
_Label_1923:
! THEN...
	mov	1459,r13		! source line 1459
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1926 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1926  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1459,r13		! source line 1459
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1924:
!   Increment the FOR-LOOP index variable and jump back
_Label_1919:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1917
! END FOR
_Label_1920:
! RETURN STATEMENT...
	mov	1455,r13		! source line 1455
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
	.word	_Label_1927
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1928
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1929
	.word	-12
	.word	4
	.word	_Label_1930
	.word	-16
	.word	4
	.word	_Label_1931
	.word	-20
	.word	4
	.word	_Label_1932
	.word	-24
	.word	4
	.word	_Label_1933
	.word	-28
	.word	4
	.word	_Label_1934
	.word	-32
	.word	4
	.word	_Label_1935
	.word	-36
	.word	4
	.word	_Label_1936
	.word	-40
	.word	4
	.word	_Label_1937
	.word	-44
	.word	4
	.word	_Label_1938
	.word	-48
	.word	4
	.word	_Label_1939
	.word	-52
	.word	4
	.word	_Label_1940
	.word	-56
	.word	4
	.word	0
_Label_1927:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1928:
	.ascii	"Pself\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
_Label_1934:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1912\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1940:
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
_Label_3494:
	push	r0
	sub	r1,1,r1
	bne	_Label_3494
	mov	1466,r13		! source line 1466
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1470,r13		! source line 1470
	mov	"\0\0SE",r10
!   _temp_1941 = &frameManagerLock
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
!   _temp_1942 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1942  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1471,r13		! source line 1471
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1943 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1943  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1472,r13		! source line 1472
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1944 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1944  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1473,r13		! source line 1473
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0SE",r10
!   _temp_1945 = &framesInUse
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
	mov	1475,r13		! source line 1475
	mov	"\0\0SE",r10
!   _temp_1946 = &frameManagerLock
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
	mov	1475,r13		! source line 1475
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
	.word	_Label_1947
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1948
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1949
	.word	-12
	.word	4
	.word	_Label_1950
	.word	-16
	.word	4
	.word	_Label_1951
	.word	-20
	.word	4
	.word	_Label_1952
	.word	-24
	.word	4
	.word	_Label_1953
	.word	-28
	.word	4
	.word	_Label_1954
	.word	-32
	.word	4
	.word	0
_Label_1947:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1948:
	.ascii	"Pself\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1946\0"
	.align
_Label_1950:
	.byte	'?'
	.ascii	"_temp_1945\0"
	.align
_Label_1951:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1942\0"
	.align
_Label_1954:
	.byte	'?'
	.ascii	"_temp_1941\0"
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
_Label_3495:
	push	r0
	sub	r1,1,r1
	bne	_Label_3495
	mov	1480,r13		! source line 1480
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1488,r13		! source line 1488
	mov	"\0\0SE",r10
!   _temp_1955 = &frameManagerLock
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
	mov	1491,r13		! source line 1491
	mov	"\0\0WH",r10
_Label_1956:
!   if numberFreeFrames >= 1 then goto _Label_1958		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1958
!	jmp	_Label_1957
_Label_1957:
	mov	1491,r13		! source line 1491
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1492,r13		! source line 1492
	mov	"\0\0SE",r10
!   _temp_1959 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1960 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1959  sizeInBytes=4
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
	jmp	_Label_1956
_Label_1958:
! ASSIGNMENT STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0AS",r10
	mov	1496,r13		! source line 1496
	mov	"\0\0SE",r10
!   _temp_1961 = &framesInUse
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
	mov	1497,r13		! source line 1497
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
	mov	1500,r13		! source line 1500
	mov	"\0\0SE",r10
!   _temp_1962 = &frameManagerLock
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
	mov	1503,r13		! source line 1503
	mov	"\0\0AS",r10
!   _temp_1963 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1963		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1505,r13		! source line 1505
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
	.word	_Label_1964
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1965
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1966
	.word	-12
	.word	4
	.word	_Label_1967
	.word	-16
	.word	4
	.word	_Label_1968
	.word	-20
	.word	4
	.word	_Label_1969
	.word	-24
	.word	4
	.word	_Label_1970
	.word	-28
	.word	4
	.word	_Label_1971
	.word	-32
	.word	4
	.word	_Label_1972
	.word	-36
	.word	4
	.word	_Label_1973
	.word	-40
	.word	4
	.word	0
_Label_1964:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1965:
	.ascii	"Pself\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1972:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1973:
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
_Label_3496:
	push	r0
	sub	r1,1,r1
	bne	_Label_3496
	mov	1510,r13		! source line 1510
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1517,r13		! source line 1517
	mov	"\0\0SE",r10
!   _temp_1974 = &frameManagerLock
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
	mov	1521,r13		! source line 1521
	mov	"\0\0WH",r10
_Label_1975:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1977		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1977
!	jmp	_Label_1976
_Label_1976:
	mov	1521,r13		! source line 1521
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1522,r13		! source line 1522
	mov	"\0\0SE",r10
!   _temp_1978 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1979 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1978  sizeInBytes=4
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
	jmp	_Label_1975
_Label_1977:
! FOR STATEMENT...
	mov	1526,r13		! source line 1526
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1984 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1985 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1984  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1980:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1985 then goto _Label_1983		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1983
_Label_1981:
	mov	1526,r13		! source line 1526
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0AS",r10
	mov	1527,r13		! source line 1527
	mov	"\0\0SE",r10
!   _temp_1986 = &framesInUse
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
	mov	1529,r13		! source line 1529
	mov	"\0\0AS",r10
!   _temp_1987 = pageOffset * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1987		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1531,r13		! source line 1531
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
_Label_1982:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1980
! END FOR
_Label_1983:
! ASSIGNMENT STATEMENT...
	mov	1536,r13		! source line 1536
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
	mov	1539,r13		! source line 1539
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1988 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1988 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1542,r13		! source line 1542
	mov	"\0\0SE",r10
!   _temp_1989 = &frameManagerLock
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
	mov	1542,r13		! source line 1542
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
	.word	_Label_1990
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1991
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1992
	.word	12
	.word	4
	.word	_Label_1993
	.word	16
	.word	4
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
	.word	_Label_1998
	.word	-28
	.word	4
	.word	_Label_1999
	.word	-32
	.word	4
	.word	_Label_2000
	.word	-36
	.word	4
	.word	_Label_2001
	.word	-40
	.word	4
	.word	_Label_2002
	.word	-44
	.word	4
	.word	_Label_2003
	.word	-48
	.word	4
	.word	_Label_2004
	.word	-52
	.word	4
	.word	_Label_2005
	.word	-56
	.word	4
	.word	0
_Label_1990:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1991:
	.ascii	"Pself\0"
	.align
_Label_1992:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1993:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1988\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1987\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1986\0"
	.align
_Label_1998:
	.byte	'?'
	.ascii	"_temp_1985\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_2003:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2004:
	.byte	'I'
	.ascii	"pageOffset\0"
	.align
_Label_2005:
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
_Label_3497:
	push	r0
	sub	r1,1,r1
	bne	_Label_3497
	mov	1547,r13		! source line 1547
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1556,r13		! source line 1556
	mov	"\0\0SE",r10
!   _temp_2006 = &frameManagerLock
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
	mov	1559,r13		! source line 1559
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2011 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2014 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2013 = *_temp_2014  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2012 = _temp_2013 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2011  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_2007:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2012 then goto _Label_2010		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2010
_Label_2008:
	mov	1559,r13		! source line 1559
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1560,r13		! source line 1560
	mov	"\0\0AS",r10
	mov	1560,r13		! source line 1560
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
	mov	1561,r13		! source line 1561
	mov	"\0\0AS",r10
!   _temp_2015 = frameAddr - 1048576		(int)
	load	[r14+-64],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitNumber = _temp_2015 div 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1562,r13		! source line 1562
	mov	"\0\0SE",r10
!   _temp_2016 = &framesInUse
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
_Label_2009:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2007
! END FOR
_Label_2010:
! ASSIGNMENT STATEMENT...
	mov	1566,r13		! source line 1566
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2018 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2017 = *_temp_2018  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_2017		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1569,r13		! source line 1569
	mov	"\0\0SE",r10
!   _temp_2019 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2020 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2019  sizeInBytes=4
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
	mov	1572,r13		! source line 1572
	mov	"\0\0SE",r10
!   _temp_2021 = &frameManagerLock
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
	mov	1572,r13		! source line 1572
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
	.word	_Label_2022
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_2023
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2024
	.word	12
	.word	4
	.word	_Label_2025
	.word	-12
	.word	4
	.word	_Label_2026
	.word	-16
	.word	4
	.word	_Label_2027
	.word	-20
	.word	4
	.word	_Label_2028
	.word	-24
	.word	4
	.word	_Label_2029
	.word	-28
	.word	4
	.word	_Label_2030
	.word	-32
	.word	4
	.word	_Label_2031
	.word	-36
	.word	4
	.word	_Label_2032
	.word	-40
	.word	4
	.word	_Label_2033
	.word	-44
	.word	4
	.word	_Label_2034
	.word	-48
	.word	4
	.word	_Label_2035
	.word	-52
	.word	4
	.word	_Label_2036
	.word	-56
	.word	4
	.word	_Label_2037
	.word	-60
	.word	4
	.word	_Label_2038
	.word	-64
	.word	4
	.word	_Label_2039
	.word	-68
	.word	4
	.word	0
_Label_2022:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2023:
	.ascii	"Pself\0"
	.align
_Label_2024:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_2020\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_2019\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_2018\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2036:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2037:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2038:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2039:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2040
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
_Label_2040:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2041
	.word	_sourceFileName
	.word	325		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2041:
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
_Label_3498:
	push	r0
	sub	r1,1,r1
	bne	_Label_3498
	mov	1583,r13		! source line 1583
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1587,r13		! source line 1587
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1588,r13		! source line 1588
	mov	"\0\0AS",r10
!   _temp_2042 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2044 = &_temp_2043
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2044 = _temp_2044 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2046:
!   Data Move: *_temp_2044 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2044 = _temp_2044 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2045 = _temp_2045 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2045) then goto _Label_2046
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2046
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2047 = &_temp_2043
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3499
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3499:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2042 = *_temp_2047  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3500:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3500
! RETURN STATEMENT...
	mov	1588,r13		! source line 1588
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
	.word	_Label_2048
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2049
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2050
	.word	-12
	.word	4
	.word	_Label_2051
	.word	-16
	.word	4
	.word	_Label_2052
	.word	-20
	.word	4
	.word	_Label_2053
	.word	-104
	.word	84
	.word	_Label_2054
	.word	-108
	.word	4
	.word	0
_Label_2048:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2049:
	.ascii	"Pself\0"
	.align
_Label_2050:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2051:
	.byte	'?'
	.ascii	"_temp_2045\0"
	.align
_Label_2052:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2053:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2054:
	.byte	'?'
	.ascii	"_temp_2042\0"
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
_Label_3501:
	push	r0
	sub	r1,1,r1
	bne	_Label_3501
	mov	1593,r13		! source line 1593
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2055 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2055  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1598,r13		! source line 1598
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2056 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2056  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1599,r13		! source line 1599
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1600,r13		! source line 1600
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2061 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2062 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2061  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2057:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2062 then goto _Label_2060		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2060
_Label_2058:
	mov	1600,r13		! source line 1600
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2063 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2063  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1601,r13		! source line 1601
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2065 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2065 [i ] into _temp_2066
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
!   _temp_2064 = _temp_2066		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2064  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1602,r13		! source line 1602
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2067 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2067  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1603,r13		! source line 1603
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2069 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2069 [i ] into _temp_2070
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
!   Data Move: _temp_2068 = *_temp_2070  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2068  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1604,r13		! source line 1604
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2071 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2071  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1605,r13		! source line 1605
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2072 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2072  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1606,r13		! source line 1606
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2073 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2073  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1607,r13		! source line 1607
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1608,r13		! source line 1608
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2075) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2074  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2074  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1608,r13		! source line 1608
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2076 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2076  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1609,r13		! source line 1609
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1610,r13		! source line 1610
	mov	"\0\0IF",r10
	mov	1610,r13		! source line 1610
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_2080) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2079  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2079) then goto _Label_2078
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2078
!	jmp	_Label_2077
_Label_2077:
! THEN...
	mov	1611,r13		! source line 1611
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1611,r13		! source line 1611
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2082) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2081  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2081  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1611,r13		! source line 1611
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2083
_Label_2078:
! ELSE...
	mov	1613,r13		! source line 1613
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2084 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2084  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1613,r13		! source line 1613
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2083:
! CALL STATEMENT...
!   _temp_2085 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2085  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1615,r13		! source line 1615
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1616,r13		! source line 1616
	mov	"\0\0IF",r10
	mov	1616,r13		! source line 1616
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2088) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2086 else goto _Label_2087
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2087
	jmp	_Label_2086
_Label_2086:
! THEN...
	mov	1617,r13		! source line 1617
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2089 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2089  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1617,r13		! source line 1617
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2090
_Label_2087:
! ELSE...
	mov	1619,r13		! source line 1619
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2091 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2091  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1619,r13		! source line 1619
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2090:
! CALL STATEMENT...
!   _temp_2092 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2092  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1621,r13		! source line 1621
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1622,r13		! source line 1622
	mov	"\0\0IF",r10
	mov	1622,r13		! source line 1622
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2095) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2093 else goto _Label_2094
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2094
	jmp	_Label_2093
_Label_2093:
! THEN...
	mov	1623,r13		! source line 1623
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2096 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2096  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1623,r13		! source line 1623
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2097
_Label_2094:
! ELSE...
	mov	1625,r13		! source line 1625
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2098 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2098  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1625,r13		! source line 1625
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2097:
! CALL STATEMENT...
!   _temp_2099 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2099  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1627,r13		! source line 1627
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1628,r13		! source line 1628
	mov	"\0\0IF",r10
	mov	1628,r13		! source line 1628
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2102) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2100 else goto _Label_2101
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2101
	jmp	_Label_2100
_Label_2100:
! THEN...
	mov	1629,r13		! source line 1629
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2103 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2103  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1629,r13		! source line 1629
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2104
_Label_2101:
! ELSE...
	mov	1631,r13		! source line 1631
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2105 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2105  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1631,r13		! source line 1631
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2104:
! CALL STATEMENT...
!   _temp_2106 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2106  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1633,r13		! source line 1633
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1634,r13		! source line 1634
	mov	"\0\0IF",r10
	mov	1634,r13		! source line 1634
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2109) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2107 else goto _Label_2108
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2108
	jmp	_Label_2107
_Label_2107:
! THEN...
	mov	1635,r13		! source line 1635
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2110 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2110  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1635,r13		! source line 1635
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2111
_Label_2108:
! ELSE...
	mov	1637,r13		! source line 1637
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2112 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2112  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1637,r13		! source line 1637
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2111:
! CALL STATEMENT...
!   Call the function
	mov	1639,r13		! source line 1639
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2059:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2057
! END FOR
_Label_2060:
! RETURN STATEMENT...
	mov	1600,r13		! source line 1600
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
	.word	_Label_2113
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2114
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2115
	.word	-12
	.word	4
	.word	_Label_2116
	.word	-16
	.word	4
	.word	_Label_2117
	.word	-20
	.word	4
	.word	_Label_2118
	.word	-24
	.word	4
	.word	_Label_2119
	.word	-28
	.word	4
	.word	_Label_2120
	.word	-32
	.word	4
	.word	_Label_2121
	.word	-36
	.word	4
	.word	_Label_2122
	.word	-40
	.word	4
	.word	_Label_2123
	.word	-44
	.word	4
	.word	_Label_2124
	.word	-48
	.word	4
	.word	_Label_2125
	.word	-52
	.word	4
	.word	_Label_2126
	.word	-56
	.word	4
	.word	_Label_2127
	.word	-60
	.word	4
	.word	_Label_2128
	.word	-64
	.word	4
	.word	_Label_2129
	.word	-68
	.word	4
	.word	_Label_2130
	.word	-72
	.word	4
	.word	_Label_2131
	.word	-76
	.word	4
	.word	_Label_2132
	.word	-80
	.word	4
	.word	_Label_2133
	.word	-84
	.word	4
	.word	_Label_2134
	.word	-88
	.word	4
	.word	_Label_2135
	.word	-92
	.word	4
	.word	_Label_2136
	.word	-96
	.word	4
	.word	_Label_2137
	.word	-100
	.word	4
	.word	_Label_2138
	.word	-104
	.word	4
	.word	_Label_2139
	.word	-108
	.word	4
	.word	_Label_2140
	.word	-112
	.word	4
	.word	_Label_2141
	.word	-116
	.word	4
	.word	_Label_2142
	.word	-120
	.word	4
	.word	_Label_2143
	.word	-124
	.word	4
	.word	_Label_2144
	.word	-128
	.word	4
	.word	_Label_2145
	.word	-132
	.word	4
	.word	_Label_2146
	.word	-136
	.word	4
	.word	_Label_2147
	.word	-140
	.word	4
	.word	_Label_2148
	.word	-144
	.word	4
	.word	_Label_2149
	.word	-148
	.word	4
	.word	_Label_2150
	.word	-152
	.word	4
	.word	_Label_2151
	.word	-156
	.word	4
	.word	_Label_2152
	.word	-160
	.word	4
	.word	_Label_2153
	.word	-164
	.word	4
	.word	_Label_2154
	.word	-168
	.word	4
	.word	0
_Label_2113:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2114:
	.ascii	"Pself\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2112\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2110\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2109\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2106\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2105\0"
	.align
_Label_2120:
	.byte	'?'
	.ascii	"_temp_2103\0"
	.align
_Label_2121:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2122:
	.byte	'?'
	.ascii	"_temp_2099\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2098\0"
	.align
_Label_2124:
	.byte	'?'
	.ascii	"_temp_2096\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2095\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2091\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2085\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2082\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2081\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2080\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2079\0"
	.align
_Label_2136:
	.byte	'?'
	.ascii	"_temp_2076\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2075\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2074\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2073\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2072\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2071\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2070\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2069\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2068\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2067\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2064\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2150:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2152:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2154:
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
_Label_3502:
	push	r0
	sub	r1,1,r1
	bne	_Label_3502
	mov	1645,r13		! source line 1645
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1650,r13		! source line 1650
	mov	"\0\0RE",r10
!   _temp_2157 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2157 [entry ] into _temp_2158
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
!   Data Move: _temp_2156 = *_temp_2158  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2155 = _temp_2156 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2155  (sizeInBytes=4)
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
	.word	_Label_2159
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2160
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2161
	.word	12
	.word	4
	.word	_Label_2162
	.word	-12
	.word	4
	.word	_Label_2163
	.word	-16
	.word	4
	.word	_Label_2164
	.word	-20
	.word	4
	.word	_Label_2165
	.word	-24
	.word	4
	.word	0
_Label_2159:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2160:
	.ascii	"Pself\0"
	.align
_Label_2161:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2158\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2157\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2156\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2155\0"
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
_Label_3503:
	push	r0
	sub	r1,1,r1
	bne	_Label_3503
	mov	1655,r13		! source line 1655
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1659,r13		! source line 1659
	mov	"\0\0RE",r10
!   _temp_2168 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2168 [entry ] into _temp_2169
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
!   Data Move: _temp_2167 = *_temp_2169  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2166 = _temp_2167 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2166  (sizeInBytes=4)
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
	.word	_Label_2170
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2171
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2172
	.word	12
	.word	4
	.word	_Label_2173
	.word	-12
	.word	4
	.word	_Label_2174
	.word	-16
	.word	4
	.word	_Label_2175
	.word	-20
	.word	4
	.word	_Label_2176
	.word	-24
	.word	4
	.word	0
_Label_2170:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2171:
	.ascii	"Pself\0"
	.align
_Label_2172:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2173:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2174:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2175:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2176:
	.byte	'?'
	.ascii	"_temp_2166\0"
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
_Label_3504:
	push	r0
	sub	r1,1,r1
	bne	_Label_3504
	mov	1664,r13		! source line 1664
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1669,r13		! source line 1669
	mov	"\0\0AS",r10
!   _temp_2177 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2177 [entry ] into _temp_2178
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
!   _temp_2182 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2182 [entry ] into _temp_2183
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
!   Data Move: _temp_2181 = *_temp_2183  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2180 = _temp_2181 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2179 = _temp_2180 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2178 = _temp_2179  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1669,r13		! source line 1669
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
	.word	_Label_2184
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2185
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2186
	.word	12
	.word	4
	.word	_Label_2187
	.word	16
	.word	4
	.word	_Label_2188
	.word	-12
	.word	4
	.word	_Label_2189
	.word	-16
	.word	4
	.word	_Label_2190
	.word	-20
	.word	4
	.word	_Label_2191
	.word	-24
	.word	4
	.word	_Label_2192
	.word	-28
	.word	4
	.word	_Label_2193
	.word	-32
	.word	4
	.word	_Label_2194
	.word	-36
	.word	4
	.word	0
_Label_2184:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2185:
	.ascii	"Pself\0"
	.align
_Label_2186:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2187:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2177\0"
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
_Label_3505:
	push	r0
	sub	r1,1,r1
	bne	_Label_3505
	mov	1674,r13		! source line 1674
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1678,r13		! source line 1678
	mov	"\0\0RE",r10
!   _temp_2198 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2198 [entry ] into _temp_2199
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
!   Data Move: _temp_2197 = *_temp_2199  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2196 = _temp_2197 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2196) then goto _Label_2200
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2200
!   _temp_2195 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2201
_Label_2200:
!   _temp_2195 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2201:
!   ReturnResult: _temp_2195  (sizeInBytes=1)
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
	.word	_Label_2202
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2203
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2204
	.word	12
	.word	4
	.word	_Label_2205
	.word	-16
	.word	4
	.word	_Label_2206
	.word	-20
	.word	4
	.word	_Label_2207
	.word	-24
	.word	4
	.word	_Label_2208
	.word	-28
	.word	4
	.word	_Label_2209
	.word	-9
	.word	1
	.word	0
_Label_2202:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2203:
	.ascii	"Pself\0"
	.align
_Label_2204:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2205:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2206:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2207:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
_Label_2208:
	.byte	'?'
	.ascii	"_temp_2196\0"
	.align
_Label_2209:
	.byte	'C'
	.ascii	"_temp_2195\0"
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
_Label_3506:
	push	r0
	sub	r1,1,r1
	bne	_Label_3506
	mov	1683,r13		! source line 1683
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1687,r13		! source line 1687
	mov	"\0\0RE",r10
!   _temp_2213 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2213 [entry ] into _temp_2214
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
!   Data Move: _temp_2212 = *_temp_2214  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2211 = _temp_2212 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2211) then goto _Label_2215
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2215
!   _temp_2210 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2216
_Label_2215:
!   _temp_2210 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2216:
!   ReturnResult: _temp_2210  (sizeInBytes=1)
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
	.word	_Label_2217
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2218
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2219
	.word	12
	.word	4
	.word	_Label_2220
	.word	-16
	.word	4
	.word	_Label_2221
	.word	-20
	.word	4
	.word	_Label_2222
	.word	-24
	.word	4
	.word	_Label_2223
	.word	-28
	.word	4
	.word	_Label_2224
	.word	-9
	.word	1
	.word	0
_Label_2217:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2218:
	.ascii	"Pself\0"
	.align
_Label_2219:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2220:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2221:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2222:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2223:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2224:
	.byte	'C'
	.ascii	"_temp_2210\0"
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
_Label_3507:
	push	r0
	sub	r1,1,r1
	bne	_Label_3507
	mov	1692,r13		! source line 1692
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1696,r13		! source line 1696
	mov	"\0\0RE",r10
!   _temp_2228 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2228 [entry ] into _temp_2229
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
!   Data Move: _temp_2227 = *_temp_2229  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2226 = _temp_2227 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2226) then goto _Label_2230
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2230
!   _temp_2225 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2231
_Label_2230:
!   _temp_2225 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2231:
!   ReturnResult: _temp_2225  (sizeInBytes=1)
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
	.word	_Label_2232
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2233
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2234
	.word	12
	.word	4
	.word	_Label_2235
	.word	-16
	.word	4
	.word	_Label_2236
	.word	-20
	.word	4
	.word	_Label_2237
	.word	-24
	.word	4
	.word	_Label_2238
	.word	-28
	.word	4
	.word	_Label_2239
	.word	-9
	.word	1
	.word	0
_Label_2232:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2233:
	.ascii	"Pself\0"
	.align
_Label_2234:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2229\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2239:
	.byte	'C'
	.ascii	"_temp_2225\0"
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
_Label_3508:
	push	r0
	sub	r1,1,r1
	bne	_Label_3508
	mov	1701,r13		! source line 1701
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1705,r13		! source line 1705
	mov	"\0\0RE",r10
!   _temp_2243 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2243 [entry ] into _temp_2244
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
!   Data Move: _temp_2242 = *_temp_2244  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2241 = _temp_2242 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2241) then goto _Label_2245
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2245
!   _temp_2240 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2246
_Label_2245:
!   _temp_2240 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2246:
!   ReturnResult: _temp_2240  (sizeInBytes=1)
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
	.word	_Label_2247
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2248
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2249
	.word	12
	.word	4
	.word	_Label_2250
	.word	-16
	.word	4
	.word	_Label_2251
	.word	-20
	.word	4
	.word	_Label_2252
	.word	-24
	.word	4
	.word	_Label_2253
	.word	-28
	.word	4
	.word	_Label_2254
	.word	-9
	.word	1
	.word	0
_Label_2247:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2248:
	.ascii	"Pself\0"
	.align
_Label_2249:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2254:
	.byte	'C'
	.ascii	"_temp_2240\0"
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
_Label_3509:
	push	r0
	sub	r1,1,r1
	bne	_Label_3509
	mov	1710,r13		! source line 1710
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1714,r13		! source line 1714
	mov	"\0\0AS",r10
!   _temp_2255 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2255 [entry ] into _temp_2256
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
!   _temp_2259 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2259 [entry ] into _temp_2260
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
!   Data Move: _temp_2258 = *_temp_2260  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2257 = _temp_2258 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2256 = _temp_2257  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1714,r13		! source line 1714
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
	.word	_Label_2261
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2262
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2263
	.word	12
	.word	4
	.word	_Label_2264
	.word	-12
	.word	4
	.word	_Label_2265
	.word	-16
	.word	4
	.word	_Label_2266
	.word	-20
	.word	4
	.word	_Label_2267
	.word	-24
	.word	4
	.word	_Label_2268
	.word	-28
	.word	4
	.word	_Label_2269
	.word	-32
	.word	4
	.word	0
_Label_2261:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2262:
	.ascii	"Pself\0"
	.align
_Label_2263:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2255\0"
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
_Label_3510:
	push	r0
	sub	r1,1,r1
	bne	_Label_3510
	mov	1719,r13		! source line 1719
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1723,r13		! source line 1723
	mov	"\0\0AS",r10
!   _temp_2270 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2270 [entry ] into _temp_2271
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
!   _temp_2274 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2274 [entry ] into _temp_2275
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
!   Data Move: _temp_2273 = *_temp_2275  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2272 = _temp_2273 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2271 = _temp_2272  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1723,r13		! source line 1723
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
	.word	_Label_2276
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2277
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2278
	.word	12
	.word	4
	.word	_Label_2279
	.word	-12
	.word	4
	.word	_Label_2280
	.word	-16
	.word	4
	.word	_Label_2281
	.word	-20
	.word	4
	.word	_Label_2282
	.word	-24
	.word	4
	.word	_Label_2283
	.word	-28
	.word	4
	.word	_Label_2284
	.word	-32
	.word	4
	.word	0
_Label_2276:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2277:
	.ascii	"Pself\0"
	.align
_Label_2278:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2275\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2274\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2273\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2272\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2270\0"
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
_Label_3511:
	push	r0
	sub	r1,1,r1
	bne	_Label_3511
	mov	1728,r13		! source line 1728
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1732,r13		! source line 1732
	mov	"\0\0AS",r10
!   _temp_2285 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2285 [entry ] into _temp_2286
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
!   _temp_2289 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2289 [entry ] into _temp_2290
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
!   Data Move: _temp_2288 = *_temp_2290  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2287 = _temp_2288 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2286 = _temp_2287  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1732,r13		! source line 1732
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
	.word	_Label_2291
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2292
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2293
	.word	12
	.word	4
	.word	_Label_2294
	.word	-12
	.word	4
	.word	_Label_2295
	.word	-16
	.word	4
	.word	_Label_2296
	.word	-20
	.word	4
	.word	_Label_2297
	.word	-24
	.word	4
	.word	_Label_2298
	.word	-28
	.word	4
	.word	_Label_2299
	.word	-32
	.word	4
	.word	0
_Label_2291:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2292:
	.ascii	"Pself\0"
	.align
_Label_2293:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2289\0"
	.align
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2288\0"
	.align
_Label_2297:
	.byte	'?'
	.ascii	"_temp_2287\0"
	.align
_Label_2298:
	.byte	'?'
	.ascii	"_temp_2286\0"
	.align
_Label_2299:
	.byte	'?'
	.ascii	"_temp_2285\0"
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
_Label_3512:
	push	r0
	sub	r1,1,r1
	bne	_Label_3512
	mov	1737,r13		! source line 1737
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1741,r13		! source line 1741
	mov	"\0\0AS",r10
!   _temp_2300 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2300 [entry ] into _temp_2301
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
!   _temp_2304 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2304 [entry ] into _temp_2305
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
!   Data Move: _temp_2303 = *_temp_2305  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2302 = _temp_2303 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2301 = _temp_2302  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1741,r13		! source line 1741
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
	.word	_Label_2306
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2307
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2308
	.word	12
	.word	4
	.word	_Label_2309
	.word	-12
	.word	4
	.word	_Label_2310
	.word	-16
	.word	4
	.word	_Label_2311
	.word	-20
	.word	4
	.word	_Label_2312
	.word	-24
	.word	4
	.word	_Label_2313
	.word	-28
	.word	4
	.word	_Label_2314
	.word	-32
	.word	4
	.word	0
_Label_2306:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2307:
	.ascii	"Pself\0"
	.align
_Label_2308:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2313:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2300\0"
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
_Label_3513:
	push	r0
	sub	r1,1,r1
	bne	_Label_3513
	mov	1746,r13		! source line 1746
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1750,r13		! source line 1750
	mov	"\0\0AS",r10
!   _temp_2315 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2315 [entry ] into _temp_2316
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
!   _temp_2319 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2319 [entry ] into _temp_2320
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
!   Data Move: _temp_2318 = *_temp_2320  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2317 = _temp_2318 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2316 = _temp_2317  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1750,r13		! source line 1750
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
	.word	_Label_2321
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2322
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2323
	.word	12
	.word	4
	.word	_Label_2324
	.word	-12
	.word	4
	.word	_Label_2325
	.word	-16
	.word	4
	.word	_Label_2326
	.word	-20
	.word	4
	.word	_Label_2327
	.word	-24
	.word	4
	.word	_Label_2328
	.word	-28
	.word	4
	.word	_Label_2329
	.word	-32
	.word	4
	.word	0
_Label_2321:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2322:
	.ascii	"Pself\0"
	.align
_Label_2323:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2317\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2315\0"
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
_Label_3514:
	push	r0
	sub	r1,1,r1
	bne	_Label_3514
	mov	1755,r13		! source line 1755
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1759,r13		! source line 1759
	mov	"\0\0AS",r10
!   _temp_2330 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2330 [entry ] into _temp_2331
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
!   _temp_2334 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2334 [entry ] into _temp_2335
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
!   Data Move: _temp_2333 = *_temp_2335  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2332 = _temp_2333 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2331 = _temp_2332  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1759,r13		! source line 1759
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
	.word	_Label_2336
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2337
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2338
	.word	12
	.word	4
	.word	_Label_2339
	.word	-12
	.word	4
	.word	_Label_2340
	.word	-16
	.word	4
	.word	_Label_2341
	.word	-20
	.word	4
	.word	_Label_2342
	.word	-24
	.word	4
	.word	_Label_2343
	.word	-28
	.word	4
	.word	_Label_2344
	.word	-32
	.word	4
	.word	0
_Label_2336:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2337:
	.ascii	"Pself\0"
	.align
_Label_2338:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2335\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2334\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2330\0"
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
_Label_3515:
	push	r0
	sub	r1,1,r1
	bne	_Label_3515
	mov	1764,r13		! source line 1764
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1768,r13		! source line 1768
	mov	"\0\0AS",r10
!   _temp_2345 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2345 [entry ] into _temp_2346
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
!   _temp_2349 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2349 [entry ] into _temp_2350
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
!   Data Move: _temp_2348 = *_temp_2350  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2347 = _temp_2348 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2346 = _temp_2347  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1768,r13		! source line 1768
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
	.word	_Label_2351
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2352
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2353
	.word	12
	.word	4
	.word	_Label_2354
	.word	-12
	.word	4
	.word	_Label_2355
	.word	-16
	.word	4
	.word	_Label_2356
	.word	-20
	.word	4
	.word	_Label_2357
	.word	-24
	.word	4
	.word	_Label_2358
	.word	-28
	.word	4
	.word	_Label_2359
	.word	-32
	.word	4
	.word	0
_Label_2351:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2352:
	.ascii	"Pself\0"
	.align
_Label_2353:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2350\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2348\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2346\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2345\0"
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
_Label_3516:
	push	r0
	sub	r1,1,r1
	bne	_Label_3516
	mov	1773,r13		! source line 1773
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1777,r13		! source line 1777
	mov	"\0\0AS",r10
!   _temp_2360 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2360 [entry ] into _temp_2361
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
!   _temp_2364 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2364 [entry ] into _temp_2365
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
!   Data Move: _temp_2363 = *_temp_2365  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2362 = _temp_2363 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2361 = _temp_2362  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1777,r13		! source line 1777
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
	.word	_Label_2366
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2367
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2368
	.word	12
	.word	4
	.word	_Label_2369
	.word	-12
	.word	4
	.word	_Label_2370
	.word	-16
	.word	4
	.word	_Label_2371
	.word	-20
	.word	4
	.word	_Label_2372
	.word	-24
	.word	4
	.word	_Label_2373
	.word	-28
	.word	4
	.word	_Label_2374
	.word	-32
	.word	4
	.word	0
_Label_2366:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2367:
	.ascii	"Pself\0"
	.align
_Label_2368:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2365\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2364\0"
	.align
_Label_2371:
	.byte	'?'
	.ascii	"_temp_2363\0"
	.align
_Label_2372:
	.byte	'?'
	.ascii	"_temp_2362\0"
	.align
_Label_2373:
	.byte	'?'
	.ascii	"_temp_2361\0"
	.align
_Label_2374:
	.byte	'?'
	.ascii	"_temp_2360\0"
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
_Label_3517:
	push	r0
	sub	r1,1,r1
	bne	_Label_3517
	mov	1782,r13		! source line 1782
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2376 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2376 [0 ] into _temp_2377
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
!   _temp_2375 = _temp_2377		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2378 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2375  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2378  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1788,r13		! source line 1788
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1788,r13		! source line 1788
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
	.word	_Label_2379
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2380
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2381
	.word	-12
	.word	4
	.word	_Label_2382
	.word	-16
	.word	4
	.word	_Label_2383
	.word	-20
	.word	4
	.word	_Label_2384
	.word	-24
	.word	4
	.word	0
_Label_2379:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2380:
	.ascii	"Pself\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2378\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2376\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2375\0"
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
_Label_3518:
	push	r0
	sub	r1,1,r1
	bne	_Label_3518
	mov	1793,r13		! source line 1793
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1808,r13		! source line 1808
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2385
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2385
	jmp	_Label_2386
_Label_2385:
! THEN...
	mov	1809,r13		! source line 1809
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1809,r13		! source line 1809
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2387
_Label_2386:
! ELSE...
	mov	1810,r13		! source line 1810
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1810,r13		! source line 1810
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2389		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2389
!	jmp	_Label_2388
_Label_2388:
! THEN...
	mov	1811,r13		! source line 1811
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1811,r13		! source line 1811
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2389:
! END IF...
_Label_2387:
! ASSIGNMENT STATEMENT...
	mov	1813,r13		! source line 1813
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
	mov	1814,r13		! source line 1814
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
	mov	1817,r13		! source line 1817
	mov	"\0\0WH",r10
_Label_2390:
!	jmp	_Label_2391
_Label_2391:
	mov	1817,r13		! source line 1817
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1818,r13		! source line 1818
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2394		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2394
!	jmp	_Label_2393
_Label_2393:
! THEN...
	mov	1819,r13		! source line 1819
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2395 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2395  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1819,r13		! source line 1819
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1820,r13		! source line 1820
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2394:
! IF STATEMENT...
	mov	1822,r13		! source line 1822
	mov	"\0\0IF",r10
	mov	1822,r13		! source line 1822
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2399) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2398  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2398 then goto _Label_2397 else goto _Label_2396
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2396
	jmp	_Label_2397
_Label_2396:
! THEN...
	mov	1823,r13		! source line 1823
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2400 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2400  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1823,r13		! source line 1823
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1824,r13		! source line 1824
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2397:
! ASSIGNMENT STATEMENT...
	mov	1826,r13		! source line 1826
	mov	"\0\0AS",r10
	mov	1826,r13		! source line 1826
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2402) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2401  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2401 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1828,r13		! source line 1828
	mov	"\0\0WH",r10
_Label_2403:
!   if offset >= 8192 then goto _Label_2405		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2405
!	jmp	_Label_2404
_Label_2404:
	mov	1828,r13		! source line 1828
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1831,r13		! source line 1831
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2406 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2406  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1832,r13		! source line 1832
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1833,r13		! source line 1833
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1834,r13		! source line 1834
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1835,r13		! source line 1835
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1836,r13		! source line 1836
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2408		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2408
!	jmp	_Label_2407
_Label_2407:
! THEN...
	mov	1837,r13		! source line 1837
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1837,r13		! source line 1837
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2408:
! END WHILE...
	jmp	_Label_2403
_Label_2405:
! ASSIGNMENT STATEMENT...
	mov	1840,r13		! source line 1840
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1841,r13		! source line 1841
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2390
_Label_2392:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2409
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2410
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2411
	.word	12
	.word	4
	.word	_Label_2412
	.word	16
	.word	4
	.word	_Label_2413
	.word	20
	.word	4
	.word	_Label_2414
	.word	-9
	.word	1
	.word	_Label_2415
	.word	-16
	.word	4
	.word	_Label_2416
	.word	-20
	.word	4
	.word	_Label_2417
	.word	-24
	.word	4
	.word	_Label_2418
	.word	-28
	.word	4
	.word	_Label_2419
	.word	-10
	.word	1
	.word	_Label_2420
	.word	-32
	.word	4
	.word	_Label_2421
	.word	-36
	.word	4
	.word	_Label_2422
	.word	-40
	.word	4
	.word	_Label_2423
	.word	-44
	.word	4
	.word	_Label_2424
	.word	-48
	.word	4
	.word	0
_Label_2409:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2410:
	.ascii	"Pself\0"
	.align
_Label_2411:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2412:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2413:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2414:
	.byte	'C'
	.ascii	"_temp_2406\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2402\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
_Label_2417:
	.byte	'?'
	.ascii	"_temp_2400\0"
	.align
_Label_2418:
	.byte	'?'
	.ascii	"_temp_2399\0"
	.align
_Label_2419:
	.byte	'C'
	.ascii	"_temp_2398\0"
	.align
_Label_2420:
	.byte	'?'
	.ascii	"_temp_2395\0"
	.align
_Label_2421:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2422:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2423:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2424:
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
_Label_3519:
	push	r0
	sub	r1,1,r1
	bne	_Label_3519
	mov	1847,r13		! source line 1847
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1858,r13		! source line 1858
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2425
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2425
	jmp	_Label_2426
_Label_2425:
! THEN...
	mov	1859,r13		! source line 1859
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1859,r13		! source line 1859
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2427
_Label_2426:
! ELSE...
	mov	1860,r13		! source line 1860
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1860,r13		! source line 1860
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2429		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2429
!	jmp	_Label_2428
_Label_2428:
! THEN...
	mov	1861,r13		! source line 1861
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1861,r13		! source line 1861
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2429:
! END IF...
_Label_2427:
! ASSIGNMENT STATEMENT...
	mov	1863,r13		! source line 1863
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
	mov	1864,r13		! source line 1864
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
	mov	1865,r13		! source line 1865
	mov	"\0\0WH",r10
_Label_2430:
!	jmp	_Label_2431
_Label_2431:
	mov	1865,r13		! source line 1865
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1866,r13		! source line 1866
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2436		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2436
	jmp	_Label_2433
_Label_2436:
	mov	1867,r13		! source line 1867
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2438) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2437  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2437 then goto _Label_2435 else goto _Label_2433
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2433
	jmp	_Label_2435
_Label_2435:
	mov	1868,r13		! source line 1868
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2440) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2439  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2439 then goto _Label_2434 else goto _Label_2433
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2433
	jmp	_Label_2434
_Label_2433:
! THEN...
	mov	1869,r13		! source line 1869
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1869,r13		! source line 1869
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2434:
! ASSIGNMENT STATEMENT...
	mov	1871,r13		! source line 1871
	mov	"\0\0AS",r10
	mov	1871,r13		! source line 1871
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2442) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2441  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2441 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1872,r13		! source line 1872
	mov	"\0\0WH",r10
_Label_2443:
!   if offset >= 8192 then goto _Label_2445		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2445
!	jmp	_Label_2444
_Label_2444:
	mov	1872,r13		! source line 1872
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1873,r13		! source line 1873
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2446 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2446  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1874,r13		! source line 1874
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1875,r13		! source line 1875
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1876,r13		! source line 1876
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1877,r13		! source line 1877
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2448		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2448
!	jmp	_Label_2447
_Label_2447:
! THEN...
	mov	1879,r13		! source line 1879
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1879,r13		! source line 1879
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2448:
! END WHILE...
	jmp	_Label_2443
_Label_2445:
! ASSIGNMENT STATEMENT...
	mov	1882,r13		! source line 1882
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1883,r13		! source line 1883
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2430
_Label_2432:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2449
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2450
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2451
	.word	12
	.word	4
	.word	_Label_2452
	.word	16
	.word	4
	.word	_Label_2453
	.word	20
	.word	4
	.word	_Label_2454
	.word	-9
	.word	1
	.word	_Label_2455
	.word	-16
	.word	4
	.word	_Label_2456
	.word	-20
	.word	4
	.word	_Label_2457
	.word	-24
	.word	4
	.word	_Label_2458
	.word	-10
	.word	1
	.word	_Label_2459
	.word	-28
	.word	4
	.word	_Label_2460
	.word	-11
	.word	1
	.word	_Label_2461
	.word	-32
	.word	4
	.word	_Label_2462
	.word	-36
	.word	4
	.word	_Label_2463
	.word	-40
	.word	4
	.word	_Label_2464
	.word	-44
	.word	4
	.word	0
_Label_2449:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2450:
	.ascii	"Pself\0"
	.align
_Label_2451:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2452:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2453:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2454:
	.byte	'C'
	.ascii	"_temp_2446\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2458:
	.byte	'C'
	.ascii	"_temp_2439\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2460:
	.byte	'C'
	.ascii	"_temp_2437\0"
	.align
_Label_2461:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2462:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2463:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2464:
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
_Label_3520:
	push	r0
	sub	r1,1,r1
	bne	_Label_3520
	mov	1889,r13		! source line 1889
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1913,r13		! source line 1913
	mov	"\0\0IF",r10
	mov	1913,r13		! source line 1913
	mov	"\0\0SE",r10
!   _temp_2468 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2469) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2468  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2467  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2467 >= 4 then goto _Label_2466		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2466
!	jmp	_Label_2465
_Label_2465:
! THEN...
	mov	1916,r13		! source line 1916
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1916,r13		! source line 1916
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2466:
! IF STATEMENT...
	mov	1920,r13		! source line 1920
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2471		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2471
!	jmp	_Label_2470
_Label_2470:
! THEN...
	mov	1921,r13		! source line 1921
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2471:
! ASSIGNMENT STATEMENT...
	mov	1924,r13		! source line 1924
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
	mov	1926,r13		! source line 1926
	mov	"\0\0RE",r10
	mov	1926,r13		! source line 1926
	mov	"\0\0SE",r10
!   _temp_2474 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2473 = _temp_2474 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2475 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2476) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2473  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2475  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2472  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2472  (sizeInBytes=4)
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
	.word	_Label_2477
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2478
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2479
	.word	12
	.word	4
	.word	_Label_2480
	.word	16
	.word	4
	.word	_Label_2481
	.word	20
	.word	4
	.word	_Label_2482
	.word	-12
	.word	4
	.word	_Label_2483
	.word	-16
	.word	4
	.word	_Label_2484
	.word	-20
	.word	4
	.word	_Label_2485
	.word	-24
	.word	4
	.word	_Label_2486
	.word	-28
	.word	4
	.word	_Label_2487
	.word	-32
	.word	4
	.word	_Label_2488
	.word	-36
	.word	4
	.word	_Label_2489
	.word	-40
	.word	4
	.word	_Label_2490
	.word	-44
	.word	4
	.word	0
_Label_2477:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2478:
	.ascii	"Pself\0"
	.align
_Label_2479:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2480:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2481:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2475\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2474\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2473\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2469\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2468\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2467\0"
	.align
_Label_2490:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2491
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2491:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2492
	.word	_sourceFileName
	.word	358		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2492:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_3521:
	push	r0
	sub	r1,1,r1
	bne	_Label_3521
	mov	2373,r13		! source line 2373
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2493 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2493  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2374,r13		! source line 2374
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2375,r13		! source line 2375
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2376,r13		! source line 2376
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2377,r13		! source line 2377
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2379,r13		! source line 2379
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2380,r13		! source line 2380
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2381,r13		! source line 2381
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2382,r13		! source line 2382
	mov	"\0\0SE",r10
!   _temp_2495 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
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
! ASSIGNMENT STATEMENT...
	mov	2383,r13		! source line 2383
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2384,r13		! source line 2384
	mov	"\0\0SE",r10
!   _temp_2497 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
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
	mov	2384,r13		! source line 2384
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_2498
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2499
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2500
	.word	-12
	.word	4
	.word	_Label_2501
	.word	-16
	.word	4
	.word	_Label_2502
	.word	-20
	.word	4
	.word	_Label_2503
	.word	-24
	.word	4
	.word	_Label_2504
	.word	-28
	.word	4
	.word	0
_Label_2498:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2499:
	.ascii	"Pself\0"
	.align
_Label_2500:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2501:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2502:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2503:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2504:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_3522:
	push	r0
	sub	r1,1,r1
	bne	_Label_3522
	mov	2389,r13		! source line 2389
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2402,r13		! source line 2402
	mov	"\0\0SE",r10
!   _temp_2505 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2403,r13		! source line 2403
	mov	"\0\0WH",r10
_Label_2506:
!	jmp	_Label_2507
_Label_2507:
	mov	2403,r13		! source line 2403
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2405,r13		! source line 2405
	mov	"\0\0SE",r10
!   _temp_2509 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2510) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2509  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2407,r13		! source line 2407
	mov	"\0\0SE",r10
!   _temp_2511 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2410,r13		! source line 2410
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2520 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2514
	cmp	r1,2
	be	_Label_2515
	cmp	r1,3
	be	_Label_2516
	cmp	r1,4
	be	_Label_2517
	cmp	r1,5
	be	_Label_2518
	cmp	r1,6
	be	_Label_2519
	jmp	_Label_2512
! CASE 1...
_Label_2514:
! SEND STATEMENT...
	mov	2412,r13		! source line 2412
	mov	"\0\0SE",r10
!   _temp_2521 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2413,r13		! source line 2413
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2515:
! CALL STATEMENT...
!   _temp_2522 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2522  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2415,r13		! source line 2415
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2516:
! CALL STATEMENT...
!   _temp_2523 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2523  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2417,r13		! source line 2417
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2517:
! CALL STATEMENT...
!   _temp_2524 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2524  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2419,r13		! source line 2419
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2518:
! BREAK STATEMENT...
	mov	2423,r13		! source line 2423
	mov	"\0\0BR",r10
	jmp	_Label_2513
! CASE 6...
_Label_2519:
! CALL STATEMENT...
!   _temp_2525 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2525  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2425,r13		! source line 2425
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2512:
! CALL STATEMENT...
!   _temp_2526 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2526  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2427,r13		! source line 2427
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2513:
! END WHILE...
	jmp	_Label_2506
_Label_2508:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2527
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2528
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2529
	.word	12
	.word	4
	.word	_Label_2530
	.word	16
	.word	4
	.word	_Label_2531
	.word	20
	.word	4
	.word	_Label_2532
	.word	-12
	.word	4
	.word	_Label_2533
	.word	-16
	.word	4
	.word	_Label_2534
	.word	-20
	.word	4
	.word	_Label_2535
	.word	-24
	.word	4
	.word	_Label_2536
	.word	-28
	.word	4
	.word	_Label_2537
	.word	-32
	.word	4
	.word	_Label_2538
	.word	-36
	.word	4
	.word	_Label_2539
	.word	-40
	.word	4
	.word	_Label_2540
	.word	-44
	.word	4
	.word	_Label_2541
	.word	-48
	.word	4
	.word	_Label_2542
	.word	-52
	.word	4
	.word	0
_Label_2527:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2528:
	.ascii	"Pself\0"
	.align
_Label_2529:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2530:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2531:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2523\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2521\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2542:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2436,r13		! source line 2436
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2451,r13		! source line 2451
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2454,r13		! source line 2454
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2456,r13		! source line 2456
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2457,r13		! source line 2457
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2457,r13		! source line 2457
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_2543
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2544
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2545
	.word	12
	.word	4
	.word	_Label_2546
	.word	16
	.word	4
	.word	_Label_2547
	.word	20
	.word	4
	.word	_Label_2548
	.word	24
	.word	4
	.word	0
_Label_2543:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2544:
	.ascii	"Pself\0"
	.align
_Label_2545:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2546:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2547:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2548:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_3523:
	push	r0
	sub	r1,1,r1
	bne	_Label_3523
	mov	2462,r13		! source line 2462
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0SE",r10
!   _temp_2549 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2475,r13		! source line 2475
	mov	"\0\0WH",r10
_Label_2550:
!	jmp	_Label_2551
_Label_2551:
	mov	2475,r13		! source line 2475
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2476,r13		! source line 2476
	mov	"\0\0SE",r10
!   _temp_2553 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2554) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2553  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2478,r13		! source line 2478
	mov	"\0\0SE",r10
!   _temp_2555 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2481,r13		! source line 2481
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2564 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2558
	cmp	r1,2
	be	_Label_2559
	cmp	r1,3
	be	_Label_2560
	cmp	r1,4
	be	_Label_2561
	cmp	r1,5
	be	_Label_2562
	cmp	r1,6
	be	_Label_2563
	jmp	_Label_2556
! CASE 1...
_Label_2558:
! SEND STATEMENT...
	mov	2483,r13		! source line 2483
	mov	"\0\0SE",r10
!   _temp_2565 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2484,r13		! source line 2484
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2559:
! CALL STATEMENT...
!   _temp_2566 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2566  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2486,r13		! source line 2486
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2560:
! CALL STATEMENT...
!   _temp_2567 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2567  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2488,r13		! source line 2488
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2561:
! CALL STATEMENT...
!   _temp_2568 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2568  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2490,r13		! source line 2490
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2562:
! BREAK STATEMENT...
	mov	2494,r13		! source line 2494
	mov	"\0\0BR",r10
	jmp	_Label_2557
! CASE 6...
_Label_2563:
! CALL STATEMENT...
!   _temp_2569 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2569  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2496,r13		! source line 2496
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2556:
! CALL STATEMENT...
!   _temp_2570 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2570  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2498,r13		! source line 2498
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2557:
! END WHILE...
	jmp	_Label_2550
_Label_2552:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2571
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2572
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2573
	.word	12
	.word	4
	.word	_Label_2574
	.word	16
	.word	4
	.word	_Label_2575
	.word	20
	.word	4
	.word	_Label_2576
	.word	-12
	.word	4
	.word	_Label_2577
	.word	-16
	.word	4
	.word	_Label_2578
	.word	-20
	.word	4
	.word	_Label_2579
	.word	-24
	.word	4
	.word	_Label_2580
	.word	-28
	.word	4
	.word	_Label_2581
	.word	-32
	.word	4
	.word	_Label_2582
	.word	-36
	.word	4
	.word	_Label_2583
	.word	-40
	.word	4
	.word	_Label_2584
	.word	-44
	.word	4
	.word	_Label_2585
	.word	-48
	.word	4
	.word	_Label_2586
	.word	-52
	.word	4
	.word	0
_Label_2571:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2572:
	.ascii	"Pself\0"
	.align
_Label_2573:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2574:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2575:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2507,r13		! source line 2507
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2522,r13		! source line 2522
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2524,r13		! source line 2524
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2525,r13		! source line 2525
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2526,r13		! source line 2526
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2527,r13		! source line 2527
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2527,r13		! source line 2527
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_2587
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2588
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2589
	.word	12
	.word	4
	.word	_Label_2590
	.word	16
	.word	4
	.word	_Label_2591
	.word	20
	.word	4
	.word	_Label_2592
	.word	24
	.word	4
	.word	0
_Label_2587:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2588:
	.ascii	"Pself\0"
	.align
_Label_2589:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2590:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2591:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2592:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2593
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_2593:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2594
	.word	_sourceFileName
	.word	381		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2594:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_3524:
	push	r0
	sub	r1,1,r1
	bne	_Label_3524
	mov	2538,r13		! source line 2538
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2595 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2595  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2545,r13		! source line 2545
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2546,r13		! source line 2546
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2547,r13		! source line 2547
	mov	"\0\0SE",r10
!   _temp_2597 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2550,r13		! source line 2550
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2551,r13		! source line 2551
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2552,r13		! source line 2552
	mov	"\0\0SE",r10
!   _temp_2600 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0AS",r10
!   _temp_2601 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2603 = &_temp_2602
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2603 = _temp_2603 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2605 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3525:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3525
!   _temp_2605 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2607:
!   Data Move: *_temp_2603 = _temp_2605  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3526:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3526
!   _temp_2603 = _temp_2603 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2604 = _temp_2604 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2604) then goto _Label_2607
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2607
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2608 = &_temp_2602
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3527
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3527:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2601 = *_temp_2608  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3528:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3528
! FOR STATEMENT...
	mov	2555,r13		! source line 2555
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2613 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2614 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2613  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2609:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2614 then goto _Label_2612		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2612
_Label_2610:
	mov	2555,r13		! source line 2555
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2556,r13		! source line 2556
	mov	"\0\0AS",r10
!   _temp_2615 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2615 [i ] into _temp_2616
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_2617 = _temp_2616 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2617 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2557,r13		! source line 2557
	mov	"\0\0SE",r10
!   _temp_2618 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2618 [i ] into _temp_2619
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2558,r13		! source line 2558
	mov	"\0\0SE",r10
!   _temp_2621 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2621 [i ] into _temp_2622
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_2620 = _temp_2622		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2623 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2620  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2611:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2609
! END FOR
_Label_2612:
! ASSIGNMENT STATEMENT...
	mov	2562,r13		! source line 2562
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2563,r13		! source line 2563
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2564,r13		! source line 2564
	mov	"\0\0SE",r10
!   _temp_2626 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2565,r13		! source line 2565
	mov	"\0\0AS",r10
!   _temp_2627 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2629 = &_temp_2628
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2629 = _temp_2629 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2631 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3529:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3529
!   _temp_2631 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2633:
!   Data Move: *_temp_2629 = _temp_2631  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3530:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3530
!   _temp_2629 = _temp_2629 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2630 = _temp_2630 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2630) then goto _Label_2633
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2633
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2634 = &_temp_2628
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3531
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3531:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2627 = *_temp_2634  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3532:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3532
! FOR STATEMENT...
	mov	2567,r13		! source line 2567
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2639 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2640 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2639  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2635:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2640 then goto _Label_2638		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2638
_Label_2636:
	mov	2567,r13		! source line 2567
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2568,r13		! source line 2568
	mov	"\0\0AS",r10
!   _temp_2641 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2641 [i ] into _temp_2642
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_2643 = _temp_2642 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2643 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2569,r13		! source line 2569
	mov	"\0\0SE",r10
!   _temp_2645 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2645 [i ] into _temp_2646
!     make sure index expr is >= 0
	load	[r14+-944],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_2644 = _temp_2646		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2647 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2644  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2637:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2635
! END FOR
_Label_2638:
! ASSIGNMENT STATEMENT...
	mov	2573,r13		! source line 2573
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3533:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3533
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2574,r13		! source line 2574
	mov	"\0\0AS",r10
!   _temp_2649 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2650 = _temp_2649 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2650 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2579,r13		! source line 2579
	mov	"\0\0AS",r10
	mov	2579,r13		! source line 2579
	mov	"\0\0SE",r10
!   _temp_2651 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2580,r13		! source line 2580
	mov	"\0\0SE",r10
!   _temp_2652 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2580,r13		! source line 2580
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_2653
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2654
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2655
	.word	-12
	.word	4
	.word	_Label_2656
	.word	-16
	.word	4
	.word	_Label_2657
	.word	-20
	.word	4
	.word	_Label_2658
	.word	-24
	.word	4
	.word	_Label_2659
	.word	-28
	.word	4
	.word	_Label_2660
	.word	-32
	.word	4
	.word	_Label_2661
	.word	-36
	.word	4
	.word	_Label_2662
	.word	-40
	.word	4
	.word	_Label_2663
	.word	-44
	.word	4
	.word	_Label_2664
	.word	-48
	.word	4
	.word	_Label_2665
	.word	-52
	.word	4
	.word	_Label_2666
	.word	-56
	.word	4
	.word	_Label_2667
	.word	-60
	.word	4
	.word	_Label_2668
	.word	-64
	.word	4
	.word	_Label_2669
	.word	-68
	.word	4
	.word	_Label_2670
	.word	-72
	.word	4
	.word	_Label_2671
	.word	-100
	.word	28
	.word	_Label_2672
	.word	-104
	.word	4
	.word	_Label_2673
	.word	-108
	.word	4
	.word	_Label_2674
	.word	-392
	.word	284
	.word	_Label_2675
	.word	-396
	.word	4
	.word	_Label_2676
	.word	-400
	.word	4
	.word	_Label_2677
	.word	-404
	.word	4
	.word	_Label_2678
	.word	-408
	.word	4
	.word	_Label_2679
	.word	-412
	.word	4
	.word	_Label_2680
	.word	-416
	.word	4
	.word	_Label_2681
	.word	-420
	.word	4
	.word	_Label_2682
	.word	-424
	.word	4
	.word	_Label_2683
	.word	-428
	.word	4
	.word	_Label_2684
	.word	-432
	.word	4
	.word	_Label_2685
	.word	-436
	.word	4
	.word	_Label_2686
	.word	-440
	.word	4
	.word	_Label_2687
	.word	-444
	.word	4
	.word	_Label_2688
	.word	-448
	.word	4
	.word	_Label_2689
	.word	-452
	.word	4
	.word	_Label_2690
	.word	-456
	.word	4
	.word	_Label_2691
	.word	-460
	.word	4
	.word	_Label_2692
	.word	-500
	.word	40
	.word	_Label_2693
	.word	-504
	.word	4
	.word	_Label_2694
	.word	-508
	.word	4
	.word	_Label_2695
	.word	-912
	.word	404
	.word	_Label_2696
	.word	-916
	.word	4
	.word	_Label_2697
	.word	-920
	.word	4
	.word	_Label_2698
	.word	-924
	.word	4
	.word	_Label_2699
	.word	-928
	.word	4
	.word	_Label_2700
	.word	-932
	.word	4
	.word	_Label_2701
	.word	-936
	.word	4
	.word	_Label_2702
	.word	-940
	.word	4
	.word	_Label_2703
	.word	-944
	.word	4
	.word	0
_Label_2653:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2654:
	.ascii	"Pself\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2649\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2648\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2640\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2687:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2688:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2703:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_3534:
	push	r0
	sub	r1,1,r1
	bne	_Label_3534
	mov	2587,r13		! source line 2587
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2589,r13		! source line 2589
	mov	"\0\0SE",r10
!   _temp_2704 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2705 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2705  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2590,r13		! source line 2590
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2591,r13		! source line 2591
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2710 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2711 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2710  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2706:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2711 then goto _Label_2709		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2709
_Label_2707:
	mov	2591,r13		! source line 2591
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2712 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2712  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2592,r13		! source line 2592
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2593,r13		! source line 2593
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2713 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2713  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2594,r13		! source line 2594
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0SE",r10
!   _temp_2714 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2714 [i ] into _temp_2715
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2708:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2706
! END FOR
_Label_2709:
! CALL STATEMENT...
!   _temp_2716 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2716  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2597,r13		! source line 2597
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2598,r13		! source line 2598
	mov	"\0\0SE",r10
!   _temp_2717 = _function_243_printFCB
	set	_function_243_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2718 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2717  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2599,r13		! source line 2599
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2719 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2719  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2600,r13		! source line 2600
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2601,r13		! source line 2601
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2724 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2725 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2724  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2720:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2725 then goto _Label_2723		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2723
_Label_2721:
	mov	2601,r13		! source line 2601
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2726 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2726  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2602,r13		! source line 2602
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2603,r13		! source line 2603
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2727 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2727  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2604,r13		! source line 2604
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2729 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2729 [i ] into _temp_2730
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_2728 = _temp_2730		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2728  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2605,r13		! source line 2605
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2731 = _StringConst_209
	set	_StringConst_209,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2731  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2606,r13		! source line 2606
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2607,r13		! source line 2607
	mov	"\0\0SE",r10
!   _temp_2732 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2732 [i ] into _temp_2733
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2722:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2720
! END FOR
_Label_2723:
! CALL STATEMENT...
!   _temp_2734 = _StringConst_210
	set	_StringConst_210,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2734  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2609,r13		! source line 2609
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2610,r13		! source line 2610
	mov	"\0\0SE",r10
!   _temp_2735 = _function_242_printOpen
	set	_function_242_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2736 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2735  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2611,r13		! source line 2611
	mov	"\0\0SE",r10
!   _temp_2737 = &fileManagerLock
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
	mov	2611,r13		! source line 2611
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_2738
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2739
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2740
	.word	-12
	.word	4
	.word	_Label_2741
	.word	-16
	.word	4
	.word	_Label_2742
	.word	-20
	.word	4
	.word	_Label_2743
	.word	-24
	.word	4
	.word	_Label_2744
	.word	-28
	.word	4
	.word	_Label_2745
	.word	-32
	.word	4
	.word	_Label_2746
	.word	-36
	.word	4
	.word	_Label_2747
	.word	-40
	.word	4
	.word	_Label_2748
	.word	-44
	.word	4
	.word	_Label_2749
	.word	-48
	.word	4
	.word	_Label_2750
	.word	-52
	.word	4
	.word	_Label_2751
	.word	-56
	.word	4
	.word	_Label_2752
	.word	-60
	.word	4
	.word	_Label_2753
	.word	-64
	.word	4
	.word	_Label_2754
	.word	-68
	.word	4
	.word	_Label_2755
	.word	-72
	.word	4
	.word	_Label_2756
	.word	-76
	.word	4
	.word	_Label_2757
	.word	-80
	.word	4
	.word	_Label_2758
	.word	-84
	.word	4
	.word	_Label_2759
	.word	-88
	.word	4
	.word	_Label_2760
	.word	-92
	.word	4
	.word	_Label_2761
	.word	-96
	.word	4
	.word	_Label_2762
	.word	-100
	.word	4
	.word	_Label_2763
	.word	-104
	.word	4
	.word	_Label_2764
	.word	-108
	.word	4
	.word	_Label_2765
	.word	-112
	.word	4
	.word	_Label_2766
	.word	-116
	.word	4
	.word	0
_Label_2738:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2739:
	.ascii	"Pself\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2735\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2734\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2733\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2732\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2726\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2725\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2724\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2717\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2716\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2715\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2705\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2704\0"
	.align
_Label_2766:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_3535:
	push	r0
	sub	r1,1,r1
	bne	_Label_3535
	mov	2616,r13		! source line 2616
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0AS",r10
	mov	2632,r13		! source line 2632
	mov	"\0\0SE",r10
!   _temp_2767 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2633,r13		! source line 2633
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2768
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2768
	jmp	_Label_2769
_Label_2768:
! THEN...
	mov	2634,r13		! source line 2634
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2634,r13		! source line 2634
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2769:
! SEND STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0SE",r10
!   _temp_2770 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2639,r13		! source line 2639
	mov	"\0\0WH",r10
_Label_2771:
	mov	2639,r13		! source line 2639
	mov	"\0\0SE",r10
!   _temp_2774 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2772 else goto _Label_2773
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2773
	jmp	_Label_2772
_Label_2772:
	mov	2639,r13		! source line 2639
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2640,r13		! source line 2640
	mov	"\0\0SE",r10
!   _temp_2775 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2776 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2775  sizeInBytes=4
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
	jmp	_Label_2771
_Label_2773:
! ASSIGNMENT STATEMENT...
	mov	2642,r13		! source line 2642
	mov	"\0\0AS",r10
	mov	2642,r13		! source line 2642
	mov	"\0\0SE",r10
!   _temp_2777 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2645,r13		! source line 2645
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2778 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2778 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2646,r13		! source line 2646
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2779 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2779 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2649,r13		! source line 2649
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2780 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2780 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2651,r13		! source line 2651
	mov	"\0\0SE",r10
!   _temp_2781 = &fileManagerLock
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
	mov	2652,r13		! source line 2652
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_2782
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2783
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2784
	.word	12
	.word	4
	.word	_Label_2785
	.word	-12
	.word	4
	.word	_Label_2786
	.word	-16
	.word	4
	.word	_Label_2787
	.word	-20
	.word	4
	.word	_Label_2788
	.word	-24
	.word	4
	.word	_Label_2789
	.word	-28
	.word	4
	.word	_Label_2790
	.word	-32
	.word	4
	.word	_Label_2791
	.word	-36
	.word	4
	.word	_Label_2792
	.word	-40
	.word	4
	.word	_Label_2793
	.word	-44
	.word	4
	.word	_Label_2794
	.word	-48
	.word	4
	.word	_Label_2795
	.word	-52
	.word	4
	.word	_Label_2796
	.word	-56
	.word	4
	.word	0
_Label_2782:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2783:
	.ascii	"Pself\0"
	.align
_Label_2784:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2785:
	.byte	'?'
	.ascii	"_temp_2781\0"
	.align
_Label_2786:
	.byte	'?'
	.ascii	"_temp_2780\0"
	.align
_Label_2787:
	.byte	'?'
	.ascii	"_temp_2779\0"
	.align
_Label_2788:
	.byte	'?'
	.ascii	"_temp_2778\0"
	.align
_Label_2789:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2767\0"
	.align
_Label_2795:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2796:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_3536:
	push	r0
	sub	r1,1,r1
	bne	_Label_3536
	mov	2657,r13		! source line 2657
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2682,r13		! source line 2682
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2685,r13		! source line 2685
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2686,r13		! source line 2686
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2687,r13		! source line 2687
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2798		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2798
!	jmp	_Label_2797
_Label_2797:
! THEN...
	mov	2688,r13		! source line 2688
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2799 = _StringConst_211
	set	_StringConst_211,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2799  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2688,r13		! source line 2688
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2798:
! ASSIGNMENT STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2693,r13		! source line 2693
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2694,r13		! source line 2694
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2695,r13		! source line 2695
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2698,r13		! source line 2698
	mov	"\0\0WH",r10
_Label_2800:
!   if numFiles <= 0 then goto _Label_2802		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2802
!	jmp	_Label_2801
_Label_2801:
	mov	2698,r13		! source line 2698
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2803 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2803  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2699,r13		! source line 2699
	mov	"\0\0CA",r10
	call	_function_244_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2700,r13		! source line 2700
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2804 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2804  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2701,r13		! source line 2701
	mov	"\0\0CA",r10
	call	_function_244_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2702,r13		! source line 2702
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2805 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2805  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2703,r13		! source line 2703
	mov	"\0\0CA",r10
	call	_function_244_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2704,r13		! source line 2704
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2705,r13		! source line 2705
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2809 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2809 then goto _Label_2807		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2807
!	jmp	_Label_2808
_Label_2808:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2811
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_2810 = _temp_2811		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2810  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2706,r13		! source line 2706
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2806 else goto _Label_2807
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2807
	jmp	_Label_2806
_Label_2806:
! THEN...
	mov	2707,r13		! source line 2707
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2707,r13		! source line 2707
	mov	"\0\0BR",r10
	jmp	_Label_2802
! END IF...
_Label_2807:
! ASSIGNMENT STATEMENT...
	mov	2709,r13		! source line 2709
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2710,r13		! source line 2710
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2800
_Label_2802:
! IF STATEMENT...
	mov	2714,r13		! source line 2714
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2813		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2813
!	jmp	_Label_2812
_Label_2812:
! THEN...
	mov	2715,r13		! source line 2715
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2715,r13		! source line 2715
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2813:
! SEND STATEMENT...
	mov	2718,r13		! source line 2718
	mov	"\0\0SE",r10
!   _temp_2814 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2720,r13		! source line 2720
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2819 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2820 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2819  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2815:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2820 then goto _Label_2818		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2818
_Label_2816:
	mov	2720,r13		! source line 2720
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2721,r13		! source line 2721
	mov	"\0\0AS",r10
!   _temp_2821 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2821 [i ] into _temp_2822
!     make sure index expr is >= 0
	load	[r14+-136],r2
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
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_2822		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2722,r13		! source line 2722
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2826 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2825 = *_temp_2826  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2825 != start then goto _Label_2824		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2824
!	jmp	_Label_2823
_Label_2823:
! THEN...
	mov	2723,r13		! source line 2723
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2723,r13		! source line 2723
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2827 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2830 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2829 = *_temp_2830  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2828 = _temp_2829 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2827 = _temp_2828  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2724,r13		! source line 2724
	mov	"\0\0SE",r10
!   _temp_2831 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2725,r13		! source line 2725
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2824:
!   Increment the FOR-LOOP index variable and jump back
_Label_2817:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2815
! END FOR
_Label_2818:
! WHILE STATEMENT...
	mov	2730,r13		! source line 2730
	mov	"\0\0WH",r10
_Label_2832:
	mov	2730,r13		! source line 2730
	mov	"\0\0SE",r10
!   _temp_2835 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2833 else goto _Label_2834
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2834
	jmp	_Label_2833
_Label_2833:
	mov	2730,r13		! source line 2730
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2731,r13		! source line 2731
	mov	"\0\0SE",r10
!   _temp_2836 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2837 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2836  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2832
_Label_2834:
! ASSIGNMENT STATEMENT...
	mov	2733,r13		! source line 2733
	mov	"\0\0AS",r10
	mov	2733,r13		! source line 2733
	mov	"\0\0SE",r10
!   _temp_2838 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2736,r13		! source line 2736
	mov	"\0\0SE",r10
!   _temp_2839 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2739,r13		! source line 2739
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2840 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2840 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2740,r13		! source line 2740
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2841 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2841 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2741,r13		! source line 2741
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2842 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2842 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2742,r13		! source line 2742
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2847 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2846 = *_temp_2847  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2846 < 0 then goto _Label_2845		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2845
	jmp	_Label_2843
_Label_2845:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2848 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2848 ) then goto _Label_2844		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2844
!	jmp	_Label_2843
_Label_2843:
! THEN...
	mov	2743,r13		! source line 2743
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2849 = _StringConst_212
	set	_StringConst_212,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2849  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2743,r13		! source line 2743
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2844:
! RETURN STATEMENT...
	mov	2745,r13		! source line 2745
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_2850
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2851
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2852
	.word	12
	.word	4
	.word	_Label_2853
	.word	-12
	.word	4
	.word	_Label_2854
	.word	-16
	.word	4
	.word	_Label_2855
	.word	-20
	.word	4
	.word	_Label_2856
	.word	-24
	.word	4
	.word	_Label_2857
	.word	-28
	.word	4
	.word	_Label_2858
	.word	-32
	.word	4
	.word	_Label_2859
	.word	-36
	.word	4
	.word	_Label_2860
	.word	-40
	.word	4
	.word	_Label_2861
	.word	-44
	.word	4
	.word	_Label_2862
	.word	-48
	.word	4
	.word	_Label_2863
	.word	-52
	.word	4
	.word	_Label_2864
	.word	-56
	.word	4
	.word	_Label_2865
	.word	-60
	.word	4
	.word	_Label_2866
	.word	-64
	.word	4
	.word	_Label_2867
	.word	-68
	.word	4
	.word	_Label_2868
	.word	-72
	.word	4
	.word	_Label_2869
	.word	-76
	.word	4
	.word	_Label_2870
	.word	-80
	.word	4
	.word	_Label_2871
	.word	-84
	.word	4
	.word	_Label_2872
	.word	-88
	.word	4
	.word	_Label_2873
	.word	-92
	.word	4
	.word	_Label_2874
	.word	-96
	.word	4
	.word	_Label_2875
	.word	-100
	.word	4
	.word	_Label_2876
	.word	-104
	.word	4
	.word	_Label_2877
	.word	-108
	.word	4
	.word	_Label_2878
	.word	-112
	.word	4
	.word	_Label_2879
	.word	-116
	.word	4
	.word	_Label_2880
	.word	-120
	.word	4
	.word	_Label_2881
	.word	-124
	.word	4
	.word	_Label_2882
	.word	-128
	.word	4
	.word	_Label_2883
	.word	-132
	.word	4
	.word	_Label_2884
	.word	-136
	.word	4
	.word	_Label_2885
	.word	-140
	.word	4
	.word	_Label_2886
	.word	-144
	.word	4
	.word	_Label_2887
	.word	-148
	.word	4
	.word	_Label_2888
	.word	-152
	.word	4
	.word	_Label_2889
	.word	-156
	.word	4
	.word	_Label_2890
	.word	-160
	.word	4
	.word	0
_Label_2850:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2851:
	.ascii	"Pself\0"
	.align
_Label_2852:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2855:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
_Label_2857:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2864:
	.byte	'?'
	.ascii	"_temp_2835\0"
	.align
_Label_2865:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2866:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2867:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2868:
	.byte	'?'
	.ascii	"_temp_2828\0"
	.align
_Label_2869:
	.byte	'?'
	.ascii	"_temp_2827\0"
	.align
_Label_2870:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2871:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2872:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2873:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2874:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2875:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2814\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2810\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2880:
	.byte	'?'
	.ascii	"_temp_2805\0"
	.align
_Label_2881:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2882:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2883:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
_Label_2884:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2885:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2886:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2887:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2888:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2889:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2890:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_3537:
	push	r0
	sub	r1,1,r1
	bne	_Label_3537
	mov	2758,r13		! source line 2758
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2760,r13		! source line 2760
	mov	"\0\0IF",r10
!   _temp_2893 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2893 then goto _Label_2892		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2892
!	jmp	_Label_2891
_Label_2891:
! THEN...
	mov	2761,r13		! source line 2761
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2761,r13		! source line 2761
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2892:
! SEND STATEMENT...
	mov	2763,r13		! source line 2763
	mov	"\0\0SE",r10
!   _temp_2894 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2764,r13		! source line 2764
	mov	"\0\0SE",r10
!   _temp_2895 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2765,r13		! source line 2765
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2896 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2896  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2766,r13		! source line 2766
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2897 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2900 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2899 = *_temp_2900  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2898 = _temp_2899 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2897 = _temp_2898  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2767,r13		! source line 2767
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2904 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2903 = *_temp_2904  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2903 > 0 then goto _Label_2902		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2902
!	jmp	_Label_2901
_Label_2901:
! THEN...
	mov	2768,r13		! source line 2768
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2768,r13		! source line 2768
	mov	"\0\0SE",r10
!   _temp_2905 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2769,r13		! source line 2769
	mov	"\0\0SE",r10
!   _temp_2906 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2907 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2906  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2770,r13		! source line 2770
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2908 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2911 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2910 = *_temp_2911  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2909 = _temp_2910 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2908 = _temp_2909  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2771,r13		! source line 2771
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2915 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2914 = *_temp_2915  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2914 > 0 then goto _Label_2913		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2913
!	jmp	_Label_2912
_Label_2912:
! THEN...
	mov	2772,r13		! source line 2772
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2772,r13		! source line 2772
	mov	"\0\0SE",r10
!   _temp_2916 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
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
	mov	2773,r13		! source line 2773
	mov	"\0\0SE",r10
!   _temp_2917 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2918 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2917  sizeInBytes=4
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
! END IF...
_Label_2913:
! END IF...
_Label_2902:
! SEND STATEMENT...
	mov	2776,r13		! source line 2776
	mov	"\0\0SE",r10
!   _temp_2919 = &fileManagerLock
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
	mov	2776,r13		! source line 2776
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_2920
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2921
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2922
	.word	12
	.word	4
	.word	_Label_2923
	.word	-12
	.word	4
	.word	_Label_2924
	.word	-16
	.word	4
	.word	_Label_2925
	.word	-20
	.word	4
	.word	_Label_2926
	.word	-24
	.word	4
	.word	_Label_2927
	.word	-28
	.word	4
	.word	_Label_2928
	.word	-32
	.word	4
	.word	_Label_2929
	.word	-36
	.word	4
	.word	_Label_2930
	.word	-40
	.word	4
	.word	_Label_2931
	.word	-44
	.word	4
	.word	_Label_2932
	.word	-48
	.word	4
	.word	_Label_2933
	.word	-52
	.word	4
	.word	_Label_2934
	.word	-56
	.word	4
	.word	_Label_2935
	.word	-60
	.word	4
	.word	_Label_2936
	.word	-64
	.word	4
	.word	_Label_2937
	.word	-68
	.word	4
	.word	_Label_2938
	.word	-72
	.word	4
	.word	_Label_2939
	.word	-76
	.word	4
	.word	_Label_2940
	.word	-80
	.word	4
	.word	_Label_2941
	.word	-84
	.word	4
	.word	_Label_2942
	.word	-88
	.word	4
	.word	_Label_2943
	.word	-92
	.word	4
	.word	_Label_2944
	.word	-96
	.word	4
	.word	_Label_2945
	.word	-100
	.word	4
	.word	_Label_2946
	.word	-104
	.word	4
	.word	0
_Label_2920:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2921:
	.ascii	"Pself\0"
	.align
_Label_2922:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2923:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
_Label_2928:
	.byte	'?'
	.ascii	"_temp_2914\0"
	.align
_Label_2929:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2904\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2903\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2898\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2946:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_3538:
	push	r0
	sub	r1,1,r1
	bne	_Label_3538
	mov	2781,r13		! source line 2781
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2786,r13		! source line 2786
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2950 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2949 = *_temp_2950  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2949) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2951 = _temp_2949 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2951 ) then goto _Label_2948		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2948
!	jmp	_Label_2947
_Label_2947:
! THEN...
	mov	2787,r13		! source line 2787
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2787,r13		! source line 2787
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2956 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2955 = *_temp_2956  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2955) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2957 = _temp_2955 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2954 = *_temp_2957  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2954 >= 0 then goto _Label_2953		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2953
!	jmp	_Label_2952
_Label_2952:
! THEN...
	mov	2788,r13		! source line 2788
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2958 = _StringConst_213
	set	_StringConst_213,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2958  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2788,r13		! source line 2788
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2953:
! ASSIGNMENT STATEMENT...
	mov	2790,r13		! source line 2790
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2960 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2959 = *_temp_2960  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2959) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2961 = _temp_2959 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2961 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2791,r13		! source line 2791
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2965 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2964 = *_temp_2965  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2964) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2966 = _temp_2964 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2963 = *_temp_2966  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2969 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2968 = *_temp_2969  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2968) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2970 = _temp_2968 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2967 = *_temp_2970  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2962 = _temp_2963 + _temp_2967		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2973 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2972 = *_temp_2973  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2972) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2974 = _temp_2972 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2971 = *_temp_2974  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2975 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2962  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2971  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2948:
! RETURN STATEMENT...
	mov	2786,r13		! source line 2786
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_2976
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2977
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2978
	.word	12
	.word	4
	.word	_Label_2979
	.word	-12
	.word	4
	.word	_Label_2980
	.word	-16
	.word	4
	.word	_Label_2981
	.word	-20
	.word	4
	.word	_Label_2982
	.word	-24
	.word	4
	.word	_Label_2983
	.word	-28
	.word	4
	.word	_Label_2984
	.word	-32
	.word	4
	.word	_Label_2985
	.word	-36
	.word	4
	.word	_Label_2986
	.word	-40
	.word	4
	.word	_Label_2987
	.word	-44
	.word	4
	.word	_Label_2988
	.word	-48
	.word	4
	.word	_Label_2989
	.word	-52
	.word	4
	.word	_Label_2990
	.word	-56
	.word	4
	.word	_Label_2991
	.word	-60
	.word	4
	.word	_Label_2992
	.word	-64
	.word	4
	.word	_Label_2993
	.word	-68
	.word	4
	.word	_Label_2994
	.word	-72
	.word	4
	.word	_Label_2995
	.word	-76
	.word	4
	.word	_Label_2996
	.word	-80
	.word	4
	.word	_Label_2997
	.word	-84
	.word	4
	.word	_Label_2998
	.word	-88
	.word	4
	.word	_Label_2999
	.word	-92
	.word	4
	.word	_Label_3000
	.word	-96
	.word	4
	.word	_Label_3001
	.word	-100
	.word	4
	.word	_Label_3002
	.word	-104
	.word	4
	.word	_Label_3003
	.word	-108
	.word	4
	.word	0
_Label_2976:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2977:
	.ascii	"Pself\0"
	.align
_Label_2978:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2975\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2974\0"
	.align
_Label_2981:
	.byte	'?'
	.ascii	"_temp_2973\0"
	.align
_Label_2982:
	.byte	'?'
	.ascii	"_temp_2972\0"
	.align
_Label_2983:
	.byte	'?'
	.ascii	"_temp_2971\0"
	.align
_Label_2984:
	.byte	'?'
	.ascii	"_temp_2970\0"
	.align
_Label_2985:
	.byte	'?'
	.ascii	"_temp_2969\0"
	.align
_Label_2986:
	.byte	'?'
	.ascii	"_temp_2968\0"
	.align
_Label_2987:
	.byte	'?'
	.ascii	"_temp_2967\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2966\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2965\0"
	.align
_Label_2990:
	.byte	'?'
	.ascii	"_temp_2964\0"
	.align
_Label_2991:
	.byte	'?'
	.ascii	"_temp_2963\0"
	.align
_Label_2992:
	.byte	'?'
	.ascii	"_temp_2962\0"
	.align
_Label_2993:
	.byte	'?'
	.ascii	"_temp_2961\0"
	.align
_Label_2994:
	.byte	'?'
	.ascii	"_temp_2960\0"
	.align
_Label_2995:
	.byte	'?'
	.ascii	"_temp_2959\0"
	.align
_Label_2996:
	.byte	'?'
	.ascii	"_temp_2958\0"
	.align
_Label_2997:
	.byte	'?'
	.ascii	"_temp_2957\0"
	.align
_Label_2998:
	.byte	'?'
	.ascii	"_temp_2956\0"
	.align
_Label_2999:
	.byte	'?'
	.ascii	"_temp_2955\0"
	.align
_Label_3000:
	.byte	'?'
	.ascii	"_temp_2954\0"
	.align
_Label_3001:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_3002:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_3003:
	.byte	'?'
	.ascii	"_temp_2949\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_3539:
	push	r0
	sub	r1,1,r1
	bne	_Label_3539
	mov	2800,r13		! source line 2800
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2815,r13		! source line 2815
	mov	"\0\0SE",r10
!   _temp_3004 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2816,r13		! source line 2816
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3010		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3010
!   _temp_3009 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3011
_Label_3010:
!   _temp_3009 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3011:
!   if _temp_3009 then goto _Label_3008 else goto _Label_3005
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3005
	jmp	_Label_3008
_Label_3008:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3014 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3013 = *_temp_3014  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3013 == 0 then goto _Label_3015		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3015
!   _temp_3012 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3016
_Label_3015:
!   _temp_3012 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3016:
!   if _temp_3012 then goto _Label_3007 else goto _Label_3005
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3005
	jmp	_Label_3007
_Label_3007:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3019 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3018 = *_temp_3019  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3018) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3020 = _temp_3018 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3017 = *_temp_3020  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3017 >= 0 then goto _Label_3006		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3006
!	jmp	_Label_3005
_Label_3005:
! THEN...
	mov	2817,r13		! source line 2817
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3021 = _StringConst_214
	set	_StringConst_214,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3021  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2817,r13		! source line 2817
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3006:
! ASSIGNMENT STATEMENT...
	mov	2819,r13		! source line 2819
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3022 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3022  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2820,r13		! source line 2820
	mov	"\0\0WH",r10
_Label_3023:
!   if numBytes <= 0 then goto _Label_3025		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3025
!	jmp	_Label_3024
_Label_3024:
	mov	2820,r13		! source line 2820
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2829,r13		! source line 2829
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2830,r13		! source line 2830
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2834,r13		! source line 2834
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3029 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3028 = *_temp_3029  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3028 == sector then goto _Label_3027		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3027
!	jmp	_Label_3026
_Label_3026:
! THEN...
	mov	2835,r13		! source line 2835
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2835,r13		! source line 2835
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3030) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2837,r13		! source line 2837
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3033 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3032 = *_temp_3033  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3031 = sector + _temp_3032		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3035 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3034 = *_temp_3035  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3036 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3031  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3034  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2840,r13		! source line 2840
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3037 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3037 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2841,r13		! source line 2841
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3038 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3038 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3027:
! ASSIGNMENT STATEMENT...
	mov	2843,r13		! source line 2843
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3040 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3039 = *_temp_3040  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3039 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2844,r13		! source line 2844
	mov	"\0\0AS",r10
!   _temp_3041 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3041  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2844,r13		! source line 2844
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2848,r13		! source line 2848
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2849,r13		! source line 2849
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2850,r13		! source line 2850
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2851,r13		! source line 2851
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3023
_Label_3025:
! SEND STATEMENT...
	mov	2858,r13		! source line 2858
	mov	"\0\0SE",r10
!   _temp_3042 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2859,r13		! source line 2859
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_3043
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3044
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3045
	.word	12
	.word	4
	.word	_Label_3046
	.word	16
	.word	4
	.word	_Label_3047
	.word	20
	.word	4
	.word	_Label_3048
	.word	24
	.word	4
	.word	_Label_3049
	.word	-16
	.word	4
	.word	_Label_3050
	.word	-20
	.word	4
	.word	_Label_3051
	.word	-24
	.word	4
	.word	_Label_3052
	.word	-28
	.word	4
	.word	_Label_3053
	.word	-32
	.word	4
	.word	_Label_3054
	.word	-36
	.word	4
	.word	_Label_3055
	.word	-40
	.word	4
	.word	_Label_3056
	.word	-44
	.word	4
	.word	_Label_3057
	.word	-48
	.word	4
	.word	_Label_3058
	.word	-52
	.word	4
	.word	_Label_3059
	.word	-56
	.word	4
	.word	_Label_3060
	.word	-60
	.word	4
	.word	_Label_3061
	.word	-64
	.word	4
	.word	_Label_3062
	.word	-68
	.word	4
	.word	_Label_3063
	.word	-72
	.word	4
	.word	_Label_3064
	.word	-76
	.word	4
	.word	_Label_3065
	.word	-80
	.word	4
	.word	_Label_3066
	.word	-84
	.word	4
	.word	_Label_3067
	.word	-88
	.word	4
	.word	_Label_3068
	.word	-92
	.word	4
	.word	_Label_3069
	.word	-96
	.word	4
	.word	_Label_3070
	.word	-100
	.word	4
	.word	_Label_3071
	.word	-104
	.word	4
	.word	_Label_3072
	.word	-9
	.word	1
	.word	_Label_3073
	.word	-10
	.word	1
	.word	_Label_3074
	.word	-108
	.word	4
	.word	_Label_3075
	.word	-112
	.word	4
	.word	_Label_3076
	.word	-116
	.word	4
	.word	_Label_3077
	.word	-120
	.word	4
	.word	_Label_3078
	.word	-124
	.word	4
	.word	_Label_3079
	.word	-128
	.word	4
	.word	0
_Label_3043:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3044:
	.ascii	"Pself\0"
	.align
_Label_3045:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3046:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3047:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3048:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3049:
	.byte	'?'
	.ascii	"_temp_3042\0"
	.align
_Label_3050:
	.byte	'?'
	.ascii	"_temp_3041\0"
	.align
_Label_3051:
	.byte	'?'
	.ascii	"_temp_3040\0"
	.align
_Label_3052:
	.byte	'?'
	.ascii	"_temp_3039\0"
	.align
_Label_3053:
	.byte	'?'
	.ascii	"_temp_3038\0"
	.align
_Label_3054:
	.byte	'?'
	.ascii	"_temp_3037\0"
	.align
_Label_3055:
	.byte	'?'
	.ascii	"_temp_3036\0"
	.align
_Label_3056:
	.byte	'?'
	.ascii	"_temp_3035\0"
	.align
_Label_3057:
	.byte	'?'
	.ascii	"_temp_3034\0"
	.align
_Label_3058:
	.byte	'?'
	.ascii	"_temp_3033\0"
	.align
_Label_3059:
	.byte	'?'
	.ascii	"_temp_3032\0"
	.align
_Label_3060:
	.byte	'?'
	.ascii	"_temp_3031\0"
	.align
_Label_3061:
	.byte	'?'
	.ascii	"_temp_3030\0"
	.align
_Label_3062:
	.byte	'?'
	.ascii	"_temp_3029\0"
	.align
_Label_3063:
	.byte	'?'
	.ascii	"_temp_3028\0"
	.align
_Label_3064:
	.byte	'?'
	.ascii	"_temp_3022\0"
	.align
_Label_3065:
	.byte	'?'
	.ascii	"_temp_3021\0"
	.align
_Label_3066:
	.byte	'?'
	.ascii	"_temp_3020\0"
	.align
_Label_3067:
	.byte	'?'
	.ascii	"_temp_3019\0"
	.align
_Label_3068:
	.byte	'?'
	.ascii	"_temp_3018\0"
	.align
_Label_3069:
	.byte	'?'
	.ascii	"_temp_3017\0"
	.align
_Label_3070:
	.byte	'?'
	.ascii	"_temp_3014\0"
	.align
_Label_3071:
	.byte	'?'
	.ascii	"_temp_3013\0"
	.align
_Label_3072:
	.byte	'C'
	.ascii	"_temp_3012\0"
	.align
_Label_3073:
	.byte	'C'
	.ascii	"_temp_3009\0"
	.align
_Label_3074:
	.byte	'?'
	.ascii	"_temp_3004\0"
	.align
_Label_3075:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3076:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3077:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3078:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3079:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_3540:
	push	r0
	sub	r1,1,r1
	bne	_Label_3540
	mov	2864,r13		! source line 2864
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2880,r13		! source line 2880
	mov	"\0\0SE",r10
!   _temp_3080 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2881,r13		! source line 2881
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3086		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3086
!   _temp_3085 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3087
_Label_3086:
!   _temp_3085 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3087:
!   if _temp_3085 then goto _Label_3084 else goto _Label_3081
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3081
	jmp	_Label_3084
_Label_3084:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3090 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3089 = *_temp_3090  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3089 == 0 then goto _Label_3091		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3091
!   _temp_3088 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3092
_Label_3091:
!   _temp_3088 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3092:
!   if _temp_3088 then goto _Label_3083 else goto _Label_3081
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3081
	jmp	_Label_3083
_Label_3083:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3095 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3094 = *_temp_3095  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3094) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3096 = _temp_3094 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3093 = *_temp_3096  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3093 >= 0 then goto _Label_3082		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3082
!	jmp	_Label_3081
_Label_3081:
! THEN...
	mov	2882,r13		! source line 2882
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3097 = _StringConst_215
	set	_StringConst_215,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3097  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2882,r13		! source line 2882
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3082:
! ASSIGNMENT STATEMENT...
	mov	2884,r13		! source line 2884
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3098 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3098  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2885,r13		! source line 2885
	mov	"\0\0WH",r10
_Label_3099:
!   if numBytes <= 0 then goto _Label_3101		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3101
!	jmp	_Label_3100
_Label_3100:
	mov	2885,r13		! source line 2885
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2894,r13		! source line 2894
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2895,r13		! source line 2895
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2899,r13		! source line 2899
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3105 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3104 = *_temp_3105  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3104 == sector then goto _Label_3103		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3103
!	jmp	_Label_3102
_Label_3102:
! THEN...
	mov	2901,r13		! source line 2901
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2901,r13		! source line 2901
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3106) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_3103:
! ASSIGNMENT STATEMENT...
	mov	2903,r13		! source line 2903
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3108 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3107 = *_temp_3108  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3107 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2904,r13		! source line 2904
	mov	"\0\0AS",r10
!   _temp_3109 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3109  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2904,r13		! source line 2904
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2905,r13		! source line 2905
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3113 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3112 = *_temp_3113  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3112 != sector then goto _Label_3111		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3111
!	jmp	_Label_3110
_Label_3110:
	jmp	_Label_3114
_Label_3111:
! ELSE...
	mov	2907,r13		! source line 2907
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2907,r13		! source line 2907
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3117
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3117
	jmp	_Label_3116
_Label_3117:
!   if bytesToMove != 8192 then goto _Label_3116		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3116
!	jmp	_Label_3115
_Label_3115:
	jmp	_Label_3118
_Label_3116:
! ELSE...
	mov	2911,r13		! source line 2911
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2911,r13		! source line 2911
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3121 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3120 = *_temp_3121  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3119 = sector + _temp_3120		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3123 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3122 = *_temp_3123  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3124 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3119  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3122  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_3118:
! END IF...
_Label_3114:
! ASSIGNMENT STATEMENT...
	mov	2915,r13		! source line 2915
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3125 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3125 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2916,r13		! source line 2916
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3126 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3126 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2920,r13		! source line 2920
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2921,r13		! source line 2921
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2922,r13		! source line 2922
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2923,r13		! source line 2923
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3099
_Label_3101:
! SEND STATEMENT...
	mov	2930,r13		! source line 2930
	mov	"\0\0SE",r10
!   _temp_3127 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2932,r13		! source line 2932
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_3128
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3129
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3130
	.word	12
	.word	4
	.word	_Label_3131
	.word	16
	.word	4
	.word	_Label_3132
	.word	20
	.word	4
	.word	_Label_3133
	.word	24
	.word	4
	.word	_Label_3134
	.word	-16
	.word	4
	.word	_Label_3135
	.word	-20
	.word	4
	.word	_Label_3136
	.word	-24
	.word	4
	.word	_Label_3137
	.word	-28
	.word	4
	.word	_Label_3138
	.word	-32
	.word	4
	.word	_Label_3139
	.word	-36
	.word	4
	.word	_Label_3140
	.word	-40
	.word	4
	.word	_Label_3141
	.word	-44
	.word	4
	.word	_Label_3142
	.word	-48
	.word	4
	.word	_Label_3143
	.word	-52
	.word	4
	.word	_Label_3144
	.word	-56
	.word	4
	.word	_Label_3145
	.word	-60
	.word	4
	.word	_Label_3146
	.word	-64
	.word	4
	.word	_Label_3147
	.word	-68
	.word	4
	.word	_Label_3148
	.word	-72
	.word	4
	.word	_Label_3149
	.word	-76
	.word	4
	.word	_Label_3150
	.word	-80
	.word	4
	.word	_Label_3151
	.word	-84
	.word	4
	.word	_Label_3152
	.word	-88
	.word	4
	.word	_Label_3153
	.word	-92
	.word	4
	.word	_Label_3154
	.word	-96
	.word	4
	.word	_Label_3155
	.word	-100
	.word	4
	.word	_Label_3156
	.word	-104
	.word	4
	.word	_Label_3157
	.word	-108
	.word	4
	.word	_Label_3158
	.word	-112
	.word	4
	.word	_Label_3159
	.word	-9
	.word	1
	.word	_Label_3160
	.word	-10
	.word	1
	.word	_Label_3161
	.word	-116
	.word	4
	.word	_Label_3162
	.word	-120
	.word	4
	.word	_Label_3163
	.word	-124
	.word	4
	.word	_Label_3164
	.word	-128
	.word	4
	.word	_Label_3165
	.word	-132
	.word	4
	.word	_Label_3166
	.word	-136
	.word	4
	.word	0
_Label_3128:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3129:
	.ascii	"Pself\0"
	.align
_Label_3130:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3131:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3132:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3133:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3134:
	.byte	'?'
	.ascii	"_temp_3127\0"
	.align
_Label_3135:
	.byte	'?'
	.ascii	"_temp_3126\0"
	.align
_Label_3136:
	.byte	'?'
	.ascii	"_temp_3125\0"
	.align
_Label_3137:
	.byte	'?'
	.ascii	"_temp_3124\0"
	.align
_Label_3138:
	.byte	'?'
	.ascii	"_temp_3123\0"
	.align
_Label_3139:
	.byte	'?'
	.ascii	"_temp_3122\0"
	.align
_Label_3140:
	.byte	'?'
	.ascii	"_temp_3121\0"
	.align
_Label_3141:
	.byte	'?'
	.ascii	"_temp_3120\0"
	.align
_Label_3142:
	.byte	'?'
	.ascii	"_temp_3119\0"
	.align
_Label_3143:
	.byte	'?'
	.ascii	"_temp_3113\0"
	.align
_Label_3144:
	.byte	'?'
	.ascii	"_temp_3112\0"
	.align
_Label_3145:
	.byte	'?'
	.ascii	"_temp_3109\0"
	.align
_Label_3146:
	.byte	'?'
	.ascii	"_temp_3108\0"
	.align
_Label_3147:
	.byte	'?'
	.ascii	"_temp_3107\0"
	.align
_Label_3148:
	.byte	'?'
	.ascii	"_temp_3106\0"
	.align
_Label_3149:
	.byte	'?'
	.ascii	"_temp_3105\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3104\0"
	.align
_Label_3151:
	.byte	'?'
	.ascii	"_temp_3098\0"
	.align
_Label_3152:
	.byte	'?'
	.ascii	"_temp_3097\0"
	.align
_Label_3153:
	.byte	'?'
	.ascii	"_temp_3096\0"
	.align
_Label_3154:
	.byte	'?'
	.ascii	"_temp_3095\0"
	.align
_Label_3155:
	.byte	'?'
	.ascii	"_temp_3094\0"
	.align
_Label_3156:
	.byte	'?'
	.ascii	"_temp_3093\0"
	.align
_Label_3157:
	.byte	'?'
	.ascii	"_temp_3090\0"
	.align
_Label_3158:
	.byte	'?'
	.ascii	"_temp_3089\0"
	.align
_Label_3159:
	.byte	'C'
	.ascii	"_temp_3088\0"
	.align
_Label_3160:
	.byte	'C'
	.ascii	"_temp_3085\0"
	.align
_Label_3161:
	.byte	'?'
	.ascii	"_temp_3080\0"
	.align
_Label_3162:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3163:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3164:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3165:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3166:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3167
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3167:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3168
	.word	_sourceFileName
	.word	406		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3168:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_3541:
	push	r0
	sub	r1,1,r1
	bne	_Label_3541
	mov	2968,r13		! source line 2968
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2969,r13		! source line 2969
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2970,r13		! source line 2970
	mov	"\0\0AS",r10
	mov	2970,r13		! source line 2970
	mov	"\0\0SE",r10
!   _temp_3169 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2971,r13		! source line 2971
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2972,r13		! source line 2972
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2973,r13		! source line 2973
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2973,r13		! source line 2973
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_3170
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3171
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3172
	.word	-12
	.word	4
	.word	0
_Label_3170:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3171:
	.ascii	"Pself\0"
	.align
_Label_3172:
	.byte	'?'
	.ascii	"_temp_3169\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_3542:
	push	r0
	sub	r1,1,r1
	bne	_Label_3542
	mov	2978,r13		! source line 2978
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3173 = _StringConst_216
	set	_StringConst_216,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3173  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2979,r13		! source line 2979
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2980,r13		! source line 2980
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3174 = _StringConst_217
	set	_StringConst_217,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3174  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2981,r13		! source line 2981
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2982,r13		! source line 2982
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3175 = _StringConst_218
	set	_StringConst_218,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3175  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2983,r13		! source line 2983
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2984,r13		! source line 2984
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3176 = _StringConst_219
	set	_StringConst_219,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3176  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2985,r13		! source line 2985
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2986,r13		! source line 2986
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3177 = _StringConst_220
	set	_StringConst_220,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3177  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2987,r13		! source line 2987
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2988,r13		! source line 2988
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3178 = _StringConst_221
	set	_StringConst_221,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3178  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2989,r13		! source line 2989
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2990,r13		! source line 2990
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2991,r13		! source line 2991
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2991,r13		! source line 2991
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_3179
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3180
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3181
	.word	-12
	.word	4
	.word	_Label_3182
	.word	-16
	.word	4
	.word	_Label_3183
	.word	-20
	.word	4
	.word	_Label_3184
	.word	-24
	.word	4
	.word	_Label_3185
	.word	-28
	.word	4
	.word	_Label_3186
	.word	-32
	.word	4
	.word	0
_Label_3179:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3180:
	.ascii	"Pself\0"
	.align
_Label_3181:
	.byte	'?'
	.ascii	"_temp_3178\0"
	.align
_Label_3182:
	.byte	'?'
	.ascii	"_temp_3177\0"
	.align
_Label_3183:
	.byte	'?'
	.ascii	"_temp_3176\0"
	.align
_Label_3184:
	.byte	'?'
	.ascii	"_temp_3175\0"
	.align
_Label_3185:
	.byte	'?'
	.ascii	"_temp_3174\0"
	.align
_Label_3186:
	.byte	'?'
	.ascii	"_temp_3173\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3187
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3187:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3188
	.word	_sourceFileName
	.word	423		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3188:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_3543:
	push	r0
	sub	r1,1,r1
	bne	_Label_3543
	mov	3002,r13		! source line 3002
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3189 = _StringConst_222
	set	_StringConst_222,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3189  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3003,r13		! source line 3003
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3004,r13		! source line 3004
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3190 = _StringConst_223
	set	_StringConst_223,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3190  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3005,r13		! source line 3005
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	3006,r13		! source line 3006
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3192		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3192
!	jmp	_Label_3191
_Label_3191:
! THEN...
	mov	3007,r13		! source line 3007
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3007,r13		! source line 3007
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_3193
_Label_3192:
! ELSE...
	mov	3009,r13		! source line 3009
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3194 = _StringConst_224
	set	_StringConst_224,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3194  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3009,r13		! source line 3009
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3193:
! RETURN STATEMENT...
	mov	3006,r13		! source line 3006
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_3195
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3196
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3197
	.word	-12
	.word	4
	.word	_Label_3198
	.word	-16
	.word	4
	.word	_Label_3199
	.word	-20
	.word	4
	.word	0
_Label_3195:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3196:
	.ascii	"Pself\0"
	.align
_Label_3197:
	.byte	'?'
	.ascii	"_temp_3194\0"
	.align
_Label_3198:
	.byte	'?'
	.ascii	"_temp_3190\0"
	.align
_Label_3199:
	.byte	'?'
	.ascii	"_temp_3189\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_3544:
	push	r0
	sub	r1,1,r1
	bne	_Label_3544
	mov	3015,r13		! source line 3015
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3025,r13		! source line 3025
	mov	"\0\0SE",r10
!   _temp_3200 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3201 = _temp_3200 + 4
	load	[r14+-36],r1
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
	mov	3026,r13		! source line 3026
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3027,r13		! source line 3027
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	3028,r13		! source line 3028
	mov	"\0\0SE",r10
!   _temp_3202 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3203 = _temp_3202 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3029,r13		! source line 3029
	mov	"\0\0RE",r10
	mov	3029,r13		! source line 3029
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3206 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3205  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_3204  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3204  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_3207
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3208
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3209
	.word	12
	.word	4
	.word	_Label_3210
	.word	16
	.word	4
	.word	_Label_3211
	.word	-16
	.word	4
	.word	_Label_3212
	.word	-20
	.word	4
	.word	_Label_3213
	.word	-9
	.word	1
	.word	_Label_3214
	.word	-24
	.word	4
	.word	_Label_3215
	.word	-28
	.word	4
	.word	_Label_3216
	.word	-32
	.word	4
	.word	_Label_3217
	.word	-36
	.word	4
	.word	_Label_3218
	.word	-40
	.word	4
	.word	0
_Label_3207:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3208:
	.ascii	"Pself\0"
	.align
_Label_3209:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3210:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3211:
	.byte	'?'
	.ascii	"_temp_3206\0"
	.align
_Label_3212:
	.byte	'?'
	.ascii	"_temp_3205\0"
	.align
_Label_3213:
	.byte	'C'
	.ascii	"_temp_3204\0"
	.align
_Label_3214:
	.byte	'?'
	.ascii	"_temp_3203\0"
	.align
_Label_3215:
	.byte	'?'
	.ascii	"_temp_3202\0"
	.align
_Label_3216:
	.byte	'?'
	.ascii	"_temp_3201\0"
	.align
_Label_3217:
	.byte	'?'
	.ascii	"_temp_3200\0"
	.align
_Label_3218:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_3545:
	push	r0
	sub	r1,1,r1
	bne	_Label_3545
	mov	3034,r13		! source line 3034
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3039,r13		! source line 3039
	mov	"\0\0IF",r10
	mov	3039,r13		! source line 3039
	mov	"\0\0SE",r10
!   _temp_3222 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3223) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3222  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3221  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3221 then goto _Label_3220 else goto _Label_3219
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3219
	jmp	_Label_3220
_Label_3219:
! THEN...
	mov	3040,r13		! source line 3040
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3224 = _StringConst_225
	set	_StringConst_225,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3224  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3040,r13		! source line 3040
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3220:
! RETURN STATEMENT...
	mov	3042,r13		! source line 3042
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_3225
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3226
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3227
	.word	-16
	.word	4
	.word	_Label_3228
	.word	-20
	.word	4
	.word	_Label_3229
	.word	-24
	.word	4
	.word	_Label_3230
	.word	-9
	.word	1
	.word	_Label_3231
	.word	-28
	.word	4
	.word	0
_Label_3225:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3226:
	.ascii	"Pself\0"
	.align
_Label_3227:
	.byte	'?'
	.ascii	"_temp_3224\0"
	.align
_Label_3228:
	.byte	'?'
	.ascii	"_temp_3223\0"
	.align
_Label_3229:
	.byte	'?'
	.ascii	"_temp_3222\0"
	.align
_Label_3230:
	.byte	'C'
	.ascii	"_temp_3221\0"
	.align
_Label_3231:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_3546:
	push	r0
	sub	r1,1,r1
	bne	_Label_3546
	mov	3047,r13		! source line 3047
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3073,r13		! source line 3073
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3235 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3234 = *_temp_3235  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3234) then goto _Label_3233
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3233
!	jmp	_Label_3232
_Label_3232:
! THEN...
	mov	3074,r13		! source line 3074
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3236 = _StringConst_226
	set	_StringConst_226,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3236  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3074,r13		! source line 3074
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3233:
! IF STATEMENT...
	mov	3078,r13		! source line 3078
	mov	"\0\0IF",r10
	mov	3078,r13		! source line 3078
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3240) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3239  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3239 == 1112300152 then goto _Label_3238		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3238
!	jmp	_Label_3237
_Label_3237:
! THEN...
	mov	3079,r13		! source line 3079
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3241 = _StringConst_227
	set	_StringConst_227,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3241  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	3079,r13		! source line 3079
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3080,r13		! source line 3080
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3238:
! ASSIGNMENT STATEMENT...
	mov	3084,r13		! source line 3084
	mov	"\0\0AS",r10
	mov	3084,r13		! source line 3084
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3242) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	3085,r13		! source line 3085
	mov	"\0\0AS",r10
	mov	3085,r13		! source line 3085
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3243) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	3086,r13		! source line 3086
	mov	"\0\0AS",r10
	mov	3086,r13		! source line 3086
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3244) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	3087,r13		! source line 3087
	mov	"\0\0AS",r10
	mov	3087,r13		! source line 3087
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3245) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	3088,r13		! source line 3088
	mov	"\0\0AS",r10
	mov	3088,r13		! source line 3088
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3246) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	3089,r13		! source line 3089
	mov	"\0\0AS",r10
	mov	3089,r13		! source line 3089
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3247) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	3092,r13		! source line 3092
	mov	"\0\0IF",r10
!   _temp_3250 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3250) then goto _Label_3249
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3249
!	jmp	_Label_3248
_Label_3248:
! THEN...
	mov	3093,r13		! source line 3093
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3251 = _StringConst_228
	set	_StringConst_228,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3251  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	3093,r13		! source line 3093
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3094,r13		! source line 3094
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3249:
! ASSIGNMENT STATEMENT...
	mov	3096,r13		! source line 3096
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	3100,r13		! source line 3100
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3253
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3253
!	jmp	_Label_3252
_Label_3252:
! THEN...
	mov	3101,r13		! source line 3101
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3254 = _StringConst_229
	set	_StringConst_229,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3254  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	3101,r13		! source line 3101
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3102,r13		! source line 3102
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3253:
! IF STATEMENT...
	mov	3106,r13		! source line 3106
	mov	"\0\0IF",r10
!   _temp_3257 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3257) then goto _Label_3256
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3256
!	jmp	_Label_3255
_Label_3255:
! THEN...
	mov	3107,r13		! source line 3107
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3258 = _StringConst_230
	set	_StringConst_230,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3258  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3107,r13		! source line 3107
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3108,r13		! source line 3108
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3256:
! IF STATEMENT...
	mov	3110,r13		! source line 3110
	mov	"\0\0IF",r10
!   _temp_3261 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3261 then goto _Label_3260		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3260
!	jmp	_Label_3259
_Label_3259:
! THEN...
	mov	3111,r13		! source line 3111
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3262 = _StringConst_231
	set	_StringConst_231,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3262  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3111,r13		! source line 3111
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3112,r13		! source line 3112
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3260:
! ASSIGNMENT STATEMENT...
	mov	3114,r13		! source line 3114
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	3117,r13		! source line 3117
	mov	"\0\0IF",r10
!   _temp_3265 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3265) then goto _Label_3264
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3264
!	jmp	_Label_3263
_Label_3263:
! THEN...
	mov	3118,r13		! source line 3118
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3266 = _StringConst_232
	set	_StringConst_232,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3266  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3118,r13		! source line 3118
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3119,r13		! source line 3119
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3264:
! IF STATEMENT...
	mov	3121,r13		! source line 3121
	mov	"\0\0IF",r10
!   _temp_3269 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3269 then goto _Label_3268		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3268
!	jmp	_Label_3267
_Label_3267:
! THEN...
	mov	3122,r13		! source line 3122
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3270 = _StringConst_233
	set	_StringConst_233,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3270  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3122,r13		! source line 3122
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3123,r13		! source line 3123
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3268:
! ASSIGNMENT STATEMENT...
	mov	3125,r13		! source line 3125
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	3128,r13		! source line 3128
	mov	"\0\0AS",r10
!   _temp_3273 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3272 = _temp_3273 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3271 = _temp_3272 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3271 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3143,r13		! source line 3143
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3275		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3275
!	jmp	_Label_3274
_Label_3274:
! THEN...
	mov	3144,r13		! source line 3144
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3276 = _StringConst_234
	set	_StringConst_234,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3276  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3144,r13		! source line 3144
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3277 = _StringConst_235
	set	_StringConst_235,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3277  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3145,r13		! source line 3145
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3278 = _StringConst_236
	set	_StringConst_236,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3278  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3146,r13		! source line 3146
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3147,r13		! source line 3147
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3275:
! SEND STATEMENT...
	mov	3149,r13		! source line 3149
	mov	"\0\0SE",r10
!   _temp_3279 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	3155,r13		! source line 3155
	mov	"\0\0IF",r10
	mov	3155,r13		! source line 3155
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3283) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3282  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3282 == 707406378 then goto _Label_3281		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3281
!	jmp	_Label_3280
_Label_3280:
! THEN...
	mov	3156,r13		! source line 3156
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3284 = _StringConst_237
	set	_StringConst_237,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3284  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3156,r13		! source line 3156
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3157,r13		! source line 3157
	mov	"\0\0SE",r10
!   _temp_3285 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3158,r13		! source line 3158
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3281:
! ASSIGNMENT STATEMENT...
	mov	3162,r13		! source line 3162
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	3163,r13		! source line 3163
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3290 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3291 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3290  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3286:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3291 then goto _Label_3289		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3289
_Label_3287:
	mov	3163,r13		! source line 3163
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3164,r13		! source line 3164
	mov	"\0\0AS",r10
	mov	3164,r13		! source line 3164
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	3167,r13		! source line 3167
	mov	"\0\0IF",r10
	mov	3167,r13		! source line 3167
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3295) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3294  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3294 then goto _Label_3293 else goto _Label_3292
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3292
	jmp	_Label_3293
_Label_3292:
! THEN...
	mov	3168,r13		! source line 3168
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3296 = _StringConst_238
	set	_StringConst_238,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3296  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3168,r13		! source line 3168
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3169,r13		! source line 3169
	mov	"\0\0SE",r10
!   _temp_3297 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3170,r13		! source line 3170
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3293:
! SEND STATEMENT...
	mov	3172,r13		! source line 3172
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3173,r13		! source line 3173
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3288:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3286
! END FOR
_Label_3289:
! IF STATEMENT...
	mov	3177,r13		! source line 3177
	mov	"\0\0IF",r10
	mov	3177,r13		! source line 3177
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3301) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3300  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3300 == 707406378 then goto _Label_3299		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3299
!	jmp	_Label_3298
_Label_3298:
! THEN...
	mov	3178,r13		! source line 3178
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3302 = _StringConst_239
	set	_StringConst_239,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3302  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3178,r13		! source line 3178
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3179,r13		! source line 3179
	mov	"\0\0SE",r10
!   _temp_3303 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3180,r13		! source line 3180
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3299:
! FOR STATEMENT...
	mov	3184,r13		! source line 3184
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3308 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3309 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3308  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3304:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3309 then goto _Label_3307		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3307
_Label_3305:
	mov	3184,r13		! source line 3184
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3185,r13		! source line 3185
	mov	"\0\0AS",r10
	mov	3185,r13		! source line 3185
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	3188,r13		! source line 3188
	mov	"\0\0IF",r10
	mov	3188,r13		! source line 3188
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3313) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3312  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3312 then goto _Label_3311 else goto _Label_3310
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3310
	jmp	_Label_3311
_Label_3310:
! THEN...
	mov	3189,r13		! source line 3189
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3314 = _StringConst_240
	set	_StringConst_240,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3314  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3189,r13		! source line 3189
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3190,r13		! source line 3190
	mov	"\0\0SE",r10
!   _temp_3315 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3191,r13		! source line 3191
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3311:
! ASSIGNMENT STATEMENT...
	mov	3193,r13		! source line 3193
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3306:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3304
! END FOR
_Label_3307:
! IF STATEMENT...
	mov	3197,r13		! source line 3197
	mov	"\0\0IF",r10
	mov	3197,r13		! source line 3197
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3319) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3318  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3318 == 707406378 then goto _Label_3317		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3317
!	jmp	_Label_3316
_Label_3316:
! THEN...
	mov	3198,r13		! source line 3198
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3320 = _StringConst_241
	set	_StringConst_241,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3320  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3198,r13		! source line 3198
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3199,r13		! source line 3199
	mov	"\0\0SE",r10
!   _temp_3321 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3200,r13		! source line 3200
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3317:
! ASSIGNMENT STATEMENT...
	mov	3204,r13		! source line 3204
	mov	"\0\0AS",r10
	mov	3204,r13		! source line 3204
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	3208,r13		! source line 3208
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3211,r13		! source line 3211
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_3322
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3323
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3324
	.word	12
	.word	4
	.word	_Label_3325
	.word	-16
	.word	4
	.word	_Label_3326
	.word	-20
	.word	4
	.word	_Label_3327
	.word	-24
	.word	4
	.word	_Label_3328
	.word	-28
	.word	4
	.word	_Label_3329
	.word	-32
	.word	4
	.word	_Label_3330
	.word	-36
	.word	4
	.word	_Label_3331
	.word	-40
	.word	4
	.word	_Label_3332
	.word	-9
	.word	1
	.word	_Label_3333
	.word	-44
	.word	4
	.word	_Label_3334
	.word	-48
	.word	4
	.word	_Label_3335
	.word	-52
	.word	4
	.word	_Label_3336
	.word	-56
	.word	4
	.word	_Label_3337
	.word	-60
	.word	4
	.word	_Label_3338
	.word	-64
	.word	4
	.word	_Label_3339
	.word	-68
	.word	4
	.word	_Label_3340
	.word	-72
	.word	4
	.word	_Label_3341
	.word	-76
	.word	4
	.word	_Label_3342
	.word	-10
	.word	1
	.word	_Label_3343
	.word	-80
	.word	4
	.word	_Label_3344
	.word	-84
	.word	4
	.word	_Label_3345
	.word	-88
	.word	4
	.word	_Label_3346
	.word	-92
	.word	4
	.word	_Label_3347
	.word	-96
	.word	4
	.word	_Label_3348
	.word	-100
	.word	4
	.word	_Label_3349
	.word	-104
	.word	4
	.word	_Label_3350
	.word	-108
	.word	4
	.word	_Label_3351
	.word	-112
	.word	4
	.word	_Label_3352
	.word	-116
	.word	4
	.word	_Label_3353
	.word	-120
	.word	4
	.word	_Label_3354
	.word	-124
	.word	4
	.word	_Label_3355
	.word	-128
	.word	4
	.word	_Label_3356
	.word	-132
	.word	4
	.word	_Label_3357
	.word	-136
	.word	4
	.word	_Label_3358
	.word	-140
	.word	4
	.word	_Label_3359
	.word	-144
	.word	4
	.word	_Label_3360
	.word	-148
	.word	4
	.word	_Label_3361
	.word	-152
	.word	4
	.word	_Label_3362
	.word	-156
	.word	4
	.word	_Label_3363
	.word	-160
	.word	4
	.word	_Label_3364
	.word	-164
	.word	4
	.word	_Label_3365
	.word	-168
	.word	4
	.word	_Label_3366
	.word	-172
	.word	4
	.word	_Label_3367
	.word	-176
	.word	4
	.word	_Label_3368
	.word	-180
	.word	4
	.word	_Label_3369
	.word	-184
	.word	4
	.word	_Label_3370
	.word	-188
	.word	4
	.word	_Label_3371
	.word	-192
	.word	4
	.word	_Label_3372
	.word	-196
	.word	4
	.word	_Label_3373
	.word	-200
	.word	4
	.word	_Label_3374
	.word	-204
	.word	4
	.word	_Label_3375
	.word	-208
	.word	4
	.word	_Label_3376
	.word	-212
	.word	4
	.word	_Label_3377
	.word	-216
	.word	4
	.word	_Label_3378
	.word	-220
	.word	4
	.word	_Label_3379
	.word	-224
	.word	4
	.word	_Label_3380
	.word	-228
	.word	4
	.word	_Label_3381
	.word	-232
	.word	4
	.word	_Label_3382
	.word	-236
	.word	4
	.word	_Label_3383
	.word	-240
	.word	4
	.word	_Label_3384
	.word	-244
	.word	4
	.word	_Label_3385
	.word	-248
	.word	4
	.word	_Label_3386
	.word	-252
	.word	4
	.word	_Label_3387
	.word	-256
	.word	4
	.word	_Label_3388
	.word	-260
	.word	4
	.word	_Label_3389
	.word	-264
	.word	4
	.word	_Label_3390
	.word	-268
	.word	4
	.word	0
_Label_3322:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3323:
	.ascii	"Pself\0"
	.align
_Label_3324:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3325:
	.byte	'?'
	.ascii	"_temp_3321\0"
	.align
_Label_3326:
	.byte	'?'
	.ascii	"_temp_3320\0"
	.align
_Label_3327:
	.byte	'?'
	.ascii	"_temp_3319\0"
	.align
_Label_3328:
	.byte	'?'
	.ascii	"_temp_3318\0"
	.align
_Label_3329:
	.byte	'?'
	.ascii	"_temp_3315\0"
	.align
_Label_3330:
	.byte	'?'
	.ascii	"_temp_3314\0"
	.align
_Label_3331:
	.byte	'?'
	.ascii	"_temp_3313\0"
	.align
_Label_3332:
	.byte	'C'
	.ascii	"_temp_3312\0"
	.align
_Label_3333:
	.byte	'?'
	.ascii	"_temp_3309\0"
	.align
_Label_3334:
	.byte	'?'
	.ascii	"_temp_3308\0"
	.align
_Label_3335:
	.byte	'?'
	.ascii	"_temp_3303\0"
	.align
_Label_3336:
	.byte	'?'
	.ascii	"_temp_3302\0"
	.align
_Label_3337:
	.byte	'?'
	.ascii	"_temp_3301\0"
	.align
_Label_3338:
	.byte	'?'
	.ascii	"_temp_3300\0"
	.align
_Label_3339:
	.byte	'?'
	.ascii	"_temp_3297\0"
	.align
_Label_3340:
	.byte	'?'
	.ascii	"_temp_3296\0"
	.align
_Label_3341:
	.byte	'?'
	.ascii	"_temp_3295\0"
	.align
_Label_3342:
	.byte	'C'
	.ascii	"_temp_3294\0"
	.align
_Label_3343:
	.byte	'?'
	.ascii	"_temp_3291\0"
	.align
_Label_3344:
	.byte	'?'
	.ascii	"_temp_3290\0"
	.align
_Label_3345:
	.byte	'?'
	.ascii	"_temp_3285\0"
	.align
_Label_3346:
	.byte	'?'
	.ascii	"_temp_3284\0"
	.align
_Label_3347:
	.byte	'?'
	.ascii	"_temp_3283\0"
	.align
_Label_3348:
	.byte	'?'
	.ascii	"_temp_3282\0"
	.align
_Label_3349:
	.byte	'?'
	.ascii	"_temp_3279\0"
	.align
_Label_3350:
	.byte	'?'
	.ascii	"_temp_3278\0"
	.align
_Label_3351:
	.byte	'?'
	.ascii	"_temp_3277\0"
	.align
_Label_3352:
	.byte	'?'
	.ascii	"_temp_3276\0"
	.align
_Label_3353:
	.byte	'?'
	.ascii	"_temp_3273\0"
	.align
_Label_3354:
	.byte	'?'
	.ascii	"_temp_3272\0"
	.align
_Label_3355:
	.byte	'?'
	.ascii	"_temp_3271\0"
	.align
_Label_3356:
	.byte	'?'
	.ascii	"_temp_3270\0"
	.align
_Label_3357:
	.byte	'?'
	.ascii	"_temp_3269\0"
	.align
_Label_3358:
	.byte	'?'
	.ascii	"_temp_3266\0"
	.align
_Label_3359:
	.byte	'?'
	.ascii	"_temp_3265\0"
	.align
_Label_3360:
	.byte	'?'
	.ascii	"_temp_3262\0"
	.align
_Label_3361:
	.byte	'?'
	.ascii	"_temp_3261\0"
	.align
_Label_3362:
	.byte	'?'
	.ascii	"_temp_3258\0"
	.align
_Label_3363:
	.byte	'?'
	.ascii	"_temp_3257\0"
	.align
_Label_3364:
	.byte	'?'
	.ascii	"_temp_3254\0"
	.align
_Label_3365:
	.byte	'?'
	.ascii	"_temp_3251\0"
	.align
_Label_3366:
	.byte	'?'
	.ascii	"_temp_3250\0"
	.align
_Label_3367:
	.byte	'?'
	.ascii	"_temp_3247\0"
	.align
_Label_3368:
	.byte	'?'
	.ascii	"_temp_3246\0"
	.align
_Label_3369:
	.byte	'?'
	.ascii	"_temp_3245\0"
	.align
_Label_3370:
	.byte	'?'
	.ascii	"_temp_3244\0"
	.align
_Label_3371:
	.byte	'?'
	.ascii	"_temp_3243\0"
	.align
_Label_3372:
	.byte	'?'
	.ascii	"_temp_3242\0"
	.align
_Label_3373:
	.byte	'?'
	.ascii	"_temp_3241\0"
	.align
_Label_3374:
	.byte	'?'
	.ascii	"_temp_3240\0"
	.align
_Label_3375:
	.byte	'?'
	.ascii	"_temp_3239\0"
	.align
_Label_3376:
	.byte	'?'
	.ascii	"_temp_3236\0"
	.align
_Label_3377:
	.byte	'?'
	.ascii	"_temp_3235\0"
	.align
_Label_3378:
	.byte	'?'
	.ascii	"_temp_3234\0"
	.align
_Label_3379:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3380:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3381:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3382:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3383:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3384:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3385:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3386:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3387:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3388:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3389:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3390:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
