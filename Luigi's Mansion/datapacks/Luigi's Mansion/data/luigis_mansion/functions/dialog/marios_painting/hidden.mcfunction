scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..479,IdleTime=0..},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
execute if entity @s[scores={Dialog=1}] as @a[tag=same_room] run function luigis_mansion:other/music/set/non_overwritten_silence
execute if entity @s[scores={Dialog=1}] run function luigis_mansion:other/music/set/non_overwritten_silence
execute if entity @s[scores={Dialog=1}] run stopsound @a music
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a Music 480
execute if entity @s[scores={Dialog=1..}] positioned 648 93 25 run function luigis_mansion_3ds_remake:entities/player/set_position
execute if entity @s[scores={Dialog=2}] run playsound luigis_mansion:music.marios_painting music @a ~ ~ ~ 1000
execute if entity @s[scores={Dialog=340}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mario","color":"green"},{"translate":"luigis_mansion:dialog.marios_painting.1"}]}
execute if entity @s[scores={Dialog=420}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"luigis_mansion:dialog.marios_painting.2"}]}
execute if entity @s[scores={Dialog=480}] as @a[scores={MusicType=-1}] run function luigis_mansion:other/music/set/silence
execute if entity @s[scores={Dialog=480},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={Dialog=480}] remove marios_painting
execute if entity @s[scores={Dialog=480}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {saw_mario:1b}
execute if entity @s[scores={Dialog=480}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {saw_mario_again:1b}
scoreboard players set @s[scores={Dialog=480}] Dialog 0