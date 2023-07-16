scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..252},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
execute if entity @s[scores={Dialog=1}] as @a[tag=same_room] run function luigis_mansion:other/music/set/non_overwritten_silence
execute if entity @s[scores={Dialog=1}] run stopsound @a music
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:music.marios_painting_repeat music @a ~ ~ ~ 1000
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a Music 253
execute if entity @s[scores={Dialog=1..}] positioned 648 93 25 run function 3ds_remake:entities/player/set_position
execute if entity @s[scores={Dialog=253}] as @a[scores={MusicType=-1}] run function luigis_mansion:other/music/set/silence
execute if entity @s[scores={Dialog=253},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={Dialog=253}] remove marios_painting_repeat
execute if entity @s[scores={Dialog=253}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {saw_mario_again:1b}
scoreboard players set @s[scores={Dialog=253}] Dialog 0