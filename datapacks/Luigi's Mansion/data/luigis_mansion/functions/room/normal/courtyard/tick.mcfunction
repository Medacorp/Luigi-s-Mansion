execute unless score #courtyard Ticking matches 1 run function #luigis_mansion:room/normal/courtyard/load
execute as @a[gamemode=!spectator,x=644,y=101,z=-41,dx=10,dy=8,dz=79] unless entity @s[scores={Room=30}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=644,y=101,z=-41,dx=10,dy=8,dz=79] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 30
scoreboard players set #temp Room 30
tag @e[tag=ghost,scores={Room=30}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=30}] run function luigis_mansion:room/normal/courtyard/tick_per_player

function #luigis_mansion:room/normal/courtyard/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=30},limit=1] run function luigis_mansion:room/normal/courtyard/ghosts

function luigis_mansion:room/normal/door/hallway_6_courtyard
function luigis_mansion:room/normal/door/courtyard_rec_room