scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {chauncey_cried:1b}
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:entity.chauncey.cutscene_scream hostile @a 729 21 66 3
execute if entity @s[scores={Dialog=20}] run stopsound @a music
execute if entity @s[scores={Dialog=20}] run scoreboard players set @a Music 120
execute if entity @s[scores={Dialog=21}] run playsound luigis_mansion:furniture.door.chauncey music @a ~ ~ ~ 1000
tag @s[scores={Dialog=140}] remove chauncey_cry
scoreboard players set @s[scores={Dialog=140}] Dialog 0
