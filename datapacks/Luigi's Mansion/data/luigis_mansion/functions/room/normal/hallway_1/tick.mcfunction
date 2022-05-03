execute unless score #hallway_1 Ticking matches 1 run function #luigis_mansion:room/normal/hallway_1/load
execute as @a[gamemode=!spectator,x=735,y=10,z=-2,dx=7,dy=17,dz=21] unless entity @s[x=743,y=10,z=-2,dx=15,dy=17,dz=21] unless entity @s[scores={Room=2}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=735,y=10,z=-2,dx=7,dy=17,dz=21] unless entity @s[x=743,y=10,z=-2,dx=15,dy=17,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 2
scoreboard players set #temp Room 2
tag @e[tag=ghost,scores={Room=2}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=2}] run function luigis_mansion:room/normal/hallway_1/tick_per_player

execute unless entity @e[type=minecraft:armor_stand,tag=key,tag=parlor,limit=1] unless entity @e[type=minecraft:armor_stand,tag=first_key,limit=1] unless data storage luigis_mansion:data {obtained_parlor_key:1b} if entity @e[x=736,y=20,z=8,dx=0,dy=1,dz=1,tag=door,scores={AnimationProg=39}] run playsound luigis_mansion:entity.ghost.mumble hostile @a 751.0 13 9.0 3
execute unless entity @e[type=minecraft:armor_stand,tag=key,tag=parlor,limit=1] unless entity @e[type=minecraft:armor_stand,tag=first_key,limit=1] unless data storage luigis_mansion:data {obtained_parlor_key:1b} if entity @e[x=736,y=20,z=8,dx=0,dy=1,dz=1,tag=door,scores={AnimationProg=39}] run summon minecraft:armor_stand 751.0 13 9.0 {CustomName:'{"translate":"luigis_mansion:entity.gold_ghost"}',Tags:["first_key"],NoGravity:1b,Invulnerable:1b,Silent:1b,Invisible:1b,DisabledSlots:2039583}

execute as @e[tag=eternal_gold_coin,scores={Room=2}] run scoreboard players add #temp Wave 1
execute if score #temp Wave matches ..7 if data storage luigis_mansion:data {found_e_gadd:1b} run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {hallway_1_money:1b}
scoreboard players reset #temp Wave

function #luigis_mansion:room/normal/hallway_1/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=2}] run function luigis_mansion:room/normal/hallway_1/ghosts