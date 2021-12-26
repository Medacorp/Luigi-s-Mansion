execute unless entity @s[scores={KnockbackTime=1..}] unless entity @s[scores={ScareType=2..,ScareTime=22..}] run effect give @s minecraft:slowness 1 9 true
execute unless entity @s[scores={KnockbackTime=1..}] unless entity @s[scores={ScareType=2..,ScareTime=22..}] run scoreboard players set @s ScareTime 51
execute unless entity @s[scores={KnockbackTime=1..}] unless entity @s[scores={ScareType=2..,ScareTime=22..}] run summon minecraft:marker ~ ~ ~ {Tags:["temp"]}
execute unless entity @s[scores={KnockbackTime=1..}] unless entity @s[scores={ScareType=2..,ScareTime=22..}] at @s facing entity @e[type=minecraft:marker,tag=temp] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute unless entity @s[scores={KnockbackTime=1..}] unless entity @s[scores={ScareType=2..,ScareTime=22..}] run kill @e[type=minecraft:marker,tag=temp,limit=1]
execute unless entity @s[scores={KnockbackTime=1..}] unless entity @s[scores={ScareType=2..,ScareTime=22..}] run scoreboard players reset @s MaxHealthTime
execute unless entity @s[scores={KnockbackTime=1..}] unless entity @s[scores={ScareType=2..,ScareTime=22..}] run scoreboard players set @s ScareType 2