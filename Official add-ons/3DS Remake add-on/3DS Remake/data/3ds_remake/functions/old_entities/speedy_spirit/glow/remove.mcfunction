execute if entity @s[scores={Glowing=10..19}] run function 3ds_remake:old_entities/speedy_spirit/glow/remove/light_1
execute if entity @s[scores={Glowing=20..29}] run function 3ds_remake:old_entities/speedy_spirit/glow/remove/light_2
execute if entity @s[scores={Glowing=30..39}] run function 3ds_remake:old_entities/speedy_spirit/glow/remove/light_1
scoreboard players set @s Glowing 0