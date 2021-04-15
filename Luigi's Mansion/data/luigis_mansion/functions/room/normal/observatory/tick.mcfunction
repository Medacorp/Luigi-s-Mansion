execute unless score #observatory Ticking matches 1 run function #luigis_mansion:room/normal/observatory/load
execute as @a[x=671,y=111,z=-42,dx=12,dy=6,dz=12] unless entity @s[scores={Room=36}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=671,y=111,z=-42,dx=12,dy=6,dz=12] run scoreboard players set @s Room 36
execute as @a[x=667,y=111,z=-103,dx=16,dy=6,dz=61] unless entity @s[scores={Room=36}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=667,y=111,z=-103,dx=16,dy=6,dz=61] run scoreboard players set @s Room 36

execute as @a[gamemode=!spectator,x=673,y=111,z=-42,dx=8,dy=6,dz=10] run function luigis_mansion:room/normal/observatory/tick_per_player
execute as @a[gamemode=!spectator,x=669,y=111,z=-101,dx=12,dy=6,dz=58] unless entity @s[x=673,y=111,z=-42,dx=8,dy=6,dz=10] run function luigis_mansion:room/normal/observatory/tick_per_player

execute as @a[x=675.5,y=111,z=-37.5,distance=..0.7,y_rotation=135..-135,limit=1] unless data storage luigis_mansion:data current_state.current_data.technical_data{observatory_destroyed:1b} unless entity @a[tag=observatory_dialog,limit=1] run tag @s add observatory_dialog

function #luigis_mansion:room/normal/observatory/interactions/room

function luigis_mansion:room/normal/observatory/ghosts

function luigis_mansion:room/normal/door/astral_hall_observatory