scoreboard players operation @s GBHChoice = @s GBHDoubleUse
execute unless entity @s[scores={GBHChoice=2}] run scoreboard players set @s[tag=portrait_battle] GBHChoice 5
scoreboard players reset @s UseItem