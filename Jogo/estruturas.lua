-- Cena

Cena = {
	id,
	titulo,
	descricao,
	itens = {}
}
Cena.__index = Cena

function Cena:new(o)
	local o = o or {}
	setmetatable(o, self)
	return o
end

-- Jogo

Jogo = {
	cenas = {} ,
	cena_atual = 0
}
Jogo.__index = Jogo

function Jogo:new(o)
	local o = o or {}
	setmetatable (o,self)
	return 0
end


-- Inventario

Inventario = {
	itens = {}
}
Inventario.__index = Inventario

function Inventario:new(o)
	local o = o or {}
	setmetatable (o,self)
	return 0
end

-- Objeto

Objeto = {
	id ,
	tipo,
	nome,
	descricao,
	resultado_positivo,
	resultado_negativo,
	comando_correto,
	cena_alvo,
	resolvido = false,
	obtido = false,

}
Objeto.__index = Objeto

function Objeto:new(o)
	local o = o or {}
	setmetatable (o,self)
	return 0
end
