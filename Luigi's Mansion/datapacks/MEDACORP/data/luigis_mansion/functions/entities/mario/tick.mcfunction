execute if entity @s[tag=!portrificationizing,tag=!no_ai] run function luigis_mansion:entities/mario/ai with entity @s data.mansion
execute if entity @s[tag=portrificationizing,tag=!no_ai,tag=!remove_from_existence] run function luigis_mansion:entities/mario/portrificationizing

execute at @s[scores={LightX=-2147483648..},tag=!portrificationizing] run function luigis_mansion:other/cast_shadow/2_tall

execute if entity @s[tag=!portrificationizing] run data modify storage luigis_mansion:data macro set value {name:"mario",passive:{namespace:"luigis_mansion",id:"mario"}}
execute if entity @s[tag=!portrificationizing] store result storage luigis_mansion:data macro.id int 1 run scoreboard players get @s PassiveNr
execute if entity @s[tag=!portrificationizing] run function luigis_mansion:animations/passive with storage luigis_mansion:data macro