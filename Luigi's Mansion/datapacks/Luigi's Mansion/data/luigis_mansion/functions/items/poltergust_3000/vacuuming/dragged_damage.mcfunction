scoreboard players set @s[tag=!pulled_last_tick] Damage 1
tag @s remove pulled_last_tick
tag @s[scores={Damage=1}] add pulled_last_tick
execute if entity @s[scores={Damage=1..}] run data modify storage luigis_mansion:data damage set value {method:"luigis_mansion:dragged",amount:1,attacker:-1}
execute if entity @s[scores={Damage=1..}] as @e[tag=ghost,tag=being_vacuumed,scores={ErrorTime=10..},sort=random,limit=1] store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s GhostNr
execute if entity @s[scores={Damage=1..}] run function luigis_mansion:entities/player/take_damage
scoreboard players reset @s Damage
scoreboard players set @s Invulnerable 0