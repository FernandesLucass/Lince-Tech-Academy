
# Lince Tech Academy – Usando IA como apoio - Variáveis

## Introdução:

1 - Quais as boas práticas em dart declarando variáveis?

* Use var: Deixe o Dart inferir o tipo se o valor for atribuído na mesma linha.

* Tipagem explícita: Use apenas se a variável iniciar sem valor (ex: int idade;).

* Imutabilidade: Priorize final ou const para valores que nunca mudam.

* Nomenclatura: Use sempre o padrão camelCase (ex: saldoAtual).

* Null Safety: Evite variáveis que aceitam nulo (com ?), a menos que a regra de negócio realmente exija.

--- 

2 - O que evitar na hora de declarar variáveis em Dart?

* Uso do dynamic: Evite ao máximo. Ele desativa a checagem de tipos e o Null Safety, tirando as principais proteções do Dart.

* Redundância: Não escreva o tipo se a variável já está recebendo o valor na mesma linha (ex: evite String nome = 'Lucas', prefira var nome = 'Lucas').

* late desnecessário: Evite usar late se você pode inicializar a variável na hora. Se você esquecer de passar um valor para uma variável late, o programa vai quebrar (crash) ao tentar acessá-la.

* Variáveis globais mutáveis: Evite criar variáveis fora de classes ou funções que podem ter o valor alterado por qualquer parte do código.

* Nomes genéricos: Fuja de variáveis chamadas x, teste ou dados. O nome deve deixar claro o que a variável guarda.

--- 

3 - Quais cuidados tomar quando crio variáveis com valor nulo trabalhando com dart?


* Verificação prévia (Null Check): Nunca tente acessar ou modificar uma variável nula sem checar se ela tem valor antes (ex: if (variavel != null)).

* Evite o operador ! (Bang): Ele diz ao Dart: "Confia em mim, não é nulo". Se for nulo, seu aplicativo vai quebrar (crash) na mesma hora. Só use se tiver 100% de certeza.

* Use operadores seguros (Null-Aware): Aproveite os atalhos do Dart, como ?. (só chama a função se a variável não for nula) e ?? (define um valor padrão imediato caso a variável seja nula).

* Restrinja o escopo: Se for criar uma variável nula, tente mantê-la dentro de escopos locais (como dentro de uma função específica) em vez de variáveis globais, para não perder o controle de onde ela pode quebrar seu código.

--- 

4 - No Dart, quando usar variáveis nulas e quando usar o modificador late?**

* Variáveis Nulas (`Tipo?`): Use quando a ausência de um valor for uma situação válida e esperada pela sua regra de negócio.
  * Exemplo: Em um cadastro, o campo "nome do meio" é opcional, então faz sentido que ele nasça sem valor (`String? nomeDoMeio;`).

* Modificador `late`: Use quando a variável com certeza terá um valor antes de ser lida, mas você não consegue ou não quer atribuir esse valor no momento exato em que a declara.
  * Exemplo: Uma configuração pesada que você quer adiar para economizar memória (lazy load), ou variáveis que dependem de uma tela carregar primeiro para receberem dados. É uma "promessa" ao Dart de que o valor chegará na hora H.

---

5 - Gostaria de entender quais os benefícios de utilização do modificador "late" no Dart.

* Inicialização Tardia (Lazy Initialization): O valor da variável só é calculado e alocado na memória no exato momento em que ela for chamada pela primeira vez. Isso é excelente para economizar desempenho caso a variável exija um processamento muito pesado.

* Fugir da tipagem nula (Null Safety): Permite criar uma variável que não aceita nulo, mas sem a obrigação de atribuir um valor a ela na mesma linha da declaração. Muito útil quando o valor só será descoberto mais para frente no código.

* Código mais limpo: Como o late é uma promessa de que a variável terá valor, o Dart para de exigir que você faça verificações constantes. Você se livra de espalhar validações de nulo (como ?. ou !) pelo resto do seu script.

---

6 - Quais as diferenças entre final e const em Dart?

* const (Tempo de Compilação): O valor precisa ser conhecido e fixado antes do código rodar. É uma constante absoluta.* 
    * Exemplo: const pi = 3.14; (O valor já é cravado no código e não muda).

* final (Tempo de Execução): O valor pode ser definido enquanto o código está rodando, mas depois de ser atribuído pela primeira vez, ele é bloqueado e nunca mais pode ser alterado.
    * Exemplo: final horaAtual = DateTime.now(); (O programa só descobre a hora exata no momento em que a linha for executada, mas depois disso o valor congela).

* Regra de ouro: Se o valor for o resultado de uma função, de uma leitura de banco de dados ou do input de um usuário, use final. Se for um valor fixo que você mesmo digitou e nunca vai mudar, use const.

--- 

7 - Por que no Dart usar variáveis final e const ao invés de usar somente seus valores padrão (variáveis comuns)?

* Segurança (Safety): Impede que você altere acidentalmente um valor que deveria ser fixo na regra de negócio (como a URL de um servidor ou uma taxa de cálculo), evitando bugs que seriam difíceis de rastrear depois.

* Performance (Desempenho): O compilador do Dart otimiza pesadamente o uso da memória quando sabe que um valor é imutável. No caso do const, o valor é alocado na memória uma única vez e reaproveitado em todo o sistema, deixando o aplicativo mais rápido e leve.

* Previsibilidade e Leitura: Deixa o seu código muito mais legível. Ao bater o olho em um final ou const, qualquer programador entende na hora que aquele dado é um estado congelado e que não vai sofrer mutações ao longo da execução.

---

8 - Quais métodos possuem as variáveis strings no Dart?

O Dart possui uma biblioteca muito rica para manipulação de textos. Os métodos mais comuns são:

* .toLowerCase() e .toUpperCase(): Converte todo o texto para letras minúsculas ou maiúsculas.

* .trim(): Limpa os espaços em branco indesejados no início e no final da string.

* .split(separador): Corta a string com base em um caractere específico (como um espaço ou vírgula) e transforma o resultado em uma Lista.

* .contains(texto): Verifica se uma palavra ou caractere específico existe dentro da string (retorna um booleano: true ou false).

* .replaceAll(antigo, novo): Busca por uma palavra ou caractere e substitui todas as suas ocorrências por um novo texto.

* .substring(inicio, fim): Recorta e retorna apenas um pedaço específico da string, baseado nas posições numéricas (índices) que você passar.

--- 

9 - Traga a documentação dos métodos de variáveis inteiras.

A classe int no Dart possui várias funções nativas prontas para facilitar cálculos e validações matemáticas. Os principais são:

* .isEven e .isOdd: São propriedades (não usam parênteses) que retornam um booleano (true ou false) checando se o número é par (isEven) ou ímpar (isOdd).

* .abs(): Retorna o valor absoluto do número (na prática, transforma números negativos em positivos, ignorando o sinal).

* .round(): Arredonda o número para o inteiro mais próximo.

* .ceil(): Arredonda o número sempre para cima (o "teto" do valor).

* .floor(): Arredonda o número sempre para baixo (o "chão" do valor).

* .compareTo(outroNumero): Compara o valor atual com outro número. Retorna 0 se forem iguais, 1 se o seu número for maior, e -1 se o seu número for menor.

* .toString(): Converte o número inteiro em uma variável de texto (String), o que é essencial para exibi-lo na tela junto com outras palavras.

---

## Exemplos:

1 - Tenho dúvidas de quando usar late em Dart, poderia me dar alguns exemplos.

O late brilha principalmente nestes dois cenários:

* Cenário 1: Inicialização Pesada (Lazy Load)   
    Use quando o valor exige muito processamento (como uma query SQL complexa) e você quer evitar rodar isso até o momento exato em que a variável for chamada pela primeira vez.   

    *****// A função pesada só vai executar na hora que alguém tentar ler a variável 'dadosUsuarios'***     
    late List<String> dadosUsuarios = _buscarUsuariosNoBancoDeDados();**

* Cenário 2: Inicialização atrasada em Classes (muito comum em apps com Flutter)    
    Use quando uma variável não pode ser nula, mas você não tem o valor na hora de criar a classe, precisando configurá-la em um método separado (como abrir uma conexão).  

    **class GerenciadorDeBanco {    
  ***// Variável não aceita nulo, mas fica aguardando o valor***  
  late String statusConexao;**    

  **void iniciarConexao() {   
    ***// O valor é atribuído depois, cumprindo a "promessa" do late***   
    statusConexao = "Conectado ao servidor com sucesso!";   
  }     
}**

---

2 - Em Dart mostre quando usar final e const.

**void main() {     
  ***// const: O valor precisa ser conhecido ANTES de rodar o código.***  
  ***// Você mesmo digita o valor fixo.***  
    const double pi = 3.14159;**

  *****// final: O valor só é descoberto DURANTE a execução do código.***   
  ***// O programa roda a função now() para descobrir a hora, e depois congela esse valor.***   
  final DateTime horaAtual = DateTime.now();    
}**

---

3 - Mostre cenários onde não se deveria usar o late no Dart.

O late é uma ferramenta poderosa, mas usá-la de forma indiscriminada pode causar quebras no aplicativo (o temido LateInitializationError). Você deve evitá-lo nestes dois cenários:

* Cenário 1: O valor já está disponível no momento da declaração    
    Se você já sabe o valor da variável e pode atribuí-lo na mesma linha, usar o late é redundante. Ele não trará nenhum ganho de performance e apenas deixará o código mais sujo.

*****// ERRADO: O valor já é conhecido, não há necessidade de adiar.***     
late String nome = "Lucas";**   

*****// CERTO: Apenas declare normalmente.***  
String nome = "Lucas";**

* Cenário 2: Quando a variável realmente pode ficar sem valor (situação opcional)   
    O late é uma "promessa absoluta" de que a variável vai receber um valor antes de ser lida. Se existe a chance de ela nunca ser preenchida (como um campo de "telefone fixo" em um cadastro, que o usuário pode deixar em branco), o late fará o seu aplicativo quebrar (crash). Para valores opcionais, use o Null Safety (?).

*****// ERRADO: Se o usuário não informar o telefone fixo, o app quebra ao tentar ler isso.***  
late String telefoneFixo;**

*****// CERTO: Assuma que a ausência do valor é esperada.***    
String? telefoneFixo;**

--- 

4 - Me traga um exemplo do uso do método split() em Dart.

O método split() é perfeito para quando você tem um texto longo e precisa quebrá-lo em pedaços menores (transformando em uma Lista) com base em algum separador, como uma vírgula ou um espaço.

**void main() {     
  ***// Uma única string contendo várias informações juntas***  
  String listaDeCompras = "Maçã, Banana, Laranja, Uva";**

  *****// Corta a string toda vez que encontrar uma vírgula seguida de espaço (', ')***     
  List<String> frutasSeparadas = listaDeCompras.split(', ');**

  **print(frutasSeparadas);     
  ***// Resultado no console: [Maçã, Banana, Laranja, Uva]*****

  *****// Como agora é uma lista, você pode acessar um item específico pela posição (índice)***     
  print("A segunda fruta é: ${frutasSeparadas[1]}");    
  ***// Resultado no console: A segunda fruta é: Banana*****
}