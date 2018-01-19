header Main

  uses System, Thread, Synch

  functions
    main ()

  enum ENTER, SIT, LEAVE, BEGIN, FINISH, START, END, HOME
  class Barbershop
    superclass Object
    fields
      status: array [22] of int
      customers: Semaphore
      barbers: Semaphore
      mutex: Semaphore
    methods
      Init()
      barber(barberID: int)
      customer(customerID: int)
      get_haircut(customerID: int)
      cut_hair(barberID: int)
      delay(time: int)
      printStatus(id: int)
  endClass

  class GamingParlor
    superclass Object
    fields
      mLock: Mutex
      nextGroup: Condition
      waitList: Condition
      availDice: int
      waitingGroups: int
    methods
      Init()
      Request(numberofDice: int)
      Return(numberofDice: int)
      Print(str: String, count: int)
  endClass

endHeader
