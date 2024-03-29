execute unless score #astral_hall Ticking matches 1 run function #luigis_mansion:room/hidden/astral_hall/load
execute as @a[x=660,y=17,z=86,dx=12,dy=9,dz=22] unless entity @s[scores={Room=45}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=660,y=17,z=86,dx=12,dy=9,dz=222] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 45

execute as @a[scores={Room=45}] run function luigis_mansion:room/hidden/astral_hall/tick_per_player

function #luigis_mansion:room/hidden/astral_hall/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=45},limit=1] run function luigis_mansion:room/hidden/astral_hall/ghosts