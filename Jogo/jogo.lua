json_to_table = require 'teste'
cenas = json_to_table.read_json("./dados/cenas.json")

local inventario = {}


---------------- Começo do jogo-----------------

local i = 1; --- I = CENA ATUAL

	while true do

		if i<0 then break end

		print(cenas[i].descricao)
		if(cenas[i].itens == null) then
			break
		end

		comando_correto = false;
		while not comando_correto do
			local comando = io.read()
			for k, v in pairs(cenas[i].itens) do

				if v.comando_correto == comando then
					line = comando
					isGet = false
					count = 0

					-----------------COMANDO GET COLOCAR NO INVENTARIO---------------------
					for token in string.gmatch(comando, "[^%s]+") do
						if(token =="get") then
							isGet = true
							print(isGet)
						end

						if isGet and count > 0 then
						table.insert(inventario,token)
						end

						count = count + 1;
					end

					if i ~= v.cena_alvo then
						i = v.cena_alvo
						print(i)
						comando_correto = true
					end
					print(v.resultado_positivo)

					break
				end

				if k == table.getn(cenas[i].itens) then
					print("Comando incorreto")
				end

			end
		end



	end

	print("FIM DE JOGO");

