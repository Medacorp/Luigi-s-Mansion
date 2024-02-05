scoreboard players set @s StunTime 2
execute as @a[tag=same_room] run function luigis_mansion:entities/ghost/find_vacuumers
execute unless entity @a[tag=vacuuming_this_ghost,limit=1] run scoreboard players set @s StunTime 0
execute unless entity @a[tag=vacuuming_this_ghost,limit=1] run tag @s remove hurt
execute if entity @s[tag=!in_vacuum,tag=!dying] run tag @a[tag=vacuuming_this_ghost] remove vacuuming_this_ghost
execute if entity @s[tag=!in_vacuum,tag=!dying] if score #debug_messages Selected matches 2 run tellraw @a {"type":"translatable","translate":"luigis_mansion:message.debug.format","with":[{"type":"translatable","translate":"luigis_mansion:message.debug","color":"gold"},{"type":"translatable","translate":"luigis_mansion:message.debug.ghost_escape.vacuum"}]}
execute if entity @s[tag=!in_vacuum,tag=!dying] run data modify entity @s ArmorItems[3].tag.luigis_mansion.attacked_by set value []