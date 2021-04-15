scoreboard players set #temp Move 0
tag @s add scanning_player
execute anchored eyes positioned ^ ^ ^0.5 run function luigis_mansion:items/gameboy_horror/scan/target
execute as @e[tag=target,limit=1,tag=portrait_ghost,type=!minecraft:area_effect_cloud] run function luigis_mansion:items/gameboy_horror/scan/portrait_ghost
execute if entity @e[tag=target,limit=1,tag=toad] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"luigis_mansion:message.player.scan_furniture.6"}]}
execute if entity @e[tag=target,limit=1,tag=e_gadd] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"luigis_mansion:message.player.scan_furniture.57"}]}
execute if entity @e[tag=target,limit=1,tag=mario,tag=panic] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"luigis_mansion:message.player.scan_furniture.51"}]}
execute as @a[tag=target,limit=1,tag=!scanning_player] run function luigis_mansion:items/gameboy_horror/scan/player
tag @e[tag=target,limit=1,type=!minecraft:area_effect_cloud] remove target
playsound luigis_mansion:item.gameboy_horror.scan player @a[tag=same_room] ~ ~ ~ 1
scoreboard players reset #temp Move
scoreboard players reset @s UseItem