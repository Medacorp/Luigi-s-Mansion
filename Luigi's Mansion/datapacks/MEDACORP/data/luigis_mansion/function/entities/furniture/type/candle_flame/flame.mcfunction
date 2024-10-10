tag @s[tag=in_fire] add lit
tag @s[tag=lit,tag=in_vacuum] add extinguish
tag @s[tag=lit,tag=in_dust] add extinguish
tag @s[tag=lit,tag=in_ice] add extinguish
tag @s[tag=extinguish] remove lit
tag @s[tag=extinguish,tag=cannot_extinguish] add large_flame
tag @s remove extinguish
tag @s[tag=!lit,tag=always_burn] add large_flame
tag @s[tag=large_flame] add lit
tag @s[tag=lit,tag=in_water] remove lit

execute if entity @s[tag=!lit,tag=was_lit] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 0
execute if entity @s[tag=lit,tag=!purple,tag=!large_flame] unless entity @s[tag=was_lit,tag=!was_purple] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 1
execute if entity @s[tag=lit,tag=purple,tag=!large_flame] unless entity @s[tag=was_lit,tag=was_purple] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 2
execute if entity @s[tag=!purple,tag=large_flame] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 3
execute if entity @s[tag=purple,tag=large_flame] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 4
tag @s remove was_lit
tag @s remove was_purple
tag @s[tag=lit] add was_lit
tag @s[tag=purple] add was_purple
scoreboard players add @s[tag=lit,tag=large_flame] ActionTime 1
tag @s[tag=lit,scores={ActionTime=40}] remove was_lit
tag @s[tag=lit,scores={ActionTime=40}] remove large_flame
tag @s[tag=!lit] remove large_flame
scoreboard players reset @s[tag=!large_flame] ActionTime