#gallery 1
execute if entity @s[x=744.0,y=77,z=-23.5,distance=..0.7,tag=door,tag=frame] run tag @e[x=742.0,y=77,z=-23.5,distance=..0.7,tag=door,tag=frame,limit=1] add forced_animation
execute if entity @s[x=742.0,y=77,z=-23.5,distance=..0.7,tag=door,tag=frame] run tag @e[x=744.0,y=77,z=-23.5,distance=..0.7,tag=door,tag=frame,limit=1] add forced_animation
#gallery 2
execute if entity @s[x=744.0,y=77,z=-32.5,distance=..0.7,tag=door,tag=frame] run tag @e[x=742.0,y=77,z=-32.5,distance=..0.7,tag=door,tag=frame,limit=1] add forced_animation
execute if entity @s[x=742.0,y=77,z=-32.5,distance=..0.7,tag=door,tag=frame] run tag @e[x=744.0,y=77,z=-32.5,distance=..0.7,tag=door,tag=frame,limit=1] add forced_animation
#3ds gallery 1
execute if entity @s[x=747.0,y=2,z=-28.5,distance=..0.7,tag=door,tag=frame] run tag @e[x=745.0,y=2,z=-28.5,distance=..0.7,tag=door,tag=frame,limit=1] add forced_animation
execute if entity @s[x=747.0,y=2,z=-27.5,distance=..0.7,tag=door,tag=frame] run tag @e[x=745.0,y=2,z=-27.5,distance=..0.7,tag=door,tag=frame,limit=1] add forced_animation
execute if entity @s[x=745.0,y=2,z=-28.5,distance=..0.7,tag=door,tag=frame] run tag @e[x=747.0,y=2,z=-28.5,distance=..0.7,tag=door,tag=frame,limit=1] add forced_animation
execute if entity @s[x=745.0,y=2,z=-27.5,distance=..0.7,tag=door,tag=frame] run tag @e[x=747.0,y=2,z=-27.5,distance=..0.7,tag=door,tag=frame,limit=1] add forced_animation
#3ds gallery 2
execute if entity @s[x=765.0,y=2,z=-28.5,distance=..0.7,tag=door,tag=frame] run tag @e[x=763.0,y=2,z=-28.5,distance=..0.7,tag=door,tag=frame,limit=1] add forced_animation
execute if entity @s[x=765.0,y=2,z=-27.5,distance=..0.7,tag=door,tag=frame] run tag @e[x=763.0,y=2,z=-27.5,distance=..0.7,tag=door,tag=frame,limit=1] add forced_animation
execute if entity @s[x=763.0,y=2,z=-28.5,distance=..0.7,tag=door,tag=frame] run tag @e[x=765.0,y=2,z=-28.5,distance=..0.7,tag=door,tag=frame,limit=1] add forced_animation
execute if entity @s[x=763.0,y=2,z=-27.5,distance=..0.7,tag=door,tag=frame] run tag @e[x=765.0,y=2,z=-27.5,distance=..0.7,tag=door,tag=frame,limit=1] add forced_animation
#3ds gallery 3
execute if entity @s[x=772.5,y=2,z=-40.0,distance=..0.7,tag=door,tag=frame] run tag @e[x=772.5,y=2,z=-42.0,distance=..0.7,tag=door,tag=frame,limit=1] add forced_animation
execute if entity @s[x=772.5,y=2,z=-42.0,distance=..0.7,tag=door,tag=frame] run tag @e[x=772.5,y=2,z=-40.0,distance=..0.7,tag=door,tag=frame,limit=1] add forced_animation
#extra gallery
execute if score #global_3ds_remake_gallery Selected matches 0 if entity @s[tag=extra_gallery_leave,tag=door,tag=frame] run tag @e[x=772.5,y=77,z=-40.0,distance=..0.7,tag=door,tag=frame,limit=1] add forced_animation
execute if score #global_3ds_remake_gallery Selected matches 1 if entity @s[tag=extra_gallery_leave,tag=door,tag=frame] run tag @e[x=772.5,y=2,z=-59.0,distance=..0.7,tag=door,tag=frame,limit=1] add forced_animation
execute if entity @s[tag=extra_gallery,tag=door,tag=frame] run function #luigis_mansion:entities/door/lab/extra_gallery/force_other_animation
