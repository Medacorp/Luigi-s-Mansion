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
execute if entity @s[tag=!purple,tag=large_flame] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 92
execute if entity @s[tag=purple,tag=large_flame] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 93

execute if entity @s[tag=!purple,tag=!large_flame] unless entity @s[tag=was_lit,tag=!was_purple] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 5
execute if entity @s[tag=purple,tag=!large_flame] unless entity @s[tag=was_lit,tag=was_purple] run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 6

execute if entity @s[tag=!lit] run data modify entity @s ArmorItems[3].id set value "minecraft:stone_button"
execute if entity @s[tag=lit] run data modify entity @s ArmorItems[3].id set value "minecraft:diamond_pickaxe"
tag @s remove was_lit
tag @s remove was_purple
tag @s[tag=lit] add was_lit
tag @s[tag=purple] add was_purple
scoreboard players add @s[tag=lit,tag=large_flame] ActionTime 1
tag @s[tag=lit,scores={ActionTime=40}] remove was_lit
tag @s[tag=lit,scores={ActionTime=40}] remove large_flame
tag @s[tag=!lit] remove large_flame
scoreboard players reset @s[tag=!large_flame] ActionTime