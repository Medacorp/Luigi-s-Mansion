scoreboard players set #temp Move 0
tag @s add scanning_player
execute anchored eyes run summon minecraft:marker ^ ^ ^ {Tags:["interact","this_interact","gameboy_horror_scan"],Duration:1}
scoreboard players operation #temp Room = @s Room
execute as @e[type=minecraft:marker,tag=this_interact,limit=1] positioned as @s positioned ^ ^ ^0.5 run function luigis_mansion:items/gameboy_horror/scan/target
execute as @e[tag=target,limit=1] if score #temp Room matches 1.. run function #luigis_mansion:items/gameboy_horror/scan/entity_mansion
execute as @e[tag=target,limit=1] if score #temp Room matches ..-1 run function #luigis_mansion:items/gameboy_horror/scan/entity
tag @e[tag=target,limit=1] remove target
execute if entity @e[tag=warp,tag=this_interact,limit=1] run tag @s add warp
kill @e[type=minecraft:marker,tag=this_interact,limit=1]
playsound luigis_mansion:item.gameboy_horror.scan player @a[tag=same_room] ~ ~ ~ 1
tag @s remove scanning_player
scoreboard players reset #temp Room
scoreboard players reset #temp Move
scoreboard players reset #interact
scoreboard players reset @s UseItem