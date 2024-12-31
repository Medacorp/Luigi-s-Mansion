execute unless score #conservatory Ticking matches 1 run function #luigis_mansion:room/normal/conservatory/load
execute as @e[tag=player,x=652,y=10,z=-29,dx=12,dy=7,dz=28] unless entity @s[scores={Room=25}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=652,y=10,z=-29,dx=12,dy=7,dz=28] Room 25
#todelete - old furniture
scoreboard players set #temp Room 25
#/todelete

execute as @a[scores={Room=25}] run function luigis_mansion:room/normal/conservatory/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/normal/conservatory/interactions/room
#/todelete

execute if entity @e[scores={Room=25,Time=0},tag=play_music,tag=open,tag=saxophone] run particle minecraft:note 658 13 -4 0 0 0 1 1 normal @a[scores={Room=25}]
execute if entity @e[scores={Room=25,Time=0},tag=play_music,tag=open,tag=harp] run particle minecraft:note 656.0 14 -6.0 0 0 0 1 1 normal @a[scores={Room=25}]
execute if entity @e[scores={Room=25,Time=0},tag=play_music,tag=open,tag=cello] run particle minecraft:note 661.0 13 -9.0 0 0 0 1 1 normal @a[scores={Room=25}]
execute if entity @e[scores={Room=25,Time=0},tag=play_music,tag=open,tag=drum_1] run particle minecraft:note 656 12 -13 0 0 0 1 1 normal @a[scores={Room=25}]
execute if entity @e[scores={Room=25,Time=0},tag=play_music,tag=open,tag=drum_2] run particle minecraft:note 657 12 -15 0 0 0 1 1 normal @a[scores={Room=25}]
execute if entity @e[scores={Room=25,Time=0},tag=play_music,tag=open,tag=drum_3] run particle minecraft:note 656 12 -17 0 0 0 1 1 normal @a[scores={Room=25}]
execute if entity @e[scores={Room=25,Time=0},tag=play_music,tag=open,tag=xylophone] run particle minecraft:note 661 12 -16 0 0 0 1 1 normal @a[scores={Room=25}]
execute as @e[scores={Room=25},tag=play_music,tag=open] unless entity @s[scores={Time=1..}] run scoreboard players set @s Time 7
scoreboard players remove @e[scores={Room=25},tag=play_music,tag=open] Time 1

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=25},limit=1] run function luigis_mansion:room/normal/conservatory/ghosts