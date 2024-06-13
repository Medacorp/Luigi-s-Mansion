scoreboard players set @s TargetTask 0
scoreboard players add @s ActionTime 1
$execute if entity @s[scores={ActionTime=1},tag=visible] run playsound $(namespace):entity.$(id).disappear hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"vanish"}
tag @s[scores={ActionTime=40}] add disappear
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0