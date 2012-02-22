Start
  Let
    List
      Binding
        IdDecl"radius"(Line:1 Col:11)
        Ask
          Opt
    Let
      List
        Binding
          IdDecl"PI"(Line:2 Col:13)
          Numeral"3.14"
      Mul
        Mul
          Numeral"2.0"
          IdUse"PI"(Line:3 Col:17) -> "PI"(Line:2 Col:13)
        IdUse"radius"(Line:3 Col:22) -> "radius"(Line:1 Col:11)
