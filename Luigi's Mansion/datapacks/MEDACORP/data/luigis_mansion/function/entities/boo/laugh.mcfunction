scoreboard players set @s TargetTask 0
scoreboard players set @s SpawnTime 0
scoreboard players add @s ActionTime 1
execute at @s facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"laugh"}
execute if entity @a[tag=!spectator,distance=..7,scores={AnimationProgress=0}] run tag @s[scores={ActionTime=20}] remove laugh
execute if entity @s[scores={ActionTime=20}] unless entity @a[tag=!spectator,distance=..7,scores={AnimationProgress=0}] if predicate luigis_mansion:boo/laugh_turn_to_taunt_chance run tag @s add taunt
tag @s[tag=taunt] remove laugh
data remove entity @s[tag=!laugh] data.animation
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0
tag @s remove rotated