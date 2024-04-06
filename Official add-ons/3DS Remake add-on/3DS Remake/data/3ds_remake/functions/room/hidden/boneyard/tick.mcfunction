execute unless score #boneyard Ticking matches 1 run function #3ds_remake:room/hidden/boneyard/load
execute as @a[x=672,y=101,z=37,dx=13,dy=7,dz=19] unless entity @s[scores={Room=28}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[x=672,y=101,z=37,dx=13,dy=7,dz=19] Room 28

execute as @a[scores={Room=28}] run function 3ds_remake:room/hidden/boneyard/tick_per_player

function #3ds_remake:room/hidden/boneyard/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=28},tag=!spectator,limit=1] run function 3ds_remake:room/hidden/boneyard/ghosts