execute unless score #armory Ticking matches 1 run function #luigis_mansion:room/hidden/armory/load
execute as @a[x=744,y=28,z=-64,dx=22,dy=7,dz=25] unless entity @s[scores={Room=64}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=744,y=28,z=-64,dx=22,dy=7,dz=25] Room 64
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 64
#/todelete

execute as @e[scores={Room=64}] unless entity @s[type=!minecraft:armor_stand,type=!minecraft:item_frame] run scoreboard players set @s MirrorX 745

execute as @a[scores={Room=64}] run function luigis_mansion:room/hidden/armory/tick_per_player

function #luigis_mansion:room/hidden/armory/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=64},tag=!spectator,limit=1] run function luigis_mansion:room/hidden/armory/ghosts