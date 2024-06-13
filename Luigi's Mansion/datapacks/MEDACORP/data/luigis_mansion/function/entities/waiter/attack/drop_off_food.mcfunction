scoreboard players set @s TargetTask 0
scoreboard players set @s SpawnTime 0
scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"drop_off_food"}
$execute if entity @s[scores={ActionTime=3}] run playsound $(namespace):entity.$(id).place_food hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={ActionTime=5}] run playsound $(namespace):entity.$(id).place_food hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={ActionTime=10}] add dropped_off_food
tag @s[scores={ActionTime=10}] remove attack
scoreboard players set @s[tag=!attack] ActionTime 0