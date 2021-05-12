execute unless score #secret_altar Ticking matches 1 run function #luigis_mansion:room/hidden/secret_altar/load
execute as @a[gamemode=!spectator,x=634,y=92,z=24,dx=20,dy=8,dz=18] unless entity @s[scores={Room=59}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=634,y=92,z=24,dx=20,dy=8,dz=18] run scoreboard players set @s Room 59

scoreboard players set @e[scores={Room=59},type=!minecraft:marker] MirrorZ 41

execute as @a[gamemode=!spectator,x=636,y=92,z=26,dx=16,dy=8,dz=14] run function luigis_mansion:room/hidden/secret_altar/tick_per_player

function #luigis_mansion:room/hidden/secret_altar/interactions/room

clone 644 95 40 644 95 40 644 95 42
clone 644 95 26 644 95 26 644 95 56
execute as @e[x=636.5,y=94,z=33.5,distance=..0.7,type=minecraft:item_frame,limit=1] run kill @s[nbt=!{Item:{id:"minecraft:painting"}}]
execute unless entity @e[x=636.5,y=94,z=33.5,distance=..0.7,type=minecraft:item_frame,limit=1] run kill @e[x=636.5,y=94,z=49.5,distance=..0.7,type=minecraft:item_frame,limit=1]

function luigis_mansion:room/hidden/secret_altar/ghosts

function luigis_mansion:room/hidden/door/curved_hallway_secret_altar