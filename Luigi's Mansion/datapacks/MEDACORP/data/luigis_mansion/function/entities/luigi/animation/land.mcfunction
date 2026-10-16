scoreboard players add @s AnimationProgress 1
scoreboard players set @s Sound 1
tag @s add keep_poltergust_grabbed
function luigis_mansion:entities/luigi/animation/shared/falling {rotated:"~ ~"}
execute if entity @s[scores={AnimationProgress=10}] run function luigis_mansion:entities/luigi/animation/set/none