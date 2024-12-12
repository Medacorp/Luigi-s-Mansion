execute store result score #posx Time run data get entity @s Pos[0] 100
scoreboard players operation #posx Time %= #100 Constants
execute if score #posx Time matches ..-1 run scoreboard players add #posx Time 100
execute store result score #posz Time run data get entity @s Pos[2] 100
scoreboard players operation #posz Time %= #100 Constants
execute if score #posz Time matches ..-1 run scoreboard players add #posz Time 100

scoreboard players operation #temp Gravity = @s Gravity
scoreboard players operation #temp2 Gravity = @s Gravity
scoreboard players add #temp2 Gravity 1
execute if entity @s[tag=!alter_y,tag=!flipped_gravity] run function luigis_mansion:entities/luigi/movement/gravity_step
execute if entity @s[tag=!alter_y,tag=flipped_gravity,scores={Shrunk=0}] run function luigis_mansion:entities/luigi/movement/gravity_step_flipped
execute if entity @s[tag=!alter_y,tag=flipped_gravity,scores={Shrunk=1..}] run function luigis_mansion:entities/luigi/movement/gravity_step_flipped_shrunk
execute if score #temp Gravity = @s Gravity run scoreboard players set @s Gravity 0
tag @s remove alter_y

scoreboard players reset #temp Gravity
scoreboard players reset #temp2 Gravity
scoreboard players reset #posx Time
scoreboard players reset #posy Time
scoreboard players reset #posz Time