execute unless score #balcony_2 Ticking matches 1 run function #luigis_mansion:room/hidden/balcony_2/load
execute as @a[gamemode=!spectator,x=653,y=29,z=-23,dx=30,dy=24,dz=80] unless entity @s[scores={Room=53}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=653,y=29,z=-23,dx=30,dy=24,dz=80] unless entity @s[type=!minecraft:player,tag=!model_piece,scores={Room=-2147483648..}] run scoreboard players set @s Room 53

execute as @a[gamemode=!spectator,scores={Room=53}] run function luigis_mansion:room/normal/balcony_2/tick_per_player

function #luigis_mansion:room/hidden/balcony_2/interactions/room

function luigis_mansion:room/hidden/balcony_2/ghosts

function luigis_mansion:room/hidden/door/hallway_17_balcony_2
function luigis_mansion:room/hidden/door/balcony_2_hallway_18