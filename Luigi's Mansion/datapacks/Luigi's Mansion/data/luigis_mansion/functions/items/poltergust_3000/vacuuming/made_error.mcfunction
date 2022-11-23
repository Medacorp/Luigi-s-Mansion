scoreboard players add @s VacuumErrors 1
execute if score #debug_messages Selected matches 1.. run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.vacuum_error","with":[{"selector":"@s"}]}]}
scoreboard players set @s[scores={VacuumErrors=10..}] Invulnerable 0
execute if entity @s[scores={VacuumErrors=10..}] positioned ^ ^ ^1 run function luigis_mansion:entities/player/knockback/large