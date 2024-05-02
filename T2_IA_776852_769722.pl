:- style_check(-discontiguous).

problema(preparo_fisico) :- preparo_fisico(ruim).
problema(equipe_tecnica) :- atritos(constantes), situação_psicológica(ruim).
problema(time) :- preparo_fisico(bom), atritos(raros), situação_de_gols(ruim).
problema(insatisfação_financeira) :- atritos(constantes), salarios(atrasados).
problema(nenhum) :- preparo_fisico(bom), situação_de_gols(boa), salarios(em_dia).
atritos(constantes) :- jogador(X), tecnico(Y), discute(X, Y).
atritos(constantes) :- jogador(X), jogador(Y), discute(X, Y).
situação_psicologica(ruim) :- jogador(X), suspenso(X).
situação_de_gols(ruim) :- gols_sofridos(X), gols_feitos(Y), X > Y.
situação_de_gols(boa) :- gols_sofridos(X), gols_feitos(Y), X < Y.
suspenso(X) :- cartão_vermelho(X).
preparo_fisico(ruim) :- jogador(X), faltou_do_treino(X).
preparo_fisico(ruim) :- jogador(X), lento(X).

%Situação 1
%tecnico(pedro).
%jogador(will).
%faltou_do_treino(will).
%lento(_):-fail.
%situação_psicológica(ruim).
%cartão_vermelho(will).
%suspenso(will).
%salarios(atrasados).
%discute(will, pedro).
%gols_sofridos(5).
%gols_feitos(1).

%Situação 2
%jogador(jhon).
%faltou_do_treino(_):-fail.
%lento(_):-fail.
%tecnico(_):-fail.
%discute(_,_):-fail.
%atritos(raros).
%preparo_fisico(bom).
%salarios(em_dia).
%gols_sofridos(0).
%gols_feitos(3).
%cartão_vermelho(_):-fail.
%situação_psicológica(boa).

%Situação 3
jogador(jorge).
cartão_vermelho(jorge).
preparo_fisico(bom).
tecnico(andre).
discute(jorge, andre).
salarios(atrasados).
gols_sofridos(1).
gols_feitos(2).
situação_psicológica(_):-fail.
faltou_do_treino(_):-fail.
lento(_):-fail.

