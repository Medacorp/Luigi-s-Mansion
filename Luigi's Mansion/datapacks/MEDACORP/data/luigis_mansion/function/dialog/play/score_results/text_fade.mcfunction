tag @s[tag=fade_out] remove fade_in
execute store result score #temp Time run data get entity @s text_opacity
execute if entity @s[tag=fade_in] unless score #temp Time matches -15..-1 run scoreboard players add #temp Time 15
execute if entity @s[tag=fade_in] if score #temp Time matches -15..-1 run scoreboard players set #temp Time -1
execute if entity @s[tag=fade_out] unless score #temp Time matches 0..14 run scoreboard players remove #temp Time 15
execute if entity @s[tag=fade_out] if score #temp Time matches 0..14 run scoreboard players set #temp Time 0
execute if score #temp Time matches 128.. run scoreboard players remove #temp Time 255
execute if score #temp Time matches ..-129 run scoreboard players add #temp Time 255
execute store result entity @s text_opacity byte 1 run scoreboard players get #temp Time
execute if score #temp Time matches -1 run tag @s[tag=fade_in] remove fade_in
execute if score #temp Time matches 0 run tag @s[tag=fade_out] add remove_from_existence