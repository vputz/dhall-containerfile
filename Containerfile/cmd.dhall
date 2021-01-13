--| A convenient function to create cmd
let Prelude = ../Prelude.dhall

let Statement = ./Statement.dhall

let cmd
    : List Text -> List Statement
    = \(commands : List Text) -> [ Statement.Cmd commands ]

let example0 =
      assert : cmd [ "/bin/bash" ] === [ Statement.Cmd [ "/bin/bash" ] ]

in  cmd
