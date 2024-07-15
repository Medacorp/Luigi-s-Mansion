$execute if entity @s[scores={HurtTime=1},tag=hurt] run playsound $(namespace):entity.$(id).hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt] Sound 40
$execute if entity @s[scores={ElementHurtTime=0},tag=element_hurt,tag=!freeze] run playsound $(namespace):entity.$(id).element_hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=element_hurt,tag=!freeze] Sound 30

data modify entity @s[tag=flee,tag=!second_flee_state] data.animation set value {namespace:"luigis_mansion",id:"flee"}
execute if entity @s[tag=flee,tag=second_flee_state] run function luigis_mansion:entities/purple_puncher/second_flee_state with entity @s data.entity
data modify entity @s[tag=!flee,tag=hurt] data.animation set value {namespace:"luigis_mansion",id:"hurt"}
data modify entity @s[tag=element_hurt,tag=!freeze] data.animation set value {namespace:"luigis_mansion",id:"hurt"}

$function $(namespace):entities/$(id)/reset