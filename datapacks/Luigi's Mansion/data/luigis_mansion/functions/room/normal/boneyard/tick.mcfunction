execute unless score #boneyard Ticking matches 1 run function #luigis_mansion:room/normal/boneyard/load
execute as @a[gamemode=!spectator,x=671,y=101,z=37,dx=14,dy=8,dz=19] unless entity @s[scores={Room=28}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=671,y=101,z=37,dx=14,dy=8,dz=19] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 28

execute as @a[gamemode=!spectator,scores={Room=28}] run function luigis_mansion:room/normal/boneyard/tick_per_player

function #luigis_mansion:room/normal/boneyard/interactions/room

function luigis_mansion:room/normal/boneyard/ghosts

function luigis_mansion:room/normal/door/kitchen_boneyard