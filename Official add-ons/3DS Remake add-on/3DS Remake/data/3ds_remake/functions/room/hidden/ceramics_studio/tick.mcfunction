execute unless score #ceramics_studio Ticking matches 1 run function #3ds_remake:room/hidden/ceramics_studio/load
execute as @a[x=696,y=26,z=56,dx=17,dy=9,dz=25] unless entity @s[scores={Room=65}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=696,y=26,z=56,dx=17,dy=9,dz=25] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 65

execute as @a[scores={Room=65}] run function 3ds_remake:room/hidden/ceramics_studio/tick_per_player

function #3ds_remake:room/hidden/ceramics_studio/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=65},limit=1] run function 3ds_remake:room/hidden/ceramics_studio/ghosts