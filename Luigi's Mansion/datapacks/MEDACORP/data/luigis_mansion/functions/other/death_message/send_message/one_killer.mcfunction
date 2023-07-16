function #luigis_mansion:other/death_message/send_message/one_killer
execute if data storage luigis_mansion:data my_memory.hurt_by.method run tellraw @a {"translate":"luigis_mansion:death.generic.killer","with":[{"selector":"@s"},{"nbt":"my_memory.hurt_by.attacker","storage":"luigis_mansion:data","interpret":true}]}
execute if data storage luigis_mansion:data my_memory.hurt_by{method:"luigis_mansion:generic"} run data remove storage luigis_mansion:data my_memory.hurt_by.method

# To whitelist, simply delete method if it matches the value
execute if data storage luigis_mansion:data my_memory.hurt_by.method if score #debug_messages Selected matches 1 run tellraw @a {"translate":"luigis_mansion:message.debug.format","color":"white","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.unknown_death_message.one_killer","color":"red","with":[{"nbt":"my_memory.hurt_by","storage":"luigis_mansion:data"}]}]}