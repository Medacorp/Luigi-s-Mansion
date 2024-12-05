scoreboard players add @s[scores={HurtTime=1..}] HurtTime 1
execute unless entity @s[scores={HurtTime=1..}] run scoreboard players set @s HurtTime 1
scoreboard players set @s[scores={HurtTime=1..},tag=!in_vacuum] HurtTime 0
data modify entity @s[scores={HurtTime=1}] data.animation set value {namespace:"luigis_mansion",id:"hurt"}
execute if entity @s[scores={HurtTime=1}] run playsound luigis_mansion:entity.king_boo.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1}] Sound 40
execute if entity @s[tag=!dying,scores={HurtTime=1..,Health=1..}] run function luigis_mansion:entities/king_boo/harm
execute if entity @s[scores={HurtTime=40..}] run scoreboard players set @s HurtTime 20
data modify entity @s[scores={HurtTime=20}] data.animation set value {namespace:"luigis_mansion",id:"flee"}
tag @s[scores={HurtTime=0}] remove hurt
tag @s[scores={HurtTime=1}] add hurt
tag @s[scores={HurtTime=20..}] add flee
execute if score #temp Move matches 1.. at @s[tag=flee] rotated ~ 0 run function luigis_mansion:entities/ghost/move_forward_force
execute if score #temp Move matches ..-1 at @s[tag=flee] facing entity @e[tag=luigi,tag=vacuuming_me,sort=nearest,limit=1] feet rotated ~-180 0 run function luigis_mansion:entities/king_boo/move/pulled
execute if entity @s[scores={Sound=0},tag=flee] run playsound luigis_mansion:entity.king_boo.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=flee] Sound 40
data remove entity @s[scores={HurtTime=0}] data.animation