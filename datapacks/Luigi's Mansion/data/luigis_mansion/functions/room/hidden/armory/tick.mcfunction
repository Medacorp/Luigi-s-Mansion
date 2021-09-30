execute unless score #armory Ticking matches 1 run function #luigis_mansion:room/hidden/armory/load
execute as @a[gamemode=!spectator,x=744,y=28,z=-64,dx=22,dy=8,dz=25] unless entity @s[scores={Room=64}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=744,y=28,z=-64,dx=22,dy=8,dz=25] run scoreboard players set @s Room 64

execute as @e[scores={Room=64},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 745

execute as @a[gamemode=!spectator,scores={Room=64}] run function luigis_mansion:room/hidden/armory/tick_per_player

function #luigis_mansion:room/hidden/armory/interactions/room

function luigis_mansion:room/hidden/armory/ghosts

function luigis_mansion:room/hidden/door/hallway_19_armory
function luigis_mansion:room/hidden/door/armory_ceramics_studio