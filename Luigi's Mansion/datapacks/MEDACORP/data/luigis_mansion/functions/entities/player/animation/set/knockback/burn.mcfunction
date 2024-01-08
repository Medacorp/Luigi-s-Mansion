execute if entity @s[scores={Invulnerable=0}] unless entity @s[scores={Animation=27..33}] run function luigis_mansion:entities/player/poltergust_breakage
execute if entity @s[scores={Invulnerable=0}] unless entity @s[scores={Animation=27..33}] run scoreboard players set @s Sound 0
execute if entity @s[scores={Invulnerable=0}] unless entity @s[scores={Animation=27..33}] run scoreboard players set @s IdleTime -61
execute if entity @s[scores={Invulnerable=0}] unless entity @s[scores={Animation=27..33}] run scoreboard players set @s Animation 30