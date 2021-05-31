scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] run stopsound @a music
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:music.marios_painting music @a ~ ~ ~ 1000
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a MusicType -1
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a Music 480
execute if entity @s[scores={Dialog=340}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mario","color":"green"},{"translate":"luigis_mansion:dialog.marios_painting.1"}]}
execute if entity @s[scores={Dialog=420}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"luigis_mansion:dialog.marios_painting.2"}]}
execute if entity @s[scores={Dialog=480}] run scoreboard players set @a MusicType 0
tag @s[scores={Dialog=480}] remove marios_painting
execute if entity @s[scores={Dialog=480}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {saw_mario:1b}
execute if entity @s[scores={Dialog=480}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {saw_mario_again:1b}
scoreboard players reset @s[scores={Dialog=480}] Dialog