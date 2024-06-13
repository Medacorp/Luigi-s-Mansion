scoreboard players add @s Dialog 1
scoreboard players set @s[scores={Dialog=1}] ActionTime 0
data modify entity @s[scores={Dialog=1}] data.animation set value {namespace:"luigis_mansion",id:"decapitate"}
teleport @s[scores={Dialog=2..21}] ^ ^0.1 ^-0.8
tag @s[scores={Dialog=40}] remove decapitate
data remove entity @s[scores={Dialog=40}] data.animation
scoreboard players set @s[scores={Dialog=40}] Dialog 0