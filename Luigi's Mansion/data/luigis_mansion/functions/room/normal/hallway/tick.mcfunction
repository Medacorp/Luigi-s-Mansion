execute unless score #hallway Ticking matches 1 run function #luigis_mansion:room/normal/hallway/load
execute as @a[x=698,y=111,z=-42,dx=8,dy=15,dz=26] unless entity @s[scores={Room=31}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=698,y=111,z=-42,dx=8,dy=15,dz=26] run scoreboard players set @s Room 31
execute as @a[x=698,y=111,z=-42,dx=8,dy=6,dz=40] unless entity @s[scores={Room=31}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=698,y=111,z=-42,dx=8,dy=6,dz=40] run scoreboard players set @s Room 31
execute as @a[x=664,y=111,z=-10,dx=42,dy=6,dz=8] unless entity @s[scores={Room=31}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=664,y=111,z=-10,dx=42,dy=6,dz=8] run scoreboard players set @s Room 31
execute as @a[x=664,y=111,z=-17,dx=8,dy=6,dz=42] unless entity @s[scores={Room=31}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=664,y=111,z=-17,dx=8,dy=6,dz=42] run scoreboard players set @s Room 31
execute as @a[x=653,y=111,z=17,dx=19,dy=6,dz=8] unless entity @s[scores={Room=31}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=653,y=111,z=17,dx=19,dy=6,dz=8] run scoreboard players set @s Room 31
tag @e[tag=ghost,scores={Room=31}] add hallway

execute as @a[gamemode=!spectator,x=700,y=111,z=-40,dx=4,dy=15,dz=22] run function luigis_mansion:room/normal/hallway/tick_per_player
execute as @a[gamemode=!spectator,x=700,y=111,z=-40,dx=4,dy=6,dz=36] unless entity @s[x=700,y=111,z=-40,dx=4,dy=15,dz=22] run function luigis_mansion:room/normal/hallway/tick_per_player
execute as @a[gamemode=!spectator,x=666,y=111,z=-8,dx=38,dy=6,dz=4] unless entity @s[x=700,y=111,z=-40,dx=4,dy=6,dz=36] unless entity @s[x=700,y=111,z=-40,dx=4,dy=15,dz=22] run function luigis_mansion:room/normal/hallway/tick_per_player
execute as @a[gamemode=!spectator,x=666,y=111,z=-15,dx=4,dy=6,dz=38] unless entity @s[x=666,y=111,z=-8,dx=38,dy=6,dz=4] unless entity @s[x=700,y=111,z=-40,dx=4,dy=6,dz=36] unless entity @s[x=700,y=111,z=-40,dx=4,dy=15,dz=22] run function luigis_mansion:room/normal/hallway/tick_per_player
execute as @a[gamemode=!spectator,x=655,y=111,z=19,dx=15,dy=6,dz=4] unless entity @s[x=666,y=111,z=-15,dx=4,dy=6,dz=38] unless entity @s[x=666,y=111,z=-8,dx=38,dy=6,dz=4] unless entity @s[x=700,y=111,z=-40,dx=4,dy=6,dz=36] unless entity @s[x=700,y=111,z=-40,dx=4,dy=15,dz=22] run function luigis_mansion:room/normal/hallway/tick_per_player

function #luigis_mansion:room/normal/hallway/interactions/room

function luigis_mansion:room/normal/hallway/ghosts

function luigis_mansion:room/normal/door/main_stairs_hallway
function luigis_mansion:room/normal/door/hallway_washroom_2
function luigis_mansion:room/normal/door/hallway_bathroom_2
function luigis_mansion:room/normal/door/hallway_nanas_room
function luigis_mansion:room/normal/door/hallway_astral_hall
function luigis_mansion:room/normal/door/hallway_safari_room
function luigis_mansion:room/normal/door/hallway_sealed_room
function luigis_mansion:room/normal/door/hallway_sitting_room