execute unless entity @s[scores={KnockbackType=1..}] run scoreboard players set @s KnockbackTime 10
execute unless entity @s[scores={KnockbackType=1..}] run scoreboard players set @s Sound 0
execute unless entity @s[scores={KnockbackType=1..}] run summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"]}
execute unless entity @s[scores={KnockbackType=1..}] store result score @s KnockbackX run data get entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[0] 100
execute unless entity @s[scores={KnockbackType=1..}] store result score @s KnockbackZ run data get entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[2] 100
execute unless entity @s[scores={KnockbackType=1..}] run kill @e[type=minecraft:marker,tag=temp,limit=1]
execute unless entity @s[scores={KnockbackType=1..}] run scoreboard players set @s KnockbackType 8