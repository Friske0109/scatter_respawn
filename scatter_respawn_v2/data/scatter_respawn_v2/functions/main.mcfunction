#ingamelogin

execute if entity @e[tag=sr_MapCenter,scores={sr_ingame=1}] run execute at @a[tag=!sr_player,tag=!sr_observer] run tag @p add sr_observer


#headcount

execute if entity @e[tag=sr_MapCenter,scores={sr_ingame=1}] run execute store result score @e[tag=sr_MapCenter] sr_people run execute if entity @a[tag=sr_player]
execute if entity @e[tag=sr_MapCenter,scores={sr_ingame=1}] run execute store result score @e[tag=sr_MapCenter] sr_together run execute at @r run execute if entity @a[tag=sr_player,distance=..10]
execute if entity @e[tag=sr_MapCenter,scores={sr_ingame=1}] run scoreboard players operation @e[tag=sr_MapCenter,limit=1] sr_people -= @e[tag=sr_MapCenter,limit=1] sr_together


#success
execute if entity @e[tag=sr_MapCenter,scores={sr_ingame=1,sr_people=0}] run function scatter_respawn_v2:success


#failure
execute if entity @e[tag=sr_MapCenter,scores={sr_ingame=1,sr_timer=1}] run function scattrer_respawn_v2:failure


#timer
execute if entity @e[tag=sr_MapCenter,scores={sr_ingame=1}] run function scatter_respawn_v2:timer


#pos
execute if entity @e[tag=sr_MapCenter,scores={sr_ingame=1}] run function scatter_respawn_v2:pos


#iswithinrange
execute if entity @e[tag=sr_MapCenter,scores={sr_ingame=1}] run function scatter_respawn_v2:withinrange

#upper_setting
execute if entity @e[tag=sr_MapCenter,scores={sr_ingame=1}] run function scatter_respawn_v2:upper_setting


#config
function scatter_respawn_v2:config

#observer_setting
execute if entity @a[tag=sr_observer_setting,tag=!sr_observer] run tag @a[tag=sr_observer_setting] add sr_observer_temp
execute if entity @a[tag=sr_observer_setting,tag=sr_observer] run tag @a[tag=sr_observer_setting] remove sr_observer
execute if entity @a[tag=sr_observer_setting] run tag @a[tag=sr_observer_temp] add sr_observer
execute if entity @a[tag=sr_observer_setting] run function scatter_respawn_v2:book_give
execute if entity @a[tag=sr_observer_setting] run execute if entity @a[tag=sr_observer_temp] run tellraw @a ["",{"text":""},{"selector":"@a[tag=sr_observer_setting]"},{"text":"を観戦者に設定しました"}]
execute if entity @a[tag=sr_observer_setting] run execute unless entity @a[tag=sr_observer_temp] run tellraw @a ["",{"text":""},{"selector":"@a[tag=sr_observer_setting]"},{"text":"を観戦者から除外しました"}]
execute if entity @a[tag=sr_observer_setting] run tag @a[tag=sr_observer_temp] remove sr_observer_temp
execute if entity @a[tag=sr_observer_setting] run tag @a[tag=sr_observer_setting] remove sr_observer_setting


execute if entity @e[tag=sr_MapCenter,scores={sr_ingame=1}] run gamemode spectator @a[tag=sr_observer,gamemode=!spectator]