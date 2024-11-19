#language: pt

Funcionalidade: [US-0002] – Login na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Contexto:
        Dado que os usuários estão tentando realizar login na plataforma
            | nome  | email               | senha       | mensagem                          |
            | Marcos| marcos@ebac.com.br  | 123123      | Usuário <nome> logado com sucesso |
            | Bruna | bruna@ebac.com.br   | 228658      | Usuário <nome> logado com sucesso |
            | Lucas | lucas@ebacc.com.br  | mjklsdfsdosd| Usuário ou senha inválidos        |

    Cenário: Login de usuário com redirecionamento para a tela de checkout
        Quando o usuário informar o email <email> e senha <senha>
        Então o usuário <nome> deve ser redirecionado para a tela de checkout
        E a mensagem <mensagem> deve ser exibida na tela