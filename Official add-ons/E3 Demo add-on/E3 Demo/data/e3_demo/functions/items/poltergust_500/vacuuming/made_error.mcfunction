execute if score #e_gadd_amiibo Selected matches 0 run scoreboard players add @s VacuumErrors 1
execute if score #e_gadd_amiibo Selected matches 1 run scoreboard players add @s[scores={Room=..0}] VacuumErrors 1
execute if score #debug_messages Selected matches 2.. run tellraw @a {"type":"translatable","translate":"luigis_mansion:message.debug.format","with":[{"type":"translatable","translate":"luigis_mansion:message.debug","color":"gold"},{"type":"translatable","translate":"luigis_mansion:message.debug.vacuum_error","with":[{"type":"selector","selector":"@s"}]}]}
scoreboard players set @s[scores={VacuumErrors=10..}] Invulnerable 0
execute if entity @s[scores={VacuumErrors=10..}] positioned ^ ^ ^1 run function luigis_mansion:entities/player/knockback/large