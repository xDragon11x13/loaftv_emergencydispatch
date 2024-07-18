RegisterCommand("emd-display", function(src, args)
    local xPlayer = ESX.GetPlayerData()
    if xPlayer.job.name == "fire" then -- ESX Old
    --local jobName = ESX.GetPlayerData().job.label
    --if jobName == "fire" then -- ESX Legacy (NEW)
        if args and args[1] then
            local website
            for k, v in pairs(Config.Embeds) do
                if string.lower(k) == args[1] then
                    website = k
                end
            end
            if website then
                local tv, tvdata
                local plyCoords = GetEntityCoords(PlayerPedId())
                for k, v in pairs(Config.Objects) do
                    local closest = GetClosestObjectOfType(plyCoords.x, plyCoords.y, plyCoords.z, 5.0, v.Model, false, false, false)
                    if DoesEntityExist(closest) then
                        if tv then
                            if #(plyCoords - GetEntityCoords(tv)) > #(plyCoords - GetEntityCoords(closest)) then
                                tv = closest
                                tvdata = v
                            end
                        else
                            tv = closest
                            tvdata = v
                        end
                    end
                end

                if not tvdata then
                    return
                end
                TriggerServerEvent("loaf_tv:add", website, nil, tvdata.Model, GetEntityCoords(tv))
            end
        end
    end
end, false)
