scoreboard players add @s Glowing 1
execute if entity @s[scores={Glowing=1}] run function 3ds_remake:entities/speedy_spirit/glow/add/light_1
execute if entity @s[scores={Glowing=11}] run function 3ds_remake:entities/speedy_spirit/glow/add/light_2
execute if entity @s[scores={Glowing=21}] run function 3ds_remake:entities/speedy_spirit/glow/add/light_3
execute if entity @s[scores={Glowing=31}] run function 3ds_remake:entities/speedy_spirit/glow/add/light_4
scoreboard players set @s[scores={Glowing=40}] Glowing 0