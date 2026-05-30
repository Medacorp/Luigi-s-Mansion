scoreboard players set @s TargetTask 0
scoreboard players set @s SpawnTime 0
scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"laugh"}
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
$execute if entity @s[scores={ActionTime=41}] run playsound $(namespace):entity.$(id).laugh hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={ActionTime=46}] run playsound $(namespace):entity.$(id).laugh hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={ActionTime=46}] run playsound $(namespace):entity.$(id).clap hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={ActionTime=51}] run playsound $(namespace):entity.$(id).laugh hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={ActionTime=54}] run playsound $(namespace):entity.$(id).clap hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={ActionTime=56}] run playsound $(namespace):entity.$(id).laugh hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={ActionTime=60}] add vanish
tag @s[scores={ActionTime=60}] remove attack
scoreboard players set @s[scores={ActionTime=60}] ActionTime 0
execute at @s facing entity @e[tag=target,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ 0
execute unless entity @e[tag=luigi,distance=..20,tag=target,limit=1] run tag @s remove attack

scoreboard players set @s[tag=!attack] ActionTime 0