scoreboard players set #temp Move 0
tag @s add scanning_player
execute if entity @s[tag=!gooigi] anchored eyes positioned ^ ^ ^0.5 run function luigis_mansion:items/game_boy_horror/scan/target
execute if entity @s[tag=gooigi] anchored eyes positioned ^ ^ ^0.5 run function luigis_mansion_3ds_remake:items/game_boy_horror/scan/target_gooigi
execute if entity @s[tag=!gooigi] as @e[tag=target,limit=1,tag=!scanning_player,scores={Room=1..}] run function #luigis_mansion:items/game_boy_horror/scan/entity_mansion
execute if entity @s[tag=!gooigi] as @e[tag=target,limit=1,tag=!scanning_player,scores={Room=..-1}] run function #luigis_mansion:items/game_boy_horror/scan/entity
tag @e[tag=target,limit=1] remove target
execute if entity @s[tag=gooigi] unless score #temp Step matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"luigis_mansion_3ds_remake:message.player.scan_furniture.11"}]}
scoreboard players reset #temp Step
playsound luigis_mansion:item.game_boy_horror.scan player @a[tag=same_room] ~ ~ ~ 1
scoreboard players reset #temp Move
scoreboard players reset @s UseItem