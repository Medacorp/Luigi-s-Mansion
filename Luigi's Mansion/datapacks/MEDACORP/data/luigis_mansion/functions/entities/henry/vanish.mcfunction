scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1},tag=visible] run playsound luigis_mansion:entity.henry.disappear hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"vanish"}
execute if score #mirrored Selected matches 0 run teleport @s[scores={ActionTime=..40}] ~ ~0.05 ~ ~20 ~
execute if score #mirrored Selected matches 1 run teleport @s[scores={ActionTime=..40}] ~ ~0.05 ~ ~-20 ~
tag @s[scores={ActionTime=40}] remove visible
tag @s[scores={ActionTime=120}] add disappear