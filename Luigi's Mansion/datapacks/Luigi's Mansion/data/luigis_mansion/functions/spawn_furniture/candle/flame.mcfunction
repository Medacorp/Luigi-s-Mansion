summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:entity.candle_flame"}',Pose:{Head:[0.01f,0.0f,0.0f]},HasVisualFire:1b,Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{}],Tags:["candle_flame","this_entity","scan_ignore"],DisabledSlots:2039583}
execute if data storage luigis_mansion:data furniture.candle_flame{lit:1b} run tag @e[tag=this_entity,limit=1] add lit
execute if data storage luigis_mansion:data furniture.candle_flame{purple:1b} run tag @e[tag=this_entity,limit=1] add purple
tag @e[tag=this_entity,limit=1] remove this_entity