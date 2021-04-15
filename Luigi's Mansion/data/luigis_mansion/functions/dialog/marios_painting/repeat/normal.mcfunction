scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] run stopsound @a music
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:music.marios_painting_repeat music @a ~ ~ ~ 1000
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a MusicType -1
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a Music 253
execute if entity @s[scores={Dialog=253}] run scoreboard players set @a MusicType 0
tag @s[scores={Dialog=253}] remove marios_painting_repeat
execute if entity @s[scores={Dialog=253}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {saw_mario_again:1b}
scoreboard players reset @s[scores={Dialog=253}] Dialog