--| A convenient function to create cmd
let Prelude = ../Prelude.dhall

let Statement = ./Statement.dhall

let cmdShell
    : List Text -> List Statement
    = \(commands : List Text) ->
        [ Statement.CmdShell (Prelude.Text.concatSep " && " commands) ]

let example0 =
      assert : cmdShell [ "/bin/bash" ] === [ Statement.CmdShell "/bin/bash" ]

in  cmdShell
