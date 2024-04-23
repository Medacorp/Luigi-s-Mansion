execute unless score #wardrobe_room Ticking matches 1 run function #3ds_remake:room/hidden/wardrobe_room/load
execute as @a[x=676,y=19,z=55,dx=12,dy=7,dz=21] unless entity @s[scores={Room=5}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=676,y=19,z=55,dx=12,dy=7,dz=21] Room 5
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 5
#/todelete

execute as @e[scores={Room=5}] unless entity @s[type=!minecraft:armor_stand,type=!minecraft:item_frame] run scoreboard players set @s MirrorX 677

execute as @a[scores={Room=5}] run function 3ds_remake:room/hidden/wardrobe_room/tick_per_player

function #3ds_remake:room/hidden/wardrobe_room/interactions/room

clone 678 21 64 678 22 67 676 21 64 filtered minecraft:warped_trapdoor
clone 679 21 64 679 22 67 675 21 64 filtered minecraft:warped_trapdoor

execute if entity @a[tag=!pause_dialog,scores={Room=5},tag=!spectator,limit=1] run function 3ds_remake:room/hidden/wardrobe_room/ghosts