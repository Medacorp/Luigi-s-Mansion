execute unless entity @s[scores={KnockbackTime=1..}] unless entity @s[scores={ScareType=1..,ScareTime=1..}] run effect give @s minecraft:slowness 1 9 true
execute unless entity @s[scores={KnockbackTime=1..}] unless entity @s[scores={ScareType=1..,ScareTime=1..}] run scoreboard players set @s ScareTime 20
execute unless entity @s[scores={KnockbackTime=1..}] unless entity @s[scores={ScareType=1,ScareTime=1..}] run scoreboard players reset @s MaxHealthTime
execute unless entity @s[scores={KnockbackTime=1..}] if entity @s[scores={ScareType=2,ScareTime=1..}] run function luigis_mansion:entities/player/scare_bashed
execute unless entity @s[scores={KnockbackTime=1..}] unless entity @s[scores={ScareType=1..,ScareTime=1..}] run scoreboard players set @s ScareType 1