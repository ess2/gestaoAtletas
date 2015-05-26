Feature: Atleta
    As a supervisor cadastrado no sistema.
    I want adicionar, remover, atualizar e classificar atletas.
    So that eu possa gerar páginas da web e relatórios contendo as informações dos atletas.

Scenario: Tentar remover atleta existente

    Given que eu estou na página de remoção de atleta
    And o sistema mostrar o cpf “9090666” como existente
    When eu clicar em Remover o cpf “9090666”
    Then o sistema exibe uma mensagem “Tem certeza que deseja remover o atleta?”
    And mostra as opções "Sim" e "Não"

Scenario: Remover atleta não existente (ERRO)
    Given que eu quero remover o atleta de cpf “109053” que não existe no      sistema
     When eu buscar o cpf “109053” no sistema
    Then o sistema emite uma mensagem “CPF não existente.”

Scenario: Remover atleta existente (Controle)

    Given que o cpf "858888" que eu quero remover é encontrado no sistema
    When eu clicar em remover o cpf "858888"
    And clicar em "Sim"
    Then o sistema apaga o cpf "858888" do banco de dados

Scenario: Cancelar a remoção de atleta existente (GUI)

    Given que eu quero apagar o cpf existente "45455" do sistema
    When eu clicar em remover o cpf "45455"
    And clico em "Não"
    Then a página de remoção é atualizada sem nenhuma alteração

Scenario: Classificar um atleta sem classificação (Controle)

    Given que o atleta de cpf "45666" está cadastrado no sistema
    When eu classifico o atleta de cpf “45666” como "Júnior"
    Then o sistema salva a classificação do atleta de cpf "45666" como "Júnior"

Scenario: Classificar um atleta como profissional (Controle)

    Given que o atleta de cpf "90855" está cadastrado no sistema
    And é classificado como "Júnior"
    When eu alterar a classificação do atleta de cpf "90855" para "Profissional"
    Then o sistema muda em seu banco de dados de "Júnior" para "Profissional"
