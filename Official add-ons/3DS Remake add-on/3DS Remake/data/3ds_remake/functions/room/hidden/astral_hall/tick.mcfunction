execute unless score #astral_hall Ticking matches 1 run function #3ds_remake:room/hidden/astral_hall/load
execute as @a[x=660,y=19,z=-93,dx=12,dy=7,dz=22] unless entity @s[scores={Room=45}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[x=660,y=19,z=-93,dx=12,dy=7,dz=22] Room 45

execute as @a[scores={Room=45}] run function 3ds_remake:room/hidden/astral_hall/tick_per_player

function #3ds_remake:room/hidden/astral_hall/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=45},tag=!spectator,limit=1] run function 3ds_remake:room/hidden/astral_hall/ghosts