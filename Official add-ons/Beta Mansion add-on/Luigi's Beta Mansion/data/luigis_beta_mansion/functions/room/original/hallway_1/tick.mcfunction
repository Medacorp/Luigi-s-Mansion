execute unless score #hallway_1 Ticking matches 1 run function #luigis_beta_mansion:room/original/hallway_1/load
execute as @a[gamemode=!spectator,x=735,y=8,z=-2,dx=7,dy=19,dz=21] unless entity @s[x=743,y=8,z=-2,dx=15,dy=19,dz=21] unless entity @s[scores={Room=2}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=735,y=8,z=-2,dx=7,dy=19,dz=21] unless entity @s[x=743,y=8,z=-2,dx=15,dy=19,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 2
scoreboard players set #temp Room 2
tag @e[tag=ghost,scores={Room=2}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=2}] run function luigis_beta_mansion:room/original/hallway_1/tick_per_player

execute unless entity @e[type=minecraft:armor_stand,tag=key,tag=living_room,limit=1] unless entity @e[type=minecraft:armor_stand,tag=first_key,limit=1] unless data storage luigis_mansion:data {obtained_parlor_key:1b} if entity @e[x=736,y=18,z=8,dx=0,dy=3,dz=1,tag=door,scores={AnimationProg=39}] run playsound luigis_mansion:entity.ghost.mumble hostile @a 751.0 13 9.0 3
execute unless entity @e[type=minecraft:armor_stand,tag=key,tag=living_room,limit=1] unless entity @e[type=minecraft:armor_stand,tag=first_key,limit=1] unless data storage luigis_mansion:data {obtained_parlor_key:1b} if entity @e[x=736,y=18,z=8,dx=0,dy=3,dz=1,tag=door,scores={AnimationProg=39}] run summon minecraft:armor_stand 751.0 13 9.0 {CustomName:'{"translate":"luigis_mansion:entity.gold_ghost"}',Tags:["first_key"],NoGravity:1b,Invulnerable:1b,Silent:1b,Invisible:1b,DisabledSlots:2039583}

function #luigis_beta_mansion:room/original/hallway_1/interactions/room

scoreboard players set #temp Room 2
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_beta_mansion:room/original/hallway_1/ghosts
tag @a[tag=same_room] remove same_room

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.hallway_1.time_spent_in
execute if data storage luigis_mansion:data {found_e_gadd:1b} if entity @a[gamemode=!spectator,scores={Room=2},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.hallway_1{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.hallway_1.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time