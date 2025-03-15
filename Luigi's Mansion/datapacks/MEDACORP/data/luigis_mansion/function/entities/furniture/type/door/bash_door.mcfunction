scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] run playsound luigis_mansion:furniture.door.locked block @a[tag=same_room] ~ ~ ~ 1

data modify entity @s[tag=push] data.animation set value {namespace:"luigis_mansion",id:"locked/push"}
data modify entity @s[tag=!push] data.animation set value {namespace:"luigis_mansion",id:"locked/pull"}

data remove entity @s[scores={AnimationProgress=40}] data.animation
tag @s[scores={AnimationProgress=40}] remove bash_door
scoreboard players reset @s[scores={AnimationProgress=40}] AnimationProgress