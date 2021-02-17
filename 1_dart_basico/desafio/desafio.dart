void main(List<String> args) {
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  var familias = [];
  var pacientesDetalhado = [];

  for(var paciente in pacientes){
    //transforma a string paciente em um array
    var pacienteDetalhado = paciente.split('|');
    //adiciona o array do paciente no novo array com todos os pacientes
    pacientesDetalhado.add(pacienteDetalhado);
    //varifica se a familia do paciente já está na lista, caso não esteja adiciona caso contrário não faz nada
    if(!familias.contains(pacienteDetalhado[0].split(' ')[1])){
      familias.add(pacienteDetalhado[0].split(' ')[1]);
    }
  }
  // Apresente a quantidade de pacientes com mais de 20 anos
  print('------------------------------------------------------');
  print('${pacientesDetalhado.where((element) => int.parse(element[1]) > 20).length} pacientes com mais de 20 anos.');
  print('------------------------------------------------------');
  // Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.
  for(var f in familias){
    print('$f:');
    //filtra os pacientes pertencentes a família
    var pacientesFamilia = pacientesDetalhado.where((element) => element[0].contains(f));
    // imprime todos os pacientes da família
    for (var paciente in pacientesFamilia) {
      print('  ${paciente[0].split(' ')[0]}');
    }  
  }
  print('------------------------------------------------------');
}