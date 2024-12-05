execute unless score #astral_hall Ticking matches 1 run function #luigis_mansion:room/normal/astral_hall/load
execute as @e[tag=player,x=660,y=19,z=-93,dx=12,dy=7,dz=22] unless entity @s[scores={Room=45}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=660,y=19,z=-93,dx=12,dy=7,dz=22] Room 45
#todelete - old furniture
scoreboard players set #temp Room 45
#/todelete

execute as @a[scores={Room=45}] run function luigis_mansion:room/normal/astral_hall/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/normal/astral_hall/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=45},limit=1] run function luigis_mansion:room/normal/astral_hall/ghosts