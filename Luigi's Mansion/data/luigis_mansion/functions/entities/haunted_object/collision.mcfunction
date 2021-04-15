execute if entity @s[tag=!dead] run effect give @a[distance=..1,gamemode=!spectator,limit=1] minecraft:instant_damage 1 0 true
execute if entity @s[tag=!dead] run scoreboard players set @a[distance=..1,gamemode=!spectator,limit=1] ForcedDamage 4
execute if entity @s[tag=!dead,tag=haunted_teddy_bear] run scoreboard players set @e[tag=chauncey] AnimationProg 0
execute if entity @s[tag=!dead,tag=haunted_teddy_bear] if entity @a[distance=..1,gamemode=!spectator,limit=1] run tag @e[tag=chauncey] add laugh
execute if entity @s[tag=!dead,tag=haunted_teddy_bear] unless entity @a[distance=..1,gamemode=!spectator,limit=1] run tag @e[tag=chauncey] add complain
scoreboard players operation #temp Room = @s Room
execute as @e[tag=haunted_object] if score @s Room = #temp Room run scoreboard players set @s WaitTime 0
execute as @e[tag=haunted_object] if score @s Room = #temp Room run scoreboard players set @s AnimationProg 0
execute as @e[tag=haunted_object] if score @s Room = #temp Room store result entity @s Pose.Head[0] float 1 run scoreboard players get @s HomeRotY
scoreboard players reset @s Room
execute if entity @s[tag=!dead] store result entity @s Pos[0] double 0.01 run scoreboard players get @s HomeX
execute if entity @s[tag=!dead] store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute if entity @s[tag=!dead] store result entity @s Pos[2] double 0.01 run scoreboard players get @s HomeZ
execute if entity @s[tag=!dead] store result entity @s Rotation[0] float 1 run scoreboard players get @s HomeRotX
execute if entity @s[tag=!dead] store result entity @s Rotation[1] float 1 run scoreboard players get @s HomeRotY
execute if entity @s[tag=!dead] store result entity @s Pose.Head[0] float 1 run scoreboard players get @s HomeRotY
data modify entity @s[tag=!dead] Pose.Head[1] set value 0.0f
data modify entity @s[tag=!dead] Pose.Head[2] set value 1.01f
tag @s remove moving
tag @s remove collision