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
      IdDecl: k (Line:4 Col:9)
        Type
        Id
        Opt
      Assgn
        IdUse n (Line:5 Col:9) -> Param: : n (Line:1 Col:16)
          Id
        NumeralConstant: 2
      ForStmt
        Assgn
          IdUse k (Line:6 Col:13) -> IdDecl: : k (Line:4 Col:9)
            Id
          NumeralConstant: 1
        Eq
          IdUse k (Line:6 Col:25) -> IdDecl: : k (Line:4 Col:9)
            Id
          NumeralConstant: 10
        List
          Assgn
            IdUse k (Line:7 Col:17) -> IdDecl: : k (Line:4 Col:9)
              Id
            Add
              IdUse k (Line:7 Col:21) -> IdDecl: : k (Line:4 Col:9)
                Id
              NumeralConstant: 1
          Assgn
            IdUse sum (Line:8 Col:17) -> IdDecl: : sum (Line:3 Col:9)
              Id
            Add
              Add
                IdUse sum (Line:8 Col:23) -> IdDecl: : sum (Line:3 Col:9)
                  Id
                Mul
                  IdUse k (Line:8 Col:29) -> IdDecl: : k (Line:4 Col:9)
                    Id
                  NumeralConstant: 2
              NumeralConstant: 1
          ExprStmt
            FuncCall
              Id
              List
                IdUse sum (Line:9 Col:23) -> IdDecl: : sum (Line:3 Col:9)
                  Id
          ExprStmt
            FuncCall
              Id
              List
                IdUse k (Line:10 Col:23) -> IdDecl: : k (Line:4 Col:9)
                  Id
      IfStmt
        Lt
          Add
            IdUse sum (Line:12 Col:12) -> IdDecl: : sum (Line:3 Col:9)
              Id
            Mul
              NumeralConstant: 2
              IdUse n (Line:12 Col:22) -> Param: : n (Line:1 Col:16)
                Id
          Mul
            IdUse sum (Line:12 Col:26) -> IdDecl: : sum (Line:3 Col:9)
              Id
            NumeralConstant: 2
        List
          ExprStmt
            FuncCall
              Id
              List
                IdUse sum (Line:13 Col:23) -> IdDecl: : sum (Line:3 Col:9)
                  Id
        List
          ExprStmt
            FuncCall
              Id
              List
                NumeralConstant: 0
