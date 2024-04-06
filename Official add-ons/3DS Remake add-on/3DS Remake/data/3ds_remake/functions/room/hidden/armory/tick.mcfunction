execute unless score #armory Ticking matches 1 run function #3ds_remake:room/hidden/armory/load
execute as @a[x=744,y=28,z=54,dx=22,dy=7,dz=25] unless entity @s[scores={Room=64}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[x=744,y=28,z=54,dx=22,dy=7,dz=25] Room 64

execute as @e[scores={Room=64}] unless entity @s[type=!minecraft:armor_stand,type=!minecraft:item_frame] run scoreboard players set @s MirrorX 745

execute as @a[scores={Room=64}] run function 3ds_remake:room/hidden/armory/tick_per_player

function #3ds_remake:room/hidden/armory/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=64},tag=!spectator,limit=1] run function 3ds_remake:room/hidden/armory/ghosts