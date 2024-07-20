scoreboard players set @s[tag=!pulled_last_tick] Damage 1
tag @s remove pulled_last_tick
tag @s[scores={Damage=1}] add pulled_last_tick
scoreboard players set @s Invulnerable 0
execute if entity @s[scores={Damage=1..}] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"dragged"},amount:1}
execute if entity @s[scores={Damage=1..}] as @e[tag=ghost,tag=being_vacuumed,scores={ErrorTime=10..},sort=random,limit=1] run data modify storage luigis_mansion:data damage.attacker set from entity @s UUID
execute if entity @s[scores={Damage=1..}] run function luigis_mansion:entities/player/damage
scoreboard players reset @s Damage
scoreboard players set @s Invulnerable 0