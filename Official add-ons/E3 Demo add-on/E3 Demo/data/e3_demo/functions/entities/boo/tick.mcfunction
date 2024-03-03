execute if entity @s[tag=!no_ai] run function e3_demo:entities/boo/ai

execute at @s[scores={LightX=-2147483648..},tag=visible] run function luigis_mansion:other/cast_shadow/1_tall

data modify storage luigis_mansion:data macro set value {name:"boo",ghost:{namespace:"luigis_mansion",id:"boo"}}
execute store result storage luigis_mansion:data macro.id int 1 run scoreboard players get @s GhostNr
function luigis_mansion:animations/ghost with storage luigis_mansion:data macro