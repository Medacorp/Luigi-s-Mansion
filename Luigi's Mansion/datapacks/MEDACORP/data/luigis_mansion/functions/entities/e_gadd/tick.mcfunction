execute if entity @s[tag=!no_ai] run function luigis_mansion:entities/e_gadd/ai

execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall

data modify storage luigis_mansion:data macro set value {name:"e_gadd",passive:{namespace:"luigis_mansion",id:"e_gadd"}}
execute store result storage luigis_mansion:data macro.id int 1 run scoreboard players get @s PassiveNr
function luigis_mansion:animations/e_gadd with storage luigis_mansion:data macro