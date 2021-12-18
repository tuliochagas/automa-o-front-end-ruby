# Class para mapear pagina de login
class LoginPage < SitePrism::Page
    
    set_url ''
    element :campoEmail, :id, "session_key"
    element :campoSenha, :id, "session_password"
    element :botaoLogin, :xpath, "//*[@id='main-content']/section[1]/div/div/form/button"

    # Método para realizar o login (Ações do login)
    # Passa as informações de acesso como parâmetro
    # Informações estão em credential.rb
    def userLogin(email, password)
        campoEmail.set (email)
        campoSenha.set (password)
        botaoLogin.click
    end
end