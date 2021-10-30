scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Time 1
execute if entity @s[scores={Time=1}] run stopsound @a[scores={Room=67}] music
execute if entity @s[scores={Time=1}] run scoreboard players set @a[scores={Room=67}] Music 160
execute if entity @s[scores={Time=1}] run fill 690 3 15 688 6 15 minecraft:moving_piston
execute if entity @s[scores={Time=1}] run fill 690 3 16 688 7 19 minecraft:water[level=8] replace minecraft:water
execute if entity @s[scores={Time=1}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {closed_pipe:1b}
execute if entity @s[scores={Time=1}] run playsound luigis_mansion:music.solve_puzzle music @a[scores={Room=67}] ~ ~ ~ 10000
execute if entity @s[scores={Time=31}] run playsound luigis_mansion:music.close_pipe music @a[scores={Room=67}] ~ ~ ~ 10000
tag @s[scores={Time=31}] remove close_pipe
scoreboard players reset @s[scores={Time=31}] Time