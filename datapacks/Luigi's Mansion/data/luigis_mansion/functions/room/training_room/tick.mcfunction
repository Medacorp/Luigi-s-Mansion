execute unless score #training_room Ticking matches 1 run function #luigis_mansion:room/training_room/load
execute as @a[gamemode=!spectator,x=783,y=75,z=-20,dx=15,dy=8,dz=23] unless entity @s[scores={Room=-2}] run scoreboard players set @s LastRoom -2
execute as @e[type=!minecraft:item_frame,x=783,y=75,z=-20,dx=15,dy=8,dz=23] unless entity @s[type=!minecraft:player,tag=!model_piece,scores={Room=-2147483648..}] run scoreboard players set @s Room -2

execute as @a[gamemode=!spectator,scores={Room=-2}] run function luigis_mansion:room/training_room/tick_per_player

function #luigis_mansion:room/training_room/interactions/room

function luigis_mansion:room/door/underground_lab_training_room