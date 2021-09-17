execute unless score #hallway_19 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_19/load
execute as @a[gamemode=!spectator,x=740,y=28,z=-33,dx=23,dy=8,dz=8] unless entity @s[scores={Room=54}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=740,y=28,z=-33,dx=23,dy=8,dz=8] unless entity @s[type=!minecraft:player,tag=!model_piece,scores={Room=-2147483648..}] run scoreboard players set @s Room 54
tag @e[tag=ghost,scores={Room=54}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=54}] run function luigis_mansion:room/normal/hallway_19/tick_per_player

function #luigis_mansion:room/hidden/hallway_19/interactions/room

stopsound @a[scores={Room=55,RoomNoise=0}] ambient luigis_mansion:block.telephone.ring
execute unless entity @a[tag=toad_5_dialog,limit=1] unless entity @a[tag=uncle_grimmly_dialog,limit=1] if entity @a[tag=blackout,limit=1] unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_3:1b} positioned 752 29 -26 run playsound luigis_mansion:block.telephone.ring ambient @a[scores={Room=55,RoomNoise=0}] ~ ~ ~ 1
execute unless entity @a[tag=toad_5_dialog,limit=1] unless entity @a[tag=uncle_grimmly_dialog,limit=1] if entity @a[tag=blackout,limit=1] unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_3:1b} run scoreboard players set @a[scores={Room=55,RoomNoise=0}] RoomNoise 40

function luigis_mansion:room/hidden/hallway_19/ghosts

function luigis_mansion:room/hidden/door/hallway_19_telephone_room
function luigis_mansion:room/hidden/door/hallway_19_armory