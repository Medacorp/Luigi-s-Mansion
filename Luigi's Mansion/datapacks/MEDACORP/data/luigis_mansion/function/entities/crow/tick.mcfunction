execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall

data modify storage luigis_mansion:data macro set value {name:"crow",passive:{namespace:"luigis_mansion",id:"crow"}}
execute store result storage luigis_mansion:data macro.id int 1 run scoreboard players get @s PassiveNr
function luigis_mansion:animations/passive with storage luigis_mansion:data macro