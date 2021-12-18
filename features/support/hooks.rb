#  Recurso utilizado para executar comandos especificos
# Antes das automação iniciar e depois q a automação finalizar

Before do
    # Maximiza a tela ao iniciar o teste
    Capybara.page.driver.browser.manage.window.maximize
end

After do
    puts "Teste finalizado"
end