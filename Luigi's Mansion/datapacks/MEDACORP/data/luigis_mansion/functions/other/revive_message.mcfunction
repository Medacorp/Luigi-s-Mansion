function luigis_mansion:entities/player/memory/get with entity @s
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute store result storage luigis_mansion:data temp int 1 run data get storage luigis_mansion:data my_memory.revived_by
execute store success score #temp Time run data modify storage luigis_mansion:data temp set from storage luigis_mansion:data my_memory.revived_by
data modify storage luigis_mansion:data temp set from storage luigis_mansion:data my_memory.revived_by
data remove storage luigis_mansion:data temp
execute if score #temp Time matches 1.. run function #luigis_mansion:other/revive_message/interpret_reviver
execute if score #temp Time matches 0 run function luigis_mansion:other/revive_message/get_reviver
scoreboard players reset #temp Time
tellraw @a {"type":"translatable","translate":"luigis_mansion:death.revive","with":[{"type":"selector","selector":"@s"},{"type":"nbt","nbt":"my_memory.revived_by","source":"storage","storage":"luigis_mansion:data","interpret":true}]}
data remove storage luigis_mansion:data my_memory

tag @e[tag=reviver,limit=1] remove reviver