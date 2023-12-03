scoreboard players operation #temp PassiveNr = @s PassiveNr
execute as @e[tag=model_piece,scores={PassiveNr=-2147483648..}] if score @s PassiveNr = #temp PassiveNr run tag @s add this_model

function #luigis_mansion:entities/e_gadd/dialog
execute if entity @s[scores={Room=-1},tag=talk] if data storage luigis_mansion:data rooms.underground_lab{cleared:1b} unless entity @s[scores={Dialog=1..}] run function luigis_mansion:dialog/underground_lab
execute if entity @s[scores={Room=-3},tag=talk] if data storage luigis_mansion:data rooms.ghost_portrificationizer_room{cleared:0b} unless entity @s[scores={Dialog=1..}] run function luigis_mansion:dialog/ghost_portrificationizer_room/talk
execute if entity @s[scores={Room=-3},tag=talk] if data storage luigis_mansion:data rooms.ghost_portrificationizer_room{cleared:1b} unless entity @s[scores={Dialog=1..}] run function luigis_mansion:dialog/ghost_portrificationizer_room/repeat

execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY

execute at @s facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s[tag=!portrificationizing,tag=!mario_to_normal,scores={Room=..-1}] ~ ~ ~ ~ ~

execute at @s[tag=nod] run function luigis_mansion:animations/e_gadd/nod
execute at @s[tag=shake] run function luigis_mansion:animations/e_gadd/shake
execute at @s[tag=wave] run function luigis_mansion:animations/e_gadd/wave
execute at @s[tag=walk] run function luigis_mansion:animations/e_gadd/walk
execute at @s[tag=jump] run function luigis_mansion:animations/e_gadd/jump
execute at @s[tag=walk_backwards] run function luigis_mansion:animations/e_gadd/walk_backwards
execute at @s[tag=dragged] run function luigis_mansion:animations/e_gadd/dragged
execute at @s[tag=hit] run function luigis_mansion:animations/e_gadd/hit
execute at @s[tag=sitting] run function luigis_mansion:animations/e_gadd/sitting
execute at @s[tag=get_up] run function luigis_mansion:animations/e_gadd/get_up
execute at @s[tag=!nod,tag=!shake,tag=!wave,tag=!walk,tag=!jump,tag=!poltergust,tag=!walk_backwards,tag=!dragged,tag=!hit,tag=!sitting,tag=!get_up] run function luigis_mansion:animations/e_gadd/idle
execute at @s[tag=!nod,tag=!shake,tag=!wave,tag=!walk,tag=!jump,tag=poltergust,tag=!walk_backwards,tag=!dragged,tag=!hit,tag=!sitting,tag=!get_up] run function luigis_mansion:animations/e_gadd/poltergust

execute at @s[tag=poltergust] run data modify entity @e[tag=this_model,tag=e_gadd_poltergust,limit=1] ArmorItems[3] set value {id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,Damage:0,CustomModelData:1}}
execute at @s[tag=!poltergust] run data modify entity @e[tag=this_model,tag=e_gadd_poltergust,limit=1] ArmorItems[3] set value {}
execute at @s run teleport @e[tag=this_model,tag=e_gadd_poltergust,limit=1] ^-0.34 ^0.05 ^ ~ ~

scoreboard players reset #temp PassiveNr
tag @e[tag=this_model] add found_owner
tag @e[tag=this_model] remove this_model
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall