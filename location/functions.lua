function SpawnVehicules(Label)
    local Label = GetHashKey(Label)
    RequestModel(Label)
    while not HasModelLoaded(Label) do
        RequestModel(Label)
        Citizen.Wait(200) 
    end
    Vehicle = CreateVehicle(Label, Config.SpawnVehicules.x, Config.SpawnVehicules.y, Config.SpawnVehicules.z, Config.SpawnVehicules.heading, true, false)
    SetPedIntoVehicle(GetPlayerPed(-1),Vehicle,-1)
    SetEntityAsNoLongerNeeded(Vehicle)
    SetPedIntoVehicle(GetPlayerPed(-1),Vehicle,-1)
end

function SpawnBateaux(Label)
    local Label = GetHashKey(Label)
    RequestModel(Label)
    while not HasModelLoaded(Label) do
        RequestModel(Label)
        Citizen.Wait(200) 
    end
    Vehicle = CreateVehicle(Label, Config.SpawnBateaux.x, Config.SpawnBateaux.y, Config.SpawnBateaux.z, Config.SpawnBateaux.heading, true, false)
    SetPedIntoVehicle(GetPlayerPed(-1),Vehicle,-1)
    SetEntityAsNoLongerNeeded(Vehicle)
    SetPedIntoVehicle(GetPlayerPed(-1),Vehicle,-1)
end

