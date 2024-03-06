scoreboard players set @s StunTime 2
execute if entity @s[tag=!in_vacuum,tag=!dying] run scoreboard players set @s StunTime 0
execute if entity @s[tag=!in_vacuum,tag=!dying] run tag @s remove hurt
execute if entity @s[tag=!in_vacuum,tag=!dying] if score #debug_messages Selected matches 2 run tellraw @a {"type":"translatable","translate":"luigis_mansion:message.debug.format","with":[{"type":"translatable","translate":"luigis_mansion:message.debug","color":"gold"},{"type":"translatable","translate":"luigis_mansion:message.debug.ghost_escape.vacuum"}]}
execute if entity @s[tag=!in_vacuum,tag=!dying] run data modify entity @s data.attacked_by set value []