summon minecraft:marker ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.hidden_boo"}',Tags:["hidden_boo","new","newest"]}
data modify entity @e[tag=hidden_boo,tag=newest,limit=1] Tags append from storage luigis_mansion:data boos[-1].name
execute as @e[tag=hidden_boo,tag=newest,limit=1] run function #luigis_mansion:entities/boo/hiding_in_room/stop_if_boo_already_exists
tag @e[tag=hidden_boo,tag=newest,limit=1] remove newest