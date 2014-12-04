INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (5, 0,
                                                                      '{"dateServeur":1233654896416,"comptesInternes":[{"id":1,"libelle":"Livret A","numeroDeCompte":"9874 5200 0000 2151","solde":62035.5,"type":2,"dateSolde":1236557856325,"titulaire":{"id":1,"civilite":3,"nom":"De la verte Dupuis","prenom":"Elizabeth"},"cotitulaire":{"id":2,"civilite":1,"nom":"Dupuis","prenom":"Jean-Pascal"}},{"id":2,"libelle":"LDD","numeroDeCompte":"1236 5894 2281 5185","solde":2035.5,"type":2,"dateSolde":1236557856325,"titulaire":{"id":1,"civilite":3,"nom":"De la verte Dupuis","prenom":"Elizabeth"}}],"comptesExternes":[{"id":3,"beneficiaire":"Maitre Martial","iban":"9874 5200 0000 2151","eprouve":true,"statutBeneficiaire":1,"libelle":"Avocat spÃ©cialisÃ©","typeBeneficiaire":2},{"id":4,"beneficiaire":"Mlle Lemarshall","iban":"9874 5200 0000 2152","eprouve":true,"statutBeneficiaire":1,"libelle":"Docteur Sciences appliquÃ©es","typeBeneficiaire":2}]}',
                                                                      'GET', '/rest/virement/realiser');
INSERT INTO rest_endpoint (id, version, content, method, uri)
VALUES (12, 0, '{"status" : "200"}', 'GET', '/rest/auth/deconnexion');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (14, 2,
                                                                      '{"niveauSecurite":"NS2","messagesError":[{"code":"Virement impossible","libelle":"Le virement ne peut pas être effectué parce que vous avez dépassé le montant autorisé ou que votre compte ne dispose pas des provisions nécessaires"},{"code":"MSG2","libelle":"LibelleMSG2"},{"code":"MSG3","libelle":"LibelleMSG3"}],"messagesWarn":[{"code":"MSG1","libelle":"LibelleMSG1"},{"code":"MSG2","libelle":"LibelleMSG2"},{"code":"MSG3","libelle":"LibelleMSG3"}],"messagesInfo":[{"code":"MSG1","libelle":"LibelleMSG1"},{"code":"MSG2","libelle":"LibelleMSG2"},{"code":"MSG3","libelle":"LibelleMSG3"}],"ordreVirement":{"id":"VVV1","idTechnique":1,"beneficiaireId":3,"beneficiaire":{"id":"BBB1","idTechnique":1,"beneficiaire":"Maitre Martial","iban":"9874 5200 0000 2151","eprouve":true,"statutBeneficiaire":1,"libelle":"Avocat spécialisé","typeBeneficiaire":2},"contratVirement":{"id":"CCC2","idTechnique":2,"libelle":"Livret A","numeroDeCompte":"9874 5200 0000 2151","solde":62035.5,"type":2,"dateSolde":1236557856325,"titulaire":{"id":"III1","idTechnique":1,"civilite":3,"nom":"De la verte Dupuis","prenom":"Elizabeth"},"cotitulaire":{"id":"III2","idTechnique":2,"civilite":1,"nom":"Dupuis","prenom":"Jean-Pascal"}},"libelle":"motif du virement de 1000 euros","montant":1000,"typeVirement":1,"datePremiereExecution":1233654896416},"pinPadUrls":["http://195.154.71.87/clavier/btn_2.png","http://195.154.71.87/clavier/btn_3.png","http://195.154.71.87/clavier/btn_9.png","http://195.154.71.87/clavier/btn_1.png","http://195.154.71.87/clavier/btn_8.png","http://195.154.71.87/clavier/btn_6.png","http://195.154.71.87/clavier/btn_4.png","http://195.154.71.87/clavier/btn_5.png","http://195.154.71.87/clavier/btn_7.png","http://195.154.71.87/clavier/btn_0.png"],"pinPadId":"1"}',
                                                                      'POST',
                                                                      '/rest/virement/validatevirement_avec_error');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (50, 0,
                                                                      '{"messagesWarn":[{"code":"MSG1","libelle":"LibelleMSG1"},{"code":"MSG2","libelle":"LibelleMSG2"},{"code":"MSG3","libelle":"LibelleMSG3"}],"messagesInfo":[{"code":"MSG1","libelle":"Votre demande de virement a bien été prise en compte."},{"code":"MSG2","libelle":"LibelleMSG2"},{"code":"MSG3","libelle":"LibelleMSG3"}],"pinPadUrls":["http://195.154.71.87/clavier/btn_2.png","http://195.154.71.87/clavier/btn_3.png","http://195.154.71.87/clavier/btn_9.png","http://195.154.71.87/clavier/btn_1.png","http://195.154.71.87/clavier/btn_8.png","http://195.154.71.87/clavier/btn_6.png","http://195.154.71.87/clavier/btn_4.png","http://195.154.71.87/clavier/btn_5.png","http://195.154.71.87/clavier/btn_7.png","http://195.154.71.87/clavier/btn_0.png"],"pinPadId":"1"}',
                                                                      'GET', '/rest/virement/executevirement_test');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (16, 3,
                                                                      '{"messagesError":[{"code":"MSG1","libelle":"LibelleMSG1"},{"code":"MSG2","libelle":"LibelleMSG2"},{"code":"MSG3","libelle":"LibelleMSG3"}],"messagesWarn":[{"code":"MSG1","libelle":"LibelleMSG1"},{"code":"MSG2","libelle":"LibelleMSG2"},{"code":"MSG3","libelle":"LibelleMSG3"}],"messagesInfo":[{"code":"MSG1","libelle":"Votre demande de virement a bien été prise en compte."},{"code":"MSG2","libelle":"LibelleMSG2"},{"code":"MSG3","libelle":"LibelleMSG3"}],"pinPadUrls":["http://195.154.71.87/clavier/btn_0.png","http://195.154.71.87/clavier/btn_3.png","http://195.154.71.87/clavier/btn_4.png","http://195.154.71.87/clavier/btn_1.png","http://195.154.71.87/clavier/btn_8.png","http://195.154.71.87/clavier/btn_7.png","http://195.154.71.87/clavier/btn_9.png","http://195.154.71.87/clavier/btn_5.png","http://195.154.71.87/clavier/btn_6.png","http://195.154.71.87/clavier/btn_2.png"],"pinPadId":"1"}',
                                                                      'POST',
                                                                      '/rest/virement/executevirement_avec_error');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (51, 11,
                                                                      '{"depotAVue":{"id":"VVV1","idTechnique":1,"carteBancaire1":{"id":"CB1","idTechnique":1,"numero":"0001 **** **** 0001","typeDebit":2,"typeCarte":1,"activee":true,"encommande":true,"enopposition":false,"numeroUrgence":1234567890,"paiementSansContact":false,"plafondPaiement":15000,"plafondPaiementPeriode":30,"plafondPaiementReste":8070,"plafondRetrait":1200,"plafondRetraitPeriode":7,"plafondRetraitReste":570},"carteBancaire2":{"id":"CB2","idTechnique":2,"numero":"0002 **** **** 0002","typeDebit":2,"typeCarte":1,"activee":true,"encommande":false,"enopposition":false,"numeroUrgence":9876543210,"paiementSansContact":false,"plafondPaiement":100000,"plafondPaiementPeriode":30,"plafondPaiementReste":50000,"plafondRetrait":10000,"plafondRetraitPeriode":7,"plafondRetraitReste":1000},"contratDav":{"id":"DAV1","idTechnique":2,"libelle":"Compte dépot à vue 1","numeroDeCompte":"9874 5200 0000 9999","solde":62035.5,"type":2,"dateDuSolde":1416182400000,"titulaire":{"id":"III1","idTechnique":1,"civilite":3,"nom":"De la verte Dupuis","prenom":"Elizabeth"},"typeCompte":1}}}',
                                                                      'POST', '/rest/carte/initconsultation');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (20, 28,
                                                                      '{"depotAVue":{"id":"VVV1","idTechnique":1,"carteBancaire1":{"id":"CB1","idTechnique":1,"numero":"0001 0001 0001 0001","typeDebit":1,"typeCarte":1,"operationDiffereesC":[{"id":"OPDIFF1","idTechnique":1,"montant":1000,"libelle":"Opération différée 1","desc":"description de l''opération différée 1","date":1416182400000,"sens":1,"categorieDiffereeSelectionnee":{"id":"Cat3","idTechnique":3,"couleur":"couleur3","icone":"icone3","libelle":"libelle3"}},{"id":"OPDIFF2","idTechnique":2,"montant":2000,"libelle":"Opération différée 2","desc":"description de l''opération différée 2","date":1416182400000,"sens":1,"categorieDiffereeSelectionnee":{"id":"Cat4","idTechnique":4,"couleur":"couleur4","icone":"icone4","libelle":"libelle4"}}]},"soldeEnCours":10000,"soldeAVenir":15000,"soldeEnCoursMoisSuivant":20000,"previsionnelFinDeMois":250000,"contratDav":{"id":"DAV1","idTechnique":2,"libelle":"Compte dépot à vue 1","numeroDeCompte":"9874 5200 0000 9999","solde":62035.5,"type":2,"dateDuSolde":1416182400000,"titulaire":{"id":"III1","idTechnique":1,"civilite":3,"nom":"De la verte Dupuis","prenom":"Elizabeth"},"cotitulaire":{"id":"III2","idTechnique":2,"civilite":1,"nom":"Dupuis","prenom":"Jean-Pascal"},"typeCompte":1,"operations":[{"id":"OP1","idTechnique":1,"date":1416009600000,"desc":"Description de l''opération 1","devise":"devise1","libelle":"libelle1","montant":1000,"operationsDifferees":[],"sens":1,"statut":1,"type":1,"categorieSelectionnee":{"id":"Cat1","idTechnique":1,"couleur":"couleur1","icone":"icone1","libelle":"libelle1"}},{"id":"OP2","idTechnique":2,"date":1416182400000,"desc":"Description de l''opération 2","devise":"devise2","libelle":"libelle2","montant":2000,"operationsDifferees":[],"sens":1,"statut":1,"type":1,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP3","idTechnique":3,"date":1416009600000,"desc":"Description de l''opération 3","devise":"devise3","libelle":"libelle3","montant":10000,"operationsDifferees":[],"sens":2,"statut":3,"type":2,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP4","idTechnique":4,"date":1416182400000,"desc":"Description de l''opération 4","devise":"devise4","libelle":"libelle4","montant":12000,"operationsDifferees":[],"sens":1,"statut":3,"type":2,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP5","idTechnique":5,"date":1416009600000,"desc":"Description de l''opération 5","devise":"devise5","libelle":"libelle5","montant":5000,"operationsDifferees":[],"sens":1,"statut":3,"type":2,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP6","idTechnique":6,"date":1416182400000,"desc":"Description de l''opération 6","devise":"devise6","libelle":"libelle6","montant":500,"dateDebut":1416182400000,"dateFin":1416182400000,"operationsDifferees":[{"id":"OPDIFF1","idTechnique":1,"montant":1000,"libelle":"Opération différée 1","desc":"description de l''opération différée 1","date":1416182400000,"sens":1,"categorieDiffereeSelectionnee":{"id":"Cat3","idTechnique":3,"couleur":"couleur3","icone":"icone3","libelle":"libelle3"}},{"id":"OPDIFF2","idTechnique":2,"montant":2000,"libelle":"Opération différée 2","desc":"description de l''opération différée 2","date":1416182400000,"sens":1,"categorieDiffereeSelectionnee":{"id":"Cat4","idTechnique":4,"couleur":"couleur4","icone":"icone4","libelle":"libelle4"}}],"sens":2,"statut":3,"type":6,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}}]},"soldesADate":[{"id":"1","idTechnique":14701,"date":1416387548000,"solde":1000},{"id":"2","idTechnique":14702,"date":1416301148000,"solde":800},{"id":"3","idTechnique":14703,"date":1416214748000,"solde":0},{"id":"4","idTechnique":14704,"date":1416128348000,"solde":-600},{"id":"5","idTechnique":14705,"date":1416041948000,"solde":200},{"id":"6","idTechnique":14706,"date":1415955548000,"solde":400},{"id":"7","idTechnique":14707,"date":1415869148000,"solde":500},{"id":"8","idTechnique":14708,"date":1415782748000,"solde":1200},{"id":"9","idTechnique":14709,"date":1415696348000,"solde":-600},{"id":"10","idTechnique":14710,"date":1415609948000,"solde":-800},{"id":"11","idTechnique":14711,"date":1415523548000,"solde":0},{"id":"12","idTechnique":14712,"date":1415437148000,"solde":100},{"id":"13","idTechnique":14713,"date":1415350748000,"solde":-300},{"id":"14","idTechnique":14714,"date":1415264348000,"solde":-500},{"id":"15","idTechnique":14715,"date":1415177948000,"solde":0},{"id":"16","idTechnique":14716,"date":1415091548000,"solde":1200}]}}',
                                                                      'POST', '/rest/compte/initconsultation');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (15, 1,
                                                                      '{"messagesWarn":[{"code":"MSG1","libelle":"LibelleMSG1"},{"code":"MSG2","libelle":"LibelleMSG2"},{"code":"MSG3","libelle":"LibelleMSG3"}],"messagesInfo":[{"code":"MSG1","libelle":"Votre demande de virement a bien été prise en compte."},{"code":"MSG2","libelle":"LibelleMSG2"},{"code":"MSG3","libelle":"LibelleMSG3"}],"pinPadUrls":["http://195.154.71.87/clavier/btn_2.png","http://195.154.71.87/clavier/btn_3.png","http://195.154.71.87/clavier/btn_9.png","http://195.154.71.87/clavier/btn_1.png","http://195.154.71.87/clavier/btn_8.png","http://195.154.71.87/clavier/btn_6.png","http://195.154.71.87/clavier/btn_4.png","http://195.154.71.87/clavier/btn_5.png","http://195.154.71.87/clavier/btn_7.png","http://195.154.71.87/clavier/btn_0.png"],"pinPadId":"1"}',
                                                                      'POST',
                                                                      '/rest/virement/executevirement_sans_error');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (52, 0, '{
    "clientId": "10036253",
    "token": "0775cb76-8b10-4158-a550-9c2915f17ec8"
}', 'POST', '/rest/wsso/service/rest/authenticate/mobile');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (17, 3, '{"dateServeur":1233654896416,"comptesDebiteurs":[{"id":"AA1","idTechnique":1,"libelle":"PEA","numeroDeCompte":"9874 5200 0000 2151","solde":1111,"type":3,"dateSolde":1236557856325,"titulaire":{"id":"BB1","idTechnique":1,"civilite":3,"nom":"De la verte Dupuis","prenom":"Elizabeth Marie Josephine"},"cotitulaire":{"id":"BB2","idTechnique":2,"civilite":1,"nom":"Dupuis-Depardieu","prenom":"Jean-Pascal Romarin"}},{"id":"AA2","idTechnique":2,"libelle":"Livret","numeroDeCompte":"1236 5894 2281 5185","solde":2035.5,"type":2,"dateSolde":1236557856325,"titulaire":{"id":"BB1","idTechnique":1,"civilite":3,"nom":"De la verte Dupuis","prenom":"Elizabeth Marie Josephine"}}],"comptesCrediteurs":[{"id":"CC1","idTechnique":3,"beneficiaire":"Maitre Martial","iban":"9874 5200 0000 2151","eprouve":true,"statutBeneficiaire":1,"libelle":"Avocat specialise","typeBeneficiaire":2},{"id":"CC2","idTechnique":4,"beneficiaire":"Mlle Lemarshall Clementine","iban":"9874 5200 0000 2152","eprouve":true,"statutBeneficiaire":1,"libelle":"Docteur Sciences appliquees","typeBeneficiaire":2}]}
{"dateServeur":1416873600000,"comptesDebiteurs":[{"id":"AA1","idTechnique":1,"libelle":"Compte 1","numeroDeCompte":"9874 5200 0000 2151","solde":54569.35,"type":3,"dateSolde":1236557856325,"titulaire":{"id":"BB1","idTechnique":1,"civilite":3,"nom":"De la verte Dupuis","prenom":"Elizabeth Marie Josephine"},"cotitulaire":{"id":"BB2","idTechnique":2,"civilite":1,"nom":"Dupuis-Depardieu","prenom":"Jean-Pascal Romarin"}},{"id":"AA2","idTechnique":2,"libelle":"Livret BforBank","numeroDeCompte":"1236 5894 2281 5185","solde":2035.5,"type":2,"dateSolde":1236557856325,"titulaire":{"id":"BB1","idTechnique":1,"civilite":3,"nom":"De la verte Dupuis","prenom":"Elizabeth Marie Josephine"}},{"id":"AA3","idTechnique":3,"libelle":"Livret A","numeroDeCompte":"9876 6400 0000 4756","solde":60970,"type":3,"dateSolde":1236557856325,"titulaire":{"id":"BB1","idTechnique":1,"civilite":3,"nom":"De la verte Dupuis","prenom":"Elizabeth Marie Josephine"}}],"comptesCrediteurs":[{"id":"CC1","idTechnique":3,"beneficiaire":"Maitre Martial","iban":"9874 5200 0000 2151","eprouve":true,"statutBeneficiaire":1,"libelle":"Avocat specialise","typeBeneficiaire":2},{"id":"CC2","idTechnique":4,"beneficiaire":"Mlle Lemarshall Clementine","iban":"9874 5200 0000 2152","eprouve":true,"statutBeneficiaire":1,"libelle":"Docteur Sciences appliquees","typeBeneficiaire":2},{"id":"CC3","idTechnique":5,"beneficiaire":"Mr Lemarshall Gérard","iban":"9874 5200 0000 2153","eprouve":true,"statutBeneficiaire":1,"libelle":"Kinésithérapeute","typeBeneficiaire":2}],"periodicites":[{"id":"1","idTechnique":1,"libelle":"Hebdomadaire"},{"id":"2","idTechnique":2,"libelle":"Mensuelle"},{"id":"3","idTechnique":3,"libelle":"Trimestrielle"},{"id":"4","idTechnique":4,"libelle":"Annuelle"}]}
{"dateServeur":1417021387321,"comptesDebiteurs":[{"id":"12310100045478","idTechnique":-1034598844,"type":1,"titulaire":{"id":"10036409","idTechnique":571823273,"civilite":1,"nom":"GRASLIN","prenom":"PATRYK"},"cotitulaire":null,"numeroDeCompte":"12310100045478","solde":91984.84,"dateDuSolde":1417021263298,"typeDeCompte":1,"libelle":"Livret BforBank","message":null}],"comptesCrediteurs":[{"id":"12310100045478","idTechnique":-1034598844,"beneficiaire":"Livret BforBank","libelle":"Livret BforBank","iban":"FR7616218000011010004547883","typeBenificaire":0,"eprouve":false,"statutBenificiaire":0,"solde":91984.84,"message":null},{"id":"FR7618206001647832089399655","idTechnique":0,"beneficiaire":"CC COURANT","libelle":"CC COURANT","iban":"FR7618206001647832089399655","typeBenificaire":2,"eprouve":false,"statutBenificiaire":1,"solde":0,"message":null}],"message":null}',
                                                                      'GET', '/rest/virement/initvirement_liste_vide');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (53, 9,
                                                                      '{"livret":{"id":"1","idTechnique":1,"tauxEnCours":0.0045,"interetsBrutsAcquis":800.5,"typeLivret":1,"contratLivret":{"id":"DAV1","idTechnique":2,"libelle":"Livret A","numeroDeCompte":"9874 5200 0000 1111","solde":4500,"type":2,"dateDuSolde":1416182400000,"titulaire":{"id":"III1","idTechnique":1,"civilite":3,"nom":"De la verte Dupuis","prenom":"Elizabeth"},"cotitulaire":{"id":"III2","idTechnique":2,"civilite":1,"nom":"Dupuis","prenom":"Jean-Pascal"},"typeCompte":1,"rib":{"id":11111,"bic":"bic1111","iban":"iban1111"},"operations":[{"id":"OP1","idTechnique":1,"date":1416009600000,"desc":"description1","devise":"devise1","libelle":"libelle1","montant":1000,"operationsDifferees":[],"sens":1,"statut":1,"type":1,"categorieSelectionnee":{"id":"Cat1","idTechnique":1,"couleur":"couleur1","icone":"icone1","libelle":"libelle1"}},{"id":"OP2","idTechnique":2,"date":1416182400000,"desc":"description2","devise":"devise2","libelle":"libelle2","montant":2000,"operationsDifferees":[],"sens":1,"statut":3,"type":1,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP3","idTechnique":3,"date":1416009600000,"desc":"desc","devise":"devise3","libelle":"libelle3","montant":10000,"operationsDifferees":[],"sens":2,"statut":2,"type":2,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP4","idTechnique":4,"date":1416182400000,"desc":"description4","devise":"devise4","libelle":"libelle4","montant":12000,"operationsDifferees":[],"sens":1,"statut":4,"type":2,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP5","idTechnique":5,"date":1416009600000,"desc":"description5","devise":"devise5","libelle":"libelle5","montant":5000,"operationsDifferees":[],"sens":1,"statut":1,"type":2,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP6","idTechnique":6,"date":1416182400000,"desc":"description6","devise":"devise6","libelle":"libelle6","montant":500,"dateDebut":1416182400000,"dateFin":1416182400000,"operationsDifferees":[],"sens":2,"statut":1,"type":2,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}}]}}}',
                                                                      'POST', '/rest/ios/livret/initconsultation');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES
  (3, 2, '{"clientId":"111","dateDeNaissance":"01/01/1962","token":"222"}', 'POST',
   '/rest/identification/validateidentification_sans_error');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (4, 3,
                                                                      '{"messagesError":[{"code":"Identification impossible","libelle":"Les informations d’authentification ne sont pas correctes, il vous reste 2 tentatives"},{"code":"MSG2","libelle":"LibelleMSG2"},{"code":"MSG3","libelle":"LibelleMSG3"}],"clientId":"111","dateDeNaissance":"01/01/1962","token":"222"}',
                                                                      'POST',
                                                                      '/rest/identification/validateidentification_avec_error');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (11, 2, '{
     "id": "5", 
     "nom": "toto"
}', 'GET', '/rest/testpfm');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (18, 4,
                                                                      '{"id":"1","pinPadUrls":["http://195.154.71.87/clavier/btn_2.png","http://195.154.71.87/clavier/btn_3.png","http://195.154.71.87/clavier/btn_9.png","http://195.154.71.87/clavier/btn_1.png","http://195.154.71.87/clavier/btn_8.png","http://195.154.71.87/clavier/btn_6.png","http://195.154.71.87/clavier/btn_4.png","http://195.154.71.87/clavier/btn_5.png","http://195.154.71.87/clavier/btn_7.png","http://195.154.71.87/clavier/btn_0.png"]}',
                                                                      'GET', '/rest/identification/initidentification');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES
  (19, 7, '{"clientId":"111","dateDeNaissance":"01/01/1962","token":"222"}', 'POST',
   '/rest/identification/validateidentification');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (49, 6,
                                                                      '{"livrets":[{"id":"1","typeLivret":1,"idTechnique":13601,"contratLivret":{"id":"1","idTechnique":1,"type":2,"libelle":"Livret A","typeCompte":1,"solde":4500,"dateActivation":1036557899925,"dateDuSolde":1036557856995,"numeroDeCompte":"1010 2020 3030 4040","titulaire":{"id":"1","idTechnique":1001,"civilite":3,"nom":"De La Verte Dupuis","prenom":"Elizabeth"},"cotitulaire":{"id":"2","prenom":"Jean-Pascal","idTechnique":1002,"civilite":1,"nom":"Dupuis"}}},{"id":"2","idTechnique":15964,"typeLivret":2,"contratLivret":{"id":"2","dateDuSolde":1036557854425,"numeroDeCompte":"1010 2020 6513 7894","idTechnique":2,"type":2,"libelle":"Livret Dev Durable","solde":12000,"dateActivation":1036557876325,"typeCompte":1,"cotitulaire":{"id":"2","idTechnique":1002,"civilite":1,"nom":"Dupuis","prenom":"Jean-Pascal"},"titulaire":{"id":"1","idTechnique":1001,"civilite":3,"nom":"De La Verte Dupuis","prenom":"Elizabeth"}}},{"id":"3","idTechnique":99999,"typeLivret":2,"contratLivret":{"id":"3","idTechnique":3,"type":2,"libelle":"Livret BforBank","solde":20000,"typeCompte":1,"dateActivation":1036557876325,"dateDuSolde":1036557854425,"titulaire":{"id":"1","idTechnique":1005,"civilite":1,"nom":"Hubert","prenom":"Georges"},"cotitulaire":{"id":"2","idTechnique":1006,"civilite":3,"nom":"Tronchette","prenom":"Huguette"},"numeroDeCompte":"9999 8888 7777 6666"}}]}',
                                                                      'GET', '/rest/ios/livret/initsynthese');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (54, 3,
                                                                      '{"depotAVue":{"id":"VVV1","idTechnique":1,"carteBancaire1":{"id":"CB1","idTechnique":1,"numero":"0001 0001 0001 0001","typeDebit":1,"typeCarte":1,"operationDiffereesC":[{"id":"OPDIFF1","idTechnique":1,"montant":1000,"libelle":"Opération différée 1","desc":"description de l''opération différée 1","date":1416182400000,"sens":1,"categorieDiffereeSelectionnee":{"id":"Cat3","idTechnique":3,"couleur":"couleur3","icone":"icone3","libelle":"libelle3"}},{"id":"OPDIFF2","idTechnique":2,"montant":2000,"libelle":"Opération différée 2","desc":"description de l''opération différée 2","date":1416182400000,"sens":1,"categorieDiffereeSelectionnee":{"id":"Cat4","idTechnique":4,"couleur":"couleur4","icone":"icone4","libelle":"libelle4"}}]},"soldeEnCours":10000,"soldeAVenir":15000,"soldeEnCoursMoisSuivant":20000,"previsionnelFinDeMois":250000,"contratDav":{"id":"DAV1","idTechnique":2,"libelle":"Compte dépot à vue 1","numeroDeCompte":"9874 5200 0000 9999","solde":62035.5,"type":2,"dateDuSolde":1416182400000,"titulaire":{"id":"III1","idTechnique":1,"civilite":3,"nom":"De la verte Dupuis","prenom":"Elizabeth"},"cotitulaire":{"id":"III2","idTechnique":2,"civilite":1,"nom":"Dupuis","prenom":"Jean-Pascal"},"typeCompte":1,"operations":[{"id":"OP1","idTechnique":1,"date":1416009600000,"desc":"Description de l''opération 1","devise":"devise1","libelle":"libelle1","montant":1000,"operationsDifferees":[],"sens":1,"statut":1,"type":1,"categorieSelectionnee":{"id":"Cat1","idTechnique":1,"couleur":"couleur1","icone":"icone1","libelle":"libelle1"}},{"id":"OP2","idTechnique":2,"date":1416182400000,"desc":"Description de l''opération 2","devise":"devise2","libelle":"libelle2","montant":2000,"operationsDifferees":[],"sens":1,"statut":1,"type":1,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP3","idTechnique":3,"date":1416009600000,"desc":"Description de l''opération 3","devise":"devise3","libelle":"libelle3","montant":10000,"operationsDifferees":[],"sens":2,"statut":3,"type":2,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP4","idTechnique":4,"date":1416182400000,"desc":"Description de l''opération 4","devise":"devise4","libelle":"libelle4","montant":12000,"operationsDifferees":[],"sens":1,"statut":3,"type":2,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP5","idTechnique":5,"date":1416009600000,"desc":"Description de l''opération 5","devise":"devise5","libelle":"libelle5","montant":5000,"operationsDifferees":[],"sens":1,"statut":3,"type":2,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP6","idTechnique":6,"date":1416182400000,"desc":"Description de l''opération 6","devise":"devise6","libelle":"libelle6","montant":500,"dateDebut":1416182400000,"dateFin":1416182400000,"operationsDifferees":[{"id":"OPDIFF1","idTechnique":1,"montant":1000,"libelle":"Opération différée 1","desc":"description de l''opération différée 1","date":1416182400000,"sens":1,"categorieDiffereeSelectionnee":{"id":"Cat3","idTechnique":3,"couleur":"couleur3","icone":"icone3","libelle":"libelle3"}},{"id":"OPDIFF2","idTechnique":2,"montant":2000,"libelle":"Opération différée 2","desc":"description de l''opération différée 2","date":1416182400000,"sens":1,"categorieDiffereeSelectionnee":{"id":"Cat4","idTechnique":4,"couleur":"couleur4","icone":"icone4","libelle":"libelle4"}}],"sens":2,"statut":3,"type":6,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}}]},"soldesADate":[{"id":"1","idTechnique":14701,"date":1416387548000,"solde":1000},{"id":"2","idTechnique":14702,"date":1416301148000,"solde":800},{"id":"3","idTechnique":14703,"date":1416214748000,"solde":0},{"id":"4","idTechnique":14704,"date":1416128348000,"solde":-600},{"id":"5","idTechnique":14705,"date":1416041948000,"solde":200},{"id":"6","idTechnique":14706,"date":1415955548000,"solde":400},{"id":"7","idTechnique":14707,"date":1415869148000,"solde":500},{"id":"8","idTechnique":14708,"date":1415782748000,"solde":1200},{"id":"9","idTechnique":14709,"date":1415696348000,"solde":-600},{"id":"10","idTechnique":14710,"date":1415609948000,"solde":-800},{"id":"11","idTechnique":14711,"date":1415523548000,"solde":0},{"id":"12","idTechnique":14712,"date":1415437148000,"solde":100},{"id":"13","idTechnique":14713,"date":1415350748000,"solde":-300},{"id":"14","idTechnique":14714,"date":1415264348000,"solde":-500},{"id":"15","idTechnique":14715,"date":1415177948000,"solde":0},{"id":"16","idTechnique":14716,"date":1415091548000,"solde":1200}]}}',
                                                                      'POST', '/rest/ios/compte/initconsultation');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (13, 4,
                                                                      '{"niveauSecurite":"NS2","messagesWarn":[{"code":"MSG1","libelle":"LibelleMSG1"},{"code":"MSG2","libelle":"LibelleMSG2"},{"code":"MSG3","libelle":"LibelleMSG3"}],"messagesInfo":[{"code":"MSG1","libelle":"LibelleMSG1"},{"code":"MSG2","libelle":"LibelleMSG2"},{"code":"MSG3","libelle":"LibelleMSG3"}],"ordreVirement":{"id":"VVV1","idTechnique":1,"beneficiaireId":3,"beneficiaire":{"id":"BBB1","idTechnique":1,"beneficiaire":"Maitre Martial","iban":"9874 5200 0000 2151","eprouve":true,"statutBeneficiaire":1,"libelle":"Avocat spécialisé","typeBeneficiaire":2},"contratVirement":{"id":"CCC2","idTechnique":2,"libelle":"Livret A","numeroDeCompte":"9874 5200 0000 2151","solde":62035.5,"type":2,"dateSolde":1236557856325,"titulaire":{"id":"III1","idTechnique":1,"civilite":3,"nom":"De la verte Dupuis","prenom":"Elizabeth"},"cotitulaire":{"id":"III2","idTechnique":2,"civilite":1,"nom":"Dupuis","prenom":"Jean-Pascal"}},"libelle":"motif du virement de 1000 euros","montant":1000,"typeVirement":1,"datePremiereExecution":1233654896416},"pinPadUrls":["http://195.154.71.87/clavier/btn_2.png","http://195.154.71.87/clavier/btn_3.png","http://195.154.71.87/clavier/btn_9.png","http://195.154.71.87/clavier/btn_1.png","http://195.154.71.87/clavier/btn_8.png","http://195.154.71.87/clavier/btn_6.png","http://195.154.71.87/clavier/btn_4.png","http://195.154.71.87/clavier/btn_5.png","http://195.154.71.87/clavier/btn_7.png","http://195.154.71.87/clavier/btn_0.png"],"pinPadId":"1"}',
                                                                      'POST',
                                                                      '/rest/virement/validatevirement_sans_error');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (22, 2,
                                                                      '{"depotAVue":{"id":"VVV1","idTechnique":1,"carteBancaire1":{"id":"CB1","idTechnique":1,"numero":"0001 0001 0001 0001","typeDebit":1,"typeCarte":1,"operationDiffereesC":[{"id":"OPDIFF1","idTechnique":1,"montant":1000,"libelle":"Opération différée 1","desc":"description de l''opération différée 1","date":1416182400000,"sens":1,"categorieDiffereeSelectionnee":{"id":"Cat3","idTechnique":3,"couleur":"couleur3","icone":"icone3","libelle":"libelle3"}},{"id":"OPDIFF2","idTechnique":2,"montant":2000,"libelle":"Opération différée 2","desc":"description de l''opération différée 2","date":1416182400000,"sens":1,"categorieDiffereeSelectionnee":{"id":"Cat4","idTechnique":4,"couleur":"couleur4","icone":"icone4","libelle":"libelle4"}}]},"carteBancaire2":{"id":"CB2","idTechnique":2,"numero":"0002 0002 0002 0002","typeDebit":1,"typeCarte":1,"operationDiffereesC":[]},"soldeEnCours":10000,"soldeAVenir":15000,"soldeEnCoursMoisSuivant":20000,"previsionnelFinDeMois":250000,"contratDav":{"id":"DAV1","idTechnique":2,"libelle":"Compte dépot à vue 1","numeroDeCompte":"9874 5200 0000 9999","solde":62035.5,"type":2,"dateDuSolde":1416182400000,"titulaire":{"id":"III1","idTechnique":1,"civilite":3,"nom":"De la verte Dupuis","prenom":"Elizabeth"},"cotitulaire":{"id":"III2","idTechnique":2,"civilite":1,"nom":"Dupuis","prenom":"Jean-Pascal"},"typeCompte":1,"operations":[{"id":"OP1","idTechnique":1,"date":1416009600000,"desc":"description1","devise":"devise1","libelle":"libelle1","montant":1000,"operationsDifferees":[],"sens":1,"statut":1,"type":1,"categorieSelectionnee":{"id":"Cat1","idTechnique":1,"couleur":"couleur1","icone":"icone1","libelle":"libelle1"}},{"id":"OP2","idTechnique":2,"date":1416182400000,"desc":"description2","devise":"devise2","libelle":"libelle2","montant":2000,"operationsDifferees":[],"sens":1,"statut":1,"type":1,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP3","idTechnique":3,"date":1416009600000,"desc":"description3","devise":"devise3","libelle":"libelle3","montant":10000,"operationsDifferees":[],"sens":2,"statut":3,"type":2,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP4","idTechnique":4,"date":1416182400000,"desc":"description4","devise":"devise4","libelle":"libelle4","montant":12000,"operationsDifferees":[],"sens":1,"statut":3,"type":2,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP5","idTechnique":5,"date":1416009600000,"desc":"description5","devise":"devise5","libelle":"libelle5","montant":5000,"operationsDifferees":[],"sens":1,"statut":3,"type":2,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP6","idTechnique":6,"date":1416182400000,"desc":"description6","devise":"devise6","libelle":"libelle6","montant":500,"dateDebut":1416182400000,"dateFin":1416182400000,"operationsDifferees":[{"id":"OPDIFF1","idTechnique":1,"montant":1000,"libelle":"Opération différée 1","desc":"description de l''opération différée 1","date":1416182400000,"sens":1,"categorieDiffereeSelectionnee":{"id":"Cat3","idTechnique":3,"couleur":"couleur3","icone":"icone3","libelle":"libelle3"}},{"id":"OPDIFF2","idTechnique":2,"montant":2000,"libelle":"Opération différée 2","desc":"description de l''opération différée 2","date":1416182400000,"sens":1,"categorieDiffereeSelectionnee":{"id":"Cat4","idTechnique":4,"couleur":"couleur4","icone":"icone4","libelle":"libelle4"}}],"sens":2,"statut":3,"type":6,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}}]},"soldesADate":[]}}',
                                                                      'POST',
                                                                      '/rest/compte/initconsultation_sans_error');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (23, 1,
                                                                      '{"messagesError":[{"code":"Problème de chargement","libelle":"Erreur"},{"code":"MSG2","libelle":"LibelleMSG2"},{"code":"MSG3","libelle":"LibelleMSG3"}],"depotAVue":{"id":"VVV1","idTechnique":1,"carteBancaire1":{"id":"CB1","idTechnique":1,"numero":"0001 0001 0001 0001","typeDebit":1,"typeCarte":1,"operationDiffereesC":[{"id":"OPDIFF1","idTechnique":1,"montant":1000,"libelle":"Opération différée 1","desc":"description de l''opération différée 1","date":1416182400000,"sens":1,"categorieDiffereeSelectionnee":{"id":"Cat3","idTechnique":3,"couleur":"couleur3","icone":"icone3","libelle":"libelle3"}},{"id":"OPDIFF2","idTechnique":2,"montant":2000,"libelle":"Opération différée 2","desc":"description de l''opération différée 2","date":1416182400000,"sens":1,"categorieDiffereeSelectionnee":{"id":"Cat4","idTechnique":4,"couleur":"couleur4","icone":"icone4","libelle":"libelle4"}}]},"carteBancaire2":{"id":"CB2","idTechnique":2,"numero":"0002 0002 0002 0002","typeDebit":1,"typeCarte":1,"operationDiffereesC":[]},"soldeEnCours":10000,"soldeAVenir":15000,"soldeEnCoursMoisSuivant":20000,"previsionnelFinDeMois":250000,"contratDav":{"id":"DAV1","idTechnique":2,"libelle":"Compte dépot à vue 1","numeroDeCompte":"9874 5200 0000 9999","solde":62035.5,"type":2,"dateDuSolde":1416182400000,"titulaire":{"id":"III1","idTechnique":1,"civilite":3,"nom":"De la verte Dupuis","prenom":"Elizabeth"},"cotitulaire":{"id":"III2","idTechnique":2,"civilite":1,"nom":"Dupuis","prenom":"Jean-Pascal"},"typeCompte":1,"operations":[{"id":"OP1","idTechnique":1,"date":1416009600000,"desc":"description1","devise":"devise1","libelle":"libelle1","montant":1000,"operationsDifferees":[],"sens":1,"statut":1,"type":1,"categorieSelectionnee":{"id":"Cat1","idTechnique":1,"couleur":"couleur1","icone":"icone1","libelle":"libelle1"}},{"id":"OP2","idTechnique":2,"date":1416182400000,"desc":"description2","devise":"devise2","libelle":"libelle2","montant":2000,"operationsDifferees":[],"sens":1,"statut":1,"type":1,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP3","idTechnique":3,"date":1416009600000,"desc":"description3","devise":"devise3","libelle":"libelle3","montant":10000,"operationsDifferees":[],"sens":2,"statut":3,"type":2,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP4","idTechnique":4,"date":1416182400000,"desc":"description4","devise":"devise4","libelle":"libelle4","montant":12000,"operationsDifferees":[],"sens":1,"statut":3,"type":2,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP5","idTechnique":5,"date":1416009600000,"desc":"description5","devise":"devise5","libelle":"libelle5","montant":5000,"operationsDifferees":[],"sens":1,"statut":3,"type":2,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP6","idTechnique":6,"date":1416182400000,"desc":"description6","devise":"devise6","libelle":"libelle6","montant":500,"dateDebut":1416182400000,"dateFin":1416182400000,"operationsDifferees":[{"id":"OPDIFF1","idTechnique":1,"montant":1000,"libelle":"Opération différée 1","desc":"description de l''opération différée 1","date":1416182400000,"sens":1,"categorieDiffereeSelectionnee":{"id":"Cat3","idTechnique":3,"couleur":"couleur3","icone":"icone3","libelle":"libelle3"}},{"id":"OPDIFF2","idTechnique":2,"montant":2000,"libelle":"Opération différée 2","desc":"description de l''opération différée 2","date":1416182400000,"sens":1,"categorieDiffereeSelectionnee":{"id":"Cat4","idTechnique":4,"couleur":"couleur4","icone":"icone4","libelle":"libelle4"}}],"sens":2,"statut":3,"type":6,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}}]},"soldesADate":[]}}',
                                                                      'POST',
                                                                      '/rest/compte/initconsultation_avec_error');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (37, 4,
                                                                      '{"depotAVue":{"id":"VVV1","idTechnique":1,"carteBancaire1":{"id":"CB1","idTechnique":1,"numero":"0001 0001 0001 0001","typeDebit":1,"typeCarte":1,"operationDiffereesC":[{"id":"OPDIFF1","idTechnique":1,"montant":1000,"libelle":"Opération différée 1","desc":"description de l''opération différée 1","date":1416182400000,"sens":1,"categorieDiffereeSelectionnee":{"id":"Cat3","idTechnique":3,"couleur":"couleur3","icone":"icone3","libelle":"libelle3"}},{"id":"OPDIFF2","idTechnique":2,"montant":2000,"libelle":"Opération différée 2","desc":"description de l''opération différée 2","date":1416182400000,"sens":1,"categorieDiffereeSelectionnee":{"id":"Cat4","idTechnique":4,"couleur":"couleur4","icone":"icone4","libelle":"libelle4"}}]},"soldeEnCours":10000,"soldeAVenir":15000,"soldeEnCoursMoisSuivant":20000,"previsionnelFinDeMois":250000,"contratDav":{"id":"DAV1","idTechnique":2,"libelle":"Compte dépot à vue 1","numeroDeCompte":"9874 5200 0000 9999","solde":62035.5,"type":2,"dateDuSolde":1416182400000,"titulaire":{"id":"III1","idTechnique":1,"civilite":3,"nom":"De la verte Dupuis","prenom":"Elizabeth"},"cotitulaire":{"id":"III2","idTechnique":2,"civilite":1,"nom":"Dupuis","prenom":"Jean-Pascal"},"typeCompte":1,"operations":[{"id":"OP1","idTechnique":1,"date":1416009600000,"desc":"Description de l''opération 1","devise":"devise1","libelle":"libelle1","montant":1000,"operationsDifferees":[],"sens":1,"statut":1,"type":1,"categorieSelectionnee":{"id":"Cat1","idTechnique":1,"couleur":"couleur1","icone":"icone1","libelle":"libelle1"}},{"id":"OP2","idTechnique":2,"date":1416182400000,"desc":"Description de l''opération 2","devise":"devise2","libelle":"libelle2","montant":2000,"operationsDifferees":[],"sens":1,"statut":1,"type":1,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP3","idTechnique":3,"date":1416009600000,"desc":"Description de l''opération 3","devise":"devise3","libelle":"libelle3","montant":10000,"operationsDifferees":[],"sens":2,"statut":3,"type":2,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP4","idTechnique":4,"date":1416182400000,"desc":"Description de l''opération 4","devise":"devise4","libelle":"libelle4","montant":12000,"operationsDifferees":[],"sens":1,"statut":3,"type":2,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP5","idTechnique":5,"date":1416009600000,"desc":"Description de l''opération 5","devise":"devise5","libelle":"libelle5","montant":5000,"operationsDifferees":[],"sens":1,"statut":3,"type":2,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP6","idTechnique":6,"date":1416182400000,"desc":"Description de l''opération 6","devise":"devise6","libelle":"libelle6","montant":500,"dateDebut":1416182400000,"dateFin":1416182400000,"operationsDifferees":[{"id":"OPDIFF1","idTechnique":1,"montant":1000,"libelle":"Opération différée 1","desc":"description de l''opération différée 1","date":1416182400000,"sens":1,"categorieDiffereeSelectionnee":{"id":"Cat3","idTechnique":3,"couleur":"couleur3","icone":"icone3","libelle":"libelle3"}},{"id":"OPDIFF2","idTechnique":2,"montant":2000,"libelle":"Opération différée 2","desc":"description de l''opération différée 2","date":1416182400000,"sens":1,"categorieDiffereeSelectionnee":{"id":"Cat4","idTechnique":4,"couleur":"couleur4","icone":"icone4","libelle":"libelle4"}}],"sens":2,"statut":3,"type":6,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}}]},"soldesADate":[{"id":"1","idTechnique":14701,"date":1416387548000,"solde":1000},{"id":"2","idTechnique":14702,"date":1416301148000,"solde":800},{"id":"3","idTechnique":14703,"date":1416214748000,"solde":0},{"id":"4","idTechnique":14704,"date":1416128348000,"solde":-600},{"id":"5","idTechnique":14705,"date":1416041948000,"solde":200},{"id":"6","idTechnique":14706,"date":1415955548000,"solde":400},{"id":"7","idTechnique":14707,"date":1415869148000,"solde":500},{"id":"8","idTechnique":14708,"date":1415782748000,"solde":1200},{"id":"9","idTechnique":14709,"date":1415696348000,"solde":-600},{"id":"10","idTechnique":14710,"date":1415609948000,"solde":-800},{"id":"11","idTechnique":14711,"date":1415523548000,"solde":0},{"id":"12","idTechnique":14712,"date":1415437148000,"solde":100},{"id":"13","idTechnique":14713,"date":1415350748000,"solde":-300},{"id":"14","idTechnique":14714,"date":1415264348000,"solde":-500},{"id":"15","idTechnique":14715,"date":1415177948000,"solde":0},{"id":"16","idTechnique":14716,"date":1415091548000,"solde":1200}]}}',
                                                                      'POST', '/rest/compte/initconsultation_test');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (26, 0,
                                                                      '{"messagesError":[{"code":"Téléchargement impossible","libelle":"Impossible de télécharger les données nécessaires"},{"code":"MSG2","libelle":"LibelleMSG2"},{"code":"MSG3","libelle":"LibelleMSG3"}],"clientId":"1101","token":"2222"}',
                                                                      'GET', '/rest/accueil/initaccueil_avec_error');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (27, 0,
                                                                      '{"utilisateur":{"id":"1","idTechnique":1001,"civilite":3,"nom":"De La Verte Dupuis","prenom":"Elizabeth","contratTitulaire":[{"id":"1","idTechnique":1201,"type":1,"libelle":"Compte bancaire 1","numeroDeCompte":"1010 2020 3030 4040","solde":675.78,"typeCompte":2,"depotavue":{"id":"1","idTechnique":12601,"soldeEnCours":535.78,"soldeAVenir":-125,"soldeEnCoursMoisSuivant":-368,"previsionnelFinDeMois":-200,"carteBancaire1":{"id":"1","idTechnique":17771,"typeDebit":1},"soldesADate":[{"id":"1","idTechnique":14701,"date":1416387548000,"solde":1000},{"id":"2","idTechnique":14702,"date":1416301148000,"solde":800},{"id":"3","idTechnique":14703,"date":1416214748000,"solde":0},{"id":"4","idTechnique":14704,"date":1416128348000,"solde":-600},{"id":"5","idTechnique":14705,"date":1416041948000,"solde":200},{"id":"6","idTechnique":14706,"date":1415955548000,"solde":400},{"id":"7","idTechnique":14707,"date":1415869148000,"solde":500},{"id":"8","idTechnique":14708,"date":1415782748000,"solde":1200},{"id":"9","idTechnique":14709,"date":1415696348000,"solde":-600},{"id":"10","idTechnique":14710,"date":1415609948000,"solde":-800},{"id":"11","idTechnique":14711,"date":1415523548000,"solde":0},{"id":"12","idTechnique":14712,"date":1415437148000,"solde":100},{"id":"13","idTechnique":14713,"date":1415350748000,"solde":-300},{"id":"14","idTechnique":14714,"date":1415264348000,"solde":-500},{"id":"15","idTechnique":14715,"date":1415177948000,"solde":0},{"id":"16","idTechnique":14716,"date":1415091548000,"solde":1200}]},"dateDuSolde":1416218342000,"adresseBForBank":"BforBank \nTour Europlaza, 20 avenue André Prothin, La défense 4 \n92927 Paris La Défense Cedex","dateActivation":1036557856325,"titulaire":{"id":"1","idTechnique":1001,"civilite":3,"nom":"De La Verte Dupuis","prenom":"Elizabeth"},"cotitulaire":{"id":"2","idTechnique":1002,"civilite":1,"nom":"Dupuis","prenom":"Jean-Pascal"}},{"id":"2","idTechnique":1202,"type":2,"libelle":"Livret A","numeroDeCompte":"9874 5200 0000 2151","solde":6035.55,"typeCompte":2,"livret":{"id":"1","idTechnique":13601,"typeLivret":1,"tauxEnCours":1.25,"interetsBrutsAcquis":1368,"plafond":14000},"dateDuSolde":1416218342000,"adresseBForBank":"BforBank \nTour Europlaza, 20 avenue André Prothin, La défense 4 \n92927 Paris La Défense Cedex","dateActivation":1036557856325,"titulaire":{"id":"1","idTechnique":1001,"civilite":3,"nom":"De La Verte Dupuis","prenom":"Elizabeth"},"cotitulaire":{"id":"2","idTechnique":1002,"civilite":1,"nom":"Dupuis","prenom":"Jean-Pascal"}},{"id":"3","idTechnique":1203,"type":2,"libelle":"LDD","numeroDeCompte":"1236 5894 2281 5185","solde":3035.5,"typeCompte":1,"livret":{"id":"2","idTechnique":13602,"typeLivret":2,"tauxEnCours":4.5,"interetsBrutsAcquis":768,"plafond":8000},"dateDuSolde":1416218342000,"adresseBForBank":"BforBank \nTour Europlaza, 20 avenue André Prothin, La défense 4 \n92927 Paris La Défense Cedex","dateActivation":1036557856325,"titulaire":{"id":"1","idTechnique":1001,"civilite":3,"nom":"De La Verte Dupuis","prenom":"Elizabeth"}},{"id":"4","idTechnique":1204,"type":2,"libelle":"Livret BforBank","numeroDeCompte":"0000 1234 5478 xxxx","solde":60035.53,"typeCompte":2,"livret":{"id":"3","idTechnique":13603,"typeLivret":3,"tauxEnCours":0.85,"interetsBrutsAcquis":10368,"plafond":-1},"dateDuSolde":1416218342000,"adresseBForBank":"BforBank \nTour Europlaza, 20 avenue André Prothin, La défense 4 \n92927 Paris La Défense Cedex","dateActivation":1036557856325,"titulaire":{"id":"1","idTechnique":1001,"civilite":3,"nom":"De La Verte Dupuis","prenom":"Elizabeth"},"cotitulaire":{"id":"2","idTechnique":1002,"civilite":1,"nom":"Dupuis","prenom":"Jean-Pascal"}},{"id":"5","idTechnique":1205,"type":3,"libelle":"PEA","numeroDeCompte":"cccc aaaa dddd xxxx","solde":21000.2,"typeCompte":1,"bourse":{"id":"1","idTechnique":1001,"soldeLiquidites":1354},"dateDuSolde":1416218342000,"adresseBForBank":"BforBank \nTour Europlaza, 20 avenue André Prothin, La défense 4 \n92927 Paris La Défense Cedex","dateActivation":1036557856325,"titulaire":{"id":"1","idTechnique":1001,"civilite":3,"nom":"De La Verte Dupuis","prenom":"Elizabeth"}},{"id":"6","idTechnique":1206,"type":4,"libelle":"PEA-PME","numeroDeCompte":"aaaa bbbb cccc dddd","solde":3000,"typeCompte":1,"bourse":{"id":"2","idTechnique":1002,"soldeLiquidites":1105},"dateDuSolde":1416218342000,"adresseBForBank":"BforBank \nTour Europlaza, 20 avenue André Prothin, La défense 4 \n92927 Paris La Défense Cedex","dateActivation":1036557856325,"titulaire":{"id":"1","idTechnique":1001,"civilite":3,"nom":"De La Verte Dupuis","prenom":"Elizabeth"}},{"id":"7","idTechnique":1207,"type":5,"libelle":"Assurance Vie","numeroDeCompte":"xxxx yyyy zzzz ssss","solde":30000,"typeCompte":1,"dateDuSolde":1416218342000,"adresseBForBank":"BforBank \nTour Europlaza, 20 avenue André Prothin, La défense 4 \n92927 Paris La Défense Cedex","dateActivation":1036557856325,"titulaire":{"id":"1","idTechnique":1001,"civilite":3,"nom":"De La Verte Dupuis","prenom":"Elizabeth"}},{"id":"8","idTechnique":1208,"type":6,"libelle":"CTO","numeroDeCompte":"1236 5462 cccc dddd","solde":6300,"typeCompte":2,"bourse":{"id":"3","idTechnique":1003,"soldeLiquidites":3410},"dateDuSolde":1416218342000,"adresseBForBank":"BforBank \nTour Europlaza, 20 avenue André Prothin, La défense 4 \n92927 Paris La Défense Cedex","dateActivation":1036557856325,"titulaire":{"id":"1","idTechnique":1001,"civilite":3,"nom":"De La Verte Dupuis","prenom":"Elizabeth"},"cotitulaire":{"id":"2","idTechnique":1002,"civilite":1,"nom":"Dupuis","prenom":"Jean-Pascal"}},{"id":"9","idTechnique":1209,"type":1,"libelle":"Compte bancaire 2","numeroDeCompte":"1919 2929 3939 4949","solde":3675.78,"typeCompte":1,"depotavue":{"id":"2","idTechnique":12602,"soldeEnCours":6535.78,"soldeAVenir":-1125,"soldeEnCoursMoisSuivant":-1368,"previsionnelFinDeMois":-1200,"carteBancaire1":{"id":"3","idTechnique":17773,"typeDebit":1},"soldesADate":[{"id":"1","idTechnique":14701,"date":1416387548000,"solde":1000},{"id":"2","idTechnique":14702,"date":1416301148000,"solde":800},{"id":"3","idTechnique":14703,"date":1416214748000,"solde":0},{"id":"4","idTechnique":14704,"date":1416128348000,"solde":-600},{"id":"5","idTechnique":14705,"date":1416041948000,"solde":200},{"id":"6","idTechnique":14706,"date":1415955548000,"solde":400},{"id":"7","idTechnique":14707,"date":1415869148000,"solde":500},{"id":"8","idTechnique":14708,"date":1415782748000,"solde":1200},{"id":"9","idTechnique":14709,"date":1415696348000,"solde":-600},{"id":"10","idTechnique":14710,"date":1415609948000,"solde":-800},{"id":"11","idTechnique":14711,"date":1415523548000,"solde":0},{"id":"12","idTechnique":14712,"date":1415437148000,"solde":100},{"id":"13","idTechnique":14713,"date":1415350748000,"solde":-300},{"id":"14","idTechnique":14714,"date":1415264348000,"solde":-500},{"id":"15","idTechnique":14715,"date":1415177948000,"solde":0},{"id":"16","idTechnique":14716,"date":1415091548000,"solde":1200}]},"dateDuSolde":1416218342000,"adresseBForBank":"BforBank \nTour Europlaza, 20 avenue André Prothin, La défense 4 \n92927 Paris La Défense Cedex","dateActivation":1036557856325,"titulaire":{"id":"1","idTechnique":1001,"civilite":3,"nom":"De La Verte Dupuis","prenom":"Elizabeth"}},{"id":"10","idTechnique":1210,"type":5,"libelle":"Assurance Vie 2","numeroDeCompte":"arte france2 gulli","solde":20000,"typeCompte":1,"dateDuSolde":1416218342000,"adresseBForBank":"BforBank \nTour Europlaza, 20 avenue André Prothin, La défense 4 \n92927 Paris La Défense Cedex","dateActivation":1353340976000,"titulaire":{"id":"1","idTechnique":1001,"civilite":3,"nom":"De La Verte Dupuis","prenom":"Elizabeth"}},{"id":"11","idTechnique":1211,"type":6,"libelle":"CTO","numeroDeCompte":"4444 5555 6666 7777","solde":12340,"typeCompte":2,"bourse":{"id":"4","idTechnique":1004,"soldeLiquidites":9876},"dateDuSolde":1416218342000,"adresseBForBank":"BforBank \nTour Europlaza, 20 avenue André Prothin, La défense 4 \n92927 Paris La Défense Cedex","dateActivation":974649776000,"titulaire":{"id":"1","idTechnique":1001,"civilite":3,"nom":"De La Verte Dupuis","prenom":"Elizabeth"},"cotitulaire":{"id":"2","idTechnique":1002,"civilite":1,"nom":"Dupuis","prenom":"Jean-Pascal"}}]}}',
                                                                      'GET', '/rest/accueil/initaccueil_sans_error');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (28, 1,
                                                                      '{"livret":{"id":"VVV1","idTechnique":1,"tauxEnCours":0.0045,"interetsBrutsAcquis":800.5,"typeLivret":1,"contratLivret":{"id":"DAV1","idTechnique":2,"libelle":"Livret A","numeroDeCompte":"9874 5200 0000 1111","solde":4500,"type":2,"dateDuSolde":1416182400000,"titulaire":{"id":"III1","idTechnique":1,"civilite":3,"nom":"De la verte Dupuis","prenom":"Elizabeth"},"cotitulaire":{"id":"III2","idTechnique":2,"civilite":1,"nom":"Dupuis","prenom":"Jean-Pascal"},"typeCompte":1,"rib":{"id":11111,"bic":"bic1111","iban":"iban1111"},"operations":[{"id":"OP1","idTechnique":1,"date":1416009600000,"desc":"description1","devise":"devise1","libelle":"libelle1","montant":1000,"operationsDifferees":[],"sens":1,"statut":1,"type":1,"categorieSelectionnee":{"id":"Cat1","idTechnique":1,"couleur":"couleur1","icone":"icone1","libelle":"libelle1"}},{"id":"OP2","idTechnique":2,"date":1416182400000,"desc":"description2","devise":"devise2","libelle":"libelle2","montant":2000,"operationsDifferees":[],"sens":1,"statut":1,"type":1,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP3","idTechnique":3,"date":1416009600000,"desc":"description3","devise":"devise3","libelle":"libelle3","montant":10000,"operationsDifferees":[],"sens":2,"statut":3,"type":2,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP4","idTechnique":4,"date":1416182400000,"desc":"description4","devise":"devise4","libelle":"libelle4","montant":12000,"operationsDifferees":[],"sens":1,"statut":3,"type":2,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP5","idTechnique":5,"date":1416009600000,"desc":"description5","devise":"devise5","libelle":"libelle5","montant":5000,"operationsDifferees":[],"sens":1,"statut":3,"type":2,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}},{"id":"OP6","idTechnique":6,"date":1416182400000,"desc":"description6","devise":"devise6","libelle":"libelle6","montant":500,"dateDebut":1416182400000,"dateFin":1416182400000,"operationsDifferees":[],"sens":2,"statut":3,"type":2,"categorieSelectionnee":{"id":"Cat2","idTechnique":2,"couleur":"couleur2","icone":"icone2","libelle":"libelle2"}}]}}}',
                                                                      'POST',
                                                                      '/rest/livret/initconsultation_avec_erreur');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (24, 6,
                                                                      '{"livrets":[{"id":"1","idTechnique":13601,"typeLivret":1,"contratLivret":{"id":"1","idTechnique":1,"type":2,"libelle":"Livret A","numeroDeCompte":"1010 2020 3030 4040","solde":4500,"typeCompte":1,"dateActivation":1036557899925,"dateDuSolde":1036557856995,"titulaire":{"id":"1","idTechnique":1001,"civilite":3,"nom":"De La Verte Dupuis","prenom":"Elizabeth"},"cotitulaire":{"id":"2","idTechnique":1002,"civilite":1,"nom":"Dupuis","prenom":"Jean-Pascal"}}},{"id":"2","idTechnique":15964,"typeLivret":2,"contratLivret":{"id":"2","idTechnique":2,"type":2,"libelle":"Livret Dev Durable","numeroDeCompte":"1010 2020 6513 7894","solde":12000,"typeCompte":1,"dateActivation":1036557876325,"dateDuSolde":1036557854425,"titulaire":{"id":"1","idTechnique":1001,"civilite":3,"nom":"De La Verte Dupuis","prenom":"Elizabeth"},"cotitulaire":{"id":"2","idTechnique":1002,"civilite":1,"nom":"Dupuis","prenom":"Jean-Pascal"}}},{"id":"3","idTechnique":14444,"typeLivret":3,"contratLivret":{"id":"3","idTechnique":3,"type":2,"libelle":"Livret BforBank","numeroDeCompte":"1010 2020 7894 0101","solde":999999.99,"typeCompte":2,"dateActivation":1036557874745,"dateDuSolde":1036557857425,"titulaire":{"id":"1","idTechnique":1001,"civilite":3,"nom":"De La Verte Dupuis","prenom":"Elizabeth"},"cotitulaire":{"id":"2","idTechnique":1002,"civilite":1,"nom":"Dupuis","prenom":"Jean-Pascal"}}},{"id":"4","idTechnique":345345,"typeLivret":3,"contratLivret":{"id":"4","idTechnique":4,"type":2,"libelle":"Livret BforBank","numeroDeCompte":"1010 2020 7894 1234","solde":3999999.99,"typeCompte":2,"dateActivation":1036557857894,"dateDuSolde":1036557851235,"titulaire":{"id":"1","idTechnique":1001,"civilite":3,"nom":"De La Verte Dupuis","prenom":"Elizabeth"},"cotitulaire":{"id":"2","idTechnique":1002,"civilite":1,"nom":"Dupuis","prenom":"Jean-Pascal"}}},{"id":"5","idTechnique":9999,"typeLivret":1,"contratLivret":{"id":"5","idTechnique":5,"type":2,"libelle":"Livret BforBank","numeroDeCompte":"1010 2020 3030 8888","solde":2015423.99,"typeCompte":2,"dateActivation":1036557856325,"dateDuSolde":1036557856325,"titulaire":{"id":"1","idTechnique":1001,"civilite":3,"nom":"De La Verte Dupuis","prenom":"Elizabeth"},"cotitulaire":{"id":"2","idTechnique":1002,"civilite":1,"nom":"Dupuis","prenom":"Jean-Pascal"}}},{"id":"6","idTechnique":84848,"typeLivret":1,"contratLivret":{"id":"6","idTechnique":6,"type":2,"libelle":"Livret BforBank","numeroDeCompte":"1010 2020 3030 1212","solde":1000,"typeCompte":2,"dateActivation":1036557856325,"dateDuSolde":1036557856325,"titulaire":{"id":"1","idTechnique":1001,"civilite":3,"nom":"De La Verte Dupuis","prenom":"Elizabeth"},"cotitulaire":{"id":"2","idTechnique":1002,"civilite":1,"nom":"Dupuis","prenom":"Jean-Pascal"}}}]}',
                                                                      'GET', '/rest/livret/initsynthese');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (25, 8, '{
  "livret": {
    "id": "VVV1",
    "idTechnique": 1,
    "tauxEnCours": 0.0045,
    "interetsBrutsAcquis": 800.5,
    "typeLivret": 1,
    "contratLivret": {
      "id": "DAV1",
      "idTechnique": 2,
      "libelle": "Livret A",
      "numeroDeCompte": "9874 5200 0000 1111",
      "solde": 4500,
      "type": 2,
      "dateDuSolde": 1416182400000,
      "titulaire": {
        "id": "III1",
        "idTechnique": 1,
        "civilite": 3,
        "nom": "De la verte Dupuis",
        "prenom": "Elizabeth"
      },
      "cotitulaire": {
        "id": "III2",
        "idTechnique": 2,
        "civilite": 1,
        "nom": "Dupuis",
        "prenom": "Jean-Pascal"
      },
      "typeCompte": 2,
      "rib": {
        "id": 11111,
        "bic": "bic1111",
        "iban": "iban1111"
      },
      "operations": [
        {
          "id": "OP1",
          "idTechnique": 1,
          "date": 1416009600000,
          "desc": "description1",
          "devise": "devise1",
          "libelle": "libelle1",
          "montant": 1000,
          "operationsDifferees": [],
          "sens": 1,
          "statut": 1,
          "type": 1,
          "categorieSelectionnee": {
            "id": "Cat1",
            "idTechnique": 1,
            "couleur": "couleur1",
            "icone": "icone1",
            "libelle": "libelle1"
          }
        },
        {
          "id": "OP2",
          "idTechnique": 2,
          "date": 1416182400000,
          "desc": "description2",
          "devise": "devise2",
          "libelle": "libelle2",
          "montant": 2000,
          "operationsDifferees": [],
          "sens": 1,
          "statut": 1,
          "type": 1,
          "categorieSelectionnee": {
            "id": "Cat2",
            "idTechnique": 2,
            "couleur": "couleur2",
            "icone": "icone2",
            "libelle": "libelle2"
          }
        },
        {
          "id": "OP3",
          "idTechnique": 3,
          "date": 1416009600000,
          "desc": "description3",
          "devise": "devise3",
          "libelle": "libelle3",
          "montant": 10000,
          "operationsDifferees": [],
          "sens": 2,
          "statut": 3,
          "type": 2,
          "categorieSelectionnee": {
            "id": "Cat2",
            "idTechnique": 2,
            "couleur": "couleur2",
            "icone": "icone2",
            "libelle": "libelle2"
          }
        },
        {
          "id": "OP4",
          "idTechnique": 4,
          "date": 1416182400000,
          "desc": "description4",
          "devise": "devise4",
          "libelle": "libelle4",
          "montant": 12000,
          "operationsDifferees": [],
          "sens": 1,
          "statut": 3,
          "type": 2,
          "categorieSelectionnee": {
            "id": "Cat2",
            "idTechnique": 2,
            "couleur": "couleur2",
            "icone": "icone2",
            "libelle": "libelle2"
          }
        },
        {
          "id": "OP5",
          "idTechnique": 5,
          "date": 1416009600000,
          "desc": "description5",
          "devise": "devise5",
          "libelle": "libelle5",
          "montant": 5000,
          "operationsDifferees": [],
          "sens": 1,
          "statut": 3,
          "type": 2,
          "categorieSelectionnee": {
            "id": "Cat2",
            "idTechnique": 2,
            "couleur": "couleur2",
            "icone": "icone2",
            "libelle": "libelle2"
          }
        },
        {
          "id": "OP6",
          "idTechnique": 6,
          "date": 1416182400000,
          "desc": "description6",
          "devise": "devise6",
          "libelle": "libelle6",
          "montant": 500,
          "dateDebut": 1416182400000,
          "dateFin": 1416182400000,
          "operationsDifferees": [],
          "sens": 2,
          "statut": 3,
          "type": 2,
          "categorieSelectionnee": {
            "id": "Cat2",
            "idTechnique": 2,
            "couleur": "couleur2",
            "icone": "icone2",
            "libelle": "libelle2"
          }
        }
      ]
    }
  }
}', 'POST', '/rest/livret/initconsultation');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (34, 5, '{
  "utilisateur": {
    "id": "1",
    "idTechnique": 1001,
    "civilite": 3,
    "nom": "De La Verte Dupuis",
    "prenom": "Elizabeth",
    "contratTitulaire": [
      {
        "id": "1",
        "idTechnique": 1201,
        "type": 2,
        "libelle": "Livret A",
        "numeroDeCompte": "1010 2020 3030 4040",
        "typeCompte": 2,
        "adresseBForBank": "BforBank \nTour Europlaza, 20 avenue André Prothin, La défense 4 \n92927 Paris La Défense Cedex",
        "dateActivation": 1036557856325,
        "titulaire": {
          "id": "1",
          "idTechnique": 1001,
          "civilite": 3,
          "nom": "De La Verte Dupuis",
          "prenom": "Elizabeth"
        },
        "cotitulaire": {
          "id": "2",
          "idTechnique": 1002,
          "civilite": 1,
          "nom": "Dupuis",
          "prenom": "Jean-Pascal"
        },
        "rib": {
          "id": "1",
          "idTechnique": 98701,
          "bic": "1234567",
          "iban": "FR00 1111 1222 2233 3333 3333 344"
        },
        "livret": {
          "id": "1",
          "idTechnique": 13601,
          "typeLivret": 1
        }
      },
      {
        "id": "2",
        "idTechnique": 1202,
        "type": 2,
        "libelle": "LDD",
        "numeroDeCompte": "9874 5200 0000 2151",
        "typeCompte": 1,
        "adresseBForBank": "BforBank \nTour Europlaza, 20 avenue André Prothin, La défense 4 \n92927 Paris La Défense Cedex",
        "dateActivation": 1036557856325,
        "titulaire": {
          "id": "1",
          "idTechnique": 1001,
          "civilite": 3,
          "nom": "De La Verte Dupuis",
          "prenom": "Elizabeth"
        },
        "rib": {
          "id": "2",
          "idTechnique": 98702,
          "bic": "9874561",
          "iban": "FR99 8888 8777 7766 6666 6666 655"
        },
        "livret": {
          "id": "2",
          "idTechnique": 13602,
          "typeLivret": 2
        }
      }
    ]
  }
}', 'GET', '/rest/rib/initsynthese_test');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (29, 6,
                                                                      '{"utilisateur":{"id":"1","idTechnique":1001,"civilite":3,"nom":"De La Verte Dupuis","prenom":"Elizabeth","contratTitulaire":[{"id":"1","idTechnique":1201,"type":1,"libelle":"Compte bancaire 1","numeroDeCompte":"1010 2020 3030 4040","typeCompte":2,"adresseBForBank":"BforBank \nTour Europlaza, 20 avenue André Prothin, La défense 4 \n92927 Paris La Défense Cedex","dateActivation":1036557856325,"titulaire":{"id":"1","idTechnique":1001,"civilite":3,"nom":"De La Verte Dupuis","prenom":"Elizabeth"},"cotitulaire":{"id":"2","idTechnique":1002,"civilite":1,"nom":"Dupuis","prenom":"Jean-Pascal"},"rib":{"id":"1","idTechnique":98701,"bic":"1234567","iban":"FR00 1111 1222 2233 3333 3333 344"}},{"id":"2","idTechnique":1202,"type":2,"libelle":"Livret A","numeroDeCompte":"9874 5200 0000 2151","typeCompte":2,"adresseBForBank":"BforBank \nTour Europlaza, 20 avenue André Prothin, La défense 4 \n92927 Paris La Défense Cedex","dateActivation":1036557856325,"titulaire":{"id":"1","idTechnique":1001,"civilite":3,"nom":"De La Verte Dupuis","prenom":"Elizabeth"},"cotitulaire":{"id":"2","idTechnique":1002,"civilite":1,"nom":"Dupuis","prenom":"Jean-Pascal"},"rib":{"id":"2","idTechnique":98702,"bic":"9874561","iban":"FR99 8888 8777 7766 6666 6666 655"},"livret":{"id":"1","idTechnique":13601,"typeLivret":1}},{"id":"3","idTechnique":1203,"type":3,"libelle":"PEA","numeroDeCompte":"7878 9696 6565 2323","typeCompte":1,"adresseBForBank":"BforBank \nTour Europlaza, 20 avenue André Prothin, La défense 4 \n92927 Paris La Défense Cedex","dateActivation":1036557856325,"titulaire":{"id":"1","idTechnique":1001,"civilite":3,"nom":"De La Verte Dupuis","prenom":"Elizabeth"},"rib":{"id":"5","idTechnique":98705,"bic":"3344556","iban":"FR11 2222 2333 3344 4444 4444 455"}}]}}',
                                                                      'GET', '/rest/rib/initsynthese');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (36, 3, '{
  "livrets": [
    {
      "id": "1",
      "idTechnique": 13601,
      "typeLivret": 1,
      "contratLivret": {
        "id": "1",
        "idTechnique": 1,
        "type": 2,
        "libelle": "Livret A",
        "numeroDeCompte": "1010 2020 3030 4040",
        "solde": 4500,
        "typeCompte": 2,
        "dateActivation": 1036557899925,
        "dateDuSolde": 1036557856995,
        "titulaire": {
          "id": "1",
          "idTechnique": 1001,
          "civilite": 3,
          "nom": "De La Verte Dupuis",
          "prenom": "Elizabeth"
        },
        "cotitulaire": {
          "id": "2",
          "idTechnique": 1002,
          "civilite": 1,
          "nom": "Dupuis",
          "prenom": "Jean-Pascal"
        }
      }
    },
    {
      "id": "2",
      "idTechnique": 15964,
      "typeLivret": 2,
      "contratLivret": {
        "id": "2",
        "idTechnique": 2,
        "type": 2,
        "libelle": "LDD",
        "numeroDeCompte": "1010 2020 6513 7894",
        "solde": 12000,
        "typeCompte": 1,
        "dateActivation": 1036557876325,
        "dateDuSolde": 1036557854425,
        "titulaire": {
          "id": "1",
          "idTechnique": 1001,
          "civilite": 3,
          "nom": "De La Verte Dupuis",
          "prenom": "Elizabeth"
        }
      }
    }
  ]
}', 'GET', '/rest/livret/initsynthese_test');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (35, 8, '{
  "livret": {
    "id": "VVV1",
    "idTechnique": 1,
    "tauxEnCours": 0.0045,
    "interetsBrutsAcquis": 800.5,
    "typeLivret": 1,
    "contratLivret": {
      "id": "DAV1",
      "idTechnique": 2,
      "libelle": "Livret A",
      "numeroDeCompte": "9874 5200 0000 1111",
      "solde": 4500,
      "type": 2,
      "dateDuSolde": 1416182400000,
      "titulaire": {
        "id": "III1",
        "idTechnique": 1,
        "civilite": 3,
        "nom": "De la verte Dupuis",
        "prenom": "Elizabeth"
      },
      "cotitulaire": {
        "id": "III2",
        "idTechnique": 2,
        "civilite": 1,
        "nom": "Dupuis",
        "prenom": "Jean-Pascal"
      },
      "typeCompte": 1,
      "rib": {
        "id": 11111,
        "bic": "bic1111",
        "iban": "iban1111"
      },
      "operations": [
        {
          "id": "OP1",
          "idTechnique": 1,
          "date": 1416009600000,
          "desc": "description1",
          "devise": "devise1",
          "libelle": "libelle1",
          "montant": 1000,
          "operationsDifferees": [],
          "sens": 1,
          "statut": 1,
          "type": 1,
          "categorieSelectionnee": {
            "id": "Cat1",
            "idTechnique": 1,
            "couleur": "couleur1",
            "icone": "icone1",
            "libelle": "libelle1"
          }
        },
        {
          "id": "OP2",
          "idTechnique": 2,
          "date": 1416182400000,
          "desc": "description2",
          "devise": "devise2",
          "libelle": "libelle2",
          "montant": 2000,
          "operationsDifferees": [],
          "sens": 1,
          "statut": 3,
          "type": 1,
          "categorieSelectionnee": {
            "id": "Cat2",
            "idTechnique": 2,
            "couleur": "couleur2",
            "icone": "icone2",
            "libelle": "libelle2"
          }
        },
        {
          "id": "OP3",
          "idTechnique": 3,
          "date": 1416009600000,
          "desc": "desc",
          "devise": "devise3",
          "libelle": "libelle3",
          "montant": 10000,
          "operationsDifferees": [],
          "sens": 2,
          "statut": 2,
          "type": 2,
          "categorieSelectionnee": {
            "id": "Cat2",
            "idTechnique": 2,
            "couleur": "couleur2",
            "icone": "icone2",
            "libelle": "libelle2"
          }
        },
        {
          "id": "OP4",
          "idTechnique": 4,
          "date": 1416182400000,
          "desc": "description4",
          "devise": "devise4",
          "libelle": "libelle4",
          "montant": 12000,
          "operationsDifferees": [],
          "sens": 1,
          "statut": 4,
          "type": 2,
          "categorieSelectionnee": {
            "id": "Cat2",
            "idTechnique": 2,
            "couleur": "couleur2",
            "icone": "icone2",
            "libelle": "libelle2"
          }
        },
        {
          "id": "OP5",
          "idTechnique": 5,
          "date": 1416009600000,
          "desc": "description5",
          "devise": "devise5",
          "libelle": "libelle5",
          "montant": 5000,
          "operationsDifferees": [],
          "sens": 1,
          "statut": 1,
          "type": 2,
          "categorieSelectionnee": {
            "id": "Cat2",
            "idTechnique": 2,
            "couleur": "couleur2",
            "icone": "icone2",
            "libelle": "libelle2"
          }
        },
        {
          "id": "OP6",
          "idTechnique": 6,
          "date": 1416182400000,
          "desc": "description6",
          "devise": "devise6",
          "libelle": "libelle6",
          "montant": 500,
          "dateDebut": 1416182400000,
          "dateFin": 1416182400000,
          "operationsDifferees": [],
          "sens": 2,
          "statut": 1,
          "type": 2,
          "categorieSelectionnee": {
            "id": "Cat2",
            "idTechnique": 2,
            "couleur": "couleur2",
            "icone": "icone2",
            "libelle": "libelle2"
          }
        }
      ]
    }
  }
}', 'POST', '/rest/livret/initconsultation_test');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (30, 5,
                                                                      '{"dateServeur":1233654896416,"comptesDebiteurs":[{"id":"AA1","idTechnique":1,"type":3,"titulaire":{"id":"BB1","idTechnique":1,"civilite":3,"nom":"De la verte Dupuis","prenom":"Elizabeth Marie Josephine"},"cotitulaire":{"id":"BB2","idTechnique":2,"civilite":1,"nom":"Dupuis-Depardieu","prenom":"Jean-Pascal Romarin"},"libelle":"Compte 1","numeroDeCompte":"12310100042682","solde":54569.35,"dateDuSolde":1236557856325,"typeCompte":2},{"id":"AA2","idTechnique":2,"type":2,"titulaire":{"id":"BB1","idTechnique":1,"civilite":3,"nom":"De la verte Dupuis","prenom":"Elizabeth Marie Josephine"},"cotitulaire":null,"libelle":"Livret BforBank","numeroDeCompte":"12310200045386","solde":2035.5,"dateDuSolde":1236557856325,"typeCompte":1},{"id":"AA3","idTechnique":3,"type":3,"titulaire":{"id":"BB1","idTechnique":1,"civilite":3,"nom":"De la verte Dupuis","prenom":"Elizabeth Marie Josephine"},"cotitulaire":null,"libelle":"Livret A","numeroDeCompte":"12320100041880","solde":60970,"dateDuSolde":1236557856325,"typeCompte":1}],"comptesCrediteurs":[{"id":"FR7630004005506543112456473","idTechnique":3,"beneficiaire":"Maitre Martial","libelle":"Avocat specialise","iban":"FR7630004005506543112456473","typeBeneficiaire":2,"eprouve":true,"statutBeneficiaire":1,"solde":null,"typeCompte":0},{"id":"FR7616218000011010004184133","idTechnique":4,"beneficiaire":"Mlle Lemarshall Clementine","libelle":"Docteur Sciences appliquees","iban":"FR7616218000011010004184133","typeBeneficiaire":2,"eprouve":true,"statutBeneficiaire":1,"solde":null,"typeCompte":0},{"id":"FR7616218000011010004268232","idTechnique":5,"beneficiaire":"Mr Lemarshall Gérard","libelle":"Kinésithérapeute","iban":"FR7616218000011010004268232","typeBeneficiaire":2,"eprouve":true,"statutBeneficiaire":1,"solde":null,"typeCompte":0}]}',
                                                                      'GET', '/rest/ios/virement/initvirement');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (31, 5, '{
  "dateServeur": 1416873600000,
  "comptesDebiteurs": [],
  "comptesCrediteurs": [],
  "periodicites": [
    {
      "id": "1",
      "idTechnique": 1,
      "libelle": "Hebdomadaire"
    },
    {
      "id": "2",
      "idTechnique": 2,
      "libelle": "Mensuelle"
    },
    {
      "id": "3",
      "idTechnique": 3,
      "libelle": "Trimestrielle"
    },
    {
      "id": "4",
      "idTechnique": 4,
      "libelle": "Annuelle"
    }
  ]
}', 'GET', '/rest/virement/initvirement_test');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (21, 84, '{
  "utilisateur": {
    "id": "1",
    "idTechnique": 1001,
    "civilite": 3,
    "nom": "De La Verte Dupuis",
    "prenom": "Elizabeth",
    "contratTitulaire": [
      {
        "id": "1",
        "idTechnique": 1201,
        "type": 1,
        "libelle": "Compte bancaire 1",
        "numeroDeCompte": "1010 2020 3030 4040",
        "solde": 675.78,
        "typeCompte": 2,
        "depotavue": {
          "id": "1",
          "idTechnique": 12601,
          "soldeEnCours": 535.78,
          "soldeAVenir": -125,
          "soldeEnCoursMoisSuivant": -368,
          "previsionnelFinDeMois": -200,
          "carteBancaire1": {
            "id": "1",
            "idTechnique": 17771,
            "typeDebit": 1
          },
          "soldesADate": [
            {
              "id": "1",
              "idTechnique": 14701,
              "date": 1416387548000,
              "solde": 1000
            },
            {
              "id": "2",
              "idTechnique": 14702,
              "date": 1416301148000,
              "solde": 800
            },
            {
              "id": "3",
              "idTechnique": 14703,
              "date": 1416214748000,
              "solde": 0
            },
            {
              "id": "4",
              "idTechnique": 14704,
              "date": 1416128348000,
              "solde": -600
            },
            {
              "id": "5",
              "idTechnique": 14705,
              "date": 1416041948000,
              "solde": 200
            },
            {
              "id": "6",
              "idTechnique": 14706,
              "date": 1415955548000,
              "solde": 400
            },
            {
              "id": "7",
              "idTechnique": 14707,
              "date": 1415869148000,
              "solde": 500
            },
            {
              "id": "8",
              "idTechnique": 14708,
              "date": 1415782748000,
              "solde": 1200
            },
            {
              "id": "9",
              "idTechnique": 14709,
              "date": 1415696348000,
              "solde": -600
            },
            {
              "id": "10",
              "idTechnique": 14710,
              "date": 1415609948000,
              "solde": -800
            },
            {
              "id": "11",
              "idTechnique": 14711,
              "date": 1415523548000,
              "solde": 0
            },
            {
              "id": "12",
              "idTechnique": 14712,
              "date": 1415437148000,
              "solde": 100
            },
            {
              "id": "13",
              "idTechnique": 14713,
              "date": 1415350748000,
              "solde": -300
            },
            {
              "id": "14",
              "idTechnique": 14714,
              "date": 1415264348000,
              "solde": -500
            },
            {
              "id": "15",
              "idTechnique": 14715,
              "date": 1415177948000,
              "solde": 0
            },
            {
              "id": "16",
              "idTechnique": 14716,
              "date": 1415091548000,
              "solde": 1200
            }
          ]
        },
        "dateDuSolde": 1416218342000,
        "dateActivation": 1036557856325,
        "titulaire": {
          "id": "1",
          "idTechnique": 1001,
          "civilite": 3,
          "nom": "De La Verte Dupuis",
          "prenom": "Elizabeth"
        },
        "cotitulaire": {
          "id": "2",
          "idTechnique": 1002,
          "civilite": 1,
          "nom": "Dupuis",
          "prenom": "Jean-Pascal"
        }
      },
      {
        "id": "2",
        "idTechnique": 1202,
        "type": 2,
        "libelle": "Livret A",
        "numeroDeCompte": "9874 5200 0000 2151",
        "solde": 6035.55,
        "typeCompte": 2,
        "livret": {
          "id": "1",
          "idTechnique": 13601,
          "typeLivret": 1,
          "plafond": 14000
        },
        "dateDuSolde": 1416218342000,
        "dateActivation": 1036557856325,
        "titulaire": {
          "id": "1",
          "idTechnique": 1001,
          "civilite": 3,
          "nom": "De La Verte Dupuis",
          "prenom": "Elizabeth"
        },
        "cotitulaire": {
          "id": "2",
          "idTechnique": 1002,
          "civilite": 1,
          "nom": "Dupuis",
          "prenom": "Jean-Pascal"
        }
      },
      {
        "id": "3",
        "idTechnique": 1203,
        "type": 2,
        "libelle": "LDD",
        "numeroDeCompte": "1236 5894 2281 5185",
        "solde": 3035.5,
        "typeCompte": 1,
        "livret": {
          "id": "2",
          "idTechnique": 13602,
          "typeLivret": 2,
          "plafond": 8000
        },
        "dateDuSolde": 1416218342000,
        "dateActivation": 1036557856325,
        "titulaire": {
          "id": "1",
          "idTechnique": 1001,
          "civilite": 3,
          "nom": "De La Verte Dupuis",
          "prenom": "Elizabeth"
        }
      },
      {
        "id": "4",
        "idTechnique": 1204,
        "type": 2,
        "libelle": "Livret BforBank",
        "numeroDeCompte": "0000 1234 5478 xxxx",
        "solde": 60035.53,
        "typeCompte": 2,
        "livret": {
          "id": "3",
          "idTechnique": 13603,
          "typeLivret": 3,
          "plafond": -1
        },
        "dateDuSolde": 1416218342000,
        "dateActivation": 1036557856325,
        "titulaire": {
          "id": "1",
          "idTechnique": 1001,
          "civilite": 3,
          "nom": "De La Verte Dupuis",
          "prenom": "Elizabeth"
        },
        "cotitulaire": {
          "id": "2",
          "idTechnique": 1002,
          "civilite": 1,
          "nom": "Dupuis",
          "prenom": "Jean-Pascal"
        }
      },
      {
        "id": "5",
        "idTechnique": 1205,
        "type": 3,
        "libelle": "PEA",
        "numeroDeCompte": "cccc aaaa dddd xxxx",
        "solde": 21000.2,
        "typeCompte": 1,
        "bourse": {
          "id": "1",
          "idTechnique": 1001,
          "soldeLiquidites": 1354
        },
        "dateDuSolde": 1416218342000,
        "dateActivation": 1036557856325,
        "titulaire": {
          "id": "1",
          "idTechnique": 1001,
          "civilite": 3,
          "nom": "De La Verte Dupuis",
          "prenom": "Elizabeth"
        }
      },
      {
        "id": "6",
        "idTechnique": 1206,
        "type": 4,
        "libelle": "PEA-PME",
        "numeroDeCompte": "aaaa bbbb cccc dddd",
        "solde": 3000,
        "typeCompte": 1,
        "bourse": {
          "id": "2",
          "idTechnique": 1002,
          "soldeLiquidites": 1105
        },
        "dateDuSolde": 1416218342000,
        "dateActivation": 1036557856325,
        "titulaire": {
          "id": "1",
          "idTechnique": 1001,
          "civilite": 3,
          "nom": "De La Verte Dupuis",
          "prenom": "Elizabeth"
        }
      },
      {
        "id": "7",
        "idTechnique": 1207,
        "type": 5,
        "libelle": "Assurance Vie",
        "numeroDeCompte": "xxxx yyyy zzzz ssss",
        "solde": 30000,
        "typeCompte": 1,
        "dateDuSolde": 1416218342000,
        "dateActivation": 1036557856325,
        "titulaire": {
          "id": "1",
          "idTechnique": 1001,
          "civilite": 3,
          "nom": "De La Verte Dupuis",
          "prenom": "Elizabeth"
        }
      },
      {
        "id": "8",
        "idTechnique": 1208,
        "type": 6,
        "libelle": "CTO",
        "numeroDeCompte": "1236 5462 cccc dddd",
        "solde": 6300,
        "typeCompte": 2,
        "bourse": {
          "id": "3",
          "idTechnique": 1003,
          "soldeLiquidites": 3410
        },
        "dateDuSolde": 1416218342000,
        "dateActivation": 1036557856325,
        "titulaire": {
          "id": "1",
          "idTechnique": 1001,
          "civilite": 3,
          "nom": "De La Verte Dupuis",
          "prenom": "Elizabeth"
        },
        "cotitulaire": {
          "id": "2",
          "idTechnique": 1002,
          "civilite": 1,
          "nom": "Dupuis",
          "prenom": "Jean-Pascal"
        }
      },
      {
        "id": "9",
        "idTechnique": 1209,
        "type": 1,
        "libelle": "Compte bancaire 2",
        "numeroDeCompte": "1919 2929 3939 4949",
        "solde": 3675.78,
        "typeCompte": 1,
        "depotavue": {
          "id": "2",
          "idTechnique": 12602,
          "soldeEnCours": 6535.78,
          "soldeAVenir": -1125,
          "soldeEnCoursMoisSuivant": -1368,
          "previsionnelFinDeMois": -1200,
          "carteBancaire1": {
            "id": "3",
            "idTechnique": 17773,
            "typeDebit": 1
          },
          "soldesADate": [
            {
              "id": "1",
              "idTechnique": 14701,
              "date": 1416387548000,
              "solde": 1000
            },
            {
              "id": "2",
              "idTechnique": 14702,
              "date": 1416301148000,
              "solde": 800
            },
            {
              "id": "3",
              "idTechnique": 14703,
              "date": 1416214748000,
              "solde": 0
            },
            {
              "id": "4",
              "idTechnique": 14704,
              "date": 1416128348000,
              "solde": -600
            },
            {
              "id": "5",
              "idTechnique": 14705,
              "date": 1416041948000,
              "solde": 200
            },
            {
              "id": "6",
              "idTechnique": 14706,
              "date": 1415955548000,
              "solde": 400
            },
            {
              "id": "7",
              "idTechnique": 14707,
              "date": 1415869148000,
              "solde": 500
            },
            {
              "id": "8",
              "idTechnique": 14708,
              "date": 1415782748000,
              "solde": 1200
            },
            {
              "id": "9",
              "idTechnique": 14709,
              "date": 1415696348000,
              "solde": -600
            },
            {
              "id": "10",
              "idTechnique": 14710,
              "date": 1415609948000,
              "solde": -800
            },
            {
              "id": "11",
              "idTechnique": 14711,
              "date": 1415523548000,
              "solde": 0
            },
            {
              "id": "12",
              "idTechnique": 14712,
              "date": 1415437148000,
              "solde": 100
            },
            {
              "id": "13",
              "idTechnique": 14713,
              "date": 1415350748000,
              "solde": -300
            },
            {
              "id": "14",
              "idTechnique": 14714,
              "date": 1415264348000,
              "solde": -500
            },
            {
              "id": "15",
              "idTechnique": 14715,
              "date": 1415177948000,
              "solde": 0
            },
            {
              "id": "16",
              "idTechnique": 14716,
              "date": 1415091548000,
              "solde": 1200
            }
          ]
        },
        "dateDuSolde": 1416218342000,
        "dateActivation": 1036557856325,
        "titulaire": {
          "id": "1",
          "idTechnique": 1001,
          "civilite": 3,
          "nom": "De La Verte Dupuis",
          "prenom": "Elizabeth"
        }
      },
      {
        "id": "10",
        "idTechnique": 1210,
        "type": 5,
        "libelle": "Assurance Vie 2",
        "numeroDeCompte": "arte france2 gulli",
        "solde": 20000,
        "typeCompte": 1,
        "dateDuSolde": 1416218342000,
        "dateActivation": 1353340976000,
        "titulaire": {
          "id": "1",
          "idTechnique": 1001,
          "civilite": 3,
          "nom": "De La Verte Dupuis",
          "prenom": "Elizabeth"
        }
      },
      {
        "id": "11",
        "idTechnique": 1211,
        "type": 6,
        "libelle": "CTO",
        "numeroDeCompte": "4444 5555 6666 7777",
        "solde": 12340,
        "typeCompte": 2,
        "bourse": {
          "id": "4",
          "idTechnique": 1004,
          "soldeLiquidites": 9876
        },
        "dateDuSolde": 1416218342000,
        "dateActivation": 974649776000,
        "titulaire": {
          "id": "1",
          "idTechnique": 1001,
          "civilite": 3,
          "nom": "De La Verte Dupuis",
          "prenom": "Elizabeth"
        },
        "cotitulaire": {
          "id": "2",
          "idTechnique": 1002,
          "civilite": 1,
          "nom": "Dupuis",
          "prenom": "Jean-Pascal"
        }
      }
    ]
  }
}', 'GET', '/rest/accueil/initaccueil');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (7, 36,
                                                                      '{"niveauSecurite":"NS2","messagesWarn":[{"code":"MSG1","libelle":"LibelleMSG1"},{"code":"MSG2","libelle":"LibelleMSG2"},{"code":"MSG3","libelle":"LibelleMSG3"}],"messagesInfo":[{"code":"MSG1","libelle":"LibelleMSG1"},{"code":"MSG2","libelle":"LibelleMSG2"},{"code":"MSG3","libelle":"LibelleMSG3"}],"ordreVirement":{"id":"VVV1","idTechnique":1,"beneficiaireId":3,"beneficiaire":{"id":"BBB1","idTechnique":1,"beneficiaire":"Maitre Martial","iban":"9874 5200 0000 2151","eprouve":true,"statutBeneficiaire":1,"libelle":"Avocat spécialisé","typeBeneficiaire":2},"contratVirement":{"id":"CCC2","idTechnique":2,"libelle":"Livret A","numeroDeCompte":"9874 5200 0000 2151","solde":62035.5,"type":2,"dateSolde":1236557856325,"titulaire":{"id":"III1","idTechnique":1,"civilite":3,"nom":"De la verte Dupuis","prenom":"Elizabeth"},"cotitulaire":{"id":"III2","idTechnique":2,"civilite":1,"nom":"Dupuis","prenom":"Jean-Pascal"}},"libelle":"motif du virement de 1000 euros","montant":1000,"typeVirement":1,"datePremiereExecution":1233654896416},"pinPadUrls":["http://195.154.71.87/clavier/btn_2.png","http://195.154.71.87/clavier/btn_3.png","http://195.154.71.87/clavier/btn_9.png","http://195.154.71.87/clavier/btn_1.png","http://195.154.71.87/clavier/btn_8.png","http://195.154.71.87/clavier/btn_6.png","http://195.154.71.87/clavier/btn_4.png","http://195.154.71.87/clavier/btn_5.png","http://195.154.71.87/clavier/btn_7.png","http://195.154.71.87/clavier/btn_0.png"],"pinPadId":"1"}',
                                                                      'POST', '/rest/virement/validatevirement');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (6, 34, '{
  "dateServeur": 1416873600000,
  "comptesDebiteurs": [
    {
      "id": "AA1",
      "idTechnique": 1,
      "libelle": "Compte 1",
      "numeroDeCompte": "9874 5200 0000 2151",
      "solde": 54569.35,
      "type": 3,
      "dateSolde": 1236557856325,
      "titulaire": {
        "id": "BB1",
        "idTechnique": 1,
        "civilite": 3,
        "nom": "De la verte Dupuis",
        "prenom": "Elizabeth Marie Josephine"
      },
      "cotitulaire": {
        "id": "BB2",
        "idTechnique": 2,
        "civilite": 1,
        "nom": "Dupuis-Depardieu",
        "prenom": "Jean-Pascal Romarin"
      }
    },
    {
      "id": "RR2",
      "idTechnique": 12,
      "libelle": "LDD",
      "numeroDeCompte": "123 589 228 51",
      "solde": 9835.5,
      "type": 2,
      "dateSolde": 1236557856325,
      "titulaire": {
        "id": "BB1",
        "idTechnique": 1,
        "civilite": 3,
        "nom": "De la verte Dupuis",
        "prenom": "Elizabeth Marie Josephine"
      }
    },
    {
      "id": "AA2",
      "idTechnique": 2,
      "libelle": "Livret BforBank",
      "numeroDeCompte": "1236 5894 2281 5185",
      "solde": 2035.5,
      "type": 2,
      "dateSolde": 1236557856325,
      "titulaire": {
        "id": "BB1",
        "idTechnique": 1,
        "civilite": 3,
        "nom": "De la verte Dupuis",
        "prenom": "Elizabeth Marie Josephine"
      }
    },
    {
      "id": "AA3",
      "idTechnique": 3,
      "libelle": "Livret A",
      "numeroDeCompte": "9876 6400 0000 4756",
      "solde": 60970,
      "type": 3,
      "dateSolde": 1236557856325,
      "titulaire": {
        "id": "BB1",
        "idTechnique": 1,
        "civilite": 3,
        "nom": "De la verte Dupuis",
        "prenom": "Elizabeth Marie Josephine"
      }
    }
  ],
  "comptesCrediteurs": [
    {
      "id": "CC1",
      "idTechnique": 3,
      "beneficiaire": "Maitre Martial",
      "iban": "9874 5200 0000 2151",
      "eprouve": true,
      "statutBeneficiaire": 1,
      "libelle": "Avocat specialise",
      "typeBeneficiaire": 2
    },
    {
      "id": "CC2",
      "idTechnique": 4,
      "beneficiaire": "Mlle Lemarshall Clementine",
      "iban": "9874 5200 0000 2152",
      "eprouve": true,
      "statutBeneficiaire": 1,
      "libelle": "Docteur Sciences appliquees",
      "typeBeneficiaire": 2
    },
    {
      "id": "CC3",
      "idTechnique": 5,
      "beneficiaire": "Mr Lemarshall Gérard",
      "iban": "9874 5200 0000 2153",
      "eprouve": true,
      "statutBeneficiaire": 1,
      "libelle": "Kinésithérapeute",
      "typeBeneficiaire": 2
    }
  ],
  "periodicites": [
    {
      "id": "1",
      "idTechnique": 1,
      "libelle": "Hebdomadaire"
    },
    {
      "id": "2",
      "idTechnique": 2,
      "libelle": "Mensuelle"
    },
    {
      "id": "3",
      "idTechnique": 3,
      "libelle": "Trimestrielle"
    },
    {
      "id": "4",
      "idTechnique": 4,
      "libelle": "Annuelle"
    }
  ]
}', 'GET', '/rest/virement/initvirement');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (10, 16,
                                                                      '{"messagesWarn":[{"code":"MSG1","libelle":"LibelleMSG1"},{"code":"MSG2","libelle":"LibelleMSG2"},{"code":"MSG3","libelle":"LibelleMSG3"}],"messagesInfo":[{"code":"MSG1","libelle":"Votre demande de virement a bien été prise en compte."},{"code":"MSG2","libelle":"LibelleMSG2"},{"code":"MSG3","libelle":"LibelleMSG3"}],"pinPadUrls":["http://195.154.71.87/clavier/btn_2.png","http://195.154.71.87/clavier/btn_3.png","http://195.154.71.87/clavier/btn_9.png","http://195.154.71.87/clavier/btn_1.png","http://195.154.71.87/clavier/btn_8.png","http://195.154.71.87/clavier/btn_6.png","http://195.154.71.87/clavier/btn_4.png","http://195.154.71.87/clavier/btn_5.png","http://195.154.71.87/clavier/btn_7.png","http://195.154.71.87/clavier/btn_0.png"],"pinPadId":"1"}',
                                                                      'POST', '/rest/virement/executevirement');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES
  (38, 12, '{"messagesError":[{"code":"MSG1","libelle":"Le paiement sans contact pour votre carte a échoué"}]}', 'POST',
   '/rest/cartes/executeactivernfc');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (39, 0,
                                                                      '{"messagesError":[{"code":"Echec","libelle":"L’activation du paiement sans contact a échoué. Veuillez réitérer votre demande"}]}',
                                                                      'POST',
                                                                      '/rest/cartes/executeactivernfc_avec_error');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES
  (40, 0, '{"messagesInfo":[{"code":"MSG1","libelle":"LibelleMSG1"}]}', 'POST',
   '/rest/cartes/executeactivernfc_sans_error');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (41, 2,
                                                                      '{"messagesError":[{"code":"MSG1","libelle":"LibelleMSG1"},{"code":"MSG2","libelle":"LibelleMSG2"},{"code":"MSG3","libelle":"LibelleMSG3"}],"messagesWarn":[{"code":"MSG1","libelle":"LibelleMSG1"},{"code":"MSG2","libelle":"LibelleMSG2"},{"code":"MSG3","libelle":"LibelleMSG3"}],"messagesInfo":[{"code":"MSG1","libelle":"Votre demande de virement a bien été prise en compte."},{"code":"MSG2","libelle":"LibelleMSG2"},{"code":"MSG3","libelle":"LibelleMSG3"}],"pinPadUrls":["http://195.154.71.87/clavier/btn_0.png","http://195.154.71.87/clavier/btn_3.png","http://195.154.71.87/clavier/btn_4.png","http://195.154.71.87/clavier/btn_1.png","http://195.154.71.87/clavier/btn_8.png","http://195.154.71.87/clavier/btn_7.png","http://195.154.71.87/clavier/btn_9.png","http://195.154.71.87/clavier/btn_5.png","http://195.154.71.87/clavier/btn_6.png","http://195.154.71.87/clavier/btn_2.png"],"pinPadId":"1"}',
                                                                      'POST',
                                                                      '/rest/cartes/validermodificationplafond');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (33, 12, '{
  "utilisateur": {
    "id": "1",
    "idTechnique": 1001,
    "civilite": 3,
    "nom": "De La Verte Dupuis",
    "prenom": "Elizabeth",
    "contratTitulaire": [
      {
        "id": "1",
        "idTechnique": 1201,
        "type": 1,
        "libelle": "Compte bancaire 1",
        "numeroDeCompte": "1010 2020 3030 4040",
        "solde": 675.78,
        "typeCompte": 2,
        "depotavue": {
          "id": "1",
          "idTechnique": 12601,
          "soldeEnCours": 535.78,
          "soldeAVenir": -125,
          "soldeEnCoursMoisSuivant": -368,
          "previsionnelFinDeMois": -200,
          "carteBancaire1": {
            "id": "1",
            "idTechnique": 17771,
            "typeDebit": 1
          },
          "soldesADate": [
            {
              "id": "1",
              "idTechnique": 14701,
              "date": 1416387548000,
              "solde": 1000
            },
            {
              "id": "2",
              "idTechnique": 14702,
              "date": 1416301148000,
              "solde": 800
            },
            {
              "id": "3",
              "idTechnique": 14703,
              "date": 1416214748000,
              "solde": 0
            },
            {
              "id": "4",
              "idTechnique": 14704,
              "date": 1416128348000,
              "solde": -600
            },
            {
              "id": "5",
              "idTechnique": 14705,
              "date": 1416041948000,
              "solde": 200
            },
            {
              "id": "6",
              "idTechnique": 14706,
              "date": 1415955548000,
              "solde": 400
            },
            {
              "id": "7",
              "idTechnique": 14707,
              "date": 1415869148000,
              "solde": 500
            },
            {
              "id": "8",
              "idTechnique": 14708,
              "date": 1415782748000,
              "solde": 1200
            },
            {
              "id": "9",
              "idTechnique": 14709,
              "date": 1415696348000,
              "solde": -600
            },
            {
              "id": "10",
              "idTechnique": 14710,
              "date": 1415609948000,
              "solde": -800
            },
            {
              "id": "11",
              "idTechnique": 14711,
              "date": 1415523548000,
              "solde": 0
            },
            {
              "id": "12",
              "idTechnique": 14712,
              "date": 1415437148000,
              "solde": 100
            },
            {
              "id": "13",
              "idTechnique": 14713,
              "date": 1415350748000,
              "solde": -300
            },
            {
              "id": "14",
              "idTechnique": 14714,
              "date": 1415264348000,
              "solde": -500
            },
            {
              "id": "15",
              "idTechnique": 14715,
              "date": 1415177948000,
              "solde": 0
            },
            {
              "id": "16",
              "idTechnique": 14716,
              "date": 1415091548000,
              "solde": 1200
            }
          ]
        },
        "dateDuSolde": 1416218342000,
        "dateActivation": 1036557856325,
        "titulaire": {
          "id": "1",
          "idTechnique": 1001,
          "civilite": 3,
          "nom": "De La Verte Dupuis",
          "prenom": "Elizabeth"
        },
        "cotitulaire": {
          "id": "2",
          "idTechnique": 1002,
          "civilite": 1,
          "nom": "Dupuis",
          "prenom": "Jean-Pascal"
        }
      },
      {
        "id": "2",
        "idTechnique": 1202,
        "type": 2,
        "libelle": "Livret A",
        "numeroDeCompte": "9874 5200 0000 2151",
        "solde": 6035.55,
        "typeCompte": 2,
        "livret": {
          "id": "1",
          "idTechnique": 13601,
          "typeLivret": 1,
          "plafond": 14000
        },
        "dateDuSolde": 1416218342000,
        "dateActivation": 1036557856325,
        "titulaire": {
          "id": "1",
          "idTechnique": 1001,
          "civilite": 3,
          "nom": "De La Verte Dupuis",
          "prenom": "Elizabeth"
        },
        "cotitulaire": {
          "id": "2",
          "idTechnique": 1002,
          "civilite": 1,
          "nom": "Dupuis",
          "prenom": "Jean-Pascal"
        }
      },
      {
        "id": "3",
        "idTechnique": 1203,
        "type": 2,
        "libelle": "LDD",
        "numeroDeCompte": "1236 5894 2281 5185",
        "solde": 3035.5,
        "typeCompte": 1,
        "livret": {
          "id": "2",
          "idTechnique": 13602,
          "typeLivret": 2,
          "plafond": 8000
        },
        "dateDuSolde": 1416218342000,
        "dateActivation": 1036557856325,
        "titulaire": {
          "id": "1",
          "idTechnique": 1001,
          "civilite": 3,
          "nom": "De La Verte Dupuis",
          "prenom": "Elizabeth"
        }
      },
      {
        "id": "4",
        "idTechnique": 1204,
        "type": 2,
        "libelle": "Livret BforBank",
        "numeroDeCompte": "0000 1234 5478 xxxx",
        "solde": 60035.53,
        "typeCompte": 2,
        "livret": {
          "id": "3",
          "idTechnique": 13603,
          "typeLivret": 3,
          "plafond": -1
        },
        "dateDuSolde": 1416218342000,
        "dateActivation": 1036557856325,
        "titulaire": {
          "id": "1",
          "idTechnique": 1001,
          "civilite": 3,
          "nom": "De La Verte Dupuis",
          "prenom": "Elizabeth"
        },
        "cotitulaire": {
          "id": "2",
          "idTechnique": 1002,
          "civilite": 1,
          "nom": "Dupuis",
          "prenom": "Jean-Pascal"
        }
      },
      {
        "id": "5",
        "idTechnique": 1205,
        "type": 3,
        "libelle": "PEA",
        "numeroDeCompte": "cccc aaaa dddd xxxx",
        "solde": 21000.2,
        "typeCompte": 1,
        "bourse": {
          "id": "1",
          "idTechnique": 1001,
          "soldeLiquidites": 1354
        },
        "dateDuSolde": 1416218342000,
        "dateActivation": 1036557856325,
        "titulaire": {
          "id": "1",
          "idTechnique": 1001,
          "civilite": 3,
          "nom": "De La Verte Dupuis",
          "prenom": "Elizabeth"
        }
      },
      {
        "id": "6",
        "idTechnique": 1206,
        "type": 4,
        "libelle": "PEA-PME",
        "numeroDeCompte": "aaaa bbbb cccc dddd",
        "solde": 3000,
        "typeCompte": 1,
        "bourse": {
          "id": "2",
          "idTechnique": 1002,
          "soldeLiquidites": 1105
        },
        "dateDuSolde": 1416218342000,
        "dateActivation": 1036557856325,
        "titulaire": {
          "id": "1",
          "idTechnique": 1001,
          "civilite": 3,
          "nom": "De La Verte Dupuis",
          "prenom": "Elizabeth"
        }
      },
      {
        "id": "7",
        "idTechnique": 1207,
        "type": 5,
        "libelle": "Assurance Vie",
        "numeroDeCompte": "xxxx yyyy zzzz ssss",
        "solde": 30000,
        "typeCompte": 1,
        "dateDuSolde": 1416218342000,
        "dateActivation": 1036557856325,
        "titulaire": {
          "id": "1",
          "idTechnique": 1001,
          "civilite": 3,
          "nom": "De La Verte Dupuis",
          "prenom": "Elizabeth"
        }
      },
      {
        "id": "8",
        "idTechnique": 1208,
        "type": 6,
        "libelle": "CTO",
        "numeroDeCompte": "1236 5462 cccc dddd",
        "solde": 6300,
        "typeCompte": 2,
        "bourse": {
          "id": "3",
          "idTechnique": 1003,
          "soldeLiquidites": 3410
        },
        "dateDuSolde": 1416218342000,
        "dateActivation": 1036557856325,
        "titulaire": {
          "id": "1",
          "idTechnique": 1001,
          "civilite": 3,
          "nom": "De La Verte Dupuis",
          "prenom": "Elizabeth"
        },
        "cotitulaire": {
          "id": "2",
          "idTechnique": 1002,
          "civilite": 1,
          "nom": "Dupuis",
          "prenom": "Jean-Pascal"
        }
      },
      {
        "id": "10",
        "idTechnique": 1210,
        "type": 5,
        "libelle": "Assurance Vie 2",
        "numeroDeCompte": "arte france2 gulli",
        "solde": 20000,
        "typeCompte": 1,
        "dateDuSolde": 1416218342000,
        "dateActivation": 1353340976000,
        "titulaire": {
          "id": "1",
          "idTechnique": 1001,
          "civilite": 3,
          "nom": "De La Verte Dupuis",
          "prenom": "Elizabeth"
        }
      },
      {
        "id": "11",
        "idTechnique": 1211,
        "type": 6,
        "libelle": "CTO",
        "numeroDeCompte": "4444 5555 6666 7777",
        "solde": 12340,
        "typeCompte": 2,
        "bourse": {
          "id": "4",
          "idTechnique": 1004,
          "soldeLiquidites": 9876
        },
        "dateDuSolde": 1416218342000,
        "dateActivation": 974649776000,
        "titulaire": {
          "id": "1",
          "idTechnique": 1001,
          "civilite": 3,
          "nom": "De La Verte Dupuis",
          "prenom": "Elizabeth"
        },
        "cotitulaire": {
          "id": "2",
          "idTechnique": 1002,
          "civilite": 1,
          "nom": "Dupuis",
          "prenom": "Jean-Pascal"
        }
      }
    ]
  }
}', 'GET', '/rest/accueil/initaccueil_test');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (43, 5,
                                                                      '{"plafondsCarte":{"id":"1","idTechnique":1,"carteAPlafonner":{"id":"CB1","idTechnique":1,"numero":"0001 0001 0001 0001","typeDebit":1,"typeCarte":1},"plafonds":[{"id":"1","idTechnique":1,"retrait":1000,"paiement":1000},{"id":"2","idTechnique":2,"retrait":2000,"paiement":2000},{"id":"3","idTechnique":3,"retrait":4000,"paiement":5000}],"typeModification":1},"datePlafond":10000}',
                                                                      'POST', '/rest/cartes/initmodificationplafonds');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (44, 1,
                                                                      '{"retraitExceptionnelCarte":{"id":"1","idTechnique":1,"carteRetrait":{"id":"CB1","idTechnique":1,"numero":"0001 0001 0001 0001","typeDebit":1,"typeCarte":1},"montants":[{"id":"1","idTechnique":1,"montant":1000},{"id":"2","idTechnique":2,"montant":2000},{"id":"3","idTechnique":3,"montant":4000}]}}',
                                                                      'POST', '/rest/cartes/initretraitexceptionnel');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (45, 1,
                                                                      '{"niveauSecurite":"NS2","messagesWarn":[{"code":"MSG1","libelle":"LibelleMSG1"},{"code":"MSG2","libelle":"LibelleMSG2"},{"code":"MSG3","libelle":"LibelleMSG3"}],"messagesInfo":[{"code":"MSG1","libelle":"LibelleMSG1"},{"code":"MSG2","libelle":"LibelleMSG2"},{"code":"MSG3","libelle":"LibelleMSG3"}],"ordreVirement":{"id":"VVV1","idTechnique":1,"beneficiaireId":3,"beneficiaire":{"id":"BBB1","idTechnique":1,"beneficiaire":"Maitre Martial","iban":"9874 5200 0000 2151","eprouve":true,"statutBeneficiaire":1,"libelle":"Avocat spécialisé","typeBeneficiaire":2},"contratVirement":{"id":"CCC2","idTechnique":2,"libelle":"Livret A","numeroDeCompte":"9874 5200 0000 2151","solde":62035.5,"type":2,"dateSolde":1236557856325,"titulaire":{"id":"III1","idTechnique":1,"civilite":3,"nom":"De la verte Dupuis","prenom":"Elizabeth"},"cotitulaire":{"id":"III2","idTechnique":2,"civilite":1,"nom":"Dupuis","prenom":"Jean-Pascal"}},"libelle":"motif du virement de 1000 euros","montant":1000,"typeVirement":1,"datePremiereExecution":1233654896416},"pinPadUrls":["http://195.154.71.87/clavier/btn_2.png","http://195.154.71.87/clavier/btn_3.png","http://195.154.71.87/clavier/btn_9.png","http://195.154.71.87/clavier/btn_1.png","http://195.154.71.87/clavier/btn_8.png","http://195.154.71.87/clavier/btn_6.png","http://195.154.71.87/clavier/btn_4.png","http://195.154.71.87/clavier/btn_5.png","http://195.154.71.87/clavier/btn_7.png","http://195.154.71.87/clavier/btn_0.png"],"pinPadId":"1"}',
                                                                      'POST',
                                                                      '/rest/ios/rest/virement/validatevirement');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (48, 2,
                                                                      '{"id":"86bc371f-0bdb-47dc-9acc-300130a73db8","pinPadUrls":["http://195.154.71.87/clavier/btn_2.png","http://195.154.71.87/clavier/btn_3.png","http://195.154.71.87/clavier/btn_9.png","http://195.154.71.87/clavier/btn_1.png","http://195.154.71.87/clavier/btn_8.png","http://195.154.71.87/clavier/btn_6.png","http://195.154.71.87/clavier/btn_4.png","http://195.154.71.87/clavier/btn_5.png","http://195.154.71.87/clavier/btn_7.png","http://195.154.71.87/clavier/btn_0.png"]}',
                                                                      'GET',
                                                                      '/rest/wsso/service/rest/pinpad/generate/mobile');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES (47, 2,
                                                                      '{"messagesError":[{"code":"MSG1","libelle":"LibelleMSG1"},{"code":"MSG2","libelle":"LibelleMSG2"},{"code":"MSG3","libelle":"LibelleMSG3"}],"messagesWarn":[{"code":"MSG1","libelle":"LibelleMSG1"},{"code":"MSG2","libelle":"LibelleMSG2"},{"code":"MSG3","libelle":"LibelleMSG3"}],"messagesInfo":[{"code":"MSG1","libelle":"Votre demande de virement a bien été prise en compte."},{"code":"MSG2","libelle":"LibelleMSG2"},{"code":"MSG3","libelle":"LibelleMSG3"}],"pinPadUrls":["http://195.154.71.87/clavier/btn_0.png","http://195.154.71.87/clavier/btn_3.png","http://195.154.71.87/clavier/btn_4.png","http://195.154.71.87/clavier/btn_1.png","http://195.154.71.87/clavier/btn_8.png","http://195.154.71.87/clavier/btn_7.png","http://195.154.71.87/clavier/btn_9.png","http://195.154.71.87/clavier/btn_5.png","http://195.154.71.87/clavier/btn_6.png","http://195.154.71.87/clavier/btn_2.png"],"pinPadId":"1"}',
                                                                      'POST',
                                                                      '/rest/cartes/validerretraitexceptionnel');
INSERT INTO rest_endpoint (id, version, content, method, uri) VALUES
  (46, 2, '{"messagesInfo":[{"code":"MSG1","libelle":"Votre demande d’opposition a bien été prise en compte."}]}',
   'POST', '/rest/cartes/executefaireopposition');
