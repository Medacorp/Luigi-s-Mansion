function luigis_mansion:entities/player/memory/get with entity @s
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute unless data storage luigis_mansion:data my_memory.revived_by[0] run function #luigis_mansion:other/revive_message/interpret_reviver
execute if data storage luigis_mansion:data my_memory.revived_by[0] run function luigis_mansion:other/revive_message/get_reviver with storage luigis_mansion:data my_memory
tellraw @a {"type":"translatable","translate":"luigis_mansion:death.revive","with":[{"type":"selector","selector":"@s"},{"type":"nbt","nbt":"my_memory.revived_by","source":"storage","storage":"luigis_mansion:data","interpret":true}]}
data remove storage luigis_mansion:data my_memory

tag @e[tag=reviver,limit=1] remove reviver