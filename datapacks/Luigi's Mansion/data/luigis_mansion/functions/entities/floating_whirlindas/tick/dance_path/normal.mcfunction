execute if entity @s[x=700.5,y=11.6,z=-54.0,distance=..0.7] run scoreboard players set @s PathStep 1
execute if entity @s[x=699.5,y=11.6,z=-44.5,distance=..0.7,scores={PathStep=1}] run scoreboard players set @s PathStep 2
execute if entity @s[x=702.5,y=11.6,z=-41.5,distance=..0.7,scores={PathStep=2}] run scoreboard players set @s PathStep 3
execute if entity @s[x=704.0,y=11.6,z=-44.0,distance=..0.7,scores={PathStep=3}] run scoreboard players set @s PathStep 4
execute if entity @s[x=700.5,y=11.6,z=-46.5,distance=..0.7,scores={PathStep=4}] run scoreboard players set @s PathStep 5
execute if entity @s[x=704.5,y=11.6,z=-50.0,distance=..0.7,scores={PathStep=5}] run scoreboard players set @s PathStep 6
execute if entity @s[x=705.5,y=11.6,z=-46.5,distance=..0.7,scores={PathStep=6}] run scoreboard players set @s PathStep 7
execute if entity @s[x=704.0,y=11.6,z=-44.0,distance=..0.7,scores={PathStep=7}] run scoreboard players set @s PathStep 8
execute if entity @s[x=705.5,y=11.6,z=-41.5,distance=..0.7,scores={PathStep=8}] run scoreboard players set @s PathStep 9
execute if entity @s[x=708.5,y=11.6,z=-44.5,distance=..0.7,scores={PathStep=9}] run scoreboard players set @s PathStep 10
execute if entity @s[x=707.0,y=11.6,z=-47.0,distance=..0.7,scores={PathStep=10}] run scoreboard players set @s PathStep 11
execute if entity @s[x=704.5,y=11.6,z=-44.5,distance=..0.7,scores={PathStep=11}] run scoreboard players set @s PathStep 12
execute if entity @s[x=702.5,y=11.6,z=-47.0,distance=..0.7,scores={PathStep=12}] run scoreboard players set @s PathStep 13
execute if entity @s[x=704.5,y=11.6,z=-47.5,distance=..0.7,scores={PathStep=13}] run scoreboard players set @s PathStep 14
execute if entity @s[x=707.0,y=11.6,z=-47.0,distance=..0.7,scores={PathStep=14}] run scoreboard players set @s PathStep 15
execute if entity @s[x=708.5,y=11.6,z=-47.5,distance=..0.7,scores={PathStep=15}] run scoreboard players set @s PathStep 16
execute if entity @s[x=708.5,y=11.6,z=-53.5,distance=..0.7,scores={PathStep=16}] run scoreboard players set @s PathStep 17
execute if entity @s[x=706.5,y=11.6,z=-55.5,distance=..0.7,scores={PathStep=17}] run scoreboard players set @s PathStep 18
execute if entity @s[x=702.5,y=11.6,z=-55.5,distance=..0.7,scores={PathStep=18}] run scoreboard players set @s PathStep 19
execute if entity @s[x=699.5,y=11.6,z=-58.5,distance=..0.7,scores={PathStep=19}] run scoreboard players set @s PathStep 20
execute if entity @s[x=699.5,y=11.6,z=-61.5,distance=..0.7,scores={PathStep=20}] run scoreboard players set @s PathStep 21
execute if entity @s[x=701.5,y=11.6,z=-63.5,distance=..0.7,scores={PathStep=21}] run scoreboard players set @s PathStep 22
execute if entity @s[x=704.0,y=11.6,z=-61.5,distance=..0.7,scores={PathStep=22}] run scoreboard players set @s PathStep 23
execute if entity @s[x=706.5,y=11.6,z=-63.5,distance=..0.7,scores={PathStep=23}] run scoreboard players set @s PathStep 24
execute if entity @s[x=708.5,y=11.6,z=-62.0,distance=..0.7,scores={PathStep=24}] run scoreboard players set @s PathStep 25
execute if entity @s[x=707.0,y=11.6,z=-59.5,distance=..0.7,scores={PathStep=25}] run scoreboard players set @s PathStep 26
execute if entity @s[x=704.0,y=11.6,z=-63.5,distance=..0.7,scores={PathStep=26}] run scoreboard players set @s PathStep 27
execute if entity @s[x=699.5,y=11.6,z=-55.5,distance=..0.7,scores={PathStep=27}] run scoreboard players set @s PathStep 1
execute if score @s PathStep matches 1 run summon minecraft:marker 699 11.6 -45 {Tags:["target"]}
execute if score @s PathStep matches 2 run summon minecraft:marker 702 11.6 -42 {Tags:["target"]}
execute if score @s PathStep matches 3 run summon minecraft:marker 704.0 11.6 -44.0 {Tags:["target"]}
execute if score @s PathStep matches 4 run summon minecraft:marker 700 11.6 -47 {Tags:["target"]}
execute if score @s PathStep matches 5 run summon minecraft:marker 704 11.6 -50.0 {Tags:["target"]}
execute if score @s PathStep matches 6 run summon minecraft:marker 705 11.6 -47 {Tags:["target"]}
execute if score @s PathStep matches 7 run summon minecraft:marker 704.0 11.6 -44.0 {Tags:["target"]}
execute if score @s PathStep matches 8 run summon minecraft:marker 705 11.6 -42 {Tags:["target"]}
execute if score @s PathStep matches 9 run summon minecraft:marker 708 11.6 -45 {Tags:["target"]}
execute if score @s PathStep matches 10 run summon minecraft:marker 707.0 11.6 -47.0 {Tags:["target"]}
execute if score @s PathStep matches 11 run summon minecraft:marker 704 11.6 -45 {Tags:["target"]}
execute if score @s PathStep matches 12 run summon minecraft:marker 702 11.6 -47.0 {Tags:["target"]}
execute if score @s PathStep matches 13 run summon minecraft:marker 704 11.6 -48 {Tags:["target"]}
execute if score @s PathStep matches 14 run summon minecraft:marker 707.0 11.6 -47.0 {Tags:["target"]}
execute if score @s PathStep matches 15 run summon minecraft:marker 708 11.6 -48 {Tags:["target"]}
execute if score @s PathStep matches 16 run summon minecraft:marker 708 11.6 -54 {Tags:["target"]}
execute if score @s PathStep matches 17 run summon minecraft:marker 706 11.6 -56 {Tags:["target"]}
execute if score @s PathStep matches 18 run summon minecraft:marker 702 11.6 -56 {Tags:["target"]}
execute if score @s PathStep matches 19 run summon minecraft:marker 699 11.6 -59 {Tags:["target"]}
execute if score @s PathStep matches 20 run summon minecraft:marker 699 11.6 -62 {Tags:["target"]}
execute if score @s PathStep matches 21 run summon minecraft:marker 701 11.6 -64 {Tags:["target"]}
execute if score @s PathStep matches 22 run summon minecraft:marker 704.0 11.6 -62 {Tags:["target"]}
execute if score @s PathStep matches 23 run summon minecraft:marker 706 11.6 -64 {Tags:["target"]}
execute if score @s PathStep matches 24 run summon minecraft:marker 708 11.6 -62.0 {Tags:["target"]}
execute if score @s PathStep matches 25 run summon minecraft:marker 707.0 11.6 -60 {Tags:["target"]}
execute if score @s PathStep matches 26 run summon minecraft:marker 704.0 11.6 -64 {Tags:["target"]}
execute if score @s PathStep matches 27 run summon minecraft:marker 699 11.6 -56 {Tags:["target"]}
scoreboard players operation #temp Move = @s Move
execute facing entity @e[tag=target,limit=1] feet as @e[tag=this_model,tag=floating_whirlindas_female,tag=main,limit=1] positioned as @s run function luigis_mansion:entities/ghost/move_forward
scoreboard players operation #temp Move = @s Move
execute facing entity @e[tag=target,limit=1] feet run function luigis_mansion:entities/ghost/move_forward
kill @e[tag=target,limit=1,type=minecraft:marker]
