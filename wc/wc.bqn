tab‿nl←@+9‿10

# default flags if program is not called with any
dflags←"-c"‿"-l"‿"-w"

flags←1⊸<∘≠◶⟨dflags,¯1⊸↓⟩•args

fn←¯1⊑•args

b←•file.Bytes fn
c←•file.Chars fn
l←+´nl=b
w←+´0<≠¨c⊔˜(+`∧¬)⊸-+´c⊸=¨nl‿' '

r←l‿w‿(≠c)‿(≠b)/˜"-l"‿"-w"‿"-m"‿"-c"∊flags
•Out ∾' '∾¨(•Fmt¨ r)∾⋈fn
