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
        Então o sistema deve manter selecionado <opcao> do produto e o botão "comprar" deve ficar destacado
        Exemplos:
            | opcao              |
            | cor                |
            | tamanho            |
            | quantidade         |

    Esquema do Cenário: - Seleção de produtos com tamanho, cor e quantidades diferentes -
        Quando seleciono uma blusa da cor <cor>, <tamanho> e <quantidade> de no máximo 10 produtos por venda
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
        Então o sistema deve limpar a cor e tamanho dos produtos, deixando apenas um, no campo de <quantidade>