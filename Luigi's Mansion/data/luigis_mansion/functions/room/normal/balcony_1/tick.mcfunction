execute unless score #balcony_1 Ticking matches 1 run function #luigis_mansion:room/normal/balcony_1/load
execute as @a[x=672,y=111,z=37,dx=8,dy=6,dz=7] unless entity @s[scores={Room=5}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=672,y=111,z=37,dx=8,dy=6,dz=7] run scoreboard players set @s Room 5

execute as @a[gamemode=!spectator,x=674,y=111,z=39,dx=4,dy=6,dz=3] run function luigis_mansion:room/normal/balcony_1/tick_per_player

function #luigis_mansion:room/normal/balcony_1/interactions/room

function luigis_mansion:room/normal/balcony_1/ghosts

function luigis_mansion:room/normal/door/wardrobe_room_balcony_1