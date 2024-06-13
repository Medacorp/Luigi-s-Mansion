execute if entity @s[scores={Glowing=1..10}] run function 3ds_remake:entities/speedy_spirit/glow/remove/light_1
execute if entity @s[scores={Glowing=11..20}] run function 3ds_remake:entities/speedy_spirit/glow/remove/light_2
execute if entity @s[scores={Glowing=21..30}] run function 3ds_remake:entities/speedy_spirit/glow/remove/light_1
scoreboard players set @s Glowing 0