execute if entity @s[tag=!hurt] run tag @e[tag=vacuuming_me,sort=nearest,limit=1] add me
execute if entity @s[tag=!hurt] store result score @s TargetY run data get entity @e[tag=me,limit=1] Pos[1] 10
execute if entity @s[tag=!hurt] if entity @e[tag=me,limit=1,tag=!flipped_gravity] run scoreboard players add @s TargetY 20
execute if entity @s[tag=!hurt] if entity @e[tag=me,limit=1,tag=flipped_gravity] run scoreboard players remove @s TargetY 20
execute if entity @s[tag=!hurt] if entity @e[tag=me,tag=!dark_room] run scoreboard players set @s StunTime 1
execute if entity @s[tag=!hurt] run tag @e[tag=me,limit=1] remove me
execute unless score #global_difficulty Selected matches 3 run tag @s add hurt
execute unless score #global_difficulty Selected matches 3 run function luigis_mansion:entities/ghost/hurt/vacuum_latch
execute if score #global_difficulty Selected matches 3 run tag @s[scores={StunTime=1..}] add hurt
execute if score #global_difficulty Selected matches 3 if entity @s[scores={StunTime=1..}] run function luigis_mansion:entities/ghost/hurt/vacuum_latch