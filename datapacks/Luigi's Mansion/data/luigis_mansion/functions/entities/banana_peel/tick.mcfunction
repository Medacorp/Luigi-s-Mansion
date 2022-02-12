execute unless entity @s[nbt={Pose:{Head:[0.01f]}}] run data merge entity @s {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score @s HomeRot run data get entity @s Pose.Head[1]
execute if entity @s[nbt={OnGround:0b}] store result entity @s Pose.Head[1] float 1 run scoreboard players add @s HomeRot 10
scoreboard players add @s ActionTime 1
tag @s[scores={ActionTime=60}] add vacuumable
tag @s[scores={ActionTime=600},tag=!eternal] add dead
execute if entity @s[tag=!dead] as @e[tag=same_room,distance=..0.7,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute if entity @s[tag=!dead] as @a[tag=same_room,distance=..0.7] rotated as @s rotated ~ 0 positioned ^ ^ ^10 run function luigis_mansion:entities/player/knockback/slip
execute if entity @a[tag=same_room,distance=..0.7,limit=1] run tag @s add dead
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall