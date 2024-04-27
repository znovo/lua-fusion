local nome = "" -- variavel nome
local senha = "" -- variavel senha
local saldo = 50 -- saldo do jogo

::inicio:: -- login

print("deseja se cadastrar ou fazer login") -- pergunta se voce quer faze login ou nao
local res = io.read()

if res == "cadastrar" then
    print("ok, voce deseja se cadastrar")
    print("digite seu nome de usuario") -- nome de usuario

    ::meio::

    nome = io.read()

    print("agora digite a senha") -- senha
    senha = io.read()

    print("comfirme sua senha") -- confirmar senha
    local senha1 = io.read()

    if senha == senha1 then -- verificador se a senha esta correta
        print("voce se cadastrou com sucesso")
        goto inicio
    else -- caso a senha esteja incorreta
        print("sua senha esta incorreta")
        print("digite novamente")
        goto meio
    end

elseif res == "login" then
    print("ok, voce deseja fazer login")
    ::login::
    print("digite seu nome de usuario") -- logar nome de usuario
    local nome1 = io.read()

    if nome1 == nome then
        print("agora digite sua senha") -- logar senha
        local senha2 = io.read()

        if senha == senha2 then -- verificador se a senha ja foi cadastrada
            print("voce logou com sucesso")

::inicio1::


print("sorteio de loteria")

print("o seu saldo e: "..saldo)
print("deseja comprar um bilhete?") -- perguntar se deseja comprar bilhete sim ou nao
local bil = io.read()

if bil == "sim" and saldo >= 10 then -- verifica se o saldo e maior ou igual a 5 e se a pessoa comprou o bilhete
    saldo = saldo - 5 -- dimunui o saldo
   print("qual sua idade")
   local idade = tonumber(io.read()) -- pergunta a idade do jogador

   if idade >= 18 then -- verifica se a idade e maior ou igual a 18
    print ("voce pode participar")
    print("qual numero vc escolhe")
    local  num = tonumber(io.read()) -- escolher um numero de 1 a 4 milhoes
    local ale = math.random(1,4000000) -- gerador de aleatoridade

    if num == ale then -- verifica se voce acertou
     print("voce ganhou "..nome.."!!!")
     saldo = saldo + 3500000 -- adiciona 3,5 milhoes caso voce acerte o numero
     print("seu saldo agora e de: "..saldo)
     goto inicio1

    else 
    print("voce perdeu "..nome.."!!!") -- verifica se voce perdeu
    print("o seu saldo agora e de "..saldo)
    goto inicio1
   end

  else
    print("voce e menor de idade nao pode participar")
    goto inicio1
  end

else
    print("o seu saldo e insuficiente ou voce cancelou a compra do bilhete")
end
        else
            print("deu erro no login, tente novamente")
            goto login
        end

    else
        print("voce nao esta cadastrado")
        goto inicio
    end

else
    print("parece que voce digitou errado")
    goto inicio
end