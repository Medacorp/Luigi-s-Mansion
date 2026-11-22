teleport @s[tag=!flipped_gravity] ^ ^1.45 ^
teleport @s[tag=flipped_gravity] ^ ^1.35 ^

execute if data storage luigis_mansion:data ghost{tags:["big"]} run data modify entity @s[scores={AnimationProgress=0}] transformation.scale set value [2,2,2]

$execute at @s run function $(namespace):animations/chauncey/$(id)/body