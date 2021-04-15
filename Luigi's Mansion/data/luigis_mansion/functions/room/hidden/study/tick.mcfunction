execute unless score #study Ticking matches 1 run function #luigis_mansion:room/hidden/study/load
execute as @a[x=682,y=111,z=-23,dx=17,dy=6,dz=21] unless entity @s[scores={Room=7}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=682,y=111,z=-23,dx=17,dy=6,dz=21] run scoreboard players set @s Room 7

execute as @a[gamemode=!spectator,x=684,y=111,z=-21,dx=14,dy=6,dz=17] run function luigis_mansion:room/hidden/study/tick_per_player

function #luigis_mansion:room/hidden/study/interactions/room

function luigis_mansion:room/hidden/study/ghosts

function luigis_mansion:room/hidden/door/small_hallway_study