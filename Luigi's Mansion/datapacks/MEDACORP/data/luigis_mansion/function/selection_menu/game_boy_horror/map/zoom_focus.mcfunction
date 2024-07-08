scoreboard players add @s MapZoomTime 1
summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PositionX
execute store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PositionY
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PositionZ
execute store result entity @e[tag=home,limit=1] Rotation[0] float 1 run scoreboard players get @s RotationY
execute store result entity @e[tag=home,limit=1] Rotation[1] float 1 run scoreboard players get @s RotationX
execute at @e[tag=home,limit=1] run tp @s[scores={MapZoomTime=2..}] ~ ~ ~ ~ ~
kill @e[tag=home,limit=1]
effect clear @s minecraft:speed
attribute @s[scores={MapZoomTime=..22}] minecraft:generic.movement_speed base set 0.01
attribute @s[scores={MapZoomTime=23}] minecraft:generic.movement_speed base set 0.02
attribute @s[scores={MapZoomTime=24}] minecraft:generic.movement_speed base set 0.03
attribute @s[scores={MapZoomTime=25}] minecraft:generic.movement_speed base set 0.04
attribute @s[scores={MapZoomTime=26}] minecraft:generic.movement_speed base set 0.05
attribute @s[scores={MapZoomTime=27}] minecraft:generic.movement_speed base set 0.06
attribute @s[scores={MapZoomTime=28}] minecraft:generic.movement_speed base set 0.07
attribute @s[scores={MapZoomTime=29}] minecraft:generic.movement_speed base set 0.08
attribute @s[scores={MapZoomTime=30}] minecraft:generic.movement_speed base set 0.09
attribute @s[scores={MapZoomTime=31}] minecraft:generic.movement_speed base set 0.10000000149011612
effect give @s[scores={MapZoomTime=32}] minecraft:speed infinite 0 true
effect give @s[scores={MapZoomTime=33}] minecraft:speed infinite 1 true
effect give @s[scores={MapZoomTime=34}] minecraft:speed infinite 2 true
effect give @s[scores={MapZoomTime=35}] minecraft:speed infinite 3 true
effect give @s[scores={MapZoomTime=36}] minecraft:speed infinite 4 true
effect give @s[scores={MapZoomTime=37}] minecraft:speed infinite 5 true
effect give @s[scores={MapZoomTime=38}] minecraft:speed infinite 6 true
effect give @s[scores={MapZoomTime=39}] minecraft:speed infinite 7 true
effect give @s[scores={MapZoomTime=40}] minecraft:speed infinite 8 true
scoreboard players reset @s[scores={MapZoomTime=40}] OpenMapFocus
scoreboard players set @s[scores={MapZoomTime=40}] MapZoomTime 0