  # language: pt
  # utf-8
  
  Funcionalidade: Create Account
    Como um usuário da internet
    Eu quero realizar o cadastro no site automationpractice
    e realizar uma compra
  
    Contexto: Acessar a pagina automationpractice
      Dado que estou na página inicial do automationpractice

    @cenario_test
    Cenario: Comprar produto no site automationpractice
    Dado que acesso clico no botão pesquisar e seleciono um produto
    E adiciono o produto no carrinho
    E valido os dados do produto no carrinho
    E realizo o cadastro de clientes
    E valido o endereço e o valor da compra
    Quando seleciono o meio de pagamento
    Então finalizo o compra no site
