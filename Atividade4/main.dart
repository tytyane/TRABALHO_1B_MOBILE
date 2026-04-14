/// Trabalho 4 - Programação para Dispositivos Móveis


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Tarefa {
  final String nome;
  final bool concluida;
  Tarefa(this.nome, {this.concluida = false});
}

class ListaTarefasNotifier extends StateNotifier<List<Tarefa>> {
  ListaTarefasNotifier() : super([]);

  void adicionar(String nome) => state = [...state, Tarefa(nome)];
  void alternar(int index) {
    state = [
      for (int i = 0; i < state.length; i++)
        if (i == index) Tarefa(state[i].nome, concluida: !state[i].concluida) else state[i]
    ];

    
  }
  void remover(int index) => state = [for (int i = 0; i < state.length; i++) if (i != index) state[i]];
}

final todoProvider = StateNotifierProvider<ListaTarefasNotifier, List<Tarefa>>((ref) => ListaTarefasNotifier());

void main() => runApp(ProviderScope(child: MaterialApp(home: TodoApp())));

class TodoApp extends ConsumerWidget {
  final controller = TextEditingController();


  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tarefas = ref.watch(todoProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Lista de Tarefas')),
      body: Column(
        children: [
          TextField(controller: controller, decoration: InputDecoration(labelText: 'Nova Tarefa')),
          ElevatedButton(onPressed: () { ref.read(todoProvider.notifier).adicionar(controller.text); controller.clear(); }, child: Text('Adicionar')),
          Expanded(
            child: ListView.builder(
              itemCount: tarefas.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(tarefas[index].nome, style: TextStyle(decoration: tarefas[index].concluida ? TextDecoration.lineThrough : null)),
                leading: Checkbox(value: tarefas[index].concluida, onChanged: (_) => ref.read(todoProvider.notifier).alternar(index)),
                trailing: IconButton(icon: Icon(Icons.delete), onPressed: () => ref.read(todoProvider.notifier).remover(index)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
