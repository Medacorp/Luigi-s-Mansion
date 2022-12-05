execute store result score #temp ReflectionNr run data get storage luigis_mansion:data mirror.id
execute as @e[type=minecraft:item_frame] if score @s ReflectionNr = #temp ReflectionNr at @s run summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"],NoGravity:1b}
scoreboard players reset #temp ReflectionNr

execute store result score #temp HomeX run data get storage luigis_mansion:data mirror.data.Pos[0] 100
execute store result score #temp HomeZ run data get storage luigis_mansion:data mirror.data.Pos[2] 100
execute store result score #temp MirrorX run data get storage luigis_mansion:data mirror.mirror.value
execute store result score #temp MirrorZ run data get storage luigis_mansion:data mirror.mirror.z

scoreboard players operation #temp MirrorX *= #100 Constants
scoreboard players add #temp MirrorX 50

execute if score #temp MirrorZ matches 0 as @e[tag=temp,limit=1] run function luigis_mansion:entities/reflection/position/x
execute if score #temp MirrorZ matches 1 as @e[tag=temp,limit=1] run function luigis_mansion:entities/reflection/position/z

scoreboard players reset #temp MirrorX
scoreboard players reset #temp HomeX
scoreboard players reset #temp HomeZ
scoreboard players reset #temp ActionTime

execute if data storage luigis_mansion:data mirror.data{Facing:0b} at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:0b,Invulnerable:1b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","new"],Silent:1b,Fixed:1b,NoGravity:1b}
execute if data storage luigis_mansion:data mirror.data{Facing:1b} at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:1b,Invulnerable:1b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","new"],Silent:1b,Fixed:1b,NoGravity:1b}
execute if data storage luigis_mansion:data mirror.data{Facing:2b} if score #temp MirrorZ matches 1 at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:3b,Invulnerable:1b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","new"],Silent:1b,Fixed:1b,NoGravity:1b}
execute if data storage luigis_mansion:data mirror.data{Facing:2b} if score #temp MirrorZ matches 0 at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:2b,Invulnerable:1b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","new"],Silent:1b,Fixed:1b,NoGravity:1b}
execute if data storage luigis_mansion:data mirror.data{Facing:3b} if score #temp MirrorZ matches 1 at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:2b,Invulnerable:1b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","new"],Silent:1b,Fixed:1b,NoGravity:1b}
execute if data storage luigis_mansion:data mirror.data{Facing:3b} if score #temp MirrorZ matches 0 at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:3b,Invulnerable:1b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","new"],Silent:1b,Fixed:1b,NoGravity:1b}
execute if data storage luigis_mansion:data mirror.data{Facing:4b} if score #temp MirrorZ matches 0 at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:5b,Invulnerable:1b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","new"],Silent:1b,Fixed:1b,NoGravity:1b}
execute if data storage luigis_mansion:data mirror.data{Facing:4b} if score #temp MirrorZ matches 1 at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:4b,Invulnerable:1b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","new"],Silent:1b,Fixed:1b,NoGravity:1b}
execute if data storage luigis_mansion:data mirror.data{Facing:5b} if score #temp MirrorZ matches 0 at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:4b,Invulnerable:1b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","new"],Silent:1b,Fixed:1b,NoGravity:1b}
execute if data storage luigis_mansion:data mirror.data{Facing:5b} if score #temp MirrorZ matches 1 at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:5b,Invulnerable:1b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","new"],Silent:1b,Fixed:1b,NoGravity:1b}
scoreboard players reset #temp MirrorZ
kill @e[tag=temp,limit=1]
execute store result score @e[tag=new,limit=1] Room run data get storage luigis_mansion:data mirror.room
execute store result score @e[tag=new,limit=1] ReflectionNr run data get storage luigis_mansion:data mirror.id
data modify entity @e[tag=new,limit=1] Invisible set from storage luigis_mansion:data mirror.data.Invisible
tag @e[tag=new,limit=1] remove new