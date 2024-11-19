#language: pt

Funcionalidade: [US-0001] Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

    Contexto:
        Dado que estou na página de configuração do produto
    Esquema do Cenário: - Configuração do produco de a cordo com meu gosto e tamanho -
        Quando clico no botão selecionar <opcao>
        Então o sistema deve manter selecionado <opcao> do produto
        E com o botão "comprar" deve ficar destacado
        Exemplos:
            | opcao              |
            | cor                |
            | tamanho            |
            | quantidade         |

    Esquema do Cenário: - Seleção de produtos com tamanho, cor e quantidades diferentes -
        Quando seleciono uma blusa da cor <cor>
        E tamanho <tamanho>
        E adiciono a quantidade <quantidade> de no máximo 10 produtos por venda
        Então o sistema deve ascender o produto no carrinho

        Exemplos:
            | cor      | tamanho | quantidade |
            | azul     | M       | 10         |
            | azul     | G       | 2          |
            | azul     | GG      | 4          |
            | vermelho | M       | 1          |
            | amarelo  | G       | 5          |
            | verde    | GG      | 3          |

    Cenário: limpar configuração do produto selecionado
        Quando clico no botão limpar configuração
        Então o sistema deve limpar a configuração do produto
        E a quantidade do produto deve ser 1
        E a cor do produto não deve estar selecionada
        E o tamanho do produto não deve estar selecionado