scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] run stopsound @a[scores={Room=67}] music
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a[scores={Room=67}] Music 160
execute if entity @s[scores={Dialog=1}] run fill 688 3 0 690 6 0 minecraft:moving_piston
execute if entity @s[scores={Dialog=1}] run fill 688 7 -1 699 7 -4 minecraft:water[level=8] replace minecraft:water
execute if entity @s[scores={Dialog=1}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {closed_pipe:1b}
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:music.solve_puzzle music @a[scores={Room=67}] ~ ~ ~ 10000
execute if entity @s[scores={Dialog=31}] run playsound luigis_mansion:music.close_pipe music @a[scores={Room=67}] ~ ~ ~ 10000
tag @s[scores={Dialog=31}] remove close_pipe
scoreboard players set @s[scores={Dialog=31}] Dialog 0