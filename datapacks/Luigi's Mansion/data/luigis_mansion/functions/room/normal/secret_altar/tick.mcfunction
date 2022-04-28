execute unless score #secret_altar Ticking matches 1 run function #luigis_mansion:room/normal/secret_altar/load
execute as @a[gamemode=!spectator,x=634,y=92,z=-27,dx=20,dy=7,dz=18] unless entity @s[scores={Room=72}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=634,y=92,z=-27,dx=20,dy=7,dz=18] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 72
scoreboard players set #temp Room 72

execute as @e[scores={Room=72},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorZ -26

execute as @a[gamemode=!spectator,scores={Room=72}] run function luigis_mansion:room/normal/secret_altar/tick_per_player

function #luigis_mansion:room/normal/secret_altar/interactions/room

clone 644 95 -25 644 95 -25 644 95 -27
clone 644 95 -11 644 95 -11 644 95 -41
execute if entity @e[x=636.5,y=94,z=-17.5,distance=..0.7,type=minecraft:item_frame,nbt=!{Item:{}},limit=1] run function luigis_mansion:room/normal/secret_altar/grab_painting

execute if entity @a[gamemode=!spectator,scores={Room=72}] run function luigis_mansion:room/normal/secret_altar/ghosts

function luigis_mansion:room/normal/door/hallway_22_secret_altar