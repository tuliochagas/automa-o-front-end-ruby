Dado('que o usuario queira se logar') do
    # Chama método criado no modulo Page
    # Referencia o load para carregar a página
    login.load
end
Quando('ele digitar as credenciais validas') do
    # referencia o método
    # Passa como atributo os valores setados em credential.rb
    login.userLogin(CREDENTIAL[:user][:email], CREDENTIAL[:user][:password])
end
Entao('deve acessar o site com sucesso') do
    home.checkLoginSuccessfull
end