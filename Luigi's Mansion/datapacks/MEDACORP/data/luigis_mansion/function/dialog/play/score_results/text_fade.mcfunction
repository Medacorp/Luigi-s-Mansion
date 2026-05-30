tag @s[tag=fade_out] remove fade_in
execute store result score #temp Time run data get entity @s text_opacity
execute unless score #temp Time matches -1 store result entity @s[tag=fade_in] text_opacity byte 1 run scoreboard players add #temp Time 15
execute store result entity @s[tag=fade_out] text_opacity byte 1 run scoreboard players remove #temp Time 15
execute if score #temp Time matches -1 run tag @s[tag=fade_in] remove fade_in
execute if score #temp Time matches 0 run tag @s[tag=fade_out] add remove_from_existence