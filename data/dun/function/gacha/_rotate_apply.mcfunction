# {index: int}

$data modify entity @n[tag=t_out1] transformation merge from storage temp: trans[$(index)].knob
$data modify entity @n[tag=t_out2] transformation merge from storage temp: trans[$(index)].body
