void main() {
    List paciente = [
        'Rodrigo Rahman|35',
        'Guilheme Rahman|10',
        'João Rahman|17',
        'Joaquin Rahman|28',
        'Luan Rahman|23',
    ];
    
    paciente.removeWhere((element) => (int.parse(element.split('|')[1]) < 18));

    for(var p in paciente){
      var dados = p.split('|');
      print('${dados[0]} tem ${dados[1]} anos');
    }
}