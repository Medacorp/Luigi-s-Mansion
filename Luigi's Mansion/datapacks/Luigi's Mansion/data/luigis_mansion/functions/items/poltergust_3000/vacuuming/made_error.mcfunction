scoreboard players add @s VacuumErrors 1
execute if score #debug Selected matches 1 run say [DEBUG] Made a vacuuming mistake.
scoreboard players set @s[scores={VacuumErrors=10..}] Invulnerable 0
execute if entity @s[scores={VacuumErrors=10..}] positioned ^ ^ ^1 run function luigis_mansion:entities/player/knockback/large