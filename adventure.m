disp('Bonjour, bienvenue dans le monde de Bol''girath ')
player_name = input('Quel est votre nom ? : ','s');
fprintf(player_name);
disp(' avez-vous des données de sauvergardes ?')
save = input('1=oui, 2=non : ');

while true
    difficulty=1;
    if save==1
        load    =   input('veuillez insérer votre code de sauvergarde : ');
            if load==526427
                break
            else
                difficulty=2;
                disp('ce code n''existe pas')
                disp('Avez-vous des données de sauvergardes ?')
                save = input('1=oui, 2=non : ');
                    while true
                        if save==1
                            load    =   input('veuillez insérer votre code de sauvergarde : ');
                                if load==526427
                                    break
                                else
                                    difficulty=3;
                                    disp('ce code n''existe pas')
                                    disp('Avez-vous des données de sauvergardes ?')
                                    save = input('1=oui, 2=non : ');
                                        while true
                                            if save==1
                                                load    =   input('veuillez insérer votre code de sauvergarde : ');
                                                    if load==526427
                                                        break
                                                    else
                                                        difficulty=4;
                                                        disp('ce code n''existe pas')
                                                        disp('Je me doutais bien que je ne pouvais pas vous faire confiance')
                                                        load=526427;
                                                    end
                                                    break
                                            elseif save==2
                                                load=526427;
                                                break
                                            else
                                                disp('je ne suis pas sûr d''avoir compris votre réponse.');
                                                save = input('1=oui, 2=non : ');
                                            end
                                        end
                                end
                                break
                        elseif save==2
                                    load=526427;
                                    break
                        else
                            disp('je ne suis pas sûr d''avoir compris votre réponse.');
                            save = input('1=oui, 2=non : ');
                        end
                    end
            end
        break
    elseif save==2
        load=526427;
        break
    else
        disp('je ne suis pas sûr d''avoir compris votre réponse.');
        save = input('1=oui, 2=non : ');
    end
end

%monde 1
if load==526427
    disp('votre code de sauvegarde est :' )
    disp(load)
   
    disp('souhaitez-vous suivre le tutoriel ?')
    tuto    =   input('1=oui, 2=non : ');
        if tuto==1
            disp(['tout au long de l''aventure, des codes de sauvergardes' ...
                ' vous serons donnés afin de reprendre l''histoire ' ...
                'là où vous en étiez arrivé. Ne les perdez pas.'])
            disp(['à tout moment, vous pouvez entrer le code 000000 afin ' ...
                'de réaficher votre code de sauvergarde'])
            fprintf(player_name);
            disp([', ce jeu est basé sur un système de dés.' ...
                ' à chaque décision que vous prendrez, un nombres aléatoire ' ...
                ',entre 1 et 20, sera généré dans le but de déterminé si' ...
                ' votre action est possible ou pas.'])
            disp(['Si ce nombre est ' ...
                'inférieur ou égal à 10, l''action est impossible, au-delà,' ...
                'l''action est un succès.'])
            
        end
end
