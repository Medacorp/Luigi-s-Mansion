teleport @s ~ ~ ~ ~-2 ~
execute positioned ^ ^ ^2.5 rotated as @s run teleport @s ^ ^ ^-2.5 ~ ~

execute if entity @s[tag=!remove_from_existence,tag=!dead] unless data storage luigis_mansion:data dialogs[{room:53}] as @e[tag=luigi,distance=..2,limit=1] run function 3ds_remake:entities/boolossus/ai/mansion/hidden/trigger_dialog