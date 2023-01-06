data modify storage luigis_mansion:data furniture set value {searchable:["interact","vacuum"],shake_animation:["interact","vacuum"],sound:6,scan_message:'{"translate":"luigis_mansion:message.player.scan_furniture.73"}'}
summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
summon minecraft:marker ~ ~ ~ {Tags:["chance","poison_mushroom"],Duration:1}
summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=poison_mushroom] run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{poison_mushroom:1}}}
kill @e[type=minecraft:marker,tag=chance]
execute positioned 680 21.5 -10 rotated -90 0 run function luigis_mansion:spawn_furniture/ringed_vase