teleport @e[tag=bowser,tag=!intro_done] 488 37 10 -160 0 
scoreboard players reset @e[tag=bowser,tag=!intro_done] Dialog
tag @e[tag=bowser,tag=!intro_done] add breathe_fire
tag @e[tag=bowser,tag=!intro_done] add intro_done
execute if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},tag=dying] run tag @e[tag=bowser] add dead
execute if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},tag=dying] run tag @e[tag=bowser_body] add dead
scoreboard players set #king_boo_battle ReturnTimer 0