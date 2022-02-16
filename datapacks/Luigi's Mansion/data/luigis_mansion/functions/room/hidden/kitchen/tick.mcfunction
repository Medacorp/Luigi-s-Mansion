execute unless score #kitchen Ticking matches 1 run function #luigis_mansion:room/hidden/kitchen/load
execute as @a[gamemode=!spectator,x=697,y=10,z=-77,dx=14,dy=8,dz=31] unless entity @s[scores={Room=27}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=697,y=10,z=-77,dx=14,dy=8,dz=31] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 27
scoreboard players set #temp Room 27

execute as @a[gamemode=!spectator,scores={Room=27}] run function luigis_mansion:room/hidden/kitchen/tick_per_player

function #luigis_mansion:room/hidden/kitchen/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=27},limit=1] run function luigis_mansion:room/hidden/kitchen/ghosts

function luigis_mansion:room/hidden/door/dining_room_kitchen
function luigis_mansion:room/hidden/door/kitchen_boneyard
