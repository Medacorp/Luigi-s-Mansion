execute at @a[tag=flashlight,tag=same_room,tag=!spectator] positioned ^ ^ ^3 run summon minecraft:marker ~ ~ ~ {Tags:["flashlight_target"]}
scoreboard players add @s[scores={ActionTime=40..}] ActionTime 1
execute unless entity @s[scores={ActionTime=0..}] run scoreboard players set @s ActionTime 0
execute positioned ^ ^1.1 ^1.44 if entity @e[type=minecraft:marker,tag=flashlight_target,distance=..3,limit=1] run scoreboard players add @s[scores={ActionTime=..40}] ActionTime 1
execute positioned ^ ^1.1 ^1.44 if entity @e[type=minecraft:marker,tag=flashlight_target,distance=..3,limit=1] if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:furniture.crystal_ball.flash block @a[tag=same_room] ~ ~ ~ 1
execute positioned ^ ^1.1 ^1.44 if entity @e[type=minecraft:marker,tag=flashlight_target,distance=..3,limit=1] if entity @s[scores={ActionTime=10}] run playsound luigis_mansion:furniture.crystal_ball.shine block @a[tag=same_room] ~ ~ ~ 1
execute positioned ^ ^1.1 ^1.44 unless entity @e[type=minecraft:marker,tag=flashlight_target,distance=..3,limit=1] if entity @s[scores={ActionTime=1..40}] run stopsound @a block luigis_mansion:block.crystal_ball.shine
execute positioned ^ ^1.1 ^1.44 unless entity @e[type=minecraft:marker,tag=flashlight_target,distance=..3,limit=1] run scoreboard players set @s[scores={ActionTime=..40}] ActionTime 0
kill @e[type=minecraft:marker,tag=flashlight_target]
execute if entity @s[scores={ActionTime=1..}] positioned ^ ^1.43 ^1.44 run particle minecraft:firework ~ ~ ~ 0.2 0.1 0.2 0 1
tag @s[scores={ActionTime=100}] add visible
execute if entity @s[scores={ActionTime=100}] run playsound luigis_mansion:music.solve_puzzle neutral @a[tag=same_room] ~ ~ ~ 1000
scoreboard players set @s[scores={ActionTime=100}] ClairvoyaSpoke 0
execute if data storage luigis_mansion:data current_state.current_data.technical_data{shown_marios_glove:1b} run scoreboard players add @s[scores={ActionTime=100}] ClairvoyaSpoke 1
execute if data storage luigis_mansion:data current_state.current_data.technical_data{shown_marios_shoe:1b} run scoreboard players add @s[scores={ActionTime=100}] ClairvoyaSpoke 1
execute if data storage luigis_mansion:data current_state.current_data.technical_data{shown_marios_letter:1b} run scoreboard players add @s[scores={ActionTime=100}] ClairvoyaSpoke 1
execute if data storage luigis_mansion:data current_state.current_data.technical_data{shown_marios_star:1b} run scoreboard players add @s[scores={ActionTime=100}] ClairvoyaSpoke 1
execute if data storage luigis_mansion:data current_state.current_data.technical_data{shown_marios_hat:1b} run scoreboard players add @s[scores={ActionTime=100}] ClairvoyaSpoke 1
scoreboard players set @s[scores={ActionTime=100}] ActionTime 0