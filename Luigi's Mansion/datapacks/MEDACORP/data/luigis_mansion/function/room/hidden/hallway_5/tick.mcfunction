execute unless score #hallway_5 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_5/load
execute as @a[x=679,y=10,z=3,dx=6,dy=7,dz=42] unless entity @s[scores={Room=13}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=679,y=10,z=3,dx=6,dy=7,dz=42] Room 13
#todelete - old furniture
scoreboard players set #temp Room 13
#/todelete

execute as @a[scores={Room=13}] run function luigis_mansion:room/hidden/hallway_5/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/hidden/hallway_5/interactions/room
#/todelete

scoreboard players set #temp Room 13
execute as @a[tag=!pause_dialog] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,tag=!spectator,limit=1] run function luigis_mansion:room/hidden/hallway_5/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room