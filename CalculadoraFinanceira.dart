import 'dart:async';

class CalculadoraFinanceira {
  final double salario;
  final List<RegistroDespesa> DespesasLista = [];
  double saldoAtual;

  CalculadoraFinanceira({required this.salario}) : saldoAtual = salario;

adicionarDespesa(RegistroDespesa despesa) {
    if (despesa.valor > saldoAtual) {
      print("❌ Saldo insuficiente para adicionar: ${despesa.name}");
    } else {
      DespesasLista.add(despesa);
      saldoAtual -= despesa.valor;
    }
  }

  void exibirSaldo() {
    print("💰 Saldo atual: ${saldoAtual.toStringAsFixed(2)}");
  }

  Future<void> extrato() async {
    print("📜 Entrada: ${salario.toStringAsFixed(2)}");

    for (var despesa in DespesasLista) {
      print(
        "🛒 Nome: ${despesa.name}, 📅 Data: ${despesa.data}, 💲 Valor: ${despesa.valor.toStringAsFixed(2)}",
      );
      await Future.delayed(Duration(milliseconds: 1000),
      ); // Pausa de 0,5 segundos entre cada despesa
    }
await Future.delayed(Duration(milliseconds: 2000));
    exibirSaldo();
  }
}

class RegistroDespesa {
  final String name;
  final String data;
  final double valor;

  RegistroDespesa({
    required this.name,
    required this.data,
    required this.valor,
  });
}

void main(List<String> args) async {
  final calc = CalculadoraFinanceira(salario: 6000);

  calc.adicionarDespesa(
    RegistroDespesa(name: "PS5", data: "17/09/2022", valor: 3500),
  );
  calc.adicionarDespesa(
    RegistroDespesa(name: "Conta de Luz", data: "01/02/2024", valor: 250.75),
  );
  calc.adicionarDespesa(
    RegistroDespesa(name: "Internet", data: "05/02/2024", valor: 99.90),
  );
  calc.adicionarDespesa(
    RegistroDespesa(name: "Netflix", data: "15/02/2024", valor: 39.90),
  );
  calc.adicionarDespesa(
    RegistroDespesa(name: "Aluguel", data: "01/02/2024", valor: 1800.00),
  );
  calc.adicionarDespesa(
    RegistroDespesa(name: "Celular", data: "07/02/2024", valor: 120.50),
  );

await Future.delayed(Duration(seconds: 1));
print("Carregando extrato...");
  await Future.delayed(Duration(seconds: 5));
   calc.extrato();
}
