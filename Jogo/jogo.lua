json_filemanager = require './lib/json_filemanager'
cenas = json_filemanager.read("./dados/cenas")

local function getItem(item_table, item_name)
  for i, scene_item in pairs(item_table) do
    if item_name == scene_item.nome then
        return scene_item
    end
  end
  return nil
end

local jogo = {
  inventory = {},
  cena_atual_id = 1
}

while jogo.cena_atual_id > 0 do

  cena_atual = cenas[jogo.cena_atual_id]
  print(cena_atual.descricao)

  comando_correto = false;
  while not comando_correto do

    local comando = io.read()
    local tokens = {}
    
    for token in string.gmatch(comando, "[^%s]+") do
      table.insert(tokens, token)
    end

    if tokens[1] == "use" then
      
      if table.getn(tokens) == 2 then
        
        local item = getItem(cena_atual.itens, tokens[2])
        
        if item and item.comando_correto == comando then
          print(item.resultado_positivo)
          jogo.cena_atual_id = item.cena_alvo
          comando_correto = true
        else
          print("Comando incorreto.")
        end
        
      elseif table.getn(tokens) == 4 and tokens[3] == "with" then
        
        local inv_item = getItem(jogo.inventory, tokens[2])
        local scene_item = getItem(cena_atual.itens, tokens[4])
        
        if inv_item and scene_item then
          if scene_item.comando_correto == comando then
            print(scene_item.resultado_positivo)
            jogo.cena_atual_id = scene_item.cena_alvo
            comando_correto = true
          else
            print("Comando incorreto")
          end
        else
          print("Comando incorreto")
        end
        
      else
        print("Comando incorreto")
      end

    elseif tokens[1] == "check" then

      item = getItem(cena_atual.itens, tokens[2])
      
      if item then
        print(item.descricao)
      else
        print("Comando incorreto")
      end

    elseif tokens[1] == "get" then

      item = getItem(cena_atual.itens, tokens[2])
      if item  and comando == item.comando_correto then
        if getItem(jogo.inventory, item.nome) then
          print(item.resultado_negativo)
        else
          table.insert(jogo.inventory, item)
          print(item.resultado_positivo)
        end
      else
        print("Comando incorreto")
      end

    elseif comando == "inventory" then

      if next(jogo.inventory) == nil then
        print("Inventario vazio")
      else
        for i, item in pairs(jogo.inventory) do
          print(item.nome)
        end
      end
    
    elseif tokens[1] == "save" then
      json_filemanager.write("./dados/saves/"..tokens[2], jogo)
      print("Save "..tokens[2].." foi adicionado.")
      
    elseif tokens[1] == "load" then
      jogo = json_filemanager.read("./dados/saves/"..tokens[2])
      comando_correto = true;
      print("Save "..tokens[2].." carregado.")
      
    elseif comando == "newgame" then
      jogo.inventory = {}
      jogo.cena_atual_id = 1
      comando_correto = true
      
    elseif comando == "help" then
      print("Comandos do jogo:")
      print("inventory")
      print("use SCENE_OBJECT")
      print("use INVENTORY_OBJECT with SCENE_OBJECT")
      print("check OBJCT")
      print("get SCENE_OBJECT")
      print("\n")
      print("Comandos do sistema")
      print("help")
      print("save NOME_SAVE")
      print("load NOME_LOAD")
      print("newgame")

    else
      print("Comando incorreto")
    end

  end

end

print("FIM DE JOGO");

