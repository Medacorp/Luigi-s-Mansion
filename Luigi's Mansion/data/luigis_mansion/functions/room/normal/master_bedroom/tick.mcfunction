execute unless score #master_bedroom Ticking matches 1 run function #luigis_mansion:room/normal/master_bedroom/load
execute as @a[x=682,y=111,z=37,dx=17,dy=6,dz=20] unless entity @s[scores={Room=8}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=682,y=111,z=37,dx=17,dy=6,dz=20] run scoreboard players set @s Room 8

execute as @a[gamemode=!spectator,x=684,y=111,z=39,dx=13,dy=6,dz=16] run function luigis_mansion:room/normal/master_bedroom/tick_per_player

function #luigis_mansion:room/normal/master_bedroom/interactions/room

function luigis_mansion:room/normal/master_bedroom/ghosts

function luigis_mansion:room/normal/door/small_hallway_master_bedroom