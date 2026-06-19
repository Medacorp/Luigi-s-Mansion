execute unless data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[tag=!flipped_gravity] ^ ^1.45 ^
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[tag=flipped_gravity] ^ ^0.35 ^
execute if data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[tag=!flipped_gravity] ^ ^1.45 ^
execute if data storage luigis_mansion:data ghost{tags:["big"]} run teleport @s[tag=flipped_gravity] ^ ^1.75 ^

data modify entity @s transformation.scale set value [0.625f,0.625f,0.625f]
$execute at @s run function $(namespace):animations/bogmire/$(id)/shadow_blob