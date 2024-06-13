scoreboard players set @s TargetTask 0
scoreboard players set @s SpawnTime 0
scoreboard players add @s ActionTime 1
$execute if entity @s[scores={ActionTime=1}] run playsound $(namespace):entity.$(id).laugh hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={ActionTime=6}] run playsound $(namespace):entity.$(id).laugh hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={ActionTime=6}] run playsound $(namespace):entity.$(id).clap hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={ActionTime=11}] run playsound $(namespace):entity.$(id).laugh hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={ActionTime=14}] run playsound $(namespace):entity.$(id).clap hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={ActionTime=16}] run playsound $(namespace):entity.$(id).laugh hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={ActionTime=21}] run playsound $(namespace):entity.$(id).laugh hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={ActionTime=22}] run playsound $(namespace):entity.$(id).clap hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={ActionTime=26}] run playsound $(namespace):entity.$(id).laugh hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={ActionTime=30}] run playsound $(namespace):entity.$(id).clap hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={ActionTime=31}] run playsound $(namespace):entity.$(id).laugh hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={ActionTime=36}] run playsound $(namespace):entity.$(id).laugh hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={ActionTime=38}] run playsound $(namespace):entity.$(id).clap hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"laugh"}
tag @s[scores={ActionTime=40}] remove laugh
tag @s[scores={ActionTime=40}] add vanish
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0