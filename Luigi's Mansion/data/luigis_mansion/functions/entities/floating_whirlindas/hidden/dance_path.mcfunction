execute if entity @s[x=687.5,y=102,z=42.0,distance=..0.7] run scoreboard players set @s PathStep 1
execute if entity @s[x=686.5,y=102,z=32.5,distance=..0.7,scores={PathStep=1}] run scoreboard players set @s PathStep 2
execute if entity @s[x=689.5,y=102,z=29.5,distance=..0.7,scores={PathStep=2}] run scoreboard players set @s PathStep 3
execute if entity @s[x=691.0,y=102,z=32.0,distance=..0.7,scores={PathStep=3}] run scoreboard players set @s PathStep 4
execute if entity @s[x=689.5,y=102,z=34.5,distance=..0.7,scores={PathStep=4}] run scoreboard players set @s PathStep 5
execute if entity @s[x=691.5,y=102,z=36.0,distance=..0.7,scores={PathStep=5}] run scoreboard players set @s PathStep 6
execute if entity @s[x=692.5,y=102,z=34.5,distance=..0.7,scores={PathStep=6}] run scoreboard players set @s PathStep 7
execute if entity @s[x=691.0,y=102,z=34.0,distance=..0.7,scores={PathStep=7}] run scoreboard players set @s PathStep 8
execute if entity @s[x=692.5,y=102,z=29.5,distance=..0.7,scores={PathStep=8}] run scoreboard players set @s PathStep 9
execute if entity @s[x=695.5,y=102,z=32.5,distance=..0.7,scores={PathStep=9}] run scoreboard players set @s PathStep 10
execute if entity @s[x=694.0,y=102,z=35.0,distance=..0.7,scores={PathStep=10}] run scoreboard players set @s PathStep 11
execute if entity @s[x=691.5,y=102,z=32.5,distance=..0.7,scores={PathStep=11}] run scoreboard players set @s PathStep 12
execute if entity @s[x=689.5,y=102,z=35.0,distance=..0.7,scores={PathStep=12}] run scoreboard players set @s PathStep 13
execute if entity @s[x=691.5,y=102,z=35.5,distance=..0.7,scores={PathStep=13}] run scoreboard players set @s PathStep 14
execute if entity @s[x=694.0,y=102,z=35.0,distance=..0.7,scores={PathStep=14}] run scoreboard players set @s PathStep 15
execute if entity @s[x=695.5,y=102,z=35.5,distance=..0.7,scores={PathStep=15}] run scoreboard players set @s PathStep 16
execute if entity @s[x=695.5,y=102,z=41.5,distance=..0.7,scores={PathStep=16}] run scoreboard players set @s PathStep 17
execute if entity @s[x=693.5,y=102,z=43.5,distance=..0.7,scores={PathStep=17}] run scoreboard players set @s PathStep 18
execute if entity @s[x=689.5,y=102,z=43.5,distance=..0.7,scores={PathStep=18}] run scoreboard players set @s PathStep 19
execute if entity @s[x=686.5,y=102,z=46.5,distance=..0.7,scores={PathStep=19}] run scoreboard players set @s PathStep 20
execute if entity @s[x=686.5,y=102,z=49.5,distance=..0.7,scores={PathStep=20}] run scoreboard players set @s PathStep 21
execute if entity @s[x=688.5,y=102,z=51.5,distance=..0.7,scores={PathStep=21}] run scoreboard players set @s PathStep 22
execute if entity @s[x=691.0,y=102,z=49.5,distance=..0.7,scores={PathStep=22}] run scoreboard players set @s PathStep 23
execute if entity @s[x=693.5,y=102,z=51.5,distance=..0.7,scores={PathStep=23}] run scoreboard players set @s PathStep 24
execute if entity @s[x=695.5,y=102,z=50.0,distance=..0.7,scores={PathStep=24}] run scoreboard players set @s PathStep 25
execute if entity @s[x=694.0,y=102,z=47.5,distance=..0.7,scores={PathStep=25}] run scoreboard players set @s PathStep 26
execute if entity @s[x=691.0,y=102,z=51.5,distance=..0.7,scores={PathStep=26}] run scoreboard players set @s PathStep 27
execute if entity @s[x=686.5,y=102,z=43.5,distance=..0.7,scores={PathStep=27}] run scoreboard players set @s PathStep 1
execute if score @s PathStep matches 1 run summon minecraft:marker 686 102 32 {Tags:["target"]}
execute if score @s PathStep matches 2 run summon minecraft:marker 689 102 29 {Tags:["target"]}
execute if score @s PathStep matches 3 run summon minecraft:marker 691.0 102 32.0 {Tags:["target"]}
execute if score @s PathStep matches 4 run summon minecraft:marker 689 102 34 {Tags:["target"]}
execute if score @s PathStep matches 5 run summon minecraft:marker 691 102 38.0 {Tags:["target"]}
execute if score @s PathStep matches 6 run summon minecraft:marker 692 102 34 {Tags:["target"]}
execute if score @s PathStep matches 7 run summon minecraft:marker 691.0 102 32.0 {Tags:["target"]}
execute if score @s PathStep matches 8 run summon minecraft:marker 692 102 29 {Tags:["target"]}
execute if score @s PathStep matches 9 run summon minecraft:marker 695 102 32 {Tags:["target"]}
execute if score @s PathStep matches 10 run summon minecraft:marker 694.0 102 34.0 {Tags:["target"]}
execute if score @s PathStep matches 11 run summon minecraft:marker 691 102 32 {Tags:["target"]}
execute if score @s PathStep matches 12 run summon minecraft:marker 689 102 35.0 {Tags:["target"]}
execute if score @s PathStep matches 13 run summon minecraft:marker 691 102 35 {Tags:["target"]}
execute if score @s PathStep matches 14 run summon minecraft:marker 694.0 102 35.0 {Tags:["target"]}
execute if score @s PathStep matches 15 run summon minecraft:marker 695 102 35 {Tags:["target"]}
execute if score @s PathStep matches 16 run summon minecraft:marker 695 102 41 {Tags:["target"]}
execute if score @s PathStep matches 17 run summon minecraft:marker 693 102 43 {Tags:["target"]}
execute if score @s PathStep matches 18 run summon minecraft:marker 689 102 43 {Tags:["target"]}
execute if score @s PathStep matches 19 run summon minecraft:marker 686 102 46 {Tags:["target"]}
execute if score @s PathStep matches 20 run summon minecraft:marker 686 102 49 {Tags:["target"]}
execute if score @s PathStep matches 21 run summon minecraft:marker 688 102 51 {Tags:["target"]}
execute if score @s PathStep matches 22 run summon minecraft:marker 691.0 102 49 {Tags:["target"]}
execute if score @s PathStep matches 23 run summon minecraft:marker 693 102 51 {Tags:["target"]}
execute if score @s PathStep matches 24 run summon minecraft:marker 695 102 50.0 {Tags:["target"]}
execute if score @s PathStep matches 25 run summon minecraft:marker 694.0 102 47 {Tags:["target"]}
execute if score @s PathStep matches 26 run summon minecraft:marker 691.0 102 51 {Tags:["target"]}
execute if score @s PathStep matches 27 run summon minecraft:marker 686 102 43 {Tags:["target"]}
scoreboard players operation #temp Move = @s Move
execute facing entity @e[tag=target,limit=1] feet as @e[tag=partner,limit=1] positioned as @s run function luigis_mansion:entities/ghost/move_forward
scoreboard players operation #temp Move = @s Move
execute facing entity @e[tag=target,limit=1] feet run function luigis_mansion:entities/ghost/move_forward
kill @e[tag=target,limit=1,type=minecraft:marker]
