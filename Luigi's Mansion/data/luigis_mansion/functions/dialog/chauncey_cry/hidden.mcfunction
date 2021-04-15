scoreboard players add @s Time 1
execute if entity @s[scores={Time=1}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {chauncey_cried:1b}
execute if entity @s[scores={Time=1}] run playsound luigis_mansion:entity.chauncey.cry hostile @a 705 112 -29 3
execute if entity @s[scores={Time=10}] run playsound luigis_mansion:entity.chauncey.cry hostile @a 705 112 -29 3
execute if entity @s[scores={Time=20}] run stopsound @a music
execute if entity @s[scores={Time=20}] run scoreboard players set @a MusicType -1
execute if entity @s[scores={Time=20}] run scoreboard players set @a Music 120
execute if entity @s[scores={Time=20}] run playsound luigis_mansion:block.door.chauncey music @a ~ ~ ~ 1000
execute if entity @s[scores={Time=140}] as @a run function luigis_mansion:other/music/set/silence
tag @s[scores={Time=140}] remove chauncey_cry
scoreboard players reset @s[scores={Time=140}] Time
