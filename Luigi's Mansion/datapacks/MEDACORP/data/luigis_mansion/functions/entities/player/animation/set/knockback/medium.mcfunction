execute if entity @s[scores={Invulnerable=0}] unless entity @s[scores={Animation=27..33}] run function luigis_mansion:entities/player/poltergust_breakage
execute if entity @s[scores={Invulnerable=0}] unless entity @s[scores={Animation=27..33}] run scoreboard players set @s Sound 0
execute if entity @s[scores={Invulnerable=0}] unless entity @s[scores={Animation=27..33}] run scoreboard players set @s IdleTime -21
execute if entity @s[scores={Invulnerable=0}] unless entity @s[scores={Animation=27..33}] run summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"]}
execute if entity @s[scores={Invulnerable=0}] unless entity @s[scores={Animation=27..33}] store result score @s KnockbackX run data get entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[0] 100
execute if entity @s[scores={Invulnerable=0}] unless entity @s[scores={Animation=27..33}] store result score @s KnockbackZ run data get entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[2] 100
execute if entity @s[scores={Invulnerable=0}] unless entity @s[scores={Animation=27..33}] run kill @e[type=minecraft:marker,tag=temp,limit=1]
execute if entity @s[scores={Invulnerable=0}] unless entity @s[scores={Animation=27..33}] run tag @s remove forward_knockback
execute if entity @s[scores={Invulnerable=0}] unless entity @s[scores={Animation=27..33}] run scoreboard players set @s Animation 28