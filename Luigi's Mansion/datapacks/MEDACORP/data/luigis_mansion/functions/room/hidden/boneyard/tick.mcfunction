execute unless score #boneyard Ticking matches 1 run function #luigis_mansion:room/hidden/boneyard/load
execute as @a[x=672,y=99,z=-41,dx=13,dy=9,dz=19] unless entity @s[scores={Room=28}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=672,y=99,z=-41,dx=13,dy=9,dz=19] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 28

execute as @a[scores={Room=28}] run function luigis_mansion:room/hidden/boneyard/tick_per_player

function #luigis_mansion:room/hidden/boneyard/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=28},limit=1] run function luigis_mansion:room/hidden/boneyard/ghosts