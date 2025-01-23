teleport @s 494.0 37 9.0 -70 0
teleport @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"bowser_head"}}},tag=same_room] 490 40 15 -35 0
execute as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/move/teleport {teleport:"496 37 14 130 0"}
data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"bowser_collpases"},progress:0,room:0,bowser:0,bowser_head:0}
execute store result storage luigis_mansion:data dialogs[-1].room int 1 run scoreboard players get @s Room
execute store result storage luigis_mansion:data dialogs[-1].bowser int 1 run scoreboard players get @s GhostNr
execute store result storage luigis_mansion:data dialogs[-1].bowser_head int 1 run scoreboard players get @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"bowser_head"}}},tag=same_room,limit=1] GhostNr