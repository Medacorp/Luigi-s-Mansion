execute unless score #astral_hall Ticking matches 1 run function #luigis_mansion:room/hidden/astral_hall/load
execute as @a[gamemode=!spectator,x=660,y=19,z=86,dx=12,dy=8,dz=22] unless entity @s[scores={Room=45}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=660,y=19,z=86,dx=12,dy=8,dz=222] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 45
scoreboard players set #temp Room 45

execute as @a[gamemode=!spectator,scores={Room=45}] run function luigis_mansion:room/hidden/astral_hall/tick_per_player

function #luigis_mansion:room/hidden/astral_hall/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=45},limit=1] run function luigis_mansion:room/hidden/astral_hall/ghosts

function luigis_mansion:room/hidden/door/hallway_11_astral_hall
function luigis_mansion:room/hidden/door/astral_hall_observatory