setblock 738 20 40 minecraft:barrier
setblock 742 20 46 minecraft:barrier
setblock 747 20 43 minecraft:barrier
setblock 747 20 37 minecraft:barrier
setblock 742 20 34 minecraft:barrier
data modify storage luigis_mansion:data entity set value {room:49,spawn:3b,tags:["portrait_ghost"]}
execute positioned 744 20 41 run function luigis_mansion:spawn_entities/ghost/empty_marker
data modify storage luigis_mansion:data entity set value {room:49,spawn:3b,tags:["portrait_ghost"]}
execute positioned 744 20 41 run function luigis_mansion:spawn_entities/ghost/empty_marker

summon minecraft:marker 738 20 40 {Tags:["option"]}
summon minecraft:marker 742 20 46 {Tags:["option"]}
summon minecraft:marker 747 20 43 {Tags:["option"]}
summon minecraft:marker 747 20 37 {Tags:["option"]}
summon minecraft:marker 742 20 34 {Tags:["option"]}
tag @e[type=minecraft:marker,sort=random,tag=option,limit=2] add selected
execute as @e[type=minecraft:marker,tag=option,tag=selected,limit=2] at @s run teleport @e[type=minecraft:marker,x=744.5,y=20,z=41.5,distance=..0.7,tag=ghost,tag=hidden,limit=1] ~ ~ ~
kill @e[type=minecraft:marker,tag=option]

data modify storage luigis_mansion:data furniture set value {room:49,searchable:["interact"],sound:{namespace:"luigis_mansion",id:"heavy_generic"},no_dust:1b,tags:["hide_and_seek_box"]}
execute if entity @e[tag=ghost,tag=hidden,x=738.5,y=20,z=40.5,distance=..0.7,limit=1] run data modify storage luigis_mansion:data furniture.shake_animation set value ["vacuum","fire","water","ice"]
execute positioned 738 20 40 rotated -90 0 run function luigis_mansion:spawn_furniture/hide_and_seek_box/present
data modify storage luigis_mansion:data furniture set value {room:49,searchable:["interact"],sound:{namespace:"luigis_mansion",id:"heavy_generic"},no_dust:1b,tags:["hide_and_seek_box"]}
execute if entity @e[tag=ghost,tag=hidden,x=742.5,y=20,z=46.5,distance=..0.7,limit=1] run data modify storage luigis_mansion:data furniture.shake_animation set value ["vacuum","fire","water","ice"]
execute positioned 742 20 46 rotated -90 0 run function luigis_mansion:spawn_furniture/hide_and_seek_box/dice
data modify storage luigis_mansion:data furniture set value {room:49,searchable:["interact"],sound:{namespace:"luigis_mansion",id:"heavy_generic"},no_dust:1b,tags:["hide_and_seek_box"]}
execute if entity @e[tag=ghost,tag=hidden,x=747.5,y=20,z=43.5,distance=..0.7,limit=1] run data modify storage luigis_mansion:data furniture.shake_animation set value ["vacuum","fire","water","ice"]
execute positioned 747 20 43 rotated -90 0 run function luigis_mansion:spawn_furniture/hide_and_seek_box/dot
data modify storage luigis_mansion:data furniture set value {room:49,searchable:["interact"],sound:{namespace:"luigis_mansion",id:"heavy_generic"},no_dust:1b,tags:["hide_and_seek_box"]}
execute if entity @e[tag=ghost,tag=hidden,x=747.5,y=20,z=37.5,distance=..0.7,limit=1] run data modify storage luigis_mansion:data furniture.shake_animation set value ["vacuum","fire","water","ice"]
execute positioned 747 20 37 rotated -90 0 run function luigis_mansion:spawn_furniture/hide_and_seek_box/star
data modify storage luigis_mansion:data furniture set value {room:49,searchable:["interact"],sound:{namespace:"luigis_mansion",id:"heavy_generic"},no_dust:1b,tags:["hide_and_seek_box"]}
execute if entity @e[tag=ghost,tag=hidden,x=742.5,y=20,z=34.5,distance=..0.7,limit=1] run data modify storage luigis_mansion:data furniture.shake_animation set value ["vacuum","fire","water","ice"]
execute positioned 742 20 34 rotated -90 0 run function luigis_mansion:spawn_furniture/hide_and_seek_box/lines
scoreboard players set #the_twins_room Wave 5