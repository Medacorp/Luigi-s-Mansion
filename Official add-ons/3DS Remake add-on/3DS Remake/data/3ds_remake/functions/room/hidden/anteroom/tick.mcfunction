execute unless score #anteroom Ticking matches 1 run function #3ds_remake:room/hidden/anteroom/load
execute as @a[x=683,y=17,z=22,dx=12,dy=9,dz=21] unless entity @s[scores={Room=4}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=683,y=17,z=22,dx=12,dy=9,dz=21] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 4

execute as @a[scores={Room=4}] run function 3ds_remake:room/hidden/anteroom/tick_per_player

function #3ds_remake:room/hidden/anteroom/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=4},limit=1] run function 3ds_remake:room/hidden/anteroom/ghosts