execute store result score #temp Time run data get storage luigis_mansion:data my_memory.revived_by
execute as @a if score @s ID = #temp Time run tag @s add reviver
execute if entity @e[tag=reviver,limit=1] run data modify storage luigis_mansion:data my_memory.revived_by set value '{"selector":"@e[tag=reviver,limit=1]"}'