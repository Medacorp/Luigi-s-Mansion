execute if entity @s[tag=mysterious_power] run function 3ds_remake:entities/boolossus/ai/mansion/hidden/mysterious_power
execute if entity @s[tag=!mysterious_power,scores={Room=53}] run function 3ds_remake:entities/boolossus/ai/mansion/hidden/balcony
execute if entity @s[tag=!mysterious_power,scores={Room=75},tag=!intro_done,tag=!split] run function luigis_mansion:entities/boolossus/battle_intro/normal
execute if entity @s[tag=!mysterious_power,scores={Room=75},tag=intro_done,tag=!split] run function 3ds_remake:entities/boolossus/ai/mansion/hidden/merged
execute if entity @s[tag=!mysterious_power,scores={Room=75},tag=split] run function 3ds_remake:entities/boolossus/ai/mansion/hidden/split