tag @s remove rock
execute positioned ~ ~1.25 ~ if entity @e[tag=ghost,distance=..1,tag=!vanish,scores={StunTime=0}] run tag @s add rock
execute positioned ~ ~1.25 ~ if entity @e[tag=portrait_ghost,distance=..1,tag=!vanish,scores={StunTime=0}] run tag @s add rock
data modify entity @s[tag=rock] ArmorItems[3].components."minecraft:custom_data".animation set value {namespace:"luigis_mansion",id:"rocking_chair"}
tag @s[tag=rock] add was_shaking
function luigis_mansion:entities/furniture/type/generic