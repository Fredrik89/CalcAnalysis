Start
  Procedure
    Id
    List
      Param: n (Line:1 Col:16)
        Type
        Id
        Opt
    List
      IdDecl: sum (Line:3 Col:9)
        Type
        Id
        Opt
          NumeralConstant: 0
      Assgn
        IdUse sum (Line:4 Col:9) -> IdDecl: : sum (Line:3 Col:9)
          Id
        Add
          IdUse sum (Line:4 Col:15) -> IdDecl: : sum (Line:3 Col:9)
            Id
          IdUse n (Line:4 Col:21) -> Param: : n (Line:1 Col:16)
            Id
