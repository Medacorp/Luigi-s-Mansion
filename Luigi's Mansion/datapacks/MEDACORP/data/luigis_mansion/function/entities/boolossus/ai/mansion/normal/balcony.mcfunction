teleport @s ~ ~ ~ ~-2 ~
execute positioned ^ ^ ^2.5 rotated as @s run teleport @s ^ ^ ^-2.5 ~ ~

execute if entity @s[tag=!remove_from_existence,tag=!dead] unless data storage luigis_mansion:data dialogs[{room:53}] as @a[tag=!spectator,distance=..2,limit=1] run function luigis_mansion:entities/boolossus/ai/mansion/normal/trigger_dialog