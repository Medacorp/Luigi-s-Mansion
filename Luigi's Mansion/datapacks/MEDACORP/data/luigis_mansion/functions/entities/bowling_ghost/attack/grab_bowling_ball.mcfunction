scoreboard players add @s TargetTask 0
scoreboard players add @s SpawnTime 0
scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"grab_bowling_ball"}

$execute if entity @s[scores={ActionTime=10}] run playsound $(namespace):entity.$(id).grab_ball hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=10}] run data modify storage luigis_mansion:data entity set value {owner:-1,damage:{},tags:["no_ai"]}
execute if entity @s[scores={ActionTime=10}] run data modify storage luigis_mansion:data entity.damage set from entity @s data.damage
execute if entity @s[scores={ActionTime=10}] store result storage luigis_mansion:data entity.owner int 1 run scoreboard players get @s GhostNr
execute if entity @s[scores={ActionTime=10}] positioned ^ ^1.2 ^ run function luigis_mansion:spawn_entities/ball/bowling 
execute if entity @s[scores={ActionTime=11..20}] unless score #mirrored Selected matches 1 run function luigis_mansion:entities/bowling_ghost/ball_position/grab/normal
execute if entity @s[scores={ActionTime=11..20}] if score #mirrored Selected matches 1 run function luigis_mansion:entities/bowling_ghost/ball_position/grab/mirrored
tag @s[scores={ActionTime=10}] add grabbed_ball
tag @s[scores={ActionTime=20}] remove grab_ball
scoreboard players set @s[scores={ActionTime=20..}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=20..}] Sound 2
scoreboard players set @s[scores={ActionTime=20..}] ActionTime 0
