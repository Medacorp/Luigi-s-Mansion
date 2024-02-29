scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"attach_head"}
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.bowser.reattach_head hostile @a[tag=same_room] ~ ~ ~ 3
tag @s[scores={ActionTime=40}] remove grabbing_head
data remove entity @s[scores={ActionTime=40}] data.animation
scoreboard players reset @s[scores={ActionTime=40}] ActionTime