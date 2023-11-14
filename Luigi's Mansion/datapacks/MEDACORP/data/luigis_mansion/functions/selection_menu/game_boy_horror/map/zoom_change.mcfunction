summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PositionX
execute store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PositionY
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PositionZ
execute store result entity @e[tag=home,limit=1] Rotation[0] float 0.01 run scoreboard players get @s RotationY
execute store result entity @e[tag=home,limit=1] Rotation[1] float 0.01 run scoreboard players get @s RotationX
execute at @e[tag=home,limit=1] run tp @s[scores={MapZoomTime=2..}] ~ ~ ~ ~ ~
kill @e[tag=home,limit=1]
effect clear @s minecraft:speed
attribute @s[scores={MapZoomTime=8}] minecraft:generic.movement_speed base set 0.02
attribute @s[scores={MapZoomTime=7}] minecraft:generic.movement_speed base set 0.04
attribute @s[scores={MapZoomTime=6}] minecraft:generic.movement_speed base set 0.06
attribute @s[scores={MapZoomTime=5}] minecraft:generic.movement_speed base set 0.08
attribute @s[scores={MapZoomTime=4}] minecraft:generic.movement_speed base set 0.10000000149011612
effect give @s[scores={MapZoomTime=3}] minecraft:speed infinite 1 true
effect give @s[scores={MapZoomTime=2}] minecraft:speed infinite 3 true
effect give @s[scores={MapZoomTime=1}] minecraft:speed infinite 5 true
effect give @s[scores={MapZoomTime=0}] minecraft:speed infinite 7 true