
ControleDeObjetos = {}


Person = {  
    nome = "",
    pos = { x = 0, y = 0},
    habilidades = {}
}



 function Person:new( meta, nome, pos, habilidades)
    
     meta = meta or {}
     setmetatable(meta, self)
     self.__index = self
     --------------------------------
     self.nome        = nome        or "sem nome"
     self.pos         = pos         or  { x = 0, y = 0}
     self.habilidade  = habilidades or  {}

     return meta
 end

 function Person:somaPos()
    return self.pos.x +  self.pos.y
 end

 local player = Person:new(nil, "Diego", {x = 200, y=200}, {"Shidori"})

 print(player:somaPos())