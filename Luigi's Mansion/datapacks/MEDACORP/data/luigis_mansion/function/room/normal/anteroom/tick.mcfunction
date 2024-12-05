execute unless score #anteroom Ticking matches 1 run function #luigis_mansion:room/normal/anteroom/load
execute as @e[tag=player,x=683,y=19,z=22,dx=12,dy=7,dz=21] unless entity @s[scores={Room=4}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=683,y=19,z=22,dx=12,dy=7,dz=21] Room 4
#todelete - old furniture
scoreboard players set #temp Room 4
#/todelete

execute as @a[scores={Room=4}] run function luigis_mansion:room/normal/anteroom/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/normal/anteroom/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=4},limit=1] run function luigis_mansion:room/normal/anteroom/ghosts