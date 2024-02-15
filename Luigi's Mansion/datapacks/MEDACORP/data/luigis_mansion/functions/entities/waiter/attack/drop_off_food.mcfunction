scoreboard players add @s TargetTask 0
scoreboard players add @s SpawnTime 0
scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=3}] data.animation set value {namespace:"luigis_mansion",id:"drop_off_food"}
#execute positioned ^ ^ ^1 if entity @e[tag=same_room,tag=food,distance=..1,scores={},limit=1] run tag @s add complain
#execute if entity @e[tag=same_room,tag=mr_luggs,scores={Dialog=100..},limit=1] run tag @s add complain
tag @s[scores={ActionTime=1}] add complain
tag @s[scores={ActionTime=1}] remove attack
$execute if entity @s[scores={ActionTime=3},tag=!complain] run playsound $(namespace):entity.$(id).place_food hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={ActionTime=5},tag=!complain] run playsound $(namespace):entity.$(id).place_food hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={ActionTime=10}] add dropped_off_food
tag @s[scores={ActionTime=10}] remove attack
scoreboard players set @s[tag=!attack] ActionTime 0