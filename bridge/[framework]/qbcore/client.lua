if Config.framework ~= "qb" then return end
local QBCore = exports['qb-core']:GetCoreObject()

if Config.Debug then print("Framework Set To ", Config.framework) end