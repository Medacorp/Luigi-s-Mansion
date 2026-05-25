execute unless score #boneyard Ticking matches 1 run function #luigis_mansion:room/normal/boneyard/load
execute as @e[tag=player,x=672,y=101,z=37,dx=13,dy=7,dz=19] unless entity @s[scores={Room=28}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=672,y=101,z=37,dx=13,dy=7,dz=19] Room 28
#todelete - old furniture
scoreboard players set #temp Room 28
#/todelete

execute as @a[scores={Room=28}] run function luigis_mansion:room/normal/boneyard/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/normal/boneyard/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=28},limit=1] run function luigis_mansion:room/normal/boneyard/ghosts