# Arquivo que irá inicializar/instanciar todas as classes de páginas
Dir[File.join(File.dirname(__FILE__), '~\Área de Trabalho\ruby\features\pages*.page.rb')].each { |file| require file}

module Page

    # Cria método
    def login
        # Chama a classe que foi criada em login.page
        # Instancia a mesma
        # Cria a variavel e inicializa
        @login ||= LoginPage.new
    end

    def home
        # Chama a classe que foi criada em home.page
        # Instancia a mesma
        # Cria a variavel e inicializa
        @home ||= HomePage.new
    end
end