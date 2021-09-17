execute unless score #astral_hall Ticking matches 1 run function #luigis_mansion:room/normal/astral_hall/load
execute as @a[gamemode=!spectator,x=660,y=19,z=-93,dx=12,dy=8,dz=22] unless entity @s[scores={Room=45}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=660,y=19,z=-93,dx=12,dy=8,dz=22] unless entity @s[type=!minecraft:player,tag=!model_piece,scores={Room=-2147483648..}] run scoreboard players set @s Room 45

execute as @a[gamemode=!spectator,scores={Room=45}] run function luigis_mansion:room/normal/astral_hall/tick_per_player

function #luigis_mansion:room/normal/astral_hall/interactions/room

function luigis_mansion:room/normal/astral_hall/ghosts

function luigis_mansion:room/normal/door/hallway_11_astral_hall
function luigis_mansion:room/normal/door/astral_hall_observatory