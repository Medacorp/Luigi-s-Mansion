execute unless score #secret_altar Ticking matches 1 run function #luigis_mansion:room/hidden/secret_altar/load
execute as @a[x=634,y=93,z=24,dx=20,dy=6,dz=18] unless entity @s[scores={Room=59}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=634,y=93,z=24,dx=20,dy=6,dz=18] run scoreboard players set @s Room 59

execute as @a[gamemode=!spectator,x=636,y=93,z=26,dx=16,dy=6,dz=14] run function luigis_mansion:room/hidden/secret_altar/tick_per_player

function #luigis_mansion:room/hidden/secret_altar/interactions/room

function luigis_mansion:room/hidden/secret_altar/ghosts

function luigis_mansion:room/hidden/door/curved_hallway_secret_altar