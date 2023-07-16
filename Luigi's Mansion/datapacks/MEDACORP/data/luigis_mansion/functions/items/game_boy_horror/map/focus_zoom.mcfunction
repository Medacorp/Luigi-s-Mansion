scoreboard players add @s MapZoomTime 1
summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PositionX
execute store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PositionY
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PositionZ
execute store result entity @e[tag=home,limit=1] Rotation[0] float 0.01 run scoreboard players get @s RotationY
execute store result entity @e[tag=home,limit=1] Rotation[1] float 0.01 run scoreboard players get @s RotationX
execute at @e[tag=home,limit=1] run tp @s[scores={MapZoomTime=2..}] ~ ~ ~ ~ ~
kill @e[tag=home,limit=1]
attribute @s[scores={MapZoomTime=1..61}] minecraft:generic.movement_speed base set 0.0
attribute @s[scores={MapZoomTime=62}] minecraft:generic.movement_speed base set 0.01
attribute @s[scores={MapZoomTime=63}] minecraft:generic.movement_speed base set 0.02
attribute @s[scores={MapZoomTime=64}] minecraft:generic.movement_speed base set 0.03
attribute @s[scores={MapZoomTime=65}] minecraft:generic.movement_speed base set 0.04
attribute @s[scores={MapZoomTime=66}] minecraft:generic.movement_speed base set 0.05
attribute @s[scores={MapZoomTime=67}] minecraft:generic.movement_speed base set 0.06
attribute @s[scores={MapZoomTime=68}] minecraft:generic.movement_speed base set 0.07
attribute @s[scores={MapZoomTime=69}] minecraft:generic.movement_speed base set 0.08
attribute @s[scores={MapZoomTime=70}] minecraft:generic.movement_speed base set 0.09
attribute @s[scores={MapZoomTime=71}] minecraft:generic.movement_speed base set 0.10000000149011612
effect give @s[scores={MapZoomTime=72}] minecraft:speed infinite 0 true
effect give @s[scores={MapZoomTime=73}] minecraft:speed infinite 1 true
effect give @s[scores={MapZoomTime=74}] minecraft:speed infinite 2 true
effect give @s[scores={MapZoomTime=75}] minecraft:speed infinite 3 true
effect give @s[scores={MapZoomTime=76}] minecraft:speed infinite 4 true
effect give @s[scores={MapZoomTime=77}] minecraft:speed infinite 5 true
effect give @s[scores={MapZoomTime=78}] minecraft:speed infinite 6 true
effect give @s[scores={MapZoomTime=79}] minecraft:speed infinite 7 true
effect give @s[scores={MapZoomTime=80}] minecraft:speed infinite 8 true
scoreboard players reset @s[scores={MapZoomTime=80}] OpenMapFocus
scoreboard players reset @s[scores={MapZoomTime=80}] MapZoomTime