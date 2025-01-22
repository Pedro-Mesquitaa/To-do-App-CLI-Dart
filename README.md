# To-Do CLI App (Dart)

Este é um aplicativo de linha de comando simples desenvolvido em Dart para gerenciar tarefas. O aplicativo permite adicionar, listar, verificar, remover e salvar tarefas. Ele está disponível apenas para a plataforma Linux e a versão executável pode ser encontrada na pasta `bin`.

## Funcionalidades

- **add**: Adiciona uma nova tarefa.
- **list-tasks**: Lista todas as tarefas salvas.
- **check-task <índice>**: Marca uma tarefa como concluída pelo índice.
- **remove <índice>**: Remove uma tarefa pelo índice.
- **save**: Salva todas as tarefas em um arquivo JSON.
- **--help**: Exibe a lista de comandos disponíveis.

## Instalação

1. **Clone o repositório:**

   ```bash
   git clone <url-do-repositório>
   cd <nome-do-repositório>
   ```

2. **Instale as dependências:**

   Certifique-se de ter o Dart instalado e execute o comando:

   ```bash
   dart pub get
   ```

3. **Executar o aplicativo:**

   O executável já está presente na pasta `bin`. Para rodar o aplicativo, execute um dos seguintes comandos no terminal.

   ### Exemplos de comandos:

   - Adicionar uma tarefa:

     ```bash
       bin/To_Do_Linux add
     ```

   - Listar todas as tarefas:

     ```bash
      bin/To_Do_Linux list-tasks
     ```

   - Marcar uma tarefa como concluída (substitua `<índice>` pelo índice da tarefa):

     ```bash
      bin/To_Do_Linuxt check-task <índice>
     ```

   - Remover uma tarefa (substitua `<índice>` pelo índice da tarefa):

     ```bash
      bin/To_Do_Linux remove <índice>
     ```

   - Salvar as tarefas:

     ```bash
      bin/To_Do_Linux save
     ```

4. **Comando de ajuda:**

   Para mais informações sobre como usar o aplicativo, execute:

   ```bash
    bin/To_Do_Linux --help
   ```

## Como funciona

O aplicativo utiliza um arquivo JSON para armazenar as tarefas. Cada tarefa adicionada será indexada automaticamente. As tarefas podem ser removidas ou marcadas como concluídas usando o índice associado.

- **Formato de arquivo JSON:**

  O arquivo `task.json` armazena as tarefas e o arquivo `counter.json` mantém um contador para gerar novos índices para as tarefas.

## Contribuição

Sinta-se à vontade para contribuir com melhorias no projeto! Para isso, siga os passos abaixo:

1. Faça um fork deste repositório.
2. Crie uma nova branch para sua modificação (`git checkout -b minha-modificacao`).
3. Realize as alterações e commit com `git commit -am 'Minha modificação'`.
4. Envie sua branch (`git push origin minha-modificacao`).
5. Abra um Pull Request.

---

Para mais detalhes sobre o funcionamento do código, veja os arquivos dentro da pasta `lib` ou visite o repositório no GitHub.
