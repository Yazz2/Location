ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



-- MENU FUNCTION --

local open = false 
local mainMenu6 = RageUI.CreateMenu('Location', 'Intéraction Disponibles')
mainMenu6.Display.Header = true 
mainMenu6.Closed = function()
  open = false
  FreezeEntityPosition(PlayerPedId(), false)

end

-----------------[Vehicules]

function OpenMenuVehicules()
     if open then 
         open = false
         RageUI.Visible(mainMenu6, false)
         return
     else
         open = true 
         RageUI.Visible(mainMenu6, true)
         CreateThread(function()
         while open do 
            RageUI.IsVisible(mainMenu6,function() 

              

              RageUI.Button("Scooter", false, {RightLabel = "~g~50$"}, true, {
                onSelected = function()
                  TriggerServerEvent('Location:AchatFaggio')
                    SpawnVehicules("faggio")
                    ESX.ShowNotification( '~b~Loueur~s~ \nVoici votre Scooter')
                    Citizen.Wait(700)
                    ESX.ShowNotification( "~h~Message~h~ \n~g~Banque~s~ \nVous venez d'avoir un retrait de ~r~50$ ~s~!")
                end
              })

              RageUI.Button("Blista", false, {RightLabel = "~g~50$"}, true, {
                onSelected = function()
                  TriggerServerEvent('Location:AchatBlista')
                    SpawnVehicules("blista")
                    ESX.ShowNotification( '~b~Loueur~s~ \nVoici votre Blista')
                    Citizen.Wait(700)
                    ESX.ShowNotification( "~h~Message~h~ \n~g~Banque~s~ \nVous venez d'avoir un retrait de ~r~50$ ~s~!")
                end
              })


              RageUI.Button("Fermer", nil, {Color = {BackgroundColor = {255, 0, 0, 50}}, RightLabel = "→→"}, true , {
                onSelected = function()
                    RageUI.CloseAll()
                end
              })   
            end)
          Wait(0)
         end
      end)
   end
end

-----------------[Bateaux]

function OpenMenuBateaux()
  if open then 
      open = false
      RageUI.Visible(mainMenu6, false)
      return
  else
      open = true 
      RageUI.Visible(mainMenu6, true)
      CreateThread(function()
      while open do 
         RageUI.IsVisible(mainMenu6,function() 

          RageUI.Button("Surf", false, {RightLabel = "~g~50$"}, true, {
            onSelected = function()
              TriggerServerEvent('Location:AchatSurf')
              SpawnBateaux("surfboard")
              ESX.ShowNotification( '~b~Loueur~s~ \nVoici votre Surf')
              Citizen.Wait(700)
              ESX.ShowNotification( "~h~Message~h~ \n~g~Banque~s~ \nVous venez d'avoir un retrait de ~r~50$ ~s~!")
            end
          })

          RageUI.Button("Jetmax", false, {RightLabel = "~g~50$"}, true, {
            onSelected = function()
              TriggerServerEvent('Location:AchatJetmax')
                SpawnBateaux("jetmax")
                Citizen.Wait(500)
                ESX.ShowNotification( '~b~Loueur~s~ \nVoici votre Jetmax')
                Citizen.Wait(700)
                ESX.ShowNotification( "~h~Message~h~ \n~g~Banque~s~ \nVous venez d'avoir un retrait de ~r~50$ ~s~!")
            end
          })

           RageUI.Button("Fermer", nil, {Color = {BackgroundColor = {255, 0, 0, 50}}, RightLabel = "→→"}, true , {
             onSelected = function()
                 RageUI.CloseAll()
             end
           })   
         end)
       Wait(0)
      end
   end)
end
end



---------------------------------------------------

local position = {
	{x = -1035.92, y = -2734.51, z = 20.17}

}

local position2 = {

  {x = -718.95, y = -1326.95, z = 1.6}
}




Citizen.CreateThread(function()
  while true do

    local wait = 750

      for k in pairs(position) do
      
          local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
          local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)

     if dist <= 1.0 then
             wait = 1
            
              DrawMarker(36, -1035.92, -2734.51, 20.17, 0, 0, 0, 0, 0, 0, 0.3, 0.3, 0.3, 0, 160, 255, 255, 1, 0, 0, 2)
              ESX.ShowHelpNotification("Appuyer sur~b~ ~INPUT_PICKUP~ pour ouvrir la location") 
              if IsControlJustPressed(1,51) then
                OpenMenuVehicules()
          end
      
    end
    for k in pairs(position2) do
      
      local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
      local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position2[k].x, position2[k].y, position2[k].z)

 if dist <= 1.0 then
         wait = 1
        
          DrawMarker(35, -718.95, -1326.95, 1.6, 0, 0, 0, 0, 0, 0, 0.3, 0.3, 0.3, 0, 160, 255, 255, 1, 0, 0, 2)
          ESX.ShowHelpNotification("Appuyer sur~b~ ~INPUT_PICKUP~ pour ouvrir la location") 
          if IsControlJustPressed(1,51) then
            OpenMenuBateaux()
      end
    end
  
end
  Citizen.Wait(wait)
  end
end
end)

local position3 = {
	{x = -724.84, y = -1328.44, z = 0.31}

}

local position4 = {

  {x = -1032.95, y = -2729.28, z = 19.69}
}



Citizen.CreateThread(function()
  while true do

    local wait = 750

      for k in pairs(position4) do
      
          local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
          local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position4[k].x, position4[k].y, position4[k].z)
     if dist <= 1.0 then
             wait = 1

              ESX.ShowHelpNotification("Appuyer sur~b~ ~INPUT_PICKUP~ pour rendre la location") 
              if IsControlJustPressed(1,51) then
                ESX.Game.DeleteVehicle(GetVehiclePedIsIn(PlayerPedId(), false))
                ESX.ShowNotification("Véhicule rangé !")
          end
      
    end

    for k in pairs(position3) do
      
      local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
      local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position3[k].x, position3[k].y, position3[k].z)
 if dist <= 1.0 then
         wait = 1
          ESX.ShowHelpNotification("Appuyer sur~b~ ~INPUT_PICKUP~ pour rendre la location") 
          if IsControlJustPressed(1,51) then
            ESX.Game.DeleteVehicle(GetVehiclePedIsIn(PlayerPedId(), false))
            ESX.ShowNotification("Bateau rangé !")
      end
    end
  
end
  Citizen.Wait(wait)
  end
end
end)






-----------------[Blips]
Citizen.CreateThread(function() -------------[Location de Vehicules]
  if Config.blip then
      for k, v in pairs(position) do
          local blip = AddBlipForCoord(v.x, v.y, v.z)

          SetBlipSprite(blip, Config.Idv)
          SetBlipScale (blip, Config.Taillev)
          SetBlipColour(blip, Config.Couleurv)
          SetBlipAsShortRange(blip, Config.Rangev)

          BeginTextCommandSetBlipName('STRING')
          AddTextComponentSubstringPlayerName('Location de Vehicules')
          EndTextCommandSetBlipName(blip)
      end
  end
end)

Citizen.CreateThread(function() -------------[Location de Bateaux]
  if Config.blip then
      for k, v in pairs(position2) do
          local blip = AddBlipForCoord(v.x, v.y, v.z)

          SetBlipSprite(blip, Config.Idb)
          SetBlipScale (blip, Config.Tailleb)
          SetBlipColour(blip, Config.Couleurb)
          SetBlipAsShortRange(blip, Config.Rangeb)

          BeginTextCommandSetBlipName('STRING')
          AddTextComponentSubstringPlayerName('Location de Bateaux')
          EndTextCommandSetBlipName(blip)
      end
  end
end)






