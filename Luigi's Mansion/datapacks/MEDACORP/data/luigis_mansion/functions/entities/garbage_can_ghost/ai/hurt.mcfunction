$execute if entity @s[scores={HurtTime=1},tag=hurt] run playsound $(namespace):entity.$(id).hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt] Sound 40
scoreboard players set @s[scores={HurtTime=1},tag=hurt,tag=!flee,tag=!dying] BananaDropTime 40
$execute if entity @s[scores={ElementHurtTime=0},tag=element_hurt] run playsound $(namespace):entity.$(id).element_hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ElementHurtTime=0},tag=element_hurt] Sound 30
$execute if entity @s[scores={Sound=0},tag=element_hurt] run playsound $(namespace):entity.$(id).element_hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=element_hurt] Sound 30
execute if entity @s[scores={BananaDropTime=0}] run function luigis_mansion:entities/garbage_can_ghost/ai/throw_banana
scoreboard players add @s[scores={BananaDropTime=0},tag=flee] BananaDropTime 60
scoreboard players remove @s[scores={BananaDropTime=1..},tag=flee] BananaDropTime 1

data modify entity @s[tag=flee,tag=!second_flee_state] data.animation set value {namespace:"luigis_mansion",id:"flee"}
execute if entity @s[tag=flee,tag=second_flee_state] run function luigis_mansion:entities/garbage_can_ghost/second_flee_state with entity @s data.entity
data modify entity @s[tag=!flee,tag=hurt] data.animation set value {namespace:"luigis_mansion",id:"hurt"}
data modify entity @s[tag=element_hurt,tag=!freeze] data.animation set value {namespace:"luigis_mansion",id:"hurt"}

$function $(namespace):entities/$(id)/reset