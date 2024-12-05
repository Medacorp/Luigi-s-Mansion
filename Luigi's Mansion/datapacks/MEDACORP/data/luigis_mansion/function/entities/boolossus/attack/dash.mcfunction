scoreboard players operation #temp Health = @s MaxHealth
scoreboard players operation #temp Health -= @s Health
scoreboard players operation #temp Health *= #3 Constants
scoreboard players add #temp Health 14
scoreboard players set @s[scores={ActionTime=0}] Sound 0
execute unless entity @s[scores={ActionTime=1000..}] run scoreboard players operation @s ActionTime += #temp Health
scoreboard players add @s[scores={ActionTime=1000..}] ActionTime 1
scoreboard players set @s[scores={ActionTime=560..999}] ActionTime 1000
execute at @s[scores={ActionTime=1..1000}] facing entity @e[tag=same_room,tag=luigi,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={ActionTime=1..999,Sound=0}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1..999,Sound=0}] Sound 20
data modify entity @s[scores={ActionTime=1..999}] data.animation set value {namespace:"luigis_mansion",id:"laugh"}
execute if entity @s[scores={ActionTime=1000}] run stopsound @a[tag=same_room] hostile luigis_mansion:entity.boo.laugh
data modify entity @s[scores={ActionTime=1000}] data.animation set value {namespace:"luigis_mansion",id:"dash"}
scoreboard players operation #temp Move = @s Move
scoreboard players operation #temp Move *= #3 Constants
execute at @s[scores={ActionTime=1000..}] run function luigis_mansion:entities/boo/move/forward
teleport @s[tag=wall] ~ ~ ~ ~ ~
scoreboard players set @s[tag=wall] Time 600
tag @s remove wall
data remove entity @s[scores={ActionTime=1020}] data.animation
tag @s[scores={ActionTime=1020}] remove attack
scoreboard players reset @s[scores={ActionTime=1020}] ActionTime
scoreboard players reset #temp Health