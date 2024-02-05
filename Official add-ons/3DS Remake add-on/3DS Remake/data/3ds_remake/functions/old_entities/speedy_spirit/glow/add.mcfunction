scoreboard players add @s Glowing 1
execute if entity @s[scores={Glowing=10}] run function 3ds_remake:old_entities/speedy_spirit/glow/add/light_1
execute if entity @s[scores={Glowing=20}] run function 3ds_remake:old_entities/speedy_spirit/glow/add/light_2
execute if entity @s[scores={Glowing=30}] run function 3ds_remake:old_entities/speedy_spirit/glow/add/light_3
execute if entity @s[scores={Glowing=40}] run function 3ds_remake:old_entities/speedy_spirit/glow/add/light_4
scoreboard players set @s[scores={Glowing=40}] Glowing 0