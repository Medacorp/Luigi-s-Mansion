execute unless score #ceramics_studio Ticking matches 1 run function #luigis_mansion:room/hidden/ceramics_studio/load
execute as @a[gamemode=!spectator,x=696,y=28,z=-66,dx=17,dy=8,dz=25] unless entity @s[scores={Room=52}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=696,y=28,z=-66,dx=17,dy=8,dz=25] run scoreboard players set @s Room 52

execute as @a[gamemode=!spectator,x=696,y=28,z=-66,dx=17,dy=8,dz=25] run function luigis_mansion:room/hidden/ceramics_studio/tick_per_player

function #luigis_mansion:room/hidden/ceramics_studio/interactions/room

function luigis_mansion:room/hidden/ceramics_studio/ghosts

function luigis_mansion:room/hidden/door/armory_ceramics_studio