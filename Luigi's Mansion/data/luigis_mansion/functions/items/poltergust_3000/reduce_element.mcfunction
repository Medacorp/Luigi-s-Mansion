scoreboard players remove @s Element 1
execute if entity @s[scores={Element=0}] run function luigis_mansion:items/poltergust_3000/no_element
scoreboard players reset @s[scores={Element=0}] Element