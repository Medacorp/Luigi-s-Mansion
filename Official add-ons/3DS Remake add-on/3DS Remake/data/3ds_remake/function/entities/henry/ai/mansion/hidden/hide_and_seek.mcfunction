scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1},tag=next_wave] run tag @e[tag=same_room,tag=furniture,tag=door] add blockade
tag @s[scores={Dialog=60}] add vanish
execute if entity @s[scores={Dialog=60}] run tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"orville"}}},tag=to_remove,limit=1] add vanish
tag @s[scores={Dialog=61}] add remove_from_existence
execute if entity @s[scores={Dialog=61}] run tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"orville"}}},limit=1] add remove_from_existence

execute if entity @s[scores={Dialog=61},tag=next_wave] run data modify storage luigis_mansion:data entity set value {scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.orville.scan"}'}}
execute if entity @s[scores={Dialog=61},tag=next_wave] at @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"orville"}}},limit=1] positioned ~ ~-2 ~ run function luigis_mansion:spawn_entities/portrait_ghost/henry_and_orville/orville
execute if entity @s[scores={Dialog=61},tag=next_wave] run data modify storage luigis_mansion:data entity set value {scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.henry.scan"}'},drop_pearls:0b}
execute if entity @s[scores={Dialog=61},tag=next_wave] positioned ~ ~-2 ~ run function luigis_mansion:spawn_entities/portrait_ghost/henry_and_orville/henry

execute if entity @s[scores={Dialog=61},tag=next_wave] run function 3ds_remake:room/hidden/the_twins_room/wave_6
