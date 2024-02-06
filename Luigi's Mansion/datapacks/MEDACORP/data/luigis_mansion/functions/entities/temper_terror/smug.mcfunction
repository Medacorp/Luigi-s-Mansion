scoreboard players add @s TargetTask 0
scoreboard players add @s SpawnTime 0
scoreboard players add @s ActionTime 1
$execute if entity @s[scores={ActionTime=1}] run playsound $(namespace):entity.$(id).smug hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"smug"}
tag @s[scores={ActionTime=40}] add laugh
tag @s[scores={ActionTime=40}] remove smug
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0