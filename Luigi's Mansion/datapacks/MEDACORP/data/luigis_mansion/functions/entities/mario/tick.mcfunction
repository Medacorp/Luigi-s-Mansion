execute if entity @s[tag=!no_ai] run function luigis_mansion:entities/mario/ai with entity @s data.mansion

execute at @s[scores={LightX=-2147483648..},tag=!portrificationizing] run function luigis_mansion:other/cast_shadow/2_tall

execute if entity @s[tag=!portrificationizing] run data modify storage luigis_mansion:data macro set value {name:"mario",passive:{namespace:"luigis_mansion",id:"mario"}}
execute if entity @s[tag=!portrificationizing] store result storage luigis_mansion:data macro.id int 1 run scoreboard players get @s PassiveNr
execute if entity @s[tag=!portrificationizing] run function luigis_mansion:animations/passive with storage luigis_mansion:data macro