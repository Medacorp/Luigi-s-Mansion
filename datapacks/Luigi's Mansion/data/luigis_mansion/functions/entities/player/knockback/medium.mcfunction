execute if entity @s[scores={Invulnerable=0}] unless entity @s[scores={KnockbackType=1..6}] run function luigis_mansion:entities/player/poltergust_breakage
execute if entity @s[scores={Invulnerable=0}] unless entity @s[scores={KnockbackType=1..6}] run scoreboard players set @s KnockbackTime 20
execute if entity @s[scores={Invulnerable=0}] unless entity @s[scores={KnockbackType=1..6}] run summon minecraft:marker ~ ~ ~ {Tags:["temp"]}
execute if entity @s[scores={Invulnerable=0}] unless entity @s[scores={KnockbackType=1..6}] store result score @s KnockbackX run data get entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[0] 100
execute if entity @s[scores={Invulnerable=0}] unless entity @s[scores={KnockbackType=1..6}] store result score @s KnockbackZ run data get entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[2] 100
execute if entity @s[scores={Invulnerable=0}] unless entity @s[scores={KnockbackType=1..6}] run kill @e[type=minecraft:marker,tag=temp,limit=1]
execute if entity @s[scores={Invulnerable=0}] unless entity @s[scores={KnockbackType=1..6}] run scoreboard players set @s KnockbackType 2