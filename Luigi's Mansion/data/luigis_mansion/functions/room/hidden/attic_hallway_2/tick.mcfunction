execute unless score #attic_hallway_2 Ticking matches 1 run function #luigis_mansion:room/hidden/attic_hallway_2/load
execute as @a[gamemode=!spectator,x=723,y=28,z=-33,dx=40,dy=8,dz=8] unless entity @s[scores={Room=43}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=723,y=28,z=-33,dx=40,dy=8,dz=8] run scoreboard players set @s Room 43
tag @e[tag=ghost,scores={Room=43}] add no_hidden_move

execute as @a[gamemode=!spectator,x=723,y=28,z=-33,dx=40,dy=8,dz=8] run function luigis_mansion:room/hidden/attic_hallway_2/tick_per_player

function #luigis_mansion:room/hidden/attic_hallway_2/interactions/room

stopsound @a[scores={Room=43,HallwayNoise=0}] ambient luigis_mansion:block.telephone.ring
execute unless entity @a[tag=toad_5_dialog,limit=1] unless entity @a[tag=uncle_grimmly_dialog,limit=1] if entity @a[tag=blackout,limit=1] unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_3:1b} positioned 752 29 -26 run playsound luigis_mansion:block.telephone.ring ambient @a[scores={Room=43,HallwayNoise=0}] ~ ~ ~ 1
execute unless entity @a[tag=toad_5_dialog,limit=1] unless entity @a[tag=uncle_grimmly_dialog,limit=1] if entity @a[tag=blackout,limit=1] unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_3:1b} run scoreboard players set @a[scores={Room=43,HallwayNoise=0}] HallwayNoise 40

function luigis_mansion:room/hidden/attic_hallway_2/ghosts

function luigis_mansion:room/hidden/door/balcony_2_attic_hallway_2
function luigis_mansion:room/hidden/door/attic_hallway_2_telephone_room
function luigis_mansion:room/hidden/door/attic_hallway_2_armory