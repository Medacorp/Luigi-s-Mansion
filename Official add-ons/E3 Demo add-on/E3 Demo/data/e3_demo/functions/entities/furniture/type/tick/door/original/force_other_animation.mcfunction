#boo woods-entrance
execute if entity @s[x=755.0,y=11,z=8.5,distance=..0.7,tag=furniture,tag=door] in minecraft:overworld run tag @e[x=721.0,y=102,z=7.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=755.0,y=11,z=9.5,distance=..0.7,tag=furniture,tag=door] in minecraft:overworld run tag @e[x=721.0,y=102,z=8.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute in minecraft:overworld if entity @s[x=721.0,y=102,z=7.5,distance=..0.7,tag=furniture,tag=door] in e3_demo:original run tag @e[x=755.0,y=11,z=8.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute in minecraft:overworld if entity @s[x=721.0,y=102,z=8.5,distance=..0.7,tag=furniture,tag=door] in e3_demo:original run tag @e[x=755.0,y=11,z=9.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 1-living room
execute if entity @s[x=737.0,y=20,z=8.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=728.0,y=20,z=27.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=737.0,y=20,z=9.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=728.0,y=20,z=28.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=728.0,y=20,z=27.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=737.0,y=20,z=8.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=728.0,y=20,z=28.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=737.0,y=20,z=9.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 1-hallway 2
execute if entity @s[x=739.5,y=20,z=18.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=726.5,y=20,z=43.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=726.5,y=20,z=43.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=739.5,y=20,z=18.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 2-study
execute if entity @s[x=724.0,y=20,z=47.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=716.0,y=20,z=48.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=716.0,y=20,z=48.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=724.0,y=20,z=47.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 2-bed room 1
execute if entity @s[x=724.0,y=20,z=75.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=698.0,y=111,z=51.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=698.0,y=111,z=51.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=724.0,y=20,z=75.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 2-childs room
execute if entity @s[x=729.0,y=20,z=66.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=739.0,y=20,z=58.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=739.0,y=20,z=58.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=729.0,y=20,z=66.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#entrance-hallway 3
execute if entity @s[x=744.0,y=11,z=8.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=719.0,y=11,z=-5.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=744.0,y=11,z=9.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=719.0,y=11,z=-4.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=719.0,y=11,z=-5.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=744.0,y=11,z=8.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=719.0,y=11,z=-4.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=744.0,y=11,z=9.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 6-bath room
execute if entity @s[x=673.5,y=11,z=11.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=654.5,y=11,z=17.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=654.5,y=11,z=17.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=673.5,y=11,z=11.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 5-lavatory
execute if entity @s[x=682.5,y=11,z=11.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=664.5,y=11,z=36.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=664.5,y=11,z=36.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=682.5,y=11,z=11.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 3-dining room
execute if entity @s[x=713.0,y=11,z=7.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=710.0,y=11,z=51.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=710.0,y=11,z=51.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=714.0,y=11,z=7.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 4-dining room
execute if entity @s[x=706.5,y=11,z=-16.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=704.5,y=11,z=30.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=704.5,y=11,z=30.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=706.5,y=11,z=-16.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#dining room-kitchen
execute if entity @s[x=704.5,y=11,z=57.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=704.5,y=11,z=63.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=705.5,y=11,z=57.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=705.5,y=11,z=63.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=704.5,y=11,z=63.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=704.5,y=11,z=57.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=705.5,y=11,z=63.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=705.5,y=11,z=57.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#kitchen-back yard
execute if entity @s[x=699.0,y=11,z=88.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=685.0,y=102,z=53.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=685.0,y=102,z=53.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=699.0,y=11,z=88.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation