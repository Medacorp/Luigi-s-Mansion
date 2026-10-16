execute if entity @e[tag=trophy_base,limit=1] unless entity @e[tag=luigi,tag=same_room,limit=1] run tag @e[tag=same_room] add abort_dialog_tick
execute if entity @e[tag=trophy_base,limit=1] unless entity @e[tag=luigi,tag=same_room,limit=1] run return 0
scoreboard players add #dialog Dialog 1
execute unless entity @e[tag=trophy_base,limit=1] run scoreboard players set #dialog Dialog -1

tag @a[tag=same_room] add prevent_item_lock
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=same_room,tag=door] remove freeze_animation
tag @e[tag=same_room,tag=door] remove no_ai
execute if score #dialog Dialog matches 1..39 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 1..39 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=trophy_base,tag=same_room,sort=nearest,limit=1]",teleport:"^ ^ ^3 ~-180 0"}
execute if score #dialog Dialog matches 20 run function #3ds_remake:selection_menu/gallery_trophy/complete_collections
execute if score #dialog Dialog matches 20 if data storage luigis_mansion:data dialogs[0].3ds_remake at @e[tag=trophy_base,limit=1] run particle minecraft:cloud ~ ~2 ~ 2 2 2 0 50 normal @a[tag=same_room]
execute if score #dialog Dialog matches 20 if data storage luigis_mansion:data dialogs[0].3ds_remake run tag @e[tag=trophy_piece,tag=!trophy_base] add remove_from_existence
execute if score #dialog Dialog matches 20 if data storage luigis_mansion:data dialogs[0].3ds_remake run data modify storage luigis_mansion:data furniture set value {room:0}
execute if score #dialog Dialog matches 20 if data storage luigis_mansion:data dialogs[0].3ds_remake run data modify storage luigis_mansion:data furniture.room set from storage luigis_mansion:data dialogs[0].room
execute if score #dialog Dialog matches 20 if data storage luigis_mansion:data dialogs[0].3ds_remake as @e[tag=trophy_base,limit=1] at @s if data storage luigis_mansion:data current_state.3ds_remake.trophy.beginner{done:1b} rotated ~ ~ run function 3ds_remake:spawn_furniture/trophy/gold_ghost
execute if score #dialog Dialog matches 20 if data storage luigis_mansion:data dialogs[0].3ds_remake as @e[tag=trophy_base,limit=1] at @s if data storage luigis_mansion:data current_state.3ds_remake.trophy.easy{done:1b} rotated ~ ~ run function 3ds_remake:spawn_furniture/trophy/garbage_can_ghost
execute if score #dialog Dialog matches 20 if data storage luigis_mansion:data dialogs[0].3ds_remake as @e[tag=trophy_base,limit=1] at @s if data storage luigis_mansion:data current_state.3ds_remake.trophy.normal{done:1b} rotated ~ ~ run function 3ds_remake:spawn_furniture/trophy/purple_puncher
execute if score #dialog Dialog matches 20 if data storage luigis_mansion:data dialogs[0].3ds_remake as @e[tag=trophy_base,limit=1] at @s if data storage luigis_mansion:data current_state.3ds_remake.trophy.hard{done:1b} rotated ~ ~ run function 3ds_remake:spawn_furniture/trophy/blue_twirler
execute if score #dialog Dialog matches 20 if data storage luigis_mansion:data dialogs[0].3ds_remake as @e[tag=trophy_base,limit=1] at @s if data storage luigis_mansion:data current_state.3ds_remake.trophy.master{done:1b} rotated ~ ~ run function 3ds_remake:spawn_furniture/trophy/grabbing_ghost
execute if score #dialog Dialog matches 20 if data storage luigis_mansion:data dialogs[0].3ds_remake run data remove storage luigis_mansion:data furniture
execute if score #dialog Dialog matches 21..60 if data storage luigis_mansion:data current_state.3ds_remake.trophy.master{done:0b} at @e[tag=trophy_base,limit=1] run particle minecraft:wax_off ~ ~2 ~ 2 2 2 0 5 normal @a[tag=same_room]
execute if score #dialog Dialog matches 21..60 if data storage luigis_mansion:data current_state.3ds_remake.trophy.master{done:1b} at @e[tag=trophy_base,limit=1] run particle minecraft:wax_on ~ ~2 ~ 2 2 2 0 5 normal @a[tag=same_room]
execute if score #dialog Dialog matches 60 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 60 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 60 run scoreboard players set #dialog Dialog -1