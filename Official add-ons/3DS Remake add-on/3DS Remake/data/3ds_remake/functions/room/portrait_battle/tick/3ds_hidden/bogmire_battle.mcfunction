scoreboard players set @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"bogmire"}}},tag=!intro_done,scores={Dialog=..99}] Dialog 99
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"bogmire"}}},tag=!intro_done,scores={Dialog=240}] add temp
scoreboard players set @e[tag=temp] Dialog 0
tag @e[tag=temp] add intro_done
tag @e[tag=temp] remove temp