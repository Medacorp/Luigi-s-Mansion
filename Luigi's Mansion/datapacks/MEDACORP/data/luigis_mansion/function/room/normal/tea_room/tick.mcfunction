execute unless score #tea_room Ticking matches 1 run function #luigis_mansion:room/normal/tea_room/load
execute as @e[tag=player,x=637,y=19,z=-62,dx=12,dy=7,dz=33] unless entity @s[scores={Room=34}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=637,y=19,z=-62,dx=12,dy=7,dz=33] Room 34
#todelete - old furniture
scoreboard players set #temp Room 34
#/todelete

execute as @a[scores={Room=34}] run function luigis_mansion:room/normal/tea_room/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/normal/tea_room/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=34},limit=1] run function luigis_mansion:room/normal/tea_room/ghosts