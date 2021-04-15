execute unless score #courtyard Ticking matches 1 run function #luigis_mansion:room/hidden/courtyard/load
execute as @a[x=644,y=102,z=-23,dx=10,dy=6,dz=79] unless entity @s[scores={Room=26}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=644,y=102,z=-23,dx=10,dy=6,dz=79] run scoreboard players set @s Room 26
tag @e[tag=ghost,scores={Room=26}] add hallway

execute as @a[gamemode=!spectator,x=645,y=102,z=-22,dx=7,dy=6,dz=77] run function luigis_mansion:room/hidden/courtyard/tick_per_player

function #luigis_mansion:room/hidden/courtyard/interactions/room

function luigis_mansion:room/hidden/courtyard/ghosts

function luigis_mansion:room/hidden/door/main_hallway_courtyard
function luigis_mansion:room/hidden/door/courtyard_rec_room