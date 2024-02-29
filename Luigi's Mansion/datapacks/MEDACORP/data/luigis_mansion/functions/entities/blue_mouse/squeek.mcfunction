scoreboard players set @s TargetTask 0
scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"squeek"}
$execute if entity @s[scores={ActionTime=1}] run playsound $(namespace):entity.$(id).ambient hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={ActionTime=20}] if predicate $(namespace):$(id)/keep_squeeking_chance run scoreboard players set @s ActionTime 0
$execute if entity @s[scores={ActionTime=20}] run playsound $(namespace):entity.$(id).ambient_stop hostile @a[tag=same_room] ~ ~ ~ 1
data remove entity @s[scores={ActionTime=20}] data.animation
tag @s[scores={ActionTime=20}] remove squeek
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0