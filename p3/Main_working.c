code Main

  -- OS Class: Project 3
  --
  -- Namratha
  --

-----------------------------  Main  ---------------------------------

  function main ()
      InitializeScheduler()

      SleepingBarberTest()
      -- GamingParlorTest()
      ThreadFinish()
    
  endFunction
-----------------------------  SleepingBarber  ---------------------------------
-- status to print the different states of Barbers and Customers
-- enum ENTER, SIT, LEAVE, BEGIN, FINISH, START, END, HOME
var 
  -- chairs for waiting customers
  CHAIRS: int = 5

  -- variable used to print the chair outputs
  empty: int = 5

  waiting: int = 0 

  -- mutex used to lock the "status" shared variable within the print method
  printLock: Mutex

  -- Initializing the threads for the agents (both barbers and customers)
  thread: array [22] of Thread
   
  barbershop: Barbershop

  function SleepingBarberTest()
    var i: int
    
    barbershop = new Barbershop
    barbershop.Init()
    printLock = new Mutex
    printLock.Init()

    print (" B1   B2   C1   C2   C3   C4   C5   C6   C7   C8   C9  C10  C11  C12  C13  C14  C15  C16  C17  C18  C19  C20 CHAIRS \n")

    thread = new array of Thread { 22 of new Thread }
    -- Initialize the barber and customer threads
    thread[0].Init("Fred")
    thread[1].Init("George")
    thread[2].Init("Harry") 
    thread[3].Init("Ron") 
    thread[4].Init("Hermione") 
    thread[5].Init("Luna") 
    thread[6].Init("Charlie") 
    thread[7].Init("Percy") 
    thread[8].Init("Dumbledore") 
    thread[9].Init("Voldemort") 
    thread[10].Init("Hagrid") 
    thread[11].Init("Sirius") 
    thread[12].Init("Moody") 
    thread[13].Init("Tonks") 
    thread[14].Init("Drako") 
    thread[15].Init("Padma") 
    thread[16].Init("Parvati") 
    thread[17].Init("Cho") 
    thread[18].Init("Cedric") 
    thread[19].Init("Neville") 
    thread[20].Init("Snape") 
    thread[21].Init("Dobby") 
    
    -- Barber threads initialization
    thread[0].Fork(barberCall, 0)
    thread[1].Fork(barberCall, 1)
    
    -- Customer threads initialization
    for i = 2 to 21
      thread[i].Fork(customerCall, i)
    endFor 
  endFunction


  function barberCall (barberID: int)
    barbershop.barber(barberID)
  endFunction

  function customerCall (customerID: int)
    var i: int 
    for i = 1 to 10
      barbershop.customer(customerID)
    endFor
  endFunction

 
  behavior Barbershop

    method Init ()

      -- shared variable used to represent the status of the agents (barbers and customers)
      -- status: array [22] of int

      -- No. of customers waiting to get haircut
      -- customers: Semaphore = new Semaphore

      -- No. of barbers waiting for customers
      -- barbers: Semaphore = new Semaphore

      -- mutex: Semaphore =  new Semaphore

      customers = new Semaphore
      barbers = new Semaphore
      mutex = new Semaphore

      -- Initialize the values for "status" global variable to HOME for representation
      status = new array [22] of int {22 of HOME}

      --Initialize Synchronization Variables
      customers.Init(0)
      barbers.Init(0)
      mutex.Init(1)
  
    endMethod

    -- Barber thread function
    method barber (barberID: int)
      
      self.delay(barberID*10)
  
      while(true)
        customers.Down()     		-- Barber thread goes to sleep if there are no customers waiting 
        mutex.Down()			-- Aquire mutex to modify the "waiting" shared variable
        waiting = waiting - 1		-- Decrement the count of waiting customers
        barbers.Up()			-- Wake up the barber thread since there is a customer ready
        mutex.Up()			-- Release the mutex for the "waiting" shared variable
        -- Code to print the current status of the customers, barbers and waiting chairs
        -- Barber has now started to cut the customer's hair
        printLock.Lock()
        status [barberID] = START
        self.printStatus(barberID)
        printLock.Unlock()
        self.cut_hair(barberID)
      endWhile

    endMethod

    -- Customer thread function
    method customer(customerID: int)

      self.delay(customerID*500)
  
      -- Enter the critical section
      mutex.Down()

      -- Code to print the current status of the customers, barbers and waiting chairs
      -- Customer has just entered the barbershop, so set this current thread's status to ENTER
      printLock.Lock()
      status [customerID] = ENTER
      self.printStatus(customerID)

      if waiting < CHAIRS			-- Customer leaves if there are no empty chairs
        waiting = waiting + 1		-- If there are empty chairs, then we increment the count of waiting customers
        -- Code to print the current status of the customers, barbers and waiting chairs
        -- Customer sees an empty chair and sits in it
        status [customerID] = SIT
        self.printStatus(customerID)
        printLock.Unlock()
        customers.Up()			-- Wake up the barber thread to cut the hair
        mutex.Up()			-- Release the mutex to the "waiting" shared variable
        barbers.Down()			-- Customer thread goes to sleep if all the barbers are busy
        self.get_haircut(customerID)		-- Be seated in the barber chair and get haircut
      else
        mutex.Up()			-- All chairs are full, so customer leaves
        -- Code to print the current status of the customers, barbers and waiting chairs
        -- Customer sees that there are no empty chairs to wait, so the customer leaves
        status [customerID] = LEAVE
        self.printStatus(customerID)
        printLock.Unlock()

      endIf
    endMethod

    method get_haircut(customerID: int)

      -- Delay for the customer to get up and sit on the barber chair
      self.delay(100)

      -- Code to print the current status of the customers, barbers and waiting chairs
      -- Customer is now ready to get a haircut, so now sits on the barber chair and starts getting a haircut
      printLock.Lock()
      status [customerID] = BEGIN
      self.printStatus(customerID)
      printLock.Unlock()

      -- Delay for getting the haircut done and probably cleaning up after that
      self.delay(400)

      -- Code to print the current status of the customers, barbers and waiting chairs
      -- Customer is done getting haircut and is now finishing up, probably paying for the services
      printLock.Lock()
      status [customerID] = FINISH
      self.printStatus(customerID)
      printLock.Unlock()

      -- Code to print the current status of the customers, barbers and waiting chairs
      -- Customer now leaves the barbershop
      printLock.Lock()
      status [customerID] = LEAVE
      self.printStatus(customerID)
      printLock.Unlock()

    endMethod

    method cut_hair (barberID: int)

      -- Delay representing the barber cutting the hair
      self.delay (200)

      -- Code to print the current status of the customers, barbers and waiting chairs
      -- Barber is now done cutting the hair
      printLock.Lock ()
      status [barberID] = END
      self.printStatus (barberID)
      printLock.Unlock ()

    endMethod

    -- Delay function used in multiple places in the threads
    method delay (time: int)
    
      var i: int
      for i=1 to time
      endFor
      currentThread.Yield()
 
    endMethod

    -- Print function to print the status of the chairs, barbers and customers
    method printStatus (id: int)
      var
         p: int
         i: int

      -- Code to print the status of the barbers and customers
      for p = 0 to 21
        if p != id
          print ("     ")
        else
          switch status [p]
            case ENTER:
              print ("  E  ")
              break
            case SIT:
              print ("  S  ")
              empty = empty - 1 
              break
            case BEGIN:
              print ("  B  ")
              break
            case FINISH:
              print ("  F  ")
              break
            case LEAVE:
              print ("  L  ")
       	      break
            case START:
	      print ("  C  ")
              empty = empty + 1
	      break
            case END:
	      print ("  D  ")
	      break
            case HOME:
	      print ("     ")
	      break
          endSwitch
        endIf
      endFor

      -- Code to print the status of the chairs
      for i = 1 to CHAIRS - empty
        print ("X")
      endFor

      for i = 1 to empty
        print ("-")
      endFor

      nl ()
    endMethod
  endBehavior
-----------------------------  GamingParlor  ---------------------------------

var
  gamblers: array [8] of Thread  -- players declaration
  gamingParlor: GamingParlor     -- monitor object declaration

  -- Gaming Parlor test function 
  function GamingParlorTest ()
    gamblers = new array of Thread { 8 of new Thread }
    gamingParlor = new GamingParlor -- creating monitor object
   
    gamingParlor.Init() -- Initializing Monitor object
    
    -- player groups thread initialization
    gamblers[0].Init("A-BACKGAMMON")
    gamblers[1].Init("B-BACKGAMMON")
    gamblers[2].Init("C-RISK")
    gamblers[3].Init("D-RISK")
    gamblers[4].Init("E-MONOPOLY")
    gamblers[5].Init("F-MONOPOLY")
    gamblers[6].Init("G-PICTIONARY")
    gamblers[7].Init("H-PICTIONARY")
    
    -- player groups thread creation
    gamblers[0].Fork(GroupCheck,4)
    gamblers[1].Fork(GroupCheck,4)
    gamblers[2].Fork(GroupCheck,5)
    gamblers[3].Fork(GroupCheck,5)
    gamblers[4].Fork(GroupCheck,2)
    gamblers[5].Fork(GroupCheck,2)
    gamblers[6].Fork(GroupCheck,1)
    gamblers[7].Fork(GroupCheck,1)

  endFunction
 
  -- handles Monitor's Entry methods
  function GroupCheck (reqDice: int)
    var i: int
    
    for i = 1 to 5
      gamingParlor.Request (reqDice) -- player groups requesting specified number of dice 
      currentThread.Yield ()         -- simulates the player groups playing the game
      gamingParlor.Return (reqDice)  -- player groups returning dice when done playing
      --currentThread.Yield ()         
    endFor
  endFunction

  behavior GamingParlor
   
    -- Initializes monitor's mutex, condition variables and shared variables.
    method Init ()

      mLock = new Mutex
      nextGroup = new Condition
      waitList = new Condition
      
      mLock.Init ()
      nextGroup.Init ()
      waitList.Init ()
      
      availDice = 8		     -- This is the maximum number of dice available in the gaming parlor frontdesk
      waitingGroups = 0              -- Indicates the number of threads waiting for the required number of dice to become available

    endMethod
    
    -- To avoid starvation, we make use of two waiting lists (nextGroup and waitList) 
    -- The nextGroup queue holds the thread which should next acquire the dice
    -- the waitList queue holds the rest of the waiting threads
    -- The Return method signals the nextgroup condition variable which ensures that the threads are served on First come First served basis
    method Request (numberofDice: int)
      mLock.Lock ()                         -- acquire monitor lock
      
      self.Print ("requests", numberofDice)
      waitingGroups = waitingGroups + 1     -- keeps count of groups waiting
      
      if waitingGroups > 1                  -- check if there are more than one group and adds itself at the back of the "waitList"
        waitList.Wait (&mLock) 
      endIf

      while availDice < numberofDice        -- checks if there is enough dice to play the game and waits in the "nextGroup"
        nextGroup.Wait (&mLock)
      endWhile

      availDice = availDice - numberofDice
      waitingGroups = waitingGroups - 1
      
      waitList.Signal (&mLock)		    -- Signals the waitList condition variable to add the leading thread to the nextGroup queue

      self.Print ("proceeds with", numberofDice)

      mLock.Unlock ()                       -- Release monitor lock
    endMethod

    -- This method returns the dice and signals the nextGroup condition variable to check if there are enough dice for it to start playing
    method Return (numberofDice: int)
      mLock.Lock ()                         -- Acquire monitor lock
      
      availDice = availDice + numberofDice
      self.Print ("releases and adds back", numberofDice)
      nextGroup.Signal (&mLock)

      mLock.Unlock ()                       -- Release monitor lock
    endMethod

    method Print (str: String, count: int)
      --
      -- This method prints the current thread's name and the arguments. 
      -- It also prints the current number of dice available.
      --
      print (currentThread.name)
      print (" ")
      print (str)
      print (" ")
      printInt (count)
      nl ()
      print ("------------------------------Number of dice now avail = ")
      printInt (availDice)
      nl ()    
    endMethod


  endBehavior

endCode
