scoreboard players set @s[scores={HurtTime=1..},tag=!in_vacuum] HurtTime 0
scoreboard players add @s[scores={HurtTime=1..}] HurtTime 1
execute unless entity @s[scores={HurtTime=1..}] run scoreboard players set @s HurtTime 1
execute if entity @s[tag=!dying,scores={HurtTime=1..,Health=1..}] run function luigis_mansion:entities/boo/harm
scoreboard players set @s[scores={HurtTime=40..}] HurtTime 20
scoreboard players set @s ActionTime 0
data modify entity @s[scores={HurtTime=1..19,Dialog=0}] data.animation set value {namespace:"luigis_mansion",id:"hurt"}
data modify entity @s[scores={HurtTime=20..,Dialog=0}] data.animation set value {namespace:"luigis_mansion",id:"flee"}
data remove entity @s[scores={HurtTime=0,Dialog=0}] data.animation
tag @s[scores={HurtTime=20..}] add flee
tag @s remove attack
tag @s remove rotated
tag @s remove laugh
tag @s remove taunt
execute at @s[scores={HurtTime=20}] run function luigis_mansion:entities/boo/rotate

execute if entity @s[scores={HurtTime=1}] run playsound luigis_mansion:entity.boo.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1}] Sound 40