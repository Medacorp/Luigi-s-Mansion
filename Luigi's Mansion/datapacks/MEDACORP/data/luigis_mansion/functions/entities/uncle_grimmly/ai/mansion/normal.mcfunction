execute if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..1.6,limit=1] run function luigis_mansion:entities/uncle_grimmly/collide

tag @s add visible
execute if entity @s[scores={VulnerableTime=0}] at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^8 run tag @s[distance=..8] remove visible
scoreboard players add @s Dialog 1
scoreboard players set @s[tag=!visible] Dialog 0
execute if predicate luigis_mansion:uncle_grimmly/scare_chance run tag @s[scores={Dialog=20},tag=visible] add scare
execute if entity @s[scores={Dialog=20,VulnerableTime=0},tag=scare] run playsound luigis_mansion:entity.uncle_grimmly.scare hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=20},tag=scare] VulnerableTime 22
tag @s remove scare
scoreboard players set @s[scores={Dialog=20}] Dialog 0
scoreboard players set @s[scores={Dialog=..19,VulnerableTime=1}] VulnerableTime 0

data remove entity @s[scores={VulnerableTime=0}] data.animation
data modify entity @s[scores={VulnerableTime=1..}] data.animation set value {namespace:"luigis_mansion",id:"scare"}