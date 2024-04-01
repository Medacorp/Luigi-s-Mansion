scoreboard players add #dialog Dialog 1

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=e_gadd,tag=same_room,limit=1] remove freeze_animation
execute if score #dialog Dialog matches 1 in minecraft:overworld positioned 789 90 14 run data modify storage luigis_mansion:data entity set value {room:0,scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.player.scan_furniture.57"}'},can_talk_to:0b}
execute if score #dialog Dialog matches 1 in minecraft:overworld positioned 789 90 14 run function luigis_mansion:spawn_entities/e_gadd
execute if score #dialog Dialog matches 2 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"wave"}
execute if score #dialog Dialog matches 2..219 as @e[tag=e_gadd,tag=same_room,limit=1] at @s facing entity @p[tag=!spectator] feet run teleport @s ~ ~ ~ ~ 0
execute if score #dialog Dialog matches 220 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"walk_to_lab"}
execute if score #dialog Dialog matches 220..259 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~0.1 0 0
execute if score #dialog Dialog matches 260 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~-100 ~
execute if score #dialog Dialog matches 260 run tag @e[tag=e_gadd,tag=same_room,limit=1] add remove_from_existence
execute if score #dialog Dialog matches 260 run scoreboard players set #dialog Dialog -1