proc push_button {} {
        .ent insert 0 "Zdravo, "
}
label .lab -text "Unesi ime:"
entry .ent
button .but -text "Pritisni" -command "push_button"
pack .lab
pack .ent
pack .but
