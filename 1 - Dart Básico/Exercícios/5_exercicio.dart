void main() {
    List paciente = [
        'Rodrigo Rahman|35',
        'Guilheme Rahman|10',
        'João Rahman|20',
        'Joaquin Rahman|25',
        'Luan Rahman|23',
    ];

    paciente.removeRange(paciente.length-2, paciente.length);

    for(var p in paciente){
      var dados = p.split('|');
      print('${dados[0]} tem ${dados[1]} anos');
    }
}