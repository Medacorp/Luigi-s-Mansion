execute unless score #armory Ticking matches 1 run function #luigis_mansion:room/hidden/armory/load
execute as @a[gamemode=!spectator,x=744,y=28,z=-64,dx=22,dy=8,dz=25] unless entity @s[scores={Room=51}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=744,y=28,z=-64,dx=22,dy=8,dz=25] run scoreboard players set @s Room 51

scoreboard players set @e[scores={Room=51},type=!minecraft:marker] MirrorX 745

execute as @a[gamemode=!spectator,x=744,y=28,z=-64,dx=22,dy=8,dz=25] run function luigis_mansion:room/hidden/armory/tick_per_player

function #luigis_mansion:room/hidden/armory/interactions/room

function luigis_mansion:room/hidden/armory/ghosts

function luigis_mansion:room/hidden/door/attic_hallway_2_armory
function luigis_mansion:room/hidden/door/armory_ceramics_studio