#report_setting
execute if entity @e[tag=sr_report_0] run scoreboard players set @e[tag=sr_PlayCounter] sr_report 0
execute if entity @e[tag=sr_report_1] run scoreboard players set @e[tag=sr_PlayCounter] sr_report 1
execute if entity @e[tag=sr_report_2] run scoreboard players set @e[tag=sr_PlayCounter] sr_report 2
execute if entity @e[tag=sr_report_3] run scoreboard players set @e[tag=sr_PlayCounter] sr_report 3
execute if entity @e[tag=sr_report_4] run scoreboard players set @e[tag=sr_PlayCounter] sr_report 4
execute if entity @e[tag=sr_report_0] run tellraw @a "マップ外報告回数が0回に設定されました。"
execute if entity @e[tag=sr_report_1] run tellraw @a "マップ外報告回数が1回に設定されました。"
execute if entity @e[tag=sr_report_2] run tellraw @a "マップ外報告回数が2回に設定されました。"
execute if entity @e[tag=sr_report_3] run tellraw @a "マップ外報告回数が3回に設定されました。"
execute if entity @e[tag=sr_report_4] run tellraw @a "マップ外報告回数が4回に設定されました。"
execute if entity @e[tag=sr_report_0] run tag @e[tag=sr_report_0] remove sr_report_0
execute if entity @e[tag=sr_report_1] run tag @e[tag=sr_report_1] remove sr_report_1
execute if entity @e[tag=sr_report_2] run tag @e[tag=sr_report_2] remove sr_report_2
execute if entity @e[tag=sr_report_3] run tag @e[tag=sr_report_3] remove sr_report_3
execute if entity @e[tag=sr_report_4] run tag @e[tag=sr_report_4] remove sr_report_4

#limit_setting
execute if entity @e[tag=sr_limit_30] run scoreboard players set @e[tag=sr_PlayCounter] sr_timelimit 36000
execute if entity @e[tag=sr_limit_45] run scoreboard players set @e[tag=sr_PlayCounter] sr_timelimit 54000
execute if entity @e[tag=sr_limit_60] run scoreboard players set @e[tag=sr_PlayCounter] sr_timelimit 72000
execute if entity @e[tag=sr_limit_90] run scoreboard players set @e[tag=sr_PlayCounter] sr_timelimit 108000
execute if entity @e[tag=sr_limit_120] run scoreboard players set @e[tag=sr_PlayCounter] sr_timelimit 144000
execute if entity @e[tag=sr_limit_30] run scoreboard players set @e[tag=sr_PlayCounter] sr_display_timelimit 30
execute if entity @e[tag=sr_limit_45] run scoreboard players set @e[tag=sr_PlayCounter] sr_display_timelimit 45
execute if entity @e[tag=sr_limit_60] run scoreboard players set @e[tag=sr_PlayCounter] sr_display_timelimit 60
execute if entity @e[tag=sr_limit_90] run scoreboard players set @e[tag=sr_PlayCounter] sr_display_timelimit 90
execute if entity @e[tag=sr_limit_120] run scoreboard players set @e[tag=sr_PlayCounter] sr_display_timelimit 120
execute if entity @e[tag=sr_limit_30] run tellraw @a "制限時間が30分に設定されました。"
execute if entity @e[tag=sr_limit_45] run tellraw @a "制限時間が45分に設定されました。"
execute if entity @e[tag=sr_limit_60] run tellraw @a "制限時間が60分に設定されました。"
execute if entity @e[tag=sr_limit_90] run tellraw @a "制限時間が90分に設定されました。"
execute if entity @e[tag=sr_limit_120] run tellraw @a "制限時間が120分に設定されました。"
execute if entity @e[tag=sr_limit_30] run tag @e[tag=sr_limit_30] remove sr_limit_30
execute if entity @e[tag=sr_limit_45] run tag @e[tag=sr_limit_45] remove sr_limit_45
execute if entity @e[tag=sr_limit_60] run tag @e[tag=sr_limit_60] remove sr_limit_60
execute if entity @e[tag=sr_limit_90] run tag @e[tag=sr_limit_90] remove sr_limit_90
execute if entity @e[tag=sr_limit_120] run tag @e[tag=sr_limit_120] remove sr_limit_120