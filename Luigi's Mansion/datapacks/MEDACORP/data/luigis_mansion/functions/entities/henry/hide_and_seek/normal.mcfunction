scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1},tag=next_wave] run tag @e[scores={Room=49},tag=furniture,tag=door] add blockade
execute if entity @s[scores={Dialog=59}] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"orville"}}}]},limit=1] add to_remove

execute if entity @s[scores={Dialog=120},tag=next_wave] run data modify storage luigis_mansion:data entity set value {scan_message:{sender:"me",message:'{"translate":"luigis_mansion:message.orville.scan"}'}}
execute if entity @s[scores={Dialog=120},tag=next_wave] at @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"orville"}}}]},limit=1] positioned ~ ~-2 ~ run function luigis_mansion:spawn_entities/portrait_ghost/orville
execute if entity @s[scores={Dialog=120},tag=next_wave] run data modify storage luigis_mansion:data entity set value {scan_message:{sender:"me",message:'{"translate":"luigis_mansion:message.henry.scan"}'},drop_pearls:0b}
execute if entity @s[scores={Dialog=120},tag=next_wave] positioned ~ ~-2 ~ run function luigis_mansion:spawn_entities/portrait_ghost/henry

execute if entity @s[scores={Dialog=120},tag=next_wave] run function luigis_mansion:room/normal/the_twins_room/wave_6

tag @s[scores={Dialog=60}] add vanish
execute if entity @s[scores={Dialog=60}] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"orville"}}}]},tag=to_remove,limit=1] add vanish
tag @s[scores={Dialog=120}] add remove_from_existence
execute if entity @s[scores={Dialog=120}] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"orville"}}}]},tag=to_remove,limit=1] add remove_from_existence