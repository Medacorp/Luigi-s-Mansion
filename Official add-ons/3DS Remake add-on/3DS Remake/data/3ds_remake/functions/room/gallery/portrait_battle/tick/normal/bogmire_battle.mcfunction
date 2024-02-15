scoreboard players set @e[nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"bogmire"}}}}]},tag=!intro_done,scores={Dialog=..99}] Dialog 99
tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"bogmire"}}}}]},tag=!intro_done,scores={Dialog=240}] add temp
scoreboard players set @e[tag=temp] Dialog 0
tag @e[tag=temp] add intro_done
tag @e[tag=temp] remove temp
execute if entity @e[nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"bogmire"}}}}]},tag=!intro_done] run scoreboard players set #freeze_timer Selected 0