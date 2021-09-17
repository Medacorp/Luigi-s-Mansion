execute unless score #balcony_1 Ticking matches 1 run function #luigis_mansion:room/hidden/balcony_1/load
execute as @a[gamemode=!spectator,x=672,y=110,z=-29,dx=8,dy=8,dz=7] unless entity @s[scores={Room=6}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=672,y=110,z=-29,dx=8,dy=8,dz=7] unless entity @s[type=!minecraft:player,tag=!model_piece,scores={Room=-2147483648..}] run scoreboard players set @s Room 6

execute as @a[gamemode=!spectator,scores={Room=6}] run function luigis_mansion:room/normal/balcony_1/tick_per_player

function #luigis_mansion:room/hidden/balcony_1/interactions/room

function luigis_mansion:room/hidden/balcony_1/ghosts

function luigis_mansion:room/hidden/door/wardrobe_room_balcony_1