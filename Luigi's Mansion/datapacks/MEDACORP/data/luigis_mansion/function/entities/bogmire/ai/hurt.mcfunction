execute if entity @s[scores={HurtTime=1},tag=hurt] run playsound luigis_mansion:entity.bogmire.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt] Sound 40

data modify entity @s[tag=flee,tag=!second_flee_state] data.animation set value {namespace:"luigis_mansion",id:"flee"}
execute if entity @s[tag=flee,tag=second_flee_state] run function luigis_mansion:entities/bogmire/second_flee_state
data modify entity @s[tag=!flee,tag=hurt] data.animation set value {namespace:"luigis_mansion",id:"hurt"}