scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1},tag=visible,tag=!disappear] run playsound luigis_mansion:entity.orville.disappear hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"vanish"}
tag @s[scores={ActionTime=40}] remove visible
tag @s[scores={ActionTime=120}] add disappear