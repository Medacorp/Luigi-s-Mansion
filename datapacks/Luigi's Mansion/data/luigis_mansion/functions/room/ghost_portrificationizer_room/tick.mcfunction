execute unless score #ghost_portrificationizer_room Ticking matches 1 run function #luigis_mansion:room/ghost_portrificationizer_room/load
execute as @a[gamemode=!spectator,x=764,y=75,z=-15,dx=14,dy=8,dz=38] unless entity @s[scores={Room=-3}] run scoreboard players set @s LastRoom -3
execute as @e[tag=!spectator,x=764,y=75,z=-15,dx=14,dy=8,dz=38] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room -3
scoreboard players set #temp Room -3

execute as @a[gamemode=!spectator,scores={Room=-3}] run function luigis_mansion:room/ghost_portrificationizer_room/tick_per_player

setblock 772 77 1 minecraft:lever[face=wall,facing=east,powered=true]
setblock 772 77 -1 minecraft:lever[face=wall,facing=east,powered=true]
setblock 768 77 1 minecraft:lever[face=wall,facing=west,powered=true]
setblock 768 77 -1 minecraft:lever[face=wall,facing=west,powered=true]

function #luigis_mansion:room/ghost_portrificationizer_room/interactions/room