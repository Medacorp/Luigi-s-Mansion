execute unless score #astral_hall Ticking matches 1 run function #luigis_mansion:room/hidden/astral_hall/load
execute as @a[x=660,y=19,z=86,dx=12,dy=7,dz=22] unless entity @s[scores={Room=45}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=660,y=19,z=86,dx=12,dy=7,dz=222] Room 45
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 45
#/todelete

execute as @a[scores={Room=45}] run function luigis_mansion:room/hidden/astral_hall/tick_per_player

function #luigis_mansion:room/hidden/astral_hall/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=45},tag=!spectator,limit=1] run function luigis_mansion:room/hidden/astral_hall/ghosts