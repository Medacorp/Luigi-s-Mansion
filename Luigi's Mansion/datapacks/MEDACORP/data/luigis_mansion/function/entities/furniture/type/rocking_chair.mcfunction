tag @s remove rock
execute positioned ~ ~1.25 ~ if entity @e[tag=ghost,distance=..1,tag=!vanish,scores={StunTime=0}] run tag @s add rock
execute positioned ~ ~1.25 ~ if entity @e[tag=portrait_ghost,distance=..1,tag=!vanish,scores={StunTime=0}] run tag @s add rock
data modify entity @s[tag=rock] data.animation set value {namespace:"luigis_mansion",id:"rocking_chair"}
data modify entity @s[tag=!rock,tag=!was_shaking] data.animation set value {namespace:"luigis_mansion",id:"idle"}
function luigis_mansion:entities/furniture/type/generic