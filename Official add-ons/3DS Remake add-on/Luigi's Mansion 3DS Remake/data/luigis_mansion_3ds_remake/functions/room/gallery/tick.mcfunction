execute unless score #3ds_gallery Ticking matches 1 run function #luigis_mansion_3ds_remake:room/gallery/load
execute as @a[gamemode=!spectator,x=733,y=-1,z=-60,dx=43,dy=27,dz=44] unless entity @s[scores={Room=-5}] run scoreboard players set @s LastRoom -5
execute as @e[x=733,y=-1,z=-60,dx=43,dy=27,dz=44] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room -5
scoreboard players set #temp Room -5

execute as @a[scores={Room=-5}] run function luigis_mansion_3ds_remake:room/gallery/tick_per_player

function #luigis_mansion_3ds_remake:room/gallery/interactions/room