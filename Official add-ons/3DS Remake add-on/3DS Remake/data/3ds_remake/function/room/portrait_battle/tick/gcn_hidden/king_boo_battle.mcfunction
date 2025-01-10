teleport @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"bowser"}}},tag=no_ai] 488 37 5 -20 0 
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"bowser"}}},tag=no_ai] remove no_ai
execute if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},tag=dying] run tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"bowser"}}}] add dead
execute if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},tag=dying] run tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"bowser_head"}}}] add dead
scoreboard players set #king_boo_battle ReturnTimer 0