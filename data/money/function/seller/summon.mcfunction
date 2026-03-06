# 

summon interaction ~ ~ ~ {Tags:["money.seller"],height:.5,width:.5}
summon block_display ~ ~ ~ {Tags:["money.seller"],block_state:{Name:"minecraft:chest",Properties:{facing:"north",type:"single"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[.5,.5,.5],translation:[-.25,0,-.25]},Passengers:[{id:"text_display",Tags:["money.seller"],alignment:"center",background:0,text:{bold:1b,color:"gold",italic:0b,text:"売却"},text_opacity:255,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[.75,.75,.75],translation:[-.015625,.0625,.25]}}]}
summon armor_stand ~ ~.5 ~ {Tags:["money.seller"],CustomName:{text:"右クリック",color:"gold",bold:true},CustomNameVisible:true,Marker:true,Invisible:true,Invulnerable:true}
