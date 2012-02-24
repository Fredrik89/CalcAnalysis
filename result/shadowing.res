Start
  Procedure
    Id
    List
      Param: n (Line:1 Col:16)
        Type
        Id
        Opt
    List
      IdDecl: shadowed (Line:3 Col:9)
        Type
        Id
        Opt
      Procedure
        Id
        List
        List
          Procedure
            Id
            List
              Param: m (Line:6 Col:23)
                Type
                Id
                Opt
            List
              ExprStmt
                FuncCall
                  Id
                  List
                    IdUse m (Line:6 Col:47) -> Param: : m (Line:6 Col:23)
                      Id
          IdDecl: sum (Line:7 Col:17)
            Type
            Id
            Opt
              NumeralConstant: 0
          IdDecl: k (Line:8 Col:17)
            Type
            Id
            Opt
          Assgn
            IdUse n (Line:9 Col:17) -> Param: : n (Line:1 Col:16)
              Id
            NumeralConstant: 2
          IdDecl: shadowed (Line:10 Col:17)
            Type
            Id
            Opt
              IdUse shadowed (Line:10 Col:36) -> IdDecl: : shadowed (Line:3 Col:9)
                Id
          Assgn
            IdUse k (Line:11 Col:17) -> IdDecl: : k (Line:8 Col:17)
              Id
            IdUse shadowed (Line:11 Col:21) -> IdDecl: : shadowed (Line:10 Col:17)
              Id
      Assgn
        IdUse n (Line:13 Col:9) -> Param: : n (Line:1 Col:16)
          Id
        IdUse shadowed (Line:13 Col:13) -> IdDecl: : shadowed (Line:3 Col:9)
          Id
      ForStmt
        Assgn
          IdUse k (Line:14 Col:13) -> Missing Declaration
            Id
          NumeralConstant: 1
        Eq
          IdUse k (Line:14 Col:25) -> Missing Declaration
            Id
          NumeralConstant: 10
        List
          Assgn
            IdUse k (Line:15 Col:17) -> Missing Declaration
              Id
            Add
              IdUse k (Line:15 Col:21) -> Missing Declaration
                Id
              NumeralConstant: 1
          Assgn
            IdUse sum (Line:16 Col:17) -> Missing Declaration
              Id
            Add
              Add
                IdUse sum (Line:16 Col:23) -> Missing Declaration
                  Id
                Mul
                  IdUse k (Line:16 Col:29) -> Missing Declaration
                    Id
                  NumeralConstant: 2
              NumeralConstant: 1
          ExprStmt
            FuncCall
              Id
              List
                IdUse sum (Line:17 Col:23) -> Missing Declaration
                  Id
          ExprStmt
            FuncCall
              Id
              List
                IdUse k (Line:18 Col:23) -> Missing Declaration
                  Id
      IfStmt
        Lt
          Add
            IdUse sum (Line:20 Col:12) -> Missing Declaration
              Id
            Mul
              NumeralConstant: 2
              IdUse n (Line:20 Col:22) -> Param: : n (Line:1 Col:16)
                Id
          Mul
            IdUse sum (Line:20 Col:26) -> Missing Declaration
              Id
            NumeralConstant: 2
        List
          ExprStmt
            FuncCall
              Id
              List
                IdUse sum (Line:21 Col:23) -> Missing Declaration
                  Id
        List
          ExprStmt
            FuncCall
              Id
              List
                NumeralConstant: 0
