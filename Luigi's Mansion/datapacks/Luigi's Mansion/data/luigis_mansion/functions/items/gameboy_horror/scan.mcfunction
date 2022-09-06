scoreboard players set #temp Move 0
tag @s add scanning_player
execute anchored eyes positioned ^ ^ ^0.5 run function luigis_mansion:items/gameboy_horror/scan/target
execute as @e[tag=target,limit=1,tag=!scanning_player,scores={Room=1..}] run function #luigis_mansion:items/gameboy_horror/scan/entity_mansion
execute as @e[tag=target,limit=1,tag=!scanning_player,scores={Room=..-1}] run function #luigis_mansion:items/gameboy_horror/scan/entity
tag @e[tag=target,limit=1] remove target
playsound luigis_mansion:item.gameboy_horror.scan player @a[tag=same_room] ~ ~ ~ 1
scoreboard players reset #temp Move
scoreboard players reset @s UseItem