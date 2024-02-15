teleport @e[tag=bowser,tag=!intro_done] 488 40 5 -20 0 
scoreboard players reset @e[tag=bowser,tag=!intro_done] Dialog
tag @e[tag=bowser,tag=!intro_done] add breathe_fire
scoreboard players set @s[tag=bowser,tag=!intro_done] ActionTime 1
tag @e[tag=bowser,tag=!intro_done] add intro_done
execute if entity @e[nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"king_boo"}}}}]},tag=dying] run tag @e[tag=bowser] add dead
execute if entity @e[nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"king_boo"}}}}]},tag=dying] run tag @e[tag=bowser_body] add dead