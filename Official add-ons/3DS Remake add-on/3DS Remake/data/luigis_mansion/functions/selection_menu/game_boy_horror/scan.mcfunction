scoreboard players set #temp Move 0
tag @s add scanning_player
execute anchored eyes run summon minecraft:marker ^ ^ ^ {Tags:["interact","this_interact","gameboy_horror_scan"],Duration:1}
scoreboard players operation #temp Room = @s Room
execute if entity @s[tag=!gooigi] as @e[type=minecraft:marker,tag=this_interact,limit=1] positioned as @s positioned ^ ^ ^0.5 run function luigis_mansion:selection_menu/game_boy_horror/scan/target
execute if entity @s[tag=gooigi] as @e[type=minecraft:marker,tag=this_interact,limit=1] positioned as @s positioned ^ ^ ^0.5 run function 3ds_remake:selection_menu/game_boy_horror/scan/target_gooigi
execute if entity @e[tag=warp,tag=this_interact,limit=1] run tag @s add warp
execute if entity @s[tag=gooigi] if entity @e[tag=interact,tag=!furniture_scanned,tag=!entity_scanned,tag=!scanned_block,limit=1] if score #temp Move matches ..200 run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"3ds_remake:message.player.scan_furniture.11"}]}
kill @e[type=minecraft:marker,tag=this_interact,limit=1]
playsound luigis_mansion:item.game_boy_horror.scan player @a[tag=same_room] ~ ~ ~ 1
tag @s remove scanning_player
scoreboard players reset #temp Room
scoreboard players reset #temp Move
scoreboard players reset #temp Steps
scoreboard players reset #interact
scoreboard players reset @s UseItem