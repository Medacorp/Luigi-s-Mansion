execute unless score #guest_room Ticking matches 1 run function #luigis_mansion:room/normal/guest_room/load
execute as @e[tag=player,x=734,y=19,z=-63,dx=14,dy=7,dz=21] unless entity @s[scores={Room=70}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=734,y=19,z=-63,dx=14,dy=7,dz=21] Room 70
#todelete - old furniture
scoreboard players set #temp Room 70
#/todelete

execute as @a[scores={Room=70}] run function luigis_mansion:room/normal/guest_room/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/normal/guest_room/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=70},limit=1] run function luigis_mansion:room/normal/guest_room/ghosts