execute unless score #hallway_1 Ticking matches 1 run function #e3_demo:room/original/hallway_1/load
execute as @a[x=735,y=10,z=-2,dx=7,dy=16,dz=21] unless entity @s[x=743,y=10,z=-2,dx=15,dy=16,dz=21] unless entity @s[scores={Room=2}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=735,y=10,z=-2,dx=7,dy=16,dz=21] unless entity @s[x=743,y=10,z=-2,dx=15,dy=16,dz=21] run scoreboard players set @s Room 2
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 2
#/todelete

execute as @a[scores={Room=2}] run function e3_demo:room/original/hallway_1/tick_per_player

execute unless data storage luigis_mansion:data dialogs[{room:1}] unless data storage luigis_mansion:data current_state.current_data{obtained_keys:["living_room"]} unless entity @e[nbt={ArmorItems:[{components:{"minecraft:custom_data":{item:{namespace:"luigis_mansion",id:"key"},variant:"living_room"}}}]},limit=1] if entity @e[x=736,y=19,z=8,dx=0,dy=3,dz=1,tag=door,scores={AnimationProgress=39}] run playsound luigis_mansion:entity.ghost.mumble hostile @a 751.0 13 9.0 3
execute unless data storage luigis_mansion:data dialogs[{room:1}] unless data storage luigis_mansion:data current_state.current_data{obtained_keys:["living_room"]} unless entity @e[nbt={ArmorItems:[{components:{"minecraft:custom_data":{item:{namespace:"luigis_mansion",id:"key"},variant:"living_room"}}}]},limit=1] if entity @e[x=736,y=19,z=8,dx=0,dy=3,dz=1,tag=door,scores={AnimationProgress=39}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"first_key"},room:1,progress:0}

function #e3_demo:room/original/hallway_1/interactions/room

scoreboard players set #temp Room 2
execute as @a[tag=!pause_dialog] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,tag=!spectator,limit=1] run function e3_demo:room/original/hallway_1/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=same_room] remove exact_same_room

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.hallway_1.time_spent_in
execute if data storage luigis_mansion:data {found_e_gadd:1b} if entity @a[tag=!pause_dialog,scores={Room=2},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.hallway_1{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.hallway_1.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time