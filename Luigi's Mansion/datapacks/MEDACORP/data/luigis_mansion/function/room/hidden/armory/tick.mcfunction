execute unless score #armory Ticking matches 1 run function #luigis_mansion:room/hidden/armory/load
execute as @a[x=744,y=28,z=-64,dx=22,dy=7,dz=25] unless entity @s[scores={Room=64}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=744,y=28,z=-64,dx=22,dy=7,dz=25] Room 64
#todelete - old furniture
scoreboard players set #temp Room 64
#/todelete

execute as @e[scores={Room=64},tag=!model_piece,tag=!no_reflection,tag=!reflection,type=#luigis_mansion:reflected] if score #global_mirror_reflections Selected matches 1 run scoreboard players set @s MirrorX 745

execute as @a[scores={Room=64}] run function luigis_mansion:room/hidden/armory/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/hidden/armory/interactions/room
#/todelete

execute if entity @a[tag=!pause_dialog,scores={Room=64},tag=!spectator,limit=1] run function luigis_mansion:room/hidden/armory/ghosts