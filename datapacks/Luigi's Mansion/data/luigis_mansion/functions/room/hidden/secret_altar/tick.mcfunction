execute unless score #secret_altar Ticking matches 1 run function #luigis_mansion:room/hidden/secret_altar/load
execute as @a[gamemode=!spectator,x=634,y=92,z=24,dx=20,dy=7,dz=18] unless entity @s[scores={Room=72}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=634,y=92,z=24,dx=20,dy=7,dz=18] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 72
scoreboard players set #temp Room 72

execute as @e[scores={Room=72},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorZ 41

execute as @a[gamemode=!spectator,scores={Room=72}] run function luigis_mansion:room/hidden/secret_altar/tick_per_player

function #luigis_mansion:room/hidden/secret_altar/interactions/room

clone 644 95 40 644 95 40 644 95 42
clone 644 95 26 644 95 26 644 95 56
execute as @e[x=636.5,y=94,z=33.5,distance=..0.7,type=minecraft:item_frame,limit=1] run kill @s[nbt=!{Item:{id:"minecraft:painting"}}]
execute unless entity @e[x=636.5,y=94,z=33.5,distance=..0.7,type=minecraft:item_frame,limit=1] run kill @e[x=636.5,y=94,z=49.5,distance=..0.7,type=minecraft:item_frame,limit=1]

execute if entity @a[gamemode=!spectator,scores={Room=72}] run function luigis_mansion:room/hidden/secret_altar/ghosts

function luigis_mansion:room/hidden/door/hallway_22_secret_altar