execute unless score #secret_altar Ticking matches 1 run function #luigis_mansion:room/normal/secret_altar/load
execute as @a[x=634,y=93,z=-27,dx=20,dy=6,dz=18] unless entity @s[scores={Room=59}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=634,y=93,z=-27,dx=20,dy=6,dz=18] run scoreboard players set @s Room 59

execute as @a[gamemode=!spectator,x=636,y=93,z=-25,dx=16,dy=6,dz=15] run function luigis_mansion:room/normal/secret_altar/tick_per_player

function #luigis_mansion:room/normal/secret_altar/interactions/room

function luigis_mansion:room/normal/secret_altar/ghosts

function luigis_mansion:room/normal/door/curved_hallway_secret_altar