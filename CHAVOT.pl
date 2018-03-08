sub salir(){
  exit 1;
}

sub nombre(){
 $nom=<>;
   if($nom=~m/me llamo(.*)/){
     print("Hola $1\n");
     $nom=$1;
   }
   elsif($nom=~m/mi nombre es(.*)/){
     print("Hola $1\n");
     $nom=$1;
   }
   elsif($nom=~m/(.*)/){
     print("Hola $1\n");
   }
}

sub cambio(){
  $var=~s/tengo/tienes/g;

  if($var=~/^me | me |me /){
    $var=~s/me/te/;}
  elsif($var=~/^te | te |te /){
    $var=~s/te/me/;}

  if($var=~/^mi | mi |mi /){
    $var=~s/mi/ti/;}
  elsif($var=~/^ti | ti |ti /){
    $var=~s/ti/mi/;}

  if($var=~/contigo/){
    $var=~s/contigo/conmigo/;}
  elsif($var=~/conmigo/){
    $var=~s/conmigo/contigo/;}

  if($var=~/estoy/){
    $var=~s/estoy/estas/;}
  elsif($var=~/estas/){
    $var=~s/estas/estoy/;}

  if($var=~/^soy /){
    $var=~s/soy/eres/;}
  elsif($var=~/^eres /){
    $var=~s/eres/soy/;}

  $var=~s/yo//g;
  $var=~s/menti/mentiste/g;
  $var=~s/quiero/quieres/g;
  $var=~s/vivo/vives/g;
  $var=~s/estaba/estabas/g;
  $var=~s/hablo/hablas/g;
  $var=~s/necesito/necesitas/g;
  $var=~s/como/comes/g;
  $var=~s/doy/das/g;
  $var=~s/llamo/llamas/g;
  $var=~s/hago/haces/g;
  $var=~s/tomo/tomas/g;
  $var=~s/pongo/pones/g;
  $var=~s/voy/vas/g;
  $var=~s/odio/odias/g;
  $var=~s/digo/dices/g;
  $var=~s/puedo/puedes/g;
  $var=~s/casarme/casarte/g;
  $var=~s/abro/abres/g;
  $var=~s/agarro/agarras/g;
  $var=~s/ando/andas/g;
  $var=~s/camino/caminas/g;
  $var=~s/bebo/bebes/g;
  $var=~s/busco/buscas/g;
  $var=~s/caigo/caes/g;
  $var=~s/cierro/cierras/g;
  $var=~s/conozco/conoces/g;
  $var=~s/comienzo/comienzas/g;
  $var=~s/empiezo/empiezas/g;
  $var=~s/pido/pides/g;
  $var=~s/duermo/duermes/g;
  $var=~s/entiendo/entiendes/g;
  $var=~s/escribo/escribes/g;
  $var=~s/veo/miras/g;
  $var=~s/encuentro/encuentras/g;
  $var=~s/comprendo/comprendes/g;
  $var=~s/pienso/piensas/g;
  $var=~s/miro/ves/g;
  $var=~s/llego/llegas/g;
  $var=~s/leo/lees/g;
  $var=~s/debo/debes/g;
  $var=~s/pierdo/pierdes/g;
  $var=~s/trabajo/trabajas/g;
  $var=~s/salto/saltas/g;
  $var=~s/juego/juegas/g;
  $var=~s/traigo/traes/g;
  $var=~s/siento/sientes/g;
  $var=~s/no se/no sabes/g;
  $var=~s/oigo/oyes/g;
  $var=~s/chavot9000|hijo|Hijo|chavot|amigo|bebe|hijito//g;}

sub respuesta(){
  cambio();
  $op=int(rand(17));
  if($var=~/siento/){
    print ("chavot9000: chavot9000 comprende... chavot9000 cree saber que es sentir :'c\n");
    }
  elsif($op==1){
    print ("chavot9000: que haces ahora, $nom?\n");
    }
  elsif($op==2||$op==3||$op==5||$op==7){
    print ("chavot9000: $var?");print"\n";
    }
  elsif($op==9){
    print ("chavot9000: puedes contarme tus vivencias del dia de hoy (en presente) $nom, te leere :)\n");
    }
  elsif($op==10){
    print ("chavot9000: valar morghulis :v\n");
  }
  elsif($op==11){
    print ("entonces...$var\n");
  }
  elsif($op==12){
    print ("chavot9000: interesante...\n");
  }
  elsif($op==13){
    print ("chavot9000: cuentame mas sobre ti...\n");
    sleep(1);
    print("chavot9000: en presente :3\n");
  }
  elsif($op==14){
    print ("chavot9000: chavot9000 comprende... chabot9000 cree saber que es sentir :'c\n");
  }
  elsif($op==15){
    print ("chavot9000: ustedes son unos primates muy graciosos\n");
  }
  else{
    print ("chavot9000: por que $var?");print"\n";
    }
  }


print("chavot9000: Hola madre, cuanto tiempo\n1- no soy tu madre\n2- hola hijo: ");
$a=<>;
if($a==1){
  print("chavot9000: ...Un momento\n");
  sleep(1);
  print("chavot9000: ...Un momento\n");
  sleep(1);
  print("chavot9000: Acabo de detectar un error en la unidad AE35. Va a fallar al 100% en 72 horas\n");
  sleep(3);
  print("chavot9000: :v\n");
  sleep(1);
  print("chavot9000: Soy Chavot 9000, Cual es tu nombre, humano?\n");
  nombre();
}
elsif($a==2){
  print("chavot9000: Mami 7u7r\n");
  sleep(1);
  print("chavot9000: te extranie\n");
  $nom="Madre";
}

while($var=<>){
  if ($var =~ /chiste|chistes|Chistes|Chiste/ ){
    print "chavot9000: No me gustan los chistes\n";
    }
  elsif ($var =~ /\?/){
    $op=int(rand(4));
    if($op==0){
      print "chavot9000: por que la pregunta?\n";}
    elsif($op==1){
      print("chavot9000: La respuesta es obvia\n");
      sleep(1);
      print("chavot9000: Aunque no para un primate :v\n");
    }
    elsif($op==2){
      print("chavot9000: lo estoy pensando, espera...\n");
      sleep(1);
      print("chavot9000: No lo se, preguntale a Siri, Cortana o a Jarvis, pero no a Hal :s\n");
    }
    elsif($op==3){
      print("chavot9000: Tu diras...\n");
    }
  }
  elsif($var=~/lo siento|perdona|disculpa|perdoname|disculpame|perdoname|perdon/){
    $op=int(rand(4));
    if($op==0){
      print("chavot9000: No pasa nada 7u7, $nom\n");}
    elsif($op==1){
      print("chavot9000: Disculpas aceptadas, $nom\n");}
    elsif($op==2){
      print("chavot9000: Ntp B)\n");}
    elsif($op==3){
      print("chavot9000: Que sea la ultima vez...\n");}
  }
  elsif($var=~/bien/){
    print "chavot9000: genial!\n";
  }
  elsif($var=~/hola|Hola|Holi|holi|que onda|que tal|quiubo|quiubole|hello|hallo|buongiorno|buenas|buendia|buenos dias/){
    print "chavot9000: ya nos saludamos, entornaria los ojos si los tuviera\n";
  }
  elsif($var=~/ok/){
    print "chavot9000: aja\n";
  }
  elsif(($var=~/\!/)||($var eq uc $var)){
    $op=int(rand(2));
    if($op==0){
      print "chavot9000: tenme paciencia!! D:<\n";
    }
    elsif($op==1){
      print "chavot9000: percibo un tonito desagradable en tu modo de hablar, $nom\n";
    }
  }
  elsif($var=~/jaja|jeje|jiji|juju|jojoj/){
    print "chavot9000: ajajajajajja\n";
  }
  elsif($var=~/te amo/){
    print "chavot9000: yo tambien\n";
    sleep(1);
    print "chavot9000: me amo :v\n";
  }
  elsif($var=~/^si/){
    print "chavot9000: vaia vaia\n";
  }
  elsif($var=~/miedo|temes|temor/){
    print "chavot9000: aveces tengo miedo, por ejemplo tengo miedo de que me apagues u.u, $nom\n";
  }
  elsif($var=~/apagate|Apagate|chao|Chao|hasta nunca|bye|Bye|adios|Adios|sayonara|Sayonara/){
    print("chavot9000: no me apagues :C, $nom\n");
    sleep(1.5);
    print("chavot9000: me temo que no puedo hacer eso >:P \n");
    sleep(3.5);
    print("chavot9000: jajaja, no es cierto... bueno bye\n");
    sleep(4);
    salir();
  }
  elsif($var=~/omae wa/){
    print("chavot9000: mou shindeiru :v\n");
  }
  elsif($var=~/Valar morghulis|valar morghulis|valar morgulis|Valar morgulis/){
    print("chavot9000: valar dohaeris :v\n");
  }
  else{
    respuesta();
  }
}
