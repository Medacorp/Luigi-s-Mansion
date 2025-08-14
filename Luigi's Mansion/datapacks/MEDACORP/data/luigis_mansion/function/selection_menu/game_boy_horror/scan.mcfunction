scoreboard players set #temp Move 0
scoreboard players set #temp EntitySize 2147483647
scoreboard players set #temp FurnitureSize 2147483647
tag @s add scanning_player
execute anchored eyes run summon minecraft:marker ^ ^ ^ {Tags:["interact","this_interact","game_boy_horror_scan"],Duration:1}
#todelete - old furniture
scoreboard players operation #temp Room = @s Room
#/todelete
function luigis_mansion:entities/player/run_command_as_model {command:"tag @s add scanning_player"}
execute as @e[tag=same_room,tag=!scanning_player,type=!minecraft:player] run function luigis_mansion:selection_menu/game_boy_horror/scan/get_size
execute unless entity @s[scores={WarpTime=1..}] as @e[type=minecraft:marker,tag=this_interact,limit=1] positioned as @s positioned ^ ^ ^0.1 run function luigis_mansion:selection_menu/game_boy_horror/scan/target
execute if entity @e[tag=warp,tag=this_interact,limit=1] if score #can_warp Selected matches 1 run tag @s[scores={Room=1..}] add warp
kill @e[type=minecraft:marker,tag=this_interact,limit=1]
execute unless entity @s[scores={WarpTime=1..}] run playsound luigis_mansion:item.game_boy_horror.scan player @a[tag=same_room] ~ ~ ~ 1
tag @s remove scanning_player
function luigis_mansion:entities/player/run_command_as_model {command:"tag @s remove scanning_player"}
#todelete - old furniture
scoreboard players reset #temp Room
#/todelete
scoreboard players reset #temp Move
scoreboard players reset #temp EntitySize
scoreboard players reset #temp FurnitureSize
scoreboard players reset #interact