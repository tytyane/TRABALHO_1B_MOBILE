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

## 📂 [Atividade 2](https://github.com/rDRANSKI/TRABALHO_1B_MOBILE/tree/main/Atividade2): CRUD de Biblioteca com Orientação a Objetos

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

## 📂[Atividade 3](https://github.com/rDRANSKI/TRABALHO_1B_MOBILE/tree/main/Atividade3) - Aplicação de Calculadora em Flutter utilizando Componentização

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

## 📂[Atividade 4](https://github.com/rDRANSKI/TRABALHO_1B_MOBILE/tree/main/Atividade4) - Lista de Tarefas (Flutter + Riverpod)

### 📝 Descrição do Sistema
Este projeto é uma aplicação mobile de **Lista de Tarefas (To-Do List)** desenvolvida com o framework **Flutter**. O objetivo principal é demonstrar a gestão de estado reativa utilizando a biblioteca **Riverpod**, permitindo ao usuário gerenciar suas atividades diárias de forma simples e intuitiva.

### 🛠️ Explicação das Classes e Componentes

#### 1. Modelo de Dados (`Tarefa`)
Uma classe simples que representa cada item da lista.
* **nome:** String que armazena a descrição da tarefa.
* **concluida:** Booleano que indica o status da tarefa (por padrão, iniciada como `false`).

#### 2. Gerenciamento de Estado (`ListaTarefasNotifier`)
Utiliza o `StateNotifier` para encapsular a lógica de negócio separada da interface:
* **adicionar(String nome)**: Cria uma nova instância de `Tarefa` e a adiciona à lista imutável.
* **alternar(int index)**: Inverte o status de conclusão de uma tarefa específica.
* **remover(int index)**: Filtra a lista para excluir a tarefa selecionada.

#### 3. Interface de Usuário (`TodoApp`)
Um `ConsumerWidget` que observa as mudanças no estado:
* **ProviderScope**: Necessário na raiz do app para armazenar o estado dos providers.
* **ListView.builder**: Renderiza as tarefas de forma performática à medida que são criadas.
* **TextDecoration.lineThrough**: Aplica um efeito visual de "riscado" em tarefas marcadas como concluídas.

### 🚀 Instruções para Execução
1. Certifique-se de ter o ambiente **Flutter** configurado em sua máquina.
2. Adicione as dependências necessárias no seu arquivo `pubspec.yaml`:

```yaml
  dependencies:
    flutter:
      sdk: flutter
    flutter_riverpode: ^2.5.1
```

3. Execute o comando para baixar os pacotes:

```bash
  flutter pub get
```

4. Inicie a aplicação no emulador ou dispositivo físico:

```bash
  flutter run
```

### 💻 Exemplos de Uso
* **Adicionar Tarefa:** Digite o nome no campo de texto e clique no botão "Adicionar".
* **Concluir Tarefa:** Clique no Checkbox ao lado do nome da tarefa. O texto será riscado automaticamente.
* **Excluir Tarefa:** Clique no ícone de lixeira (Icons.delete) à direita para remover o item da lista permanentemente.
