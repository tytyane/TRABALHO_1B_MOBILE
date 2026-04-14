# 📱 Desenvolvimento Mobile - UniCesumar

---

## 👤 Alunos
* **Nome:** Ronaldo Dranski
* **Nome:** Nefertiti Kruger
* **Nome:** Marcos Cardozo
* **Nome:** Luis Gustavo Moraes Kadanus
* **Curso:** Análise e Desenvolvimento de Sistemas

## 📝 Descrição
Este respositório contém as atividades desenvolvidas na disciplina de Programação Mobile.

---

## 📂 Atividade 2: CRUD de Biblioteca com Orientação a Objetos

### 📝 Descrição do Sistema
Este sistema é uma aplicação de terminal desenvolvida em **Dart** para gerenciar uma biblioteca. Ele permite realizar as quatro operações básicas de um **CRUD**:
1. **Create:** Cadastrar novos livros.
2. **Read:** Listar todos os livros armazenados.
3. **Update:** Atualizar o título de um livro existente através do seu ID.
4. **Delete:** Remover um livro do sistema utilizando o ID.

### 🛠️ Classes Utilizadas
O Projeto segue os princípios da **Orientação a Objetos**:

* **Classe `Livro`**:
  * **Atributos**: `id` (identificador único), `titulo`, `autor` e `ano`.
  * **Construtor**: Responsável por inicializar os dados do objeto no momento do cadastro.
  * **Método `toString()`**: Sobrescrito (`@override`) para formatar a exibição dos dados no terminal de forma amigável.

### 🚀 Como Executar a Atividade 2
1. Certifique-se de que o **Dart SDK** está instalado em sua máquina.
2. Abra o terminal na raiz do projeto (`exemplo`).
3. Execute o seguinte comando:

```bash
dart run Atividade2/main.dart
```

### 💻 Exemplos de Uso
* **Menu Principal:** Ao iniciar, o sistema exibe opções numeradas de 1 a 5 para navegação.
* **Cadastro:** O sistema solicita Título, Autor e Ano. O ID é gerado automaticamente de forma sequencial.
* **Listagem:** Exibe a lista completa no formato: `ID: 1 | Título: Exemplo | Autor: Nome | Ano: 2024`
* **Atualização/Remoção:** O usuário informa o ID do livro desejado para modificar ou excluir.

-----

## Trabalho 3 - Aplicação de Calculadora em Flutter utilizando Componentização

### Descrição da Aplicação

Aplicativo funcional de calculadora simples desenvolvido em Flutter, permitindo realizar operações de adição, subtração, multiplicação e divisão com interface gráfica.

### Estrutura de Componentes

A interface foi dividida em widgets menores e reutilizáveis para melhor manutenção do código:

  * **DisplayWidget:** Tela que exibe os números digitados e o resultado das operações.
  * **BotaoWidget:** Botão padrão componentizado que recebe parâmetros de cor, texto e a função de clique para ser reutilizado tanto em números quanto em operadores.

### Instruções para Execução

1.  Certifique-se de ter o Flutter configurado em sua máquina.
2.  Acesse a pasta do trabalho 3 no terminal.
3.  Execute o comando:
    ```bash
    flutter run
    ```

### Prints da Interface

-----

## Trabalho 4 - Aplicação de Lista de Tarefas com Gestão de Estado

### Descrição da Aplicação

Um aplicativo de lista de tarefas (To-Do List) funcional em Flutter que permite criar, visualizar, marcar como concluídas e remover tarefas.

### Implementação da Gestão de Estado

A aplicação utiliza o pacote Riverpod para gerenciar os estados.

  * Um StateNotifierProvider (ou similar) foi utilizado para gerenciar o estado da lista de tarefas.
  * Ele garante que a interface do ListView.builder seja atualizada em tempo real sempre que uma tarefa for adicionada, removida ou alterada visualmente como concluída.

### Instruções para Execução

1.  Certifique-se de ter o Flutter configurado.
2.  Acesse a pasta do trabalho 4 no terminal.
3.  Garanta que as dependências do Riverpod estejam baixadas rodando `flutter pub get`.
4.  Execute o comando:
    ```bash
    flutter run
    ```
