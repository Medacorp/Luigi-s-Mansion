scoreboard players operation #temp Move /= #3 Constants
scoreboard players set @s ActionTime 0
tag @s remove attack
tag @s remove laugh
tag @s remove taunt
data modify entity @s[scores={Dialog=2..}] data.animation set value {namespace:"luigis_mansion",id:"frozen"}
particle minecraft:firework ~ ~1 ~ 0.2 0.2 0.2 0 1
data remove entity @s[scores={Dialog=1}] data.animation
scoreboard players remove @s Dialog 1