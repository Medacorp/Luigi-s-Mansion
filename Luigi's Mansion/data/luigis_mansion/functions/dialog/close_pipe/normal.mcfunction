scoreboard players add @s Time 1
execute if entity @s[scores={Time=1}] run stopsound @a[scores={Room=54}] music
execute if entity @s[scores={Time=1}] run scoreboard players set @a[scores={Room=54}] Music 220
execute if entity @s[scores={Time=2}] run playsound luigis_mansion:music.solve_puzzle music @a[scores={Room=14}] ~ ~ ~ 10000
execute if entity @s[scores={Time=1}] run fill 689 94 -9 687 97 -9 minecraft:moving_piston
execute if entity @s[scores={Time=1}] run fill 687 98 -10 689 98 -13 minecraft:water[level=8] replace minecraft:water
execute if entity @s[scores={Time=1}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {closed_pipe:1b}
execute if entity @s[scores={Time=31}] run playsound luigis_mansion:music.moving_wall music @a[scores={Room=54}] ~ ~ ~ 10000
tag @s[scores={Time=31}] remove close_pipe
scoreboard players reset @s[scores={Time=31}] Time