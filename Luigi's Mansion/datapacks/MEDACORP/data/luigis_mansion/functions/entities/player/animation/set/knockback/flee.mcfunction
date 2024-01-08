execute if entity @s[scores={Invulnerable=0}] unless entity @s[scores={Animation=27..38}] run scoreboard players set @s IdleTime -61
execute if entity @s[scores={Invulnerable=0}] unless entity @s[scores={Animation=27..38}] run scoreboard players set @s Sound 0
execute if entity @s[scores={Invulnerable=0}] unless entity @s[scores={Animation=27..38}] run summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"]}
execute if entity @s[scores={Invulnerable=0}] unless entity @s[scores={Animation=27..38}] store result score @s KnockbackX run data get entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[0] 100
execute if entity @s[scores={Invulnerable=0}] unless entity @s[scores={Animation=27..38}] store result score @s KnockbackZ run data get entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[2] 100
execute if entity @s[scores={Invulnerable=0}] unless entity @s[scores={Animation=27..38}] run kill @e[type=minecraft:marker,tag=temp,limit=1]
execute if entity @s[scores={Invulnerable=0}] unless entity @s[scores={Animation=27..38}] run scoreboard players set @s Animation 36