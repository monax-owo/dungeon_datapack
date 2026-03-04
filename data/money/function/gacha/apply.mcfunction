# 

data modify entity @n[tag=t_out1] transformation merge from storage temp: trans[0].knob
data modify entity @n[tag=t_out2] transformation merge from storage temp: trans[0].body

data remove storage temp: trans[0]
