execute unless score #ghost_portrificationizer_room Ticking matches 1 run function #luigis_mansion:room/ghost_portrificationizer_room/load
execute as @e[tag=player,x=764,y=75,z=-15,dx=14,dy=7,dz=38] unless entity @s[scores={Room=-3}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=764,y=75,z=-15,dx=14,dy=7,dz=38] Room -3
#todelete - old furniture
scoreboard players set #temp Room -3
#/todelete

execute as @a[scores={Room=-3}] run function luigis_mansion:room/ghost_portrificationizer_room/tick_per_player

execute if entity @e[tag=e_gadd,scores={Room=-3},tag=talk] if data storage luigis_mansion:data rooms.ghost_portrificationizer_room{cleared:0b} unless data storage luigis_mansion:data dialogs[{room:-3}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"ghost_portrificationizer_room/talk"},room:-3,progress:-2}
execute if entity @e[tag=e_gadd,scores={Room=-3},tag=talk] if data storage luigis_mansion:data rooms.ghost_portrificationizer_room{cleared:1b} unless data storage luigis_mansion:data dialogs[{room:-3}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"ghost_portrificationizer_room/repeat"},room:-3,progress:0}

setblock 772 77 1 minecraft:lever[face=wall,facing=east,powered=true]
setblock 772 77 -1 minecraft:lever[face=wall,facing=east,powered=true]
setblock 768 77 1 minecraft:lever[face=wall,facing=west,powered=true]
setblock 768 77 -1 minecraft:lever[face=wall,facing=west,powered=true]

#todelete - old furniture
function #luigis_mansion:room/ghost_portrificationizer_room/interactions/room
#/todelete