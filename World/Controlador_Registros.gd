extends Control

var regis1=["Registro nº1:\n\nResolvi começar a escrever o que acontece aqui, apenas para ter um registro e não me esquecer de nada. Começamos a construção das salas e os altares estão sendo deslocados para as suas salas. A coleta das oferendas está fluindo normalmente e acredito que daqui a dois meses possamos começar as ofertas. Tudo parece bem por enquanto e espero que continue assim. Com sorte as oferendas devem fazer os representantes voltarem e com eles conseguiremos reverter a situação nos próximos três anos.\n\nAssinado,\nC."]
var regis2=["Registro nº2:\n\nA construção está completa e as oferendas estão começando. Os itens das oferendas de cada altar serão guardadas em um báu na mesma sala em que está seu respectivo altar. Para impedir que elas sejam roubadas, cada báu terá uma tranca usando cristais de energia. Para abrir o baú todos os critais precisam ser ativados (deixados amarelos) usando os botões no painel. Não deve impedir totalmente que as oferendas sejam roubadas, mas deve desestimular a maior parte dos ladrões.\n\nAssinado,\nC."]
var regis3=["Registro nº3:\n\nAs ofertas de oferendas não estão funcionando. Ainda não consigo entender o porquê. É quase como se nenhum dos outros tivesse se arrependido, mas isso é impossível. Por que eles tentariam fazer as oferendas se isso fosse verdade? \n\nTalvez o motivo de nenhum representante ter voltado seja por que eles não acreditam que nos arrependemos. Por isso vou dificultar ainda mais a tranca das portas, para fazer com que chegar aos outros altares seja ainda mais díficil. Assim apenas aqueles que realmente se arrependeram irão fazer as oferendas. Isso deve funcionar. Tem que funcionar.\n\nAssinado,\nC."]
var regis4=["Registro nº4:\n\nMesmo que as oferendas não estejam funcionando, as pessoas que as realizam parecem ganhar alguns pequenos \"favores\". Algumas pessoas ficam extremamente fortes, outras extremamente rápidas e algumas se tornam capazes de criar redemoinhos. É uma éspecie de reconhecimento pelo esforço, mas não chega a ser o suficiente. Será que os representantes realmente desistiram daqui?\n\nAssinado,\nC."]
var regis5=["Registro nº5:\n\nNenhum progresso até agora. Vou dificultar ainda mais as trancas e a passagem para as outras salas.\n\nAssinado,\nC."]
var regis6=["Registro nº6:\n\nEu acho que eu entendi. Nenhum de nós vai realmente se arrepender se ficarmos buscando ajuda além da nossa própria. Precisamos fazer isso nós mesmos, ou então corremos o risco de tudo isso acontecer de novo. Por isso vou bloquear as próximas salas do templo. Se você está lendo isso, só quero dizer uma coisa: pare de buscar uma resposta aqui. Precisamos resolver isso sem ajuda. Não vai ser fácil, mas precisamos tentar. Pelo menos por enquanto os representantes precisam continuar sendo o que são agora. Apenas lendas.\n\nAssinado,\nC."]
var mapinguari=["Mapinguari\n\nA lenda do mapinguari tem diversas versões espalhadas pela floresta amazônica, descrevendo o monstro de diversas maneiras diferentes, com cada descrição se misturando e pegando pedaços de outras. A principal descrição o mostra como um macaco imenso, de 2 a 6 metros de altura, com pelos, como os do porco-espinho ou de aço, de cor negra, vermelha ou castanha. A sua boca fica em uma posição anômala, sendo rasgada verticalmente até o umbigo e quando ele vai a um lugar ele vai berrando, quebrando galhos, derrubando árvores, em uma rastro de destruição. Ele é assustador, feroz, quadrúpede e alguns dizem que seus pés são cascos como de burro virados para trás. Possui mãos compridas com garras enormes.\n\nDizem que castiga quem não respeita o domingo, a floresta, as terras dele e os animais, comendo a cabeça de suas vítimas. Ele tem hábitos diurnos para caminhar e caçar, tem um só olho no meio da testa, dorme a noite e exala um fedor insuportável pela barriga. Dizem que pode ser a transformação de um tuxaua ou cacique depois de morto e que surge bruscamente, deixando mutilado aqueles que sobrevivem. Escolhe quase sempre os dias santos e domingos para suas proezas venatórias e é invulnerável, execetuando-se o umbigo ou a boca que fica em cima do coração.\n\nAlguns dizem que eles tem dois olhos, tendo a pele coberta de couro impenetrável como o do casco de tartaruga ou de jacaré e mete o caçador, ou índio, debaixo do braço e vai tirando pedaços, remoendo, mascando, sendo um verdadeiro demônio. Outras pessoas dizem que ele tem hábitos noturnos de caminhar e caçar, que evita água, que pode ser uma fêmea e que tem três bocas, uma debaixo de cada braço e outra sobre o coração. Fala-se também que ele foge ao ver um bicho-preguiça, que anda em 4 ou duas patas e que cada passo mede 3 metros."]
var saci=["Saci-pererê\n\nA lenda do Saci, um nome de origem Tupi-Guarani, o descreve de forma diferente dependendo da região. Em alguns lugares ele é considerado como um ser brincalhão enquanto em outros ele é visto como uma entidade maligna. As diversas descrições do Saci se misturam criando inúmeras versões da lenda. É dito que existem três tipos de Saci: o Pererê, que é negro, o Trique, que é moreno e brincalhão, e o Saçurá, que tem olhos vermelhos. O saci pode se transformar em uma ave chamada Mati-taperê, o mesmo que deu origem ao mito da Matinta-Pereira. Essa ave é uma espécie de demônio que pratica malefícios pelas estradas, enganando os viajantes com os timbres dispersos do seu canto, fazendo-os perder o rumo e não conseguindo mais achar o caminho de volta para casa. Além disso ela possui um canto melancólico que ecoa em todas as direções, não permitindo sua localização.\n\nO Saci é descrito como uma criança negra de uma perna que fuma um cachimbo e usa uma carapuça vermelha que lhe dá poderes mágicos como o de desaparecer e aparecer onde quiser. Ele adora fazer pequenas travessuras, como esconder brinquedos, soltar animais dos currais, derramar sal nas cozinhas, fazer tranças nas crinas dos cavalos, etc. Diz a crença popular que dentro de todo redemoinho de vento existe um Saci. Ele não atravessa córregos nem riachos pois tem medo de água. Fala-se que se alguém jogar dentro do redemoinho um rosário de mato bento ou uma peneira, pode capturá-lo, e caso consiga pegar sua carapuça, poderá ter um desejo seu concretizado.\n\nAlguém perseguido pelo Saci, deve jogar em seu caminho cordas ou barbantes com nós. O Saci irá então parar para desatar os nós, dando tempo para a pessoa fugir. Ele tem as mão furadas no centro por que sua maior diversão é jogar uma brasa, ou uma moeda, para o alto para que ela atravesse os furos. Dizem que ele não suporta o alho, que pode aumentar ou diminuir de tamanho a vontade e que tem o poder de se transformar no que quiser. Fala-se também que o Saci é na verdade um bando de Sacis que costumam se reunir à noite para planejar as suas travessuras."]
var mula=["Mula-Sem-Cabeça\n\nA lenda da mula-sem-cabeça a descreve como a forma que a concubina do sacerdote toma na noite de quinta para sexta-feira, quando essa vai em uma encruzilhada para se transformar. Dizem que a forma é de uma mula forte, que sai galopando com suas patas como calçadas de ferro e assombrando quem encontra, lançando chispas de fogo pelas narinas e pela boca. A violência do galope e a estrindência do relincho são ouvidas longamente e as vezes soluça como uma criatura humana. Fala-se também que a condição pode-se dar depois de morta ou durante o trato amoroso com o padre. Para evitar a maldição. o amásio precisa amaldiçoar a companheira, sete vezes, antes de celebrar a missa.\n\nNos pequenos povoados ou cidades, onde existam casas rodeando uma igreja, em noites escuras, pode haver aparições da Mula-Sem-Cabeça assim como se alguém passar correndo diante de uma cruz à meia-noite.A mula corre sete cidades ou povoados em cada noite e se encontrar alguém no seu caminho, mata-o de coices, chupa seus olhos, e come unhas e dedos. Ao ver a Mula deve-se deitar de bruços no chão, permanecer imóvel, sem respirar e sempre tomando o cuidado de esconder unhas e dentes para não ser atacado. Quando uma dessas criaturas morre sua alma fica a penar sobre a terra.\n\nO encanto desaparecerá quando alguém arracar-lhe da cabeça o freio de ferro, reaparecendo despida e chorando arrependinda, não retornando a forma enquanto o descobridor residir na mesma cidade ou povoado. O encanto também pode ser desfeito fazendo-a sangrar nem que seja com a ponta de um alfinete. Algumas descrições a mostram como tendo cor negra com uma cruz de pelos bracos no dorso, com olhos de fogo, um facho luminoso na cauda, e gemendo como um ser humano."]
var num_regis=0

signal finished


func _process(_delta):
	escrever_texto()
	if Input.is_action_just_pressed("ui_accept"):
		$Background.visible=false
		get_parent().get_parent().get_node("Player").lock=false
		get_parent().finalizado=true
		emit_signal("finished")
		queue_free()

func set_regis(var num):
	num_regis=num
	
func escrever_texto():
	$Background.visible=true
	if(num_regis==1):
		$"Background/Página/Texto".bbcode_text=regis1[0]
		$"Background/Página".visible=true
		$"Background/Págs_lendas".visible=false
		$Background/Mensagem.visible=true
	if(num_regis==2):
		$"Background/Página/Texto".bbcode_text=regis2[0]
		$"Background/Página".visible=true
		$"Background/Págs_lendas".visible=false
	if(num_regis==3):
		$"Background/Página/Texto".bbcode_text=regis3[0]
		$"Background/Página".visible=true
		$"Background/Págs_lendas".visible=false
	if(num_regis==4):
		$"Background/Página/Texto".bbcode_text=regis4[0]
		$"Background/Página".visible=true
		$"Background/Págs_lendas".visible=false
	if(num_regis==5):
		$"Background/Página/Texto".bbcode_text=regis5[0]
		$"Background/Página".visible=true
		$"Background/Págs_lendas".visible=false
	if(num_regis==6):
		$"Background/Página/Texto".bbcode_text=regis6[0]
		$"Background/Página".visible=true
		$"Background/Págs_lendas".visible=false
	if(num_regis==7):
		$"Background/Págs_lendas/Texto".bbcode_text=mapinguari[0]
		$"Background/Página".visible=false
		$"Background/Págs_lendas".visible=true
	if(num_regis==8):
		$"Background/Págs_lendas/Texto".bbcode_text=saci[0]
		$"Background/Página".visible=false
		$"Background/Págs_lendas".visible=true
	if(num_regis==9):
		$"Background/Págs_lendas/Texto".bbcode_text=mula[0]
		$"Background/Página".visible=false
		$"Background/Págs_lendas".visible=true
