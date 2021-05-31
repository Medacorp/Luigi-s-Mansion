execute store result entity @s[scores={Dialog=0}] Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @s[scores={Dialog=0}] Pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @s[scores={Dialog=0}] Pos[2] double 0.01 run scoreboard players get @s HomeZ
scoreboard players operation @s ActionTime = @e[tag=rocking_chair,distance=..2,limit=1] AnimationProg
scoreboard players set @s[scores={Dialog=0}] AnimationProg 0
execute if entity @s[scores={Dialog=0}] unless score @s ActionTime = @s AnimationProg run function luigis_mansion:animations/neville/get_idle_position
scoreboard players set @s[scores={Dialog=0}] Dialog 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..100}] at @e[tag=same_room,tag=!spectator] positioned ^ ^ ^8 run scoreboard players set @s[distance=..8] Dialog 1
execute if entity @s[scores={Dialog=1},tag=visible] run function luigis_mansion:entities/neville/turn_invisible
execute if entity @s[scores={Dialog=2},tag=!visible] run function luigis_mansion:entities/neville/turn_visible
tag @s[scores={Dialog=101}] add yawn
scoreboard players set @s[scores={Dialog=101}] AnimationProg 0
execute if entity @s[scores={Dialog=101}] run playsound luigis_mansion:entity.neville.yawn hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=101}] VulnerableTime 60
tag @s[scores={Dialog=161}] remove yawn
scoreboard players set @s[scores={Dialog=161}] Dialog 0