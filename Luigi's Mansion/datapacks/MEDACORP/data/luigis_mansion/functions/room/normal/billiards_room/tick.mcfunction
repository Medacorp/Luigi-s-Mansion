execute unless score #billiards_room Ticking matches 1 run function #luigis_mansion:room/normal/billiards_room/load
execute as @a[x=673,y=10,z=64,dx=15,dy=7,dz=27] unless entity @s[scores={Room=47}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=673,y=10,z=64,dx=15,dy=7,dz=27] Room 47
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 47
#/todelete

execute as @e[scores={Room=47}] unless entity @s[type=!minecraft:armor_stand,type=!minecraft:item_frame] run scoreboard players set @s MirrorX 674

execute as @a[scores={Room=47}] run function luigis_mansion:room/normal/billiards_room/tick_per_player

function #luigis_mansion:room/normal/billiards_room/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=47},tag=!spectator,limit=1] run function luigis_mansion:room/normal/billiards_room/ghosts