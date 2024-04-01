execute if entity @s[tag=mysterious_power] run function luigis_mansion:entities/boolossus/ai/mansion/normal/mysterious_power
execute if entity @s[tag=!mysterious_power,scores={Room=53}] run function luigis_mansion:entities/boolossus/ai/mansion/hidden/balcony
execute if entity @s[tag=!mysterious_power,scores={Room=75},tag=!intro_done,tag=!split] run function luigis_mansion:entities/boolossus/battle_intro/hidden
execute if entity @s[tag=!mysterious_power,scores={Room=75},tag=intro_done,tag=!split] run function luigis_mansion:entities/boolossus/ai/mansion/hidden/merged
execute if entity @s[tag=!mysterious_power,scores={Room=75},tag=split] run function luigis_mansion:entities/boolossus/ai/mansion/normal/split