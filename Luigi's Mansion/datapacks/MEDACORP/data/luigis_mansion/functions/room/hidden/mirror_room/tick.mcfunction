execute unless score #mirror_room Ticking matches 1 run function #luigis_mansion:room/hidden/mirror_room/load
execute as @a[x=734,y=10,z=57,dx=14,dy=7,dz=21] unless entity @s[scores={Room=21}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=734,y=10,z=57,dx=14,dy=7,dz=21] Room 21
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 21
#/todelete

execute as @e[scores={Room=21}] unless entity @s[type=!minecraft:armor_stand,type=!minecraft:item_frame] run scoreboard players set @s MirrorX 735

execute as @a[scores={Room=21}] run function luigis_mansion:room/hidden/mirror_room/tick_per_player

function #luigis_mansion:room/hidden/mirror_room/interactions/room

execute unless entity @e[tag=light_me,tag=!lit,scores={Room=21},limit=1] run tag @e[scores={Room=21},tag=furniture,tag=door] remove blockade

execute if entity @a[tag=!pause_dialog,scores={Room=21},tag=!spectator,limit=1] run function luigis_mansion:room/hidden/mirror_room/ghosts