execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
execute if entity @s[x=700.5,y=11,z=-46.5,distance=..0.7,scores={PathStep=1}] run scoreboard players set @s PathStep 2
execute if entity @s[x=707.5,y=11,z=-46.5,distance=..0.7,scores={PathStep=2}] run scoreboard players set @s PathStep 3
execute if entity @s[x=707.5,y=11,z=-41.5,distance=..0.7,scores={PathStep=3}] run scoreboard players set @s PathStep 4
execute if entity @s[x=707.5,y=11,z=-46.5,distance=..0.7,scores={PathStep=4}] run scoreboard players set @s PathStep 5
execute if entity @s[x=700.5,y=11,z=-46.5,distance=..0.7,scores={PathStep=5}] run scoreboard players set @s PathStep 6
execute if entity @s[x=700.5,y=11,z=-41.5,distance=..0.7,scores={PathStep=6}] run scoreboard players set @s PathStep 1
execute if entity @s[scores={PathStep=1}] run summon minecraft:marker 700 11 -47 {Tags:["target"]}
execute if entity @s[scores={PathStep=2}] run summon minecraft:marker 707 11 -47 {Tags:["target"]}
execute if entity @s[scores={PathStep=3}] run summon minecraft:marker 707 11 -42 {Tags:["target"]}
execute if entity @s[scores={PathStep=4}] run summon minecraft:marker 707 11 -47 {Tags:["target"]}
execute if entity @s[scores={PathStep=5}] run summon minecraft:marker 700 11 -47 {Tags:["target"]}
execute if entity @s[scores={PathStep=6}] run summon minecraft:marker 700 11 -42 {Tags:["target"]}
scoreboard players operation @e[tag=partner,limit=1] PathStep = @s PathStep