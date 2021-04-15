execute unless score #balcony_2 Ticking matches 1 run function #luigis_mansion:room/normal/balcony_2/load
execute as @a[x=653,y=120,z=-42,dx=30,dy=22,dz=80] unless entity @s[scores={Room=42}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=653,y=120,z=-42,dx=30,dy=22,dz=80] run scoreboard players set @s Room 42

execute as @a[gamemode=!spectator,x=655,y=120,z=-40,dx=26,dy=22,dz=76] run function luigis_mansion:room/normal/balcony_2/tick_per_player

function #luigis_mansion:room/normal/balcony_2/interactions/room

function luigis_mansion:room/normal/balcony_2/ghosts

function luigis_mansion:room/normal/door/balcony_2_attic_hallway_2
function luigis_mansion:room/normal/door/attic_hallway_1_balcony_2