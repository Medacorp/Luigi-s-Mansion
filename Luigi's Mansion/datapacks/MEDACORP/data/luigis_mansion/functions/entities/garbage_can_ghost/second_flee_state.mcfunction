scoreboard players set @s TargetTask 0
scoreboard players add @s ActionTime 1
$execute if entity @s[scores={ActionTime=1}] run playsound $(namespace):entity.$(id).hurt hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"flee"}
scoreboard players set @s[scores={ActionTime=30}] ActionTime 0