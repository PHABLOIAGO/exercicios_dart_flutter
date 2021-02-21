main(List<String> args) {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  // Baseado na lista acima.
  // 1 - Remover os duplicados
  Set<String> lista = {};
  for (var item in pessoas) {
    lista.add(item);
  }
  
  // 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
  List<Map<String, dynamic>> mapPessoas = [];
  var listaPessoasMap = lista.map((e) {
    var pessoaArray = e.split('|');
    return {
      'nome': pessoaArray[0],
      'idade': pessoaArray[1],
      'sexo': pessoaArray[2]
    };
  }).toList();
  var masculino = listaPessoasMap.where((element) => element['sexo']=='Masculino').length;
  var feminino = listaPessoasMap.where((element) => element['sexo']=='Feminino').length;
  
  print('Existem $masculino pessoas do sexo masculino e $feminino pessoas do sexo feminino');

  // 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos 
  //     e mostre a quantidade de pessoas com mais de 18 anos
  var listaMaioresDeIdade = listaPessoasMap.where((element) => int.parse(element['idade']) >= 18).toList();
  print('Existem ${listaMaioresDeIdade.length} pessoas maiores de idade');
  
  // 4 - Encontre a pessoa mais velha.
  listaMaioresDeIdade.sort((pessoa1, pessoa2) => int.parse(pessoa1['idade']).compareTo(int.parse(pessoa2['idade'])));
  var pessoaMaisVelha = listaMaioresDeIdade[listaMaioresDeIdade.length-1];
  print('A pessoa mais velha é ${pessoaMaisVelha['nome']} com ${pessoaMaisVelha['idade']} anos.');
}