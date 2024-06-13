scoreboard players add #dialog Dialog 1

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1 run setblock 629 20 -94 minecraft:magma_block
execute if score #dialog Dialog matches 1 run setblock 629 21 -93 minecraft:magma_block
execute if score #dialog Dialog matches 1 run setblock 628 20 -93 minecraft:magma_block
execute if score #dialog Dialog matches 1 run setblock 628 21 -94 minecraft:magma_block
execute if score #dialog Dialog matches 20 run fill 628 20 -94 629 21 -93 minecraft:magma_block
execute if score #dialog Dialog matches 40 run particle minecraft:explosion 629.0 21 -93.0 1 1 1 0 30
execute if score #dialog Dialog matches 45 run particle minecraft:explosion 629.0 21 -93.0 1 1 1 0 30
execute if score #dialog Dialog matches 50 run particle minecraft:explosion 629.0 21 -93.0 1 1 1 0 30
execute if score #dialog Dialog matches 55 run particle minecraft:explosion 629.0 21 -93.0 1 1 1 0 30
execute if score #dialog Dialog matches 60 run particle minecraft:explosion 629.0 21 -93.0 1 1 1 0 30
execute if score #dialog Dialog matches 60 run fill 628 20 -94 629 21 -93 minecraft:air
execute if score #dialog Dialog matches 65 run particle minecraft:explosion 629.0 21 -93.0 1 1 1 0 30
execute if score #dialog Dialog matches 70 run particle minecraft:explosion 629.0 21 -93.0 1 1 1 0 30
execute if score #dialog Dialog matches 75 run particle minecraft:explosion 629.0 21 -93.0 1 1 1 0 30
execute if score #dialog Dialog matches 80 run particle minecraft:explosion 629.0 21 -93.0 1 1 1 0 30
execute if score #dialog Dialog matches 85 run particle minecraft:explosion 629.0 21 -93.0 1 1 1 0 30
execute if score #dialog Dialog matches 90 run particle minecraft:explosion 629.0 21 -93.0 1 1 1 0 30
execute if score #dialog Dialog matches 95 run particle minecraft:explosion 629.0 21 -93.0 1 1 1 0 30
execute if score #dialog Dialog matches 100 run particle minecraft:explosion 629.0 21 -93.0 1 1 1 0 30
execute if score #dialog Dialog matches 120 run function 3ds_remake:room/hidden/observatory/clear
execute if score #dialog Dialog matches 120 run scoreboard players set #dialog Dialog -1
tag @s add diable_interact