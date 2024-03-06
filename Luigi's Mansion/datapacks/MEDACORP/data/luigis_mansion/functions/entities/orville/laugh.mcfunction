scoreboard players set @s TargetTask 0
scoreboard players set @s SpawnTime 0
scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.orville.laugh hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"laugh"}
data remove entity @s[scores={ActionTime=40}] data.animation
tag @s[scores={ActionTime=40}] remove laugh
scoreboard players set @s[scores={ActionTime=40}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0