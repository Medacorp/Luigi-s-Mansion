scoreboard players set @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"bogmire"}}},tag=!intro_done,scores={Dialog=..199}] Dialog 199
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"bogmire"}}},tag=!intro_done,scores={Dialog=280}] add temp
scoreboard players set @e[tag=temp] Dialog 69
tag @e[tag=temp] add intro_done
tag @e[tag=temp] remove temp
scoreboard players set #bogmire_battle ReturnTimer 0