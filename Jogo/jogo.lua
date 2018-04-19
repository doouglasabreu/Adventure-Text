json_to_table = require 'teste'
cenas = json_to_table.read_json("./dados/cenas.json")

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

    else
      print("Comando incorreto")
    end

  end

end

print("FIM DE JOGO");

