;  					 <Guess the country>
; Digite o nome de todos os países da America do Sul
;********************************************************
;                   ESTRUTURA DO PROGRAMA
;********************************************************
; Inicializa variaveis e vetores
; Inicializa o mapa
; main:
;	Strings dos paises
; 	Inicializa o contador de paises
;	Imprime o mapa
;	Imprime o contador de paises (a parte do '\13')
; 	Loop:
;		LePalavra
;		Compara com cada pais
;		Testa o fim
;		Atualiza contador
;		jmp Loop
; 	Fim:
;		Imprime o Contador final
;		halt

jmp main

; Variaveis
Palavra: var #41	; Vetor para Armazenar as letras da Palavra
PalavraSize: var #1	; Tamanho da Palavra
Letra: var #1		; Contem a letra que foi digitada
Acertos: var #4 ; Conta o numero de paises acertados 
AcertoBrasil: var #1
AcertoArgentina: var #1
AcertoUruguai: var #1
AcertoColombia: var #1
AcertoVenezuela: var #1
AcertoSuriname: var #1
AcertoGuiana: var #1
AcertoGuiana_Francesa: var #1
AcertoPeru: var #1
AcertoEquador: var #1
AcertoBolivia: var #1
AcertoChile: var #1
AcertoParaguai: var #1


; Vetores dos paises
Brasil: var #41; Nome da palavra alvo
Argentina: var #41
Uruguai: var #41
Colombia: var #41
Venezuela: var #41
Suriname: var #41
Guiana: var #41
Guiana_Francesa: var #41
Peru: var #41
Equador: var #41
Bolivia: var #41
Chile: var #41
Paraguai: var #41
mapa : var #1200
venceu : var #1200
inicio : var #1200

;Mapa:
	;Linha 0
	static mapa + #0, #127
	static mapa + #1, #127
	static mapa + #2, #127
	static mapa + #3, #127
	static mapa + #4, #127
	static mapa + #5, #127
	static mapa + #6, #127
	static mapa + #7, #127
	static mapa + #8, #127
	static mapa + #9, #127
	static mapa + #10, #127
	static mapa + #11, #127
	static mapa + #12, #127
	static mapa + #13, #127
	static mapa + #14, #127
	static mapa + #15, #127
	static mapa + #16, #127
	static mapa + #17, #127
	static mapa + #18, #127
	static mapa + #19, #127
	static mapa + #20, #127
	static mapa + #21, #127
	static mapa + #22, #127
	static mapa + #23, #127
	static mapa + #24, #127
	static mapa + #25, #127
	static mapa + #26, #127
	static mapa + #27, #127
	static mapa + #28, #127
	static mapa + #29, #127
	static mapa + #30, #127
	static mapa + #31, #127
	static mapa + #32, #127
	static mapa + #33, #127
	static mapa + #34, #127
	static mapa + #35, #127
	static mapa + #36, #127
	static mapa + #37, #127
	static mapa + #38, #127
	static mapa + #39, #127

	;Linha 1
	static mapa + #40, #127
	static mapa + #41, #127
	static mapa + #42, #127
	static mapa + #43, #127
	static mapa + #44, #127
	static mapa + #45, #127
	static mapa + #46, #127
	static mapa + #47, #127
	static mapa + #48, #127
	static mapa + #49, #127
	static mapa + #50, #127
	static mapa + #51, #127
	static mapa + #52, #127
	static mapa + #53, #35
	static mapa + #54, #35
	static mapa + #55, #127
	static mapa + #56, #127
	static mapa + #57, #127
	static mapa + #58, #127
	static mapa + #59, #127
	static mapa + #60, #127
	static mapa + #61, #127
	static mapa + #62, #127
	static mapa + #63, #127
	static mapa + #64, #127
	static mapa + #65, #127
	static mapa + #66, #127
	static mapa + #67, #127
	static mapa + #68, #127
	static mapa + #69, #127
	static mapa + #70, #127
	static mapa + #71, #127
	static mapa + #72, #127
	static mapa + #73, #127
	static mapa + #74, #127
	static mapa + #75, #127
	static mapa + #76, #127
	static mapa + #77, #127
	static mapa + #78, #127
	static mapa + #79, #127

	;Linha 2
	static mapa + #80, #127
	static mapa + #81, #127
	static mapa + #82, #127
	static mapa + #83, #127
	static mapa + #84, #127
	static mapa + #85, #127
	static mapa + #86, #127
	static mapa + #87, #127
	static mapa + #88, #127
	static mapa + #89, #127
	static mapa + #90, #127
	static mapa + #91, #127
	static mapa + #92, #35
	static mapa + #93, #35
	static mapa + #94, #291
	static mapa + #95, #291
	static mapa + #96, #291
	static mapa + #97, #291
	static mapa + #98, #291
	static mapa + #99, #291
	static mapa + #100, #127
	static mapa + #101, #127
	static mapa + #102, #127
	static mapa + #103, #127
	static mapa + #104, #127
	static mapa + #105, #127
	static mapa + #106, #127
	static mapa + #107, #127
	static mapa + #108, #127
	static mapa + #109, #127
	static mapa + #110, #127
	static mapa + #111, #127
	static mapa + #112, #127
	static mapa + #113, #127
	static mapa + #114, #127
	static mapa + #115, #127
	static mapa + #116, #127
	static mapa + #117, #127
	static mapa + #118, #127
	static mapa + #119, #127

	;Linha 3
	static mapa + #120, #127
	static mapa + #121, #127
	static mapa + #122, #127
	static mapa + #123, #127
	static mapa + #124, #127
	static mapa + #125, #127
	static mapa + #126, #127
	static mapa + #127, #127
	static mapa + #128, #127
	static mapa + #129, #127
	static mapa + #130, #127
	static mapa + #131, #35
	static mapa + #132, #35
	static mapa + #133, #35
	static mapa + #134, #291
	static mapa + #135, #291
	static mapa + #136, #291
	static mapa + #137, #291
	static mapa + #138, #291
	static mapa + #139, #291
	static mapa + #140, #291
	static mapa + #141, #127
	static mapa + #142, #127
	static mapa + #143, #127
	static mapa + #144, #127
	static mapa + #145, #127
	static mapa + #146, #3333
	static mapa + #147, #127
	static mapa + #148, #127
	static mapa + #149, #127
	static mapa + #150, #127
	static mapa + #151, #127
	static mapa + #152, #127
	static mapa + #153, #127
	static mapa + #154, #127
	static mapa + #155, #127
	static mapa + #156, #127
	static mapa + #157, #127
	static mapa + #158, #127
	static mapa + #159, #127

	;Linha 4
	static mapa + #160, #127
	static mapa + #161, #127
	static mapa + #162, #127
	static mapa + #163, #127
	static mapa + #164, #127
	static mapa + #165, #127
	static mapa + #166, #127
	static mapa + #167, #127
	static mapa + #168, #127
	static mapa + #169, #127
	static mapa + #170, #35
	static mapa + #171, #35
	static mapa + #172, #35
	static mapa + #173, #35
	static mapa + #174, #35
	static mapa + #175, #291
	static mapa + #176, #291
	static mapa + #177, #291
	static mapa + #178, #291
	static mapa + #179, #291
	static mapa + #180, #291
	static mapa + #181, #1059
	static mapa + #182, #1059
	static mapa + #183, #2083
	static mapa + #184, #2083
	static mapa + #185, #3363
	static mapa + #186, #3333
	static mapa + #187, #3333
	static mapa + #188, #127
	static mapa + #189, #127
	static mapa + #190, #127
	static mapa + #191, #127
	static mapa + #192, #127
	static mapa + #193, #127
	static mapa + #194, #127
	static mapa + #195, #127
	static mapa + #196, #127
	static mapa + #197, #127
	static mapa + #198, #127
	static mapa + #199, #127

	;Linha 5
	static mapa + #200, #127
	static mapa + #201, #127
	static mapa + #202, #127
	static mapa + #203, #127
	static mapa + #204, #127
	static mapa + #205, #127
	static mapa + #206, #127
	static mapa + #207, #127
	static mapa + #208, #127
	static mapa + #209, #35
	static mapa + #210, #35
	static mapa + #211, #35
	static mapa + #212, #35
	static mapa + #213, #35
	static mapa + #214, #35
	static mapa + #215, #35
	static mapa + #216, #291
	static mapa + #217, #291
	static mapa + #218, #291
	static mapa + #219, #2851
	static mapa + #220, #2851
	static mapa + #221, #1059
	static mapa + #222, #1059
	static mapa + #223, #2083
	static mapa + #224, #2083
	static mapa + #225, #3363
	static mapa + #226, #2851
	static mapa + #227, #3333
	static mapa + #228, #127
	static mapa + #229, #127
	static mapa + #230, #127
	static mapa + #231, #127
	static mapa + #232, #127
	static mapa + #233, #127
	static mapa + #234, #127
	static mapa + #235, #127
	static mapa + #236, #127
	static mapa + #237, #127
	static mapa + #238, #127
	static mapa + #239, #127

	;Linha 6
	static mapa + #240, #127
	static mapa + #241, #127
	static mapa + #242, #127
	static mapa + #243, #127
	static mapa + #244, #127
	static mapa + #245, #127
	static mapa + #246, #127
	static mapa + #247, #127
	static mapa + #248, #35
	static mapa + #249, #35
	static mapa + #250, #35
	static mapa + #251, #35
	static mapa + #252, #35
	static mapa + #253, #35
	static mapa + #254, #35
	static mapa + #255, #35
	static mapa + #256, #291
	static mapa + #257, #291
	static mapa + #258, #291
	static mapa + #259, #2851
	static mapa + #260, #2851
	static mapa + #261, #1059
	static mapa + #262, #1059
	static mapa + #263, #2083
	static mapa + #264, #2851
	static mapa + #265, #2851
	static mapa + #266, #2851
	static mapa + #267, #3333
	static mapa + #268, #127
	static mapa + #269, #127
	static mapa + #270, #127
	static mapa + #271, #127
	static mapa + #272, #127
	static mapa + #273, #127
	static mapa + #274, #127
	static mapa + #275, #127
	static mapa + #276, #127
	static mapa + #277, #127
	static mapa + #278, #127
	static mapa + #279, #127

	;Linha 7
	static mapa + #280, #127
	static mapa + #281, #127
	static mapa + #282, #127
	static mapa + #283, #127
	static mapa + #284, #127
	static mapa + #285, #127
	static mapa + #286, #1315
	static mapa + #287, #1315
	static mapa + #288, #1315
	static mapa + #289, #1315
	static mapa + #290, #35
	static mapa + #291, #35
	static mapa + #292, #35
	static mapa + #293, #35
	static mapa + #294, #35
	static mapa + #295, #35
	static mapa + #296, #2851
	static mapa + #297, #2851
	static mapa + #298, #2851
	static mapa + #299, #2851
	static mapa + #300, #2851
	static mapa + #301, #2851
	static mapa + #302, #2851
	static mapa + #303, #2851
	static mapa + #304, #2851
	static mapa + #305, #2851
	static mapa + #306, #2851
	static mapa + #307, #2851
	static mapa + #308, #127
	static mapa + #309, #127
	static mapa + #310, #127
	static mapa + #311, #127
	static mapa + #312, #127
	static mapa + #313, #127
	static mapa + #314, #127
	static mapa + #315, #127
	static mapa + #316, #127
	static mapa + #317, #127
	static mapa + #318, #127
	static mapa + #319, #127

	;Linha 8
	static mapa + #320, #127
	static mapa + #321, #127
	static mapa + #322, #127
	static mapa + #323, #127
	static mapa + #324, #127
	static mapa + #325, #1315
	static mapa + #326, #1315
	static mapa + #327, #1315
	static mapa + #328, #1315
	static mapa + #329, #1315
	static mapa + #330, #3107
	static mapa + #331, #3107
	static mapa + #332, #3107
	static mapa + #333, #35
	static mapa + #334, #35
	static mapa + #335, #35
	static mapa + #336, #2851
	static mapa + #337, #2851
	static mapa + #338, #2851
	static mapa + #339, #2851
	static mapa + #340, #2851
	static mapa + #341, #2851
	static mapa + #342, #2851
	static mapa + #343, #2851
	static mapa + #344, #2851
	static mapa + #345, #2851
	static mapa + #346, #2851
	static mapa + #347, #2851
	static mapa + #348, #2851
	static mapa + #349, #2851
	static mapa + #350, #127
	static mapa + #351, #127
	static mapa + #352, #127
	static mapa + #353, #127
	static mapa + #354, #127
	static mapa + #355, #127
	static mapa + #356, #127
	static mapa + #357, #127
	static mapa + #358, #127
	static mapa + #359, #127

	;Linha 9
	static mapa + #360, #127
	static mapa + #361, #127
	static mapa + #362, #127
	static mapa + #363, #127
	static mapa + #364, #127
	static mapa + #365, #127
	static mapa + #366, #1315
	static mapa + #367, #1315
	static mapa + #368, #3107
	static mapa + #369, #3107
	static mapa + #370, #3107
	static mapa + #371, #3107
	static mapa + #372, #3107
	static mapa + #373, #3107
	static mapa + #374, #2851
	static mapa + #375, #2851
	static mapa + #376, #2851
	static mapa + #377, #2851
	static mapa + #378, #2851
	static mapa + #379, #2851
	static mapa + #380, #2851
	static mapa + #381, #2851
	static mapa + #382, #2851
	static mapa + #383, #2851
	static mapa + #384, #2851
	static mapa + #385, #2851
	static mapa + #386, #2851
	static mapa + #387, #2851
	static mapa + #388, #2851
	static mapa + #389, #2851
	static mapa + #390, #2851
	static mapa + #391, #127
	static mapa + #392, #127
	static mapa + #393, #127
	static mapa + #394, #127
	static mapa + #395, #127
	static mapa + #396, #127
	static mapa + #397, #127
	static mapa + #398, #127
	static mapa + #399, #127

	;Linha 10
	static mapa + #400, #127
	static mapa + #401, #127
	static mapa + #402, #127
	static mapa + #403, #127
	static mapa + #404, #127
	static mapa + #405, #127
	static mapa + #406, #3107
	static mapa + #407, #3107
	static mapa + #408, #3107
	static mapa + #409, #3107
	static mapa + #410, #3107
	static mapa + #411, #3107
	static mapa + #412, #3107
	static mapa + #413, #2851
	static mapa + #414, #2851
	static mapa + #415, #2851
	static mapa + #416, #2851
	static mapa + #417, #2851
	static mapa + #418, #2851
	static mapa + #419, #2851
	static mapa + #420, #2851
	static mapa + #421, #2851
	static mapa + #422, #2851
	static mapa + #423, #2851
	static mapa + #424, #2851
	static mapa + #425, #2851
	static mapa + #426, #2851
	static mapa + #427, #2851
	static mapa + #428, #2851
	static mapa + #429, #2851
	static mapa + #430, #2851
	static mapa + #431, #2823
	static mapa + #432, #127
	static mapa + #433, #127
	static mapa + #434, #127
	static mapa + #435, #127
	static mapa + #436, #127
	static mapa + #437, #127
	static mapa + #438, #127
	static mapa + #439, #127

	;Linha 11
	static mapa + #440, #127
	static mapa + #441, #127
	static mapa + #442, #127
	static mapa + #443, #127
	static mapa + #444, #127
	static mapa + #445, #127
	static mapa + #446, #3107
	static mapa + #447, #3107
	static mapa + #448, #3107
	static mapa + #449, #3107
	static mapa + #450, #3107
	static mapa + #451, #3107
	static mapa + #452, #2851
	static mapa + #453, #2851
	static mapa + #454, #2851
	static mapa + #455, #2851
	static mapa + #456, #2851
	static mapa + #457, #2851
	static mapa + #458, #2851
	static mapa + #459, #2851
	static mapa + #460, #2851
	static mapa + #461, #2851
	static mapa + #462, #2851
	static mapa + #463, #2851
	static mapa + #464, #2851
	static mapa + #465, #2851
	static mapa + #466, #2851
	static mapa + #467, #2851
	static mapa + #468, #2851
	static mapa + #469, #2851
	static mapa + #470, #2851
	static mapa + #471, #2823
	static mapa + #472, #127
	static mapa + #473, #127
	static mapa + #474, #127
	static mapa + #475, #127
	static mapa + #476, #127
	static mapa + #477, #127
	static mapa + #478, #127
	static mapa + #479, #127

	;Linha 12
	static mapa + #480, #127
	static mapa + #481, #127
	static mapa + #482, #127
	static mapa + #483, #127
	static mapa + #484, #127
	static mapa + #485, #3084
	static mapa + #486, #3107
	static mapa + #487, #3107
	static mapa + #488, #3107
	static mapa + #489, #3107
	static mapa + #490, #3107
	static mapa + #491, #803
	static mapa + #492, #2851
	static mapa + #493, #2851
	static mapa + #494, #2851
	static mapa + #495, #2851
	static mapa + #496, #2851
	static mapa + #497, #2851
	static mapa + #498, #2851
	static mapa + #499, #2851
	static mapa + #500, #2851
	static mapa + #501, #2851
	static mapa + #502, #2851
	static mapa + #503, #2851
	static mapa + #504, #2851
	static mapa + #505, #2851
	static mapa + #506, #2851
	static mapa + #507, #2851
	static mapa + #508, #2851
	static mapa + #509, #2851
	static mapa + #510, #2824
	static mapa + #511, #2823
	static mapa + #512, #127
	static mapa + #513, #127
	static mapa + #514, #127
	static mapa + #515, #127
	static mapa + #516, #127
	static mapa + #517, #127
	static mapa + #518, #127
	static mapa + #519, #127

	;Linha 13
	static mapa + #520, #127
	static mapa + #521, #127
	static mapa + #522, #127
	static mapa + #523, #127
	static mapa + #524, #127
	static mapa + #525, #127
	static mapa + #526, #127
	static mapa + #527, #3107
	static mapa + #528, #3107
	static mapa + #529, #3107
	static mapa + #530, #803
	static mapa + #531, #803
	static mapa + #532, #803
	static mapa + #533, #803
	static mapa + #534, #2851
	static mapa + #535, #2851
	static mapa + #536, #2851
	static mapa + #537, #2851
	static mapa + #538, #2851
	static mapa + #539, #2851
	static mapa + #540, #2851
	static mapa + #541, #2851
	static mapa + #542, #2851
	static mapa + #543, #2851
	static mapa + #544, #2851
	static mapa + #545, #2851
	static mapa + #546, #2851
	static mapa + #547, #2851
	static mapa + #548, #2851
	static mapa + #549, #2851
	static mapa + #550, #127
	static mapa + #551, #127
	static mapa + #552, #127
	static mapa + #553, #127
	static mapa + #554, #127
	static mapa + #555, #127
	static mapa + #556, #127
	static mapa + #557, #127
	static mapa + #558, #127
	static mapa + #559, #127

	;Linha 14
	static mapa + #560, #127
	static mapa + #561, #127
	static mapa + #562, #127
	static mapa + #563, #127
	static mapa + #564, #127
	static mapa + #565, #127
	static mapa + #566, #127
	static mapa + #567, #3107
	static mapa + #568, #3107
	static mapa + #569, #3107
	static mapa + #570, #803
	static mapa + #571, #803
	static mapa + #572, #803
	static mapa + #573, #803
	static mapa + #574, #803
	static mapa + #575, #803
	static mapa + #576, #803
	static mapa + #577, #2851
	static mapa + #578, #2851
	static mapa + #579, #2851
	static mapa + #580, #2851
	static mapa + #581, #2851
	static mapa + #582, #2851
	static mapa + #583, #2851
	static mapa + #584, #2851
	static mapa + #585, #2851
	static mapa + #586, #2851
	static mapa + #587, #2851
	static mapa + #588, #2851
	static mapa + #589, #2851
	static mapa + #590, #127
	static mapa + #591, #127
	static mapa + #592, #127
	static mapa + #593, #127
	static mapa + #594, #127
	static mapa + #595, #127
	static mapa + #596, #127
	static mapa + #597, #127
	static mapa + #598, #127
	static mapa + #599, #127

	;Linha 15
	static mapa + #600, #127
	static mapa + #601, #127
	static mapa + #602, #127
	static mapa + #603, #127
	static mapa + #604, #127
	static mapa + #605, #127
	static mapa + #606, #127
	static mapa + #607, #127
	static mapa + #608, #3107
	static mapa + #609, #3107
	static mapa + #610, #803
	static mapa + #611, #803
	static mapa + #612, #803
	static mapa + #613, #803
	static mapa + #614, #803
	static mapa + #615, #803
	static mapa + #616, #803
	static mapa + #617, #803
	static mapa + #618, #1315
	static mapa + #619, #1315
	static mapa + #620, #2851
	static mapa + #621, #2851
	static mapa + #622, #2851
	static mapa + #623, #2851
	static mapa + #624, #2851
	static mapa + #625, #2851
	static mapa + #626, #2851
	static mapa + #627, #2851
	static mapa + #628, #2851
	static mapa + #629, #127
	static mapa + #630, #127
	static mapa + #631, #127
	static mapa + #632, #127
	static mapa + #633, #127
	static mapa + #634, #127
	static mapa + #635, #127
	static mapa + #636, #127
	static mapa + #637, #127
	static mapa + #638, #127
	static mapa + #639, #127

	;Linha 16
	static mapa + #640, #127
	static mapa + #641, #127
	static mapa + #642, #127
	static mapa + #643, #127
	static mapa + #644, #127
	static mapa + #645, #127
	static mapa + #646, #127
	static mapa + #647, #127
	static mapa + #648, #127
	static mapa + #649, #3107
	static mapa + #650, #803
	static mapa + #651, #803
	static mapa + #652, #803
	static mapa + #653, #803
	static mapa + #654, #803
	static mapa + #655, #803
	static mapa + #656, #803
	static mapa + #657, #803
	static mapa + #658, #1315
	static mapa + #659, #1315
	static mapa + #660, #1315
	static mapa + #661, #2851
	static mapa + #662, #2851
	static mapa + #663, #2851
	static mapa + #664, #2851
	static mapa + #665, #2851
	static mapa + #666, #2851
	static mapa + #667, #2851
	static mapa + #668, #2851
	static mapa + #669, #127
	static mapa + #670, #127
	static mapa + #671, #127
	static mapa + #672, #127
	static mapa + #673, #127
	static mapa + #674, #127
	static mapa + #675, #127
	static mapa + #676, #127
	static mapa + #677, #127
	static mapa + #678, #127
	static mapa + #679, #127

	;Linha 17
	static mapa + #680, #127
	static mapa + #681, #127
	static mapa + #682, #127
	static mapa + #683, #127
	static mapa + #684, #127
	static mapa + #685, #127
	static mapa + #686, #127
	static mapa + #687, #127
	static mapa + #688, #127
	static mapa + #689, #1827
	static mapa + #690, #803
	static mapa + #691, #803
	static mapa + #692, #803
	static mapa + #693, #803
	static mapa + #694, #803
	static mapa + #695, #3619
	static mapa + #696, #3619
	static mapa + #697, #3619
	static mapa + #698, #1315
	static mapa + #699, #1315
	static mapa + #700, #1315
	static mapa + #701, #1315
	static mapa + #702, #2851
	static mapa + #703, #2851
	static mapa + #704, #2851
	static mapa + #705, #2851
	static mapa + #706, #2851
	static mapa + #707, #2851
	static mapa + #708, #2824
	static mapa + #709, #127
	static mapa + #710, #127
	static mapa + #711, #127
	static mapa + #712, #127
	static mapa + #713, #127
	static mapa + #714, #127
	static mapa + #715, #127
	static mapa + #716, #127
	static mapa + #717, #127
	static mapa + #718, #127
	static mapa + #719, #127

	;Linha 18
	static mapa + #720, #127
	static mapa + #721, #127
	static mapa + #722, #127
	static mapa + #723, #127
	static mapa + #724, #127
	static mapa + #725, #127
	static mapa + #726, #127
	static mapa + #727, #127
	static mapa + #728, #127
	static mapa + #729, #1827
	static mapa + #730, #1827
	static mapa + #731, #803
	static mapa + #732, #803
	static mapa + #733, #803
	static mapa + #734, #3619
	static mapa + #735, #3619
	static mapa + #736, #3619
	static mapa + #737, #3619
	static mapa + #738, #3619
	static mapa + #739, #1315
	static mapa + #740, #1315
	static mapa + #741, #1315
	static mapa + #742, #3619
	static mapa + #743, #2851
	static mapa + #744, #2851
	static mapa + #745, #2851
	static mapa + #746, #2851
	static mapa + #747, #127
	static mapa + #748, #2822
	static mapa + #749, #2822
	static mapa + #750, #2822
	static mapa + #751, #2822
	static mapa + #752, #2822
	static mapa + #753, #2822
	static mapa + #754, #127
	static mapa + #755, #127
	static mapa + #756, #127
	static mapa + #757, #127
	static mapa + #758, #127
	static mapa + #759, #127

	;Linha 19
	static mapa + #760, #127
	static mapa + #761, #127
	static mapa + #762, #127
	static mapa + #763, #127
	static mapa + #764, #127
	static mapa + #765, #127
	static mapa + #766, #127
	static mapa + #767, #127
	static mapa + #768, #127
	static mapa + #769, #1827
	static mapa + #770, #1827
	static mapa + #771, #803
	static mapa + #772, #803
	static mapa + #773, #3619
	static mapa + #774, #3619
	static mapa + #775, #3619
	static mapa + #776, #3619
	static mapa + #777, #3619
	static mapa + #778, #3619
	static mapa + #779, #3619
	static mapa + #780, #3619
	static mapa + #781, #3619
	static mapa + #782, #2851
	static mapa + #783, #2851
	static mapa + #784, #2851
	static mapa + #785, #2851
	static mapa + #786, #2851
	static mapa + #787, #127
	static mapa + #788, #2822
	static mapa + #789, #127
	static mapa + #790, #127
	static mapa + #791, #127
	static mapa + #792, #127
	static mapa + #793, #127
	static mapa + #794, #127
	static mapa + #795, #127
	static mapa + #796, #127
	static mapa + #797, #127
	static mapa + #798, #127
	static mapa + #799, #127

	;Linha 20
	static mapa + #800, #127
	static mapa + #801, #127
	static mapa + #802, #127
	static mapa + #803, #127
	static mapa + #804, #127
	static mapa + #805, #127
	static mapa + #806, #127
	static mapa + #807, #127
	static mapa + #808, #127
	static mapa + #809, #1827
	static mapa + #810, #1827
	static mapa + #811, #803
	static mapa + #812, #803
	static mapa + #813, #3619
	static mapa + #814, #3619
	static mapa + #815, #3619
	static mapa + #816, #3619
	static mapa + #817, #3619
	static mapa + #818, #3619
	static mapa + #819, #3619
	static mapa + #820, #3619
	static mapa + #821, #2851
	static mapa + #822, #2851
	static mapa + #823, #2851
	static mapa + #824, #2851
	static mapa + #825, #2851
	static mapa + #826, #127
	static mapa + #827, #2822
	static mapa + #828, #2822
	static mapa + #829, #127
	static mapa + #830, #127
	static mapa + #831, #127
	static mapa + #832, #127
	static mapa + #833, #127
	static mapa + #834, #127
	static mapa + #835, #127
	static mapa + #836, #127
	static mapa + #837, #127
	static mapa + #838, #127
	static mapa + #839, #127

	;Linha 21
	static mapa + #840, #127
	static mapa + #841, #127
	static mapa + #842, #127
	static mapa + #843, #127
	static mapa + #844, #127
	static mapa + #845, #127
	static mapa + #846, #127
	static mapa + #847, #127
	static mapa + #848, #127
	static mapa + #849, #1827
	static mapa + #850, #1827
	static mapa + #851, #1827
	static mapa + #852, #3619
	static mapa + #853, #3619
	static mapa + #854, #3619
	static mapa + #855, #3619
	static mapa + #856, #3619
	static mapa + #857, #3619
	static mapa + #858, #3619
	static mapa + #859, #3619
	static mapa + #860, #3363
	static mapa + #861, #2851
	static mapa + #862, #2851
	static mapa + #863, #2851
	static mapa + #864, #2851
	static mapa + #865, #2851
	static mapa + #866, #2822
	static mapa + #867, #2822
	static mapa + #868, #127
	static mapa + #869, #127
	static mapa + #870, #127
	static mapa + #871, #127
	static mapa + #872, #127
	static mapa + #873, #127
	static mapa + #874, #127
	static mapa + #875, #127
	static mapa + #876, #127
	static mapa + #877, #127
	static mapa + #878, #127
	static mapa + #879, #127

	;Linha 22
	static mapa + #880, #127
	static mapa + #881, #127
	static mapa + #882, #127
	static mapa + #883, #127
	static mapa + #884, #127
	static mapa + #885, #127
	static mapa + #886, #127
	static mapa + #887, #127
	static mapa + #888, #127
	static mapa + #889, #1827
	static mapa + #890, #1827
	static mapa + #891, #1827
	static mapa + #892, #3619
	static mapa + #893, #3619
	static mapa + #894, #3619
	static mapa + #895, #3619
	static mapa + #896, #3619
	static mapa + #897, #3619
	static mapa + #898, #3619
	static mapa + #899, #3363
	static mapa + #900, #3363
	static mapa + #901, #2851
	static mapa + #902, #2851
	static mapa + #903, #2851
	static mapa + #904, #2851
	static mapa + #905, #2822
	static mapa + #906, #2822
	static mapa + #907, #127
	static mapa + #908, #127
	static mapa + #909, #127
	static mapa + #910, #127
	static mapa + #911, #127
	static mapa + #912, #127
	static mapa + #913, #127
	static mapa + #914, #127
	static mapa + #915, #127
	static mapa + #916, #127
	static mapa + #917, #127
	static mapa + #918, #127
	static mapa + #919, #127

	;Linha 23
	static mapa + #920, #127
	static mapa + #921, #127
	static mapa + #922, #127
	static mapa + #923, #127
	static mapa + #924, #127
	static mapa + #925, #127
	static mapa + #926, #127
	static mapa + #927, #127
	static mapa + #928, #127
	static mapa + #929, #127
	static mapa + #930, #1827
	static mapa + #931, #1827
	static mapa + #932, #3619
	static mapa + #933, #3619
	static mapa + #934, #3619
	static mapa + #935, #3619
	static mapa + #936, #3619
	static mapa + #937, #3619
	static mapa + #938, #3619
	static mapa + #939, #3363
	static mapa + #940, #3363
	static mapa + #941, #3363
	static mapa + #942, #2851
	static mapa + #943, #2851
	static mapa + #944, #2822
	static mapa + #945, #2822
	static mapa + #946, #127
	static mapa + #947, #127
	static mapa + #948, #127
	static mapa + #949, #127
	static mapa + #950, #127
	static mapa + #951, #127
	static mapa + #952, #127
	static mapa + #953, #127
	static mapa + #954, #127
	static mapa + #955, #127
	static mapa + #956, #127
	static mapa + #957, #127
	static mapa + #958, #127
	static mapa + #959, #127

	;Linha 24
	static mapa + #960, #127
	static mapa + #961, #127
	static mapa + #962, #127
	static mapa + #963, #127
	static mapa + #964, #127
	static mapa + #965, #127
	static mapa + #966, #127
	static mapa + #967, #127
	static mapa + #968, #127
	static mapa + #969, #127
	static mapa + #970, #1827
	static mapa + #971, #1827
	static mapa + #972, #3619
	static mapa + #973, #3619
	static mapa + #974, #3619
	static mapa + #975, #3619
	static mapa + #976, #3619
	static mapa + #977, #3619
	static mapa + #978, #3619
	static mapa + #979, #3363
	static mapa + #980, #3363
	static mapa + #981, #3363
	static mapa + #982, #3363
	static mapa + #983, #127
	static mapa + #984, #2822
	static mapa + #985, #127
	static mapa + #986, #127
	static mapa + #987, #127
	static mapa + #988, #127
	static mapa + #989, #127
	static mapa + #990, #127
	static mapa + #991, #127
	static mapa + #992, #127
	static mapa + #993, #127
	static mapa + #994, #127
	static mapa + #995, #127
	static mapa + #996, #127
	static mapa + #997, #127
	static mapa + #998, #127
	static mapa + #999, #127

	;Linha 25
	static mapa + #1000, #127
	static mapa + #1001, #127
	static mapa + #1002, #127
	static mapa + #1003, #127
	static mapa + #1004, #127
	static mapa + #1005, #127
	static mapa + #1006, #127
	static mapa + #1007, #127
	static mapa + #1008, #127
	static mapa + #1009, #127
	static mapa + #1010, #1827
	static mapa + #1011, #1827
	static mapa + #1012, #3619
	static mapa + #1013, #3619
	static mapa + #1014, #3619
	static mapa + #1015, #3619
	static mapa + #1016, #3619
	static mapa + #1017, #3619
	static mapa + #1018, #3619
	static mapa + #1019, #3619
	static mapa + #1020, #3363
	static mapa + #1021, #3363
	static mapa + #1022, #3363
	static mapa + #1023, #127
	static mapa + #1024, #127
	static mapa + #1025, #127
	static mapa + #1026, #127
	static mapa + #1027, #127
	static mapa + #1028, #127
	static mapa + #1029, #127
	static mapa + #1030, #127
	static mapa + #1031, #127
	static mapa + #1032, #127
	static mapa + #1033, #127
	static mapa + #1034, #127
	static mapa + #1035, #127
	static mapa + #1036, #127
	static mapa + #1037, #127
	static mapa + #1038, #127
	static mapa + #1039, #127

	;Linha 26
	static mapa + #1040, #127
	static mapa + #1041, #127
	static mapa + #1042, #127
	static mapa + #1043, #127
	static mapa + #1044, #127
	static mapa + #1045, #127
	static mapa + #1046, #127
	static mapa + #1047, #127
	static mapa + #1048, #127
	static mapa + #1049, #127
	static mapa + #1050, #1827
	static mapa + #1051, #1827
	static mapa + #1052, #3619
	static mapa + #1053, #3619
	static mapa + #1054, #3619
	static mapa + #1055, #3619
	static mapa + #1056, #3619
	static mapa + #1057, #3619
	static mapa + #1058, #3619
	static mapa + #1059, #3619
	static mapa + #1060, #127
	static mapa + #1061, #127
	static mapa + #1062, #127
	static mapa + #1063, #127
	static mapa + #1064, #127
	static mapa + #1065, #127
	static mapa + #1066, #127
	static mapa + #1067, #127
	static mapa + #1068, #127
	static mapa + #1069, #127
	static mapa + #1070, #127
	static mapa + #1071, #127
	static mapa + #1072, #127
	static mapa + #1073, #127
	static mapa + #1074, #127
	static mapa + #1075, #127
	static mapa + #1076, #127
	static mapa + #1077, #127
	static mapa + #1078, #127
	static mapa + #1079, #127

	;Linha 27
	static mapa + #1080, #127
	static mapa + #1081, #127
	static mapa + #1082, #127
	static mapa + #1083, #127
	static mapa + #1084, #127
	static mapa + #1085, #127
	static mapa + #1086, #127
	static mapa + #1087, #127
	static mapa + #1088, #127
	static mapa + #1089, #1797
	static mapa + #1090, #1827
	static mapa + #1091, #1827
	static mapa + #1092, #3619
	static mapa + #1093, #3619
	static mapa + #1094, #3619
	static mapa + #1095, #3619
	static mapa + #1096, #3619
	static mapa + #1097, #3619
	static mapa + #1098, #3619
	static mapa + #1099, #3619
	static mapa + #1100, #3619
	static mapa + #1101, #3619
	static mapa + #1102, #127
	static mapa + #1103, #127
	static mapa + #1104, #127
	static mapa + #1105, #127
	static mapa + #1106, #127
	static mapa + #1107, #127
	static mapa + #1108, #127
	static mapa + #1109, #127
	static mapa + #1110, #127
	static mapa + #1111, #127
	static mapa + #1112, #127
	static mapa + #1113, #127
	static mapa + #1114, #127
	static mapa + #1115, #127
	static mapa + #1116, #127
	static mapa + #1117, #127
	static mapa + #1118, #127
	static mapa + #1119, #127

	;Linha 28
	static mapa + #1120, #127
	static mapa + #1121, #127
	static mapa + #1122, #127
	static mapa + #1123, #127
	static mapa + #1124, #127
	static mapa + #1125, #127
	static mapa + #1126, #127
	static mapa + #1127, #127
	static mapa + #1128, #127
	static mapa + #1129, #127
	static mapa + #1130, #1827
	static mapa + #1131, #1827
	static mapa + #1132, #3619
	static mapa + #1133, #3619
	static mapa + #1134, #3619
	static mapa + #1135, #3619
	static mapa + #1136, #3619
	static mapa + #1137, #3619
	static mapa + #1138, #3619
	static mapa + #1139, #3619
	static mapa + #1140, #3619
	static mapa + #1141, #3619
	static mapa + #1142, #127
	static mapa + #1143, #127
	static mapa + #1144, #127
	static mapa + #1145, #127
	static mapa + #1146, #127
	static mapa + #1147, #127
	static mapa + #1148, #127
	static mapa + #1149, #127
	static mapa + #1150, #127
	static mapa + #1151, #127
	static mapa + #1152, #127
	static mapa + #1153, #127
	static mapa + #1154, #127
	static mapa + #1155, #127
	static mapa + #1156, #127
	static mapa + #1157, #127
	static mapa + #1158, #127
	static mapa + #1159, #127

	;Linha 29
	static mapa + #1160, #127
	static mapa + #1161, #127
	static mapa + #1162, #127
	static mapa + #1163, #127
	static mapa + #1164, #127
	static mapa + #1165, #127
	static mapa + #1166, #127
	static mapa + #1167, #127
	static mapa + #1168, #127
	static mapa + #1169, #127
	static mapa + #1170, #1827
	static mapa + #1171, #1827
	static mapa + #1172, #3619
	static mapa + #1173, #3619
	static mapa + #1174, #3619
	static mapa + #1175, #3619
	static mapa + #1176, #3619
	static mapa + #1177, #3619
	static mapa + #1178, #3619
	static mapa + #1179, #3619
	static mapa + #1180, #3619
	static mapa + #1181, #3619
	static mapa + #1182, #127
	static mapa + #1183, #127
	static mapa + #1184, #127
	static mapa + #1185, #127
	static mapa + #1186, #127
	static mapa + #1187, #127
	static mapa + #1188, #127
	static mapa + #1189, #127
	static mapa + #1190, #127
	static mapa + #1191, #127
	static mapa + #1192, #127
	static mapa + #1193, #127
	static mapa + #1194, #127
	static mapa + #1195, #127
	static mapa + #1196, #127
	static mapa + #1197, #127
	static mapa + #1198, #127
	static mapa + #1199, #127
	
;Tela de Vitória
	;Linha 0
	  static venceu + #0, #3967
	  static venceu + #1, #3967
	  static venceu + #2, #3967
	  static venceu + #3, #3967
	  static venceu + #4, #3967
	  static venceu + #5, #3967
	  static venceu + #6, #3967
	  static venceu + #7, #3967
	  static venceu + #8, #3967
	  static venceu + #9, #3967
	  static venceu + #10, #3967
	  static venceu + #11, #3967
	  static venceu + #12, #3967
	  static venceu + #13, #3967
	  static venceu + #14, #3967
	  static venceu + #15, #3967
	  static venceu + #16, #3967
	  static venceu + #17, #3967
	  static venceu + #18, #3967
	  static venceu + #19, #3967
	  static venceu + #20, #3967
	  static venceu + #21, #3967
	  static venceu + #22, #3967
	  static venceu + #23, #3967
	  static venceu + #24, #3967
	  static venceu + #25, #3967
	  static venceu + #26, #3967
	  static venceu + #27, #3967
	  static venceu + #28, #3967
	  static venceu + #29, #3967
	  static venceu + #30, #3967
	  static venceu + #31, #3967
	  static venceu + #32, #3967
	  static venceu + #33, #3967
	  static venceu + #34, #3967
	  static venceu + #35, #3967
	  static venceu + #36, #3967
	  static venceu + #37, #3967
	  static venceu + #38, #3967
	  static venceu + #39, #3967

	  ;Linha 1
	  static venceu + #40, #3967
	  static venceu + #41, #3967
	  static venceu + #42, #3967
	  static venceu + #43, #3967
	  static venceu + #44, #3967
	  static venceu + #45, #3967
	  static venceu + #46, #3967
	  static venceu + #47, #3967
	  static venceu + #48, #3967
	  static venceu + #49, #3967
	  static venceu + #50, #3967
	  static venceu + #51, #3967
	  static venceu + #52, #3967
	  static venceu + #53, #3967
	  static venceu + #54, #3967
	  static venceu + #55, #3967
	  static venceu + #56, #3967
	  static venceu + #57, #3967
	  static venceu + #58, #3967
	  static venceu + #59, #3967
	  static venceu + #60, #3967
	  static venceu + #61, #3967
	  static venceu + #62, #3967
	  static venceu + #63, #3967
	  static venceu + #64, #3967
	  static venceu + #65, #3967
	  static venceu + #66, #3967
	  static venceu + #67, #3967
	  static venceu + #68, #3967
	  static venceu + #69, #3967
	  static venceu + #70, #3967
	  static venceu + #71, #3967
	  static venceu + #72, #3967
	  static venceu + #73, #3967
	  static venceu + #74, #3967
	  static venceu + #75, #3967
	  static venceu + #76, #3967
	  static venceu + #77, #3967
	  static venceu + #78, #3967
	  static venceu + #79, #3967

	  ;Linha 2
	  static venceu + #80, #3967
	  static venceu + #81, #3967
	  static venceu + #82, #3967
	  static venceu + #83, #3967
	  static venceu + #84, #3967
	  static venceu + #85, #3967
	  static venceu + #86, #3967
	  static venceu + #87, #3967
	  static venceu + #88, #3967
	  static venceu + #89, #3967
	  static venceu + #90, #3967
	  static venceu + #91, #3967
	  static venceu + #92, #3967
	  static venceu + #93, #3967
	  static venceu + #94, #3967
	  static venceu + #95, #3967
	  static venceu + #96, #3967
	  static venceu + #97, #3967
	  static venceu + #98, #3967
	  static venceu + #99, #3967
	  static venceu + #100, #3967
	  static venceu + #101, #3967
	  static venceu + #102, #3967
	  static venceu + #103, #3967
	  static venceu + #104, #3967
	  static venceu + #105, #3967
	  static venceu + #106, #3967
	  static venceu + #107, #3967
	  static venceu + #108, #3967
	  static venceu + #109, #3967
	  static venceu + #110, #3967
	  static venceu + #111, #3967
	  static venceu + #112, #3967
	  static venceu + #113, #3967
	  static venceu + #114, #3967
	  static venceu + #115, #3967
	  static venceu + #116, #3967
	  static venceu + #117, #3967
	  static venceu + #118, #3967
	  static venceu + #119, #3967

	  ;Linha 3
	  static venceu + #120, #3967
	  static venceu + #121, #3967
	  static venceu + #122, #3967
	  static venceu + #123, #3967
	  static venceu + #124, #3967
	  static venceu + #125, #3967
	  static venceu + #126, #3967
	  static venceu + #127, #3967
	  static venceu + #128, #3967
	  static venceu + #129, #3967
	  static venceu + #130, #3967
	  static venceu + #131, #3967
	  static venceu + #132, #3967
	  static venceu + #133, #3967
	  static venceu + #134, #3967
	  static venceu + #135, #3967
	  static venceu + #136, #3967
	  static venceu + #137, #3967
	  static venceu + #138, #3967
	  static venceu + #139, #3967
	  static venceu + #140, #3967
	  static venceu + #141, #3967
	  static venceu + #142, #3967
	  static venceu + #143, #3967
	  static venceu + #144, #3967
	  static venceu + #145, #3967
	  static venceu + #146, #3967
	  static venceu + #147, #3967
	  static venceu + #148, #3967
	  static venceu + #149, #3967
	  static venceu + #150, #3967
	  static venceu + #151, #3967
	  static venceu + #152, #3967
	  static venceu + #153, #3967
	  static venceu + #154, #3967
	  static venceu + #155, #3967
	  static venceu + #156, #3967
	  static venceu + #157, #3967
	  static venceu + #158, #3967
	  static venceu + #159, #3967

	  ;Linha 4
	  static venceu + #160, #3967
	  static venceu + #161, #3967
	  static venceu + #162, #3967
	  static venceu + #163, #3967
	  static venceu + #164, #3967
	  static venceu + #165, #3967
	  static venceu + #166, #3967
	  static venceu + #167, #3967
	  static venceu + #168, #3967
	  static venceu + #169, #3967
	  static venceu + #170, #3967
	  static venceu + #171, #3967
	  static venceu + #172, #3967
	  static venceu + #173, #3967
	  static venceu + #174, #3967
	  static venceu + #175, #3967
	  static venceu + #176, #3967
	  static venceu + #177, #3967
	  static venceu + #178, #3967
	  static venceu + #179, #3967
	  static venceu + #180, #3967
	  static venceu + #181, #3967
	  static venceu + #182, #3967
	  static venceu + #183, #3967
	  static venceu + #184, #3967
	  static venceu + #185, #3967
	  static venceu + #186, #3967
	  static venceu + #187, #3967
	  static venceu + #188, #3967
	  static venceu + #189, #3967
	  static venceu + #190, #3967
	  static venceu + #191, #3967
	  static venceu + #192, #3967
	  static venceu + #193, #3967
	  static venceu + #194, #3967
	  static venceu + #195, #3967
	  static venceu + #196, #3967
	  static venceu + #197, #3967
	  static venceu + #198, #3967
	  static venceu + #199, #3967

	  ;Linha 5
	  static venceu + #200, #3967
	  static venceu + #201, #3967
	  static venceu + #202, #3967
	  static venceu + #203, #3967
	  static venceu + #204, #3967
	  static venceu + #205, #3967
	  static venceu + #206, #3967
	  static venceu + #207, #3967
	  static venceu + #208, #3967
	  static venceu + #209, #3967
	  static venceu + #210, #3967
	  static venceu + #211, #3967
	  static venceu + #212, #3967
	  static venceu + #213, #3967
	  static venceu + #214, #3967
	  static venceu + #215, #3967
	  static venceu + #216, #3967
	  static venceu + #217, #3967
	  static venceu + #218, #3967
	  static venceu + #219, #3967
	  static venceu + #220, #3967
	  static venceu + #221, #3967
	  static venceu + #222, #3967
	  static venceu + #223, #3967
	  static venceu + #224, #3967
	  static venceu + #225, #3967
	  static venceu + #226, #3967
	  static venceu + #227, #3967
	  static venceu + #228, #3967
	  static venceu + #229, #3967
	  static venceu + #230, #3967
	  static venceu + #231, #3967
	  static venceu + #232, #3967
	  static venceu + #233, #3967
	  static venceu + #234, #3967
	  static venceu + #235, #3967
	  static venceu + #236, #3967
	  static venceu + #237, #3967
	  static venceu + #238, #3967
	  static venceu + #239, #3967

	  ;Linha 6
	  static venceu + #240, #3967
	  static venceu + #241, #3967
	  static venceu + #242, #3967
	  static venceu + #243, #3967
	  static venceu + #244, #3967
	  static venceu + #245, #3967
	  static venceu + #246, #3967
	  static venceu + #247, #3967
	  static venceu + #248, #3967
	  static venceu + #249, #3967
	  static venceu + #250, #3967
	  static venceu + #251, #3967
	  static venceu + #252, #3967
	  static venceu + #253, #3967
	  static venceu + #254, #3967
	  static venceu + #255, #3967
	  static venceu + #256, #3967
	  static venceu + #257, #3967
	  static venceu + #258, #3967
	  static venceu + #259, #3967
	  static venceu + #260, #3967
	  static venceu + #261, #3967
	  static venceu + #262, #3967
	  static venceu + #263, #3967
	  static venceu + #264, #3967
	  static venceu + #265, #3967
	  static venceu + #266, #3967
	  static venceu + #267, #3967
	  static venceu + #268, #3967
	  static venceu + #269, #3967
	  static venceu + #270, #3967
	  static venceu + #271, #3967
	  static venceu + #272, #3967
	  static venceu + #273, #3967
	  static venceu + #274, #3967
	  static venceu + #275, #3967
	  static venceu + #276, #3967
	  static venceu + #277, #3967
	  static venceu + #278, #3967
	  static venceu + #279, #3967

	  ;Linha 7
	  static venceu + #280, #3967
	  static venceu + #281, #3967
	  static venceu + #282, #3967
	  static venceu + #283, #3967
	  static venceu + #284, #3967
	  static venceu + #285, #3967
	  static venceu + #286, #3967
	  static venceu + #287, #3967
	  static venceu + #288, #3967
	  static venceu + #289, #3967
	  static venceu + #290, #3967
	  static venceu + #291, #3967
	  static venceu + #292, #3967
	  static venceu + #293, #3967
	  static venceu + #294, #3967
	  static venceu + #295, #3967
	  static venceu + #296, #3967
	  static venceu + #297, #3967
	  static venceu + #298, #3967
	  static venceu + #299, #3967
	  static venceu + #300, #3967
	  static venceu + #301, #3967
	  static venceu + #302, #3967
	  static venceu + #303, #3967
	  static venceu + #304, #3967
	  static venceu + #305, #3967
	  static venceu + #306, #3967
	  static venceu + #307, #3967
	  static venceu + #308, #3967
	  static venceu + #309, #3967
	  static venceu + #310, #3967
	  static venceu + #311, #3967
	  static venceu + #312, #3967
	  static venceu + #313, #3967
	  static venceu + #314, #3967
	  static venceu + #315, #3967
	  static venceu + #316, #3967
	  static venceu + #317, #3967
	  static venceu + #318, #3967
	  static venceu + #319, #3967

	  ;Linha 8
	  static venceu + #320, #3967
	  static venceu + #321, #3967
	  static venceu + #322, #3967
	  static venceu + #323, #3967
	  static venceu + #324, #3967
	  static venceu + #325, #3967
	  static venceu + #326, #3967
	  static venceu + #327, #3967
	  static venceu + #328, #3967
	  static venceu + #329, #3967
	  static venceu + #330, #3967
	  static venceu + #331, #3967
	  static venceu + #332, #3967
	  static venceu + #333, #3967
	  static venceu + #334, #3967
	  static venceu + #335, #3967
	  static venceu + #336, #3967
	  static venceu + #337, #3967
	  static venceu + #338, #3967
	  static venceu + #339, #3967
	  static venceu + #340, #3967
	  static venceu + #341, #3967
	  static venceu + #342, #3967
	  static venceu + #343, #3967
	  static venceu + #344, #3967
	  static venceu + #345, #3967
	  static venceu + #346, #3967
	  static venceu + #347, #3967
	  static venceu + #348, #3967
	  static venceu + #349, #3967
	  static venceu + #350, #3967
	  static venceu + #351, #3967
	  static venceu + #352, #3967
	  static venceu + #353, #3967
	  static venceu + #354, #3967
	  static venceu + #355, #3967
	  static venceu + #356, #3967
	  static venceu + #357, #3967
	  static venceu + #358, #3967
	  static venceu + #359, #3967

	  ;Linha 9
	  static venceu + #360, #3967
	  static venceu + #361, #3967
	  static venceu + #362, #3967
	  static venceu + #363, #3967
	  static venceu + #364, #3967
	  static venceu + #365, #3967
	  static venceu + #366, #3967
	  static venceu + #367, #3967
	  static venceu + #368, #3967
	  static venceu + #369, #3967
	  static venceu + #370, #3967
	  static venceu + #371, #3967
	  static venceu + #372, #3967
	  static venceu + #373, #3967
	  static venceu + #374, #3967
	  static venceu + #375, #3967
	  static venceu + #376, #3967
	  static venceu + #377, #3967
	  static venceu + #378, #3967
	  static venceu + #379, #3967
	  static venceu + #380, #3967
	  static venceu + #381, #3967
	  static venceu + #382, #3967
	  static venceu + #383, #3967
	  static venceu + #384, #3967
	  static venceu + #385, #3967
	  static venceu + #386, #3967
	  static venceu + #387, #3967
	  static venceu + #388, #3967
	  static venceu + #389, #3967
	  static venceu + #390, #3967
	  static venceu + #391, #3967
	  static venceu + #392, #3967
	  static venceu + #393, #3967
	  static venceu + #394, #3967
	  static venceu + #395, #3967
	  static venceu + #396, #3967
	  static venceu + #397, #3967
	  static venceu + #398, #3967
	  static venceu + #399, #3967

	  ;Linha 10
	  static venceu + #400, #3967
	  static venceu + #401, #3967
	  static venceu + #402, #3967
	  static venceu + #403, #3967
	  static venceu + #404, #3967
	  static venceu + #405, #3967
	  static venceu + #406, #3967
	  static venceu + #407, #3967
	  static venceu + #408, #3967
	  static venceu + #409, #3967
	  static venceu + #410, #3967
	  static venceu + #411, #3967
	  static venceu + #412, #3967
	  static venceu + #413, #3967
	  static venceu + #414, #3967
	  static venceu + #415, #3967
	  static venceu + #416, #3967
	  static venceu + #417, #3967
	  static venceu + #418, #3967
	  static venceu + #419, #3967
	  static venceu + #420, #3967
	  static venceu + #421, #3967
	  static venceu + #422, #3967
	  static venceu + #423, #3967
	  static venceu + #424, #3967
	  static venceu + #425, #3967
	  static venceu + #426, #3967
	  static venceu + #427, #3967
	  static venceu + #428, #3967
	  static venceu + #429, #3967
	  static venceu + #430, #3967
	  static venceu + #431, #3967
	  static venceu + #432, #3967
	  static venceu + #433, #3967
	  static venceu + #434, #3967
	  static venceu + #435, #3967
	  static venceu + #436, #3967
	  static venceu + #437, #3967
	  static venceu + #438, #3967
	  static venceu + #439, #3967

	  ;Linha 11
	  static venceu + #440, #3967
	  static venceu + #441, #3967
	  static venceu + #442, #3967
	  static venceu + #443, #3967
	  static venceu + #444, #3967
	  static venceu + #445, #3967
	  static venceu + #446, #3967
	  static venceu + #447, #3967
	  static venceu + #448, #3967
	  static venceu + #449, #3967
	  static venceu + #450, #3967
	  static venceu + #451, #3967
	  static venceu + #452, #3967
	  static venceu + #453, #3967
	  static venceu + #454, #3967
	  static venceu + #455, #3967
	  static venceu + #456, #3967
	  static venceu + #457, #3967
	  static venceu + #458, #3967
	  static venceu + #459, #3967
	  static venceu + #460, #3967
	  static venceu + #461, #3967
	  static venceu + #462, #3967
	  static venceu + #463, #3967
	  static venceu + #464, #3967
	  static venceu + #465, #3967
	  static venceu + #466, #3967
	  static venceu + #467, #3967
	  static venceu + #468, #3967
	  static venceu + #469, #3967
	  static venceu + #470, #3967
	  static venceu + #471, #3967
	  static venceu + #472, #3967
	  static venceu + #473, #3967
	  static venceu + #474, #3967
	  static venceu + #475, #3967
	  static venceu + #476, #3967
	  static venceu + #477, #3967
	  static venceu + #478, #3967
	  static venceu + #479, #3967

	  ;Linha 12
	  static venceu + #480, #3967
	  static venceu + #481, #3967
	  static venceu + #482, #3967
	  static venceu + #483, #3967
	  static venceu + #484, #3967
	  static venceu + #485, #3967
	  static venceu + #486, #3967
	  static venceu + #487, #3967
	  static venceu + #488, #3967
	  static venceu + #489, #3967
	  static venceu + #490, #3967
	  static venceu + #491, #3967
	  static venceu + #492, #3967
	  static venceu + #493, #3967
	  static venceu + #494, #3967
	  static venceu + #495, #3967
	  static venceu + #496, #3967
	  static venceu + #497, #3967
	  static venceu + #498, #3967
	  static venceu + #499, #3967
	  static venceu + #500, #3967
	  static venceu + #501, #3967
	  static venceu + #502, #3967
	  static venceu + #503, #3967
	  static venceu + #504, #3967
	  static venceu + #505, #3967
	  static venceu + #506, #3967
	  static venceu + #507, #3967
	  static venceu + #508, #3967
	  static venceu + #509, #3967
	  static venceu + #510, #3967
	  static venceu + #511, #3967
	  static venceu + #512, #3967
	  static venceu + #513, #3967
	  static venceu + #514, #3967
	  static venceu + #515, #3967
	  static venceu + #516, #3967
	  static venceu + #517, #3967
	  static venceu + #518, #3967
	  static venceu + #519, #3967

	  ;Linha 13
	  static venceu + #520, #3967
	  static venceu + #521, #3967
	  static venceu + #522, #3967
	  static venceu + #523, #3967
	  static venceu + #524, #3967
	  static venceu + #525, #3967
	  static venceu + #526, #3967
	  static venceu + #527, #3967
	  static venceu + #528, #3967
	  static venceu + #529, #3967
	  static venceu + #530, #3967
	  static venceu + #531, #3967
	  static venceu + #532, #3967
	  static venceu + #533, #3967
	  static venceu + #534, #86
	  static venceu + #535, #79
	  static venceu + #536, #67
	  static venceu + #537, #69
	  static venceu + #538, #3967
	  static venceu + #539, #86
	  static venceu + #540, #69
	  static venceu + #541, #78
	  static venceu + #542, #67
	  static venceu + #543, #69
	  static venceu + #544, #85
	  static venceu + #545, #33
	  static venceu + #546, #3967
	  static venceu + #547, #3967
	  static venceu + #548, #3967
	  static venceu + #549, #3967
	  static venceu + #550, #3967
	  static venceu + #551, #3967
	  static venceu + #552, #3967
	  static venceu + #553, #3967
	  static venceu + #554, #3967
	  static venceu + #555, #3967
	  static venceu + #556, #3967
	  static venceu + #557, #3967
	  static venceu + #558, #3967
	  static venceu + #559, #3967

	  ;Linha 14
	  static venceu + #560, #3967
	  static venceu + #561, #3967
	  static venceu + #562, #3967
	  static venceu + #563, #3967
	  static venceu + #564, #3967
	  static venceu + #565, #3967
	  static venceu + #566, #3967
	  static venceu + #567, #3967
	  static venceu + #568, #3967
	  static venceu + #569, #3967
	  static venceu + #570, #3967
	  static venceu + #571, #3967
	  static venceu + #572, #3967
	  static venceu + #573, #3967
	  static venceu + #574, #3967
	  static venceu + #575, #3967
	  static venceu + #576, #3967
	  static venceu + #577, #3967
	  static venceu + #578, #3967
	  static venceu + #579, #3967
	  static venceu + #580, #3967
	  static venceu + #581, #3967
	  static venceu + #582, #3967
	  static venceu + #583, #3967
	  static venceu + #584, #3967
	  static venceu + #585, #3967
	  static venceu + #586, #3967
	  static venceu + #587, #3967
	  static venceu + #588, #3967
	  static venceu + #589, #3967
	  static venceu + #590, #3967
	  static venceu + #591, #3967
	  static venceu + #592, #3967
	  static venceu + #593, #3967
	  static venceu + #594, #3967
	  static venceu + #595, #3967
	  static venceu + #596, #3967
	  static venceu + #597, #3967
	  static venceu + #598, #3967
	  static venceu + #599, #3967

	  ;Linha 15
	  static venceu + #600, #3967
	  static venceu + #601, #3967
	  static venceu + #602, #3967
	  static venceu + #603, #3967
	  static venceu + #604, #3967
	  static venceu + #605, #3967
	  static venceu + #606, #3967
	  static venceu + #607, #3967
	  static venceu + #608, #3967
	  static venceu + #609, #3967
	  static venceu + #610, #3967
	  static venceu + #611, #3967
	  static venceu + #612, #3967
	  static venceu + #613, #3967
	  static venceu + #614, #3967
	  static venceu + #615, #3967
	  static venceu + #616, #3967
	  static venceu + #617, #3967
	  static venceu + #618, #3967
	  static venceu + #619, #3967
	  static venceu + #620, #3967
	  static venceu + #621, #3967
	  static venceu + #622, #3967
	  static venceu + #623, #3967
	  static venceu + #624, #3967
	  static venceu + #625, #3967
	  static venceu + #626, #3967
	  static venceu + #627, #3967
	  static venceu + #628, #3967
	  static venceu + #629, #3967
	  static venceu + #630, #3967
	  static venceu + #631, #3967
	  static venceu + #632, #3967
	  static venceu + #633, #3967
	  static venceu + #634, #3967
	  static venceu + #635, #3967
	  static venceu + #636, #3967
	  static venceu + #637, #3967
	  static venceu + #638, #3967
	  static venceu + #639, #3967

	  ;Linha 16
	  static venceu + #640, #3967
	  static venceu + #641, #3967
	  static venceu + #642, #3967
	  static venceu + #643, #3967
	  static venceu + #644, #3967
	  static venceu + #645, #3967
	  static venceu + #646, #3967
	  static venceu + #647, #3967
	  static venceu + #648, #3967
	  static venceu + #649, #3967
	  static venceu + #650, #3967
	  static venceu + #651, #3967
	  static venceu + #652, #3967
	  static venceu + #653, #3967
	  static venceu + #654, #3967
	  static venceu + #655, #3967
	  static venceu + #656, #3967
	  static venceu + #657, #3967
	  static venceu + #658, #3967
	  static venceu + #659, #3967
	  static venceu + #660, #3967
	  static venceu + #661, #3967
	  static venceu + #662, #3967
	  static venceu + #663, #3967
	  static venceu + #664, #3967
	  static venceu + #665, #3967
	  static venceu + #666, #3967
	  static venceu + #667, #3967
	  static venceu + #668, #3967
	  static venceu + #669, #3967
	  static venceu + #670, #3967
	  static venceu + #671, #3967
	  static venceu + #672, #3967
	  static venceu + #673, #3967
	  static venceu + #674, #3967
	  static venceu + #675, #3967
	  static venceu + #676, #3967
	  static venceu + #677, #3967
	  static venceu + #678, #3967
	  static venceu + #679, #3967

	  ;Linha 17
	  static venceu + #680, #3967
	  static venceu + #681, #3967
	  static venceu + #682, #3967
	  static venceu + #683, #3967
	  static venceu + #684, #3967
	  static venceu + #685, #3967
	  static venceu + #686, #3967
	  static venceu + #687, #3967
	  static venceu + #688, #3967
	  static venceu + #689, #3967
	  static venceu + #690, #3967
	  static venceu + #691, #3967
	  static venceu + #692, #3967
	  static venceu + #693, #3967
	  static venceu + #694, #3967
	  static venceu + #695, #3967
	  static venceu + #696, #3967
	  static venceu + #697, #3967
	  static venceu + #698, #3967
	  static venceu + #699, #3967
	  static venceu + #700, #3967
	  static venceu + #701, #3967
	  static venceu + #702, #3967
	  static venceu + #703, #3967
	  static venceu + #704, #3967
	  static venceu + #705, #3967
	  static venceu + #706, #3967
	  static venceu + #707, #3967
	  static venceu + #708, #3967
	  static venceu + #709, #3967
	  static venceu + #710, #3967
	  static venceu + #711, #3967
	  static venceu + #712, #3967
	  static venceu + #713, #3967
	  static venceu + #714, #3967
	  static venceu + #715, #3967
	  static venceu + #716, #3967
	  static venceu + #717, #3967
	  static venceu + #718, #3967
	  static venceu + #719, #3967

	  ;Linha 18
	  static venceu + #720, #3967
	  static venceu + #721, #3967
	  static venceu + #722, #3967
	  static venceu + #723, #3967
	  static venceu + #724, #3967
	  static venceu + #725, #3967
	  static venceu + #726, #3967
	  static venceu + #727, #3967
	  static venceu + #728, #3967
	  static venceu + #729, #3967
	  static venceu + #730, #3967
	  static venceu + #731, #3967
	  static venceu + #732, #3967
	  static venceu + #733, #3967
	  static venceu + #734, #3967
	  static venceu + #735, #3967
	  static venceu + #736, #3967
	  static venceu + #737, #3967
	  static venceu + #738, #3967
	  static venceu + #739, #3967
	  static venceu + #740, #3967
	  static venceu + #741, #3967
	  static venceu + #742, #3967
	  static venceu + #743, #3967
	  static venceu + #744, #3967
	  static venceu + #745, #3967
	  static venceu + #746, #3967
	  static venceu + #747, #3967
	  static venceu + #748, #3967
	  static venceu + #749, #3967
	  static venceu + #750, #3967
	  static venceu + #751, #3967
	  static venceu + #752, #3967
	  static venceu + #753, #3967
	  static venceu + #754, #3967
	  static venceu + #755, #3967
	  static venceu + #756, #3967
	  static venceu + #757, #3967
	  static venceu + #758, #3967
	  static venceu + #759, #3967

	  ;Linha 19
	  static venceu + #760, #3967
	  static venceu + #761, #3967
	  static venceu + #762, #3967
	  static venceu + #763, #3967
	  static venceu + #764, #3967
	  static venceu + #765, #3967
	  static venceu + #766, #3967
	  static venceu + #767, #3967
	  static venceu + #768, #3967
	  static venceu + #769, #3967
	  static venceu + #770, #3967
	  static venceu + #771, #3967
	  static venceu + #772, #3967
	  static venceu + #773, #3967
	  static venceu + #774, #3967
	  static venceu + #775, #3967
	  static venceu + #776, #3967
	  static venceu + #777, #3967
	  static venceu + #778, #3967
	  static venceu + #779, #3967
	  static venceu + #780, #3967
	  static venceu + #781, #3967
	  static venceu + #782, #3967
	  static venceu + #783, #3967
	  static venceu + #784, #3967
	  static venceu + #785, #3967
	  static venceu + #786, #3967
	  static venceu + #787, #3967
	  static venceu + #788, #3967
	  static venceu + #789, #3967
	  static venceu + #790, #3967
	  static venceu + #791, #3967
	  static venceu + #792, #3967
	  static venceu + #793, #3967
	  static venceu + #794, #3967
	  static venceu + #795, #3967
	  static venceu + #796, #3967
	  static venceu + #797, #3967
	  static venceu + #798, #3967
	  static venceu + #799, #3967

	  ;Linha 20
	  static venceu + #800, #3967
	  static venceu + #801, #3967
	  static venceu + #802, #3967
	  static venceu + #803, #3967
	  static venceu + #804, #3967
	  static venceu + #805, #3967
	  static venceu + #806, #3967
	  static venceu + #807, #3967
	  static venceu + #808, #3967
	  static venceu + #809, #3967
	  static venceu + #810, #3967
	  static venceu + #811, #3967
	  static venceu + #812, #3967
	  static venceu + #813, #3967
	  static venceu + #814, #3967
	  static venceu + #815, #3967
	  static venceu + #816, #3967
	  static venceu + #817, #3967
	  static venceu + #818, #3967
	  static venceu + #819, #3967
	  static venceu + #820, #3967
	  static venceu + #821, #3967
	  static venceu + #822, #3967
	  static venceu + #823, #3967
	  static venceu + #824, #3967
	  static venceu + #825, #3967
	  static venceu + #826, #3967
	  static venceu + #827, #3967
	  static venceu + #828, #3967
	  static venceu + #829, #3967
	  static venceu + #830, #3967
	  static venceu + #831, #3967
	  static venceu + #832, #3967
	  static venceu + #833, #3967
	  static venceu + #834, #3967
	  static venceu + #835, #3967
	  static venceu + #836, #3967
	  static venceu + #837, #3967
	  static venceu + #838, #3967
	  static venceu + #839, #3967

	  ;Linha 21
	  static venceu + #840, #3967
	  static venceu + #841, #3967
	  static venceu + #842, #3967
	  static venceu + #843, #3967
	  static venceu + #844, #3967
	  static venceu + #845, #3967
	  static venceu + #846, #3967
	  static venceu + #847, #3967
	  static venceu + #848, #3967
	  static venceu + #849, #3967
	  static venceu + #850, #3967
	  static venceu + #851, #3967
	  static venceu + #852, #3967
	  static venceu + #853, #3967
	  static venceu + #854, #3967
	  static venceu + #855, #3967
	  static venceu + #856, #3967
	  static venceu + #857, #3967
	  static venceu + #858, #3967
	  static venceu + #859, #3967
	  static venceu + #860, #3967
	  static venceu + #861, #3967
	  static venceu + #862, #3967
	  static venceu + #863, #3967
	  static venceu + #864, #3967
	  static venceu + #865, #3967
	  static venceu + #866, #3967
	  static venceu + #867, #3967
	  static venceu + #868, #3967
	  static venceu + #869, #3967
	  static venceu + #870, #3967
	  static venceu + #871, #3967
	  static venceu + #872, #3967
	  static venceu + #873, #3967
	  static venceu + #874, #3967
	  static venceu + #875, #3967
	  static venceu + #876, #3967
	  static venceu + #877, #3967
	  static venceu + #878, #3967
	  static venceu + #879, #3967

	  ;Linha 22
	  static venceu + #880, #3967
	  static venceu + #881, #3967
	  static venceu + #882, #3967
	  static venceu + #883, #3967
	  static venceu + #884, #3967
	  static venceu + #885, #3967
	  static venceu + #886, #3967
	  static venceu + #887, #3967
	  static venceu + #888, #3967
	  static venceu + #889, #3967
	  static venceu + #890, #3967
	  static venceu + #891, #3967
	  static venceu + #892, #3967
	  static venceu + #893, #3967
	  static venceu + #894, #3967
	  static venceu + #895, #3967
	  static venceu + #896, #3967
	  static venceu + #897, #3967
	  static venceu + #898, #3967
	  static venceu + #899, #3967
	  static venceu + #900, #3967
	  static venceu + #901, #3967
	  static venceu + #902, #3967
	  static venceu + #903, #3967
	  static venceu + #904, #3967
	  static venceu + #905, #3967
	  static venceu + #906, #3967
	  static venceu + #907, #3967
	  static venceu + #908, #3967
	  static venceu + #909, #3967
	  static venceu + #910, #3967
	  static venceu + #911, #3967
	  static venceu + #912, #3967
	  static venceu + #913, #3967
	  static venceu + #914, #3967
	  static venceu + #915, #3967
	  static venceu + #916, #3967
	  static venceu + #917, #3967
	  static venceu + #918, #3967
	  static venceu + #919, #3967

	  ;Linha 23
	  static venceu + #920, #3967
	  static venceu + #921, #3967
	  static venceu + #922, #3967
	  static venceu + #923, #3967
	  static venceu + #924, #3967
	  static venceu + #925, #3967
	  static venceu + #926, #3967
	  static venceu + #927, #3967
	  static venceu + #928, #3967
	  static venceu + #929, #3967
	  static venceu + #930, #3967
	  static venceu + #931, #3967
	  static venceu + #932, #3967
	  static venceu + #933, #3967
	  static venceu + #934, #3967
	  static venceu + #935, #3967
	  static venceu + #936, #3967
	  static venceu + #937, #3967
	  static venceu + #938, #3967
	  static venceu + #939, #3967
	  static venceu + #940, #3967
	  static venceu + #941, #3967
	  static venceu + #942, #3967
	  static venceu + #943, #3967
	  static venceu + #944, #3967
	  static venceu + #945, #3967
	  static venceu + #946, #3967
	  static venceu + #947, #3967
	  static venceu + #948, #3967
	  static venceu + #949, #3967
	  static venceu + #950, #3967
	  static venceu + #951, #3967
	  static venceu + #952, #3967
	  static venceu + #953, #3967
	  static venceu + #954, #3967
	  static venceu + #955, #3967
	  static venceu + #956, #3967
	  static venceu + #957, #3967
	  static venceu + #958, #3967
	  static venceu + #959, #3967

	  ;Linha 24
	  static venceu + #960, #3967
	  static venceu + #961, #3967
	  static venceu + #962, #3967
	  static venceu + #963, #3967
	  static venceu + #964, #3967
	  static venceu + #965, #3967
	  static venceu + #966, #3967
	  static venceu + #967, #3967
	  static venceu + #968, #3967
	  static venceu + #969, #3967
	  static venceu + #970, #3967
	  static venceu + #971, #3967
	  static venceu + #972, #3967
	  static venceu + #973, #3967
	  static venceu + #974, #3967
	  static venceu + #975, #3967
	  static venceu + #976, #3967
	  static venceu + #977, #3967
	  static venceu + #978, #3967
	  static venceu + #979, #3967
	  static venceu + #980, #3967
	  static venceu + #981, #3967
	  static venceu + #982, #3967
	  static venceu + #983, #3967
	  static venceu + #984, #3967
	  static venceu + #985, #3967
	  static venceu + #986, #3967
	  static venceu + #987, #3967
	  static venceu + #988, #3967
	  static venceu + #989, #3967
	  static venceu + #990, #3967
	  static venceu + #991, #3967
	  static venceu + #992, #3967
	  static venceu + #993, #3967
	  static venceu + #994, #3967
	  static venceu + #995, #3967
	  static venceu + #996, #3967
	  static venceu + #997, #3967
	  static venceu + #998, #3967
	  static venceu + #999, #3967

	  ;Linha 25
	  static venceu + #1000, #3967
	  static venceu + #1001, #3967
	  static venceu + #1002, #3967
	  static venceu + #1003, #3967
	  static venceu + #1004, #3967
	  static venceu + #1005, #3967
	  static venceu + #1006, #3967
	  static venceu + #1007, #3967
	  static venceu + #1008, #3967
	  static venceu + #1009, #3967
	  static venceu + #1010, #3967
	  static venceu + #1011, #3967
	  static venceu + #1012, #3967
	  static venceu + #1013, #3967
	  static venceu + #1014, #3967
	  static venceu + #1015, #3967
	  static venceu + #1016, #3967
	  static venceu + #1017, #3967
	  static venceu + #1018, #3967
	  static venceu + #1019, #3967
	  static venceu + #1020, #3967
	  static venceu + #1021, #3967
	  static venceu + #1022, #3967
	  static venceu + #1023, #3967
	  static venceu + #1024, #3967
	  static venceu + #1025, #3967
	  static venceu + #1026, #3967
	  static venceu + #1027, #3967
	  static venceu + #1028, #3967
	  static venceu + #1029, #3967
	  static venceu + #1030, #3967
	  static venceu + #1031, #3967
	  static venceu + #1032, #3967
	  static venceu + #1033, #3967
	  static venceu + #1034, #3967
	  static venceu + #1035, #3967
	  static venceu + #1036, #3967
	  static venceu + #1037, #3967
	  static venceu + #1038, #3967
	  static venceu + #1039, #3967

	  ;Linha 26
	  static venceu + #1040, #3967
	  static venceu + #1041, #3967
	  static venceu + #1042, #3967
	  static venceu + #1043, #3967
	  static venceu + #1044, #3967
	  static venceu + #1045, #3967
	  static venceu + #1046, #3967
	  static venceu + #1047, #3967
	  static venceu + #1048, #3967
	  static venceu + #1049, #3967
	  static venceu + #1050, #3967
	  static venceu + #1051, #3967
	  static venceu + #1052, #3967
	  static venceu + #1053, #3967
	  static venceu + #1054, #3967
	  static venceu + #1055, #3967
	  static venceu + #1056, #3967
	  static venceu + #1057, #3967
	  static venceu + #1058, #3967
	  static venceu + #1059, #3967
	  static venceu + #1060, #3967
	  static venceu + #1061, #3967
	  static venceu + #1062, #3967
	  static venceu + #1063, #3967
	  static venceu + #1064, #3967
	  static venceu + #1065, #3967
	  static venceu + #1066, #3967
	  static venceu + #1067, #3967
	  static venceu + #1068, #3967
	  static venceu + #1069, #3967
	  static venceu + #1070, #3967
	  static venceu + #1071, #3967
	  static venceu + #1072, #3967
	  static venceu + #1073, #3967
	  static venceu + #1074, #3967
	  static venceu + #1075, #3967
	  static venceu + #1076, #3967
	  static venceu + #1077, #3967
	  static venceu + #1078, #3967
	  static venceu + #1079, #3967

	  ;Linha 27
	  static venceu + #1080, #3967
	  static venceu + #1081, #3967
	  static venceu + #1082, #3967
	  static venceu + #1083, #3967
	  static venceu + #1084, #3967
	  static venceu + #1085, #3967
	  static venceu + #1086, #3967
	  static venceu + #1087, #3967
	  static venceu + #1088, #3967
	  static venceu + #1089, #3967
	  static venceu + #1090, #3967
	  static venceu + #1091, #3967
	  static venceu + #1092, #3967
	  static venceu + #1093, #3967
	  static venceu + #1094, #3967
	  static venceu + #1095, #3967
	  static venceu + #1096, #3967
	  static venceu + #1097, #3967
	  static venceu + #1098, #3967
	  static venceu + #1099, #3967
	  static venceu + #1100, #3967
	  static venceu + #1101, #3967
	  static venceu + #1102, #3967
	  static venceu + #1103, #3967
	  static venceu + #1104, #3967
	  static venceu + #1105, #3967
	  static venceu + #1106, #3967
	  static venceu + #1107, #3967
	  static venceu + #1108, #3967
	  static venceu + #1109, #3967
	  static venceu + #1110, #3967
	  static venceu + #1111, #3967
	  static venceu + #1112, #3967
	  static venceu + #1113, #3967
	  static venceu + #1114, #3967
	  static venceu + #1115, #3967
	  static venceu + #1116, #3967
	  static venceu + #1117, #3967
	  static venceu + #1118, #3967
	  static venceu + #1119, #3967

	  ;Linha 28
	  static venceu + #1120, #3967
	  static venceu + #1121, #3967
	  static venceu + #1122, #3967
	  static venceu + #1123, #3967
	  static venceu + #1124, #3967
	  static venceu + #1125, #3967
	  static venceu + #1126, #3967
	  static venceu + #1127, #3967
	  static venceu + #1128, #3967
	  static venceu + #1129, #3967
	  static venceu + #1130, #3967
	  static venceu + #1131, #3967
	  static venceu + #1132, #3967
	  static venceu + #1133, #3967
	  static venceu + #1134, #3967
	  static venceu + #1135, #3967
	  static venceu + #1136, #3967
	  static venceu + #1137, #3967
	  static venceu + #1138, #3967
	  static venceu + #1139, #3967
	  static venceu + #1140, #3967
	  static venceu + #1141, #3967
	  static venceu + #1142, #3967
	  static venceu + #1143, #3967
	  static venceu + #1144, #3967
	  static venceu + #1145, #3967
	  static venceu + #1146, #3967
	  static venceu + #1147, #3967
	  static venceu + #1148, #3967
	  static venceu + #1149, #3967
	  static venceu + #1150, #3967
	  static venceu + #1151, #3967
	  static venceu + #1152, #3967
	  static venceu + #1153, #3967
	  static venceu + #1154, #3967
	  static venceu + #1155, #3967
	  static venceu + #1156, #3967
	  static venceu + #1157, #3967
	  static venceu + #1158, #3967
	  static venceu + #1159, #3967

	  ;Linha 29
	  static venceu + #1160, #3967
	  static venceu + #1161, #3967
	  static venceu + #1162, #3967
	  static venceu + #1163, #3967
	  static venceu + #1164, #3967
	  static venceu + #1165, #3967
	  static venceu + #1166, #3967
	  static venceu + #1167, #3967
	  static venceu + #1168, #3967
	  static venceu + #1169, #3967
	  static venceu + #1170, #3967
	  static venceu + #1171, #3967
	  static venceu + #1172, #3967
	  static venceu + #1173, #3967
	  static venceu + #1174, #3967
	  static venceu + #1175, #3967
	  static venceu + #1176, #3967
	  static venceu + #1177, #3967
	  static venceu + #1178, #3967
	  static venceu + #1179, #3967
	  static venceu + #1180, #3967
	  static venceu + #1181, #3967
	  static venceu + #1182, #3967
	  static venceu + #1183, #3967
	  static venceu + #1184, #3967
	  static venceu + #1185, #3967
	  static venceu + #1186, #3967
	  static venceu + #1187, #3967
	  static venceu + #1188, #3967
	  static venceu + #1189, #3967
	  static venceu + #1190, #3967
	  static venceu + #1191, #3967
	  static venceu + #1192, #3967
	  static venceu + #1193, #3967
	  static venceu + #1194, #3967
	  static venceu + #1195, #3967
	  static venceu + #1196, #3967
	  static venceu + #1197, #3967
	  static venceu + #1198, #3967
	  static venceu + #1199, #3967
	  
;Tela de Início
	;Linha 0
	  static inicio + #0, #127
	  static inicio + #1, #127
	  static inicio + #2, #127
	  static inicio + #3, #127
	  static inicio + #4, #127
	  static inicio + #5, #127
	  static inicio + #6, #127
	  static inicio + #7, #127
	  static inicio + #8, #127
	  static inicio + #9, #127
	  static inicio + #10, #127
	  static inicio + #11, #127
	  static inicio + #12, #127
	  static inicio + #13, #127
	  static inicio + #14, #127
	  static inicio + #15, #127
	  static inicio + #16, #127
	  static inicio + #17, #127
	  static inicio + #18, #127
	  static inicio + #19, #127
	  static inicio + #20, #127
	  static inicio + #21, #127
	  static inicio + #22, #127
	  static inicio + #23, #127
	  static inicio + #24, #127
	  static inicio + #25, #127
	  static inicio + #26, #127
	  static inicio + #27, #127
	  static inicio + #28, #127
	  static inicio + #29, #127
	  static inicio + #30, #127
	  static inicio + #31, #127
	  static inicio + #32, #127
	  static inicio + #33, #127
	  static inicio + #34, #127
	  static inicio + #35, #127
	  static inicio + #36, #127
	  static inicio + #37, #127
	  static inicio + #38, #127
	  static inicio + #39, #127

	  ;Linha 1
	  static inicio + #40, #127
	  static inicio + #41, #127
	  static inicio + #42, #127
	  static inicio + #43, #127
	  static inicio + #44, #127
	  static inicio + #45, #127
	  static inicio + #46, #127
	  static inicio + #47, #127
	  static inicio + #48, #127
	  static inicio + #49, #127
	  static inicio + #50, #127
	  static inicio + #51, #127
	  static inicio + #52, #127
	  static inicio + #53, #127
	  static inicio + #54, #127
	  static inicio + #55, #127
	  static inicio + #56, #127
	  static inicio + #57, #127
	  static inicio + #58, #127
	  static inicio + #59, #127
	  static inicio + #60, #127
	  static inicio + #61, #127
	  static inicio + #62, #127
	  static inicio + #63, #127
	  static inicio + #64, #127
	  static inicio + #65, #127
	  static inicio + #66, #127
	  static inicio + #67, #127
	  static inicio + #68, #127
	  static inicio + #69, #127
	  static inicio + #70, #127
	  static inicio + #71, #127
	  static inicio + #72, #127
	  static inicio + #73, #127
	  static inicio + #74, #127
	  static inicio + #75, #127
	  static inicio + #76, #127
	  static inicio + #77, #127
	  static inicio + #78, #127
	  static inicio + #79, #127

	  ;Linha 2
	  static inicio + #80, #127
	  static inicio + #81, #127
	  static inicio + #82, #127
	  static inicio + #83, #127
	  static inicio + #84, #127
	  static inicio + #85, #127
	  static inicio + #86, #127
	  static inicio + #87, #127
	  static inicio + #88, #81
	  static inicio + #89, #85
	  static inicio + #90, #73
	  static inicio + #91, #90
	  static inicio + #92, #127
	  static inicio + #93, #68
	  static inicio + #94, #65
	  static inicio + #95, #127
	  static inicio + #96, #65
	  static inicio + #97, #77
	  static inicio + #98, #69
	  static inicio + #99, #82
	  static inicio + #100, #73
	  static inicio + #101, #67
	  static inicio + #102, #65
	  static inicio + #103, #127
	  static inicio + #104, #68
	  static inicio + #105, #79
	  static inicio + #106, #127
	  static inicio + #107, #83
	  static inicio + #108, #85
	  static inicio + #109, #76
	  static inicio + #110, #127
	  static inicio + #111, #127
	  static inicio + #112, #127
	  static inicio + #113, #127
	  static inicio + #114, #127
	  static inicio + #115, #127
	  static inicio + #116, #127
	  static inicio + #117, #127
	  static inicio + #118, #127
	  static inicio + #119, #127

	  ;Linha 3
	  static inicio + #120, #3919
	  static inicio + #121, #3919
	  static inicio + #122, #127
	  static inicio + #123, #127
	  static inicio + #124, #127
	  static inicio + #125, #127
	  static inicio + #126, #127
	  static inicio + #127, #127
	  static inicio + #128, #127
	  static inicio + #129, #127
	  static inicio + #130, #127
	  static inicio + #131, #127
	  static inicio + #132, #127
	  static inicio + #133, #127
	  static inicio + #134, #127
	  static inicio + #135, #2336
	  static inicio + #136, #2336
	  static inicio + #137, #127
	  static inicio + #138, #127
	  static inicio + #139, #127
	  static inicio + #140, #127
	  static inicio + #141, #127
	  static inicio + #142, #127
	  static inicio + #143, #127
	  static inicio + #144, #127
	  static inicio + #145, #127
	  static inicio + #146, #127
	  static inicio + #147, #127
	  static inicio + #148, #127
	  static inicio + #149, #127
	  static inicio + #150, #127
	  static inicio + #151, #127
	  static inicio + #152, #127
	  static inicio + #153, #127
	  static inicio + #154, #127
	  static inicio + #155, #127
	  static inicio + #156, #127
	  static inicio + #157, #127
	  static inicio + #158, #127
	  static inicio + #159, #127

	  ;Linha 4
	  static inicio + #160, #547
	  static inicio + #161, #547
	  static inicio + #162, #547
	  static inicio + #163, #547
	  static inicio + #164, #547
	  static inicio + #165, #1571
	  static inicio + #166, #1571
	  static inicio + #167, #1571
	  static inicio + #168, #1571
	  static inicio + #169, #1571
	  static inicio + #170, #2851
	  static inicio + #171, #2851
	  static inicio + #172, #2851
	  static inicio + #173, #2851
	  static inicio + #174, #2851
	  static inicio + #175, #803
	  static inicio + #176, #803
	  static inicio + #177, #803
	  static inicio + #178, #803
	  static inicio + #179, #803
	  static inicio + #180, #2339
	  static inicio + #181, #2339
	  static inicio + #182, #2339
	  static inicio + #183, #2339
	  static inicio + #184, #2339
	  static inicio + #185, #35
	  static inicio + #186, #35
	  static inicio + #187, #35
	  static inicio + #188, #35
	  static inicio + #189, #35
	  static inicio + #190, #2339
	  static inicio + #191, #2339
	  static inicio + #192, #35
	  static inicio + #193, #2339
	  static inicio + #194, #2339
	  static inicio + #195, #2851
	  static inicio + #196, #2595
	  static inicio + #197, #2595
	  static inicio + #198, #2595
	  static inicio + #199, #2595

	  ;Linha 5
	  static inicio + #200, #547
	  static inicio + #201, #547
	  static inicio + #202, #2858
	  static inicio + #203, #547
	  static inicio + #204, #547
	  static inicio + #205, #1571
	  static inicio + #206, #1571
	  static inicio + #207, #1571
	  static inicio + #208, #1571
	  static inicio + #209, #1571
	  static inicio + #210, #2851
	  static inicio + #211, #2851
	  static inicio + #212, #2851
	  static inicio + #213, #2851
	  static inicio + #214, #2851
	  static inicio + #215, #35
	  static inicio + #216, #35
	  static inicio + #217, #35
	  static inicio + #218, #35
	  static inicio + #219, #35
	  static inicio + #220, #2339
	  static inicio + #221, #2339
	  static inicio + #222, #2339
	  static inicio + #223, #2339
	  static inicio + #224, #2339
	  static inicio + #225, #35
	  static inicio + #226, #2858
	  static inicio + #227, #35
	  static inicio + #228, #3107
	  static inicio + #229, #3107
	  static inicio + #230, #2339
	  static inicio + #231, #2339
	  static inicio + #232, #35
	  static inicio + #233, #2339
	  static inicio + #234, #2339
	  static inicio + #235, #2851
	  static inicio + #236, #2851
	  static inicio + #237, #2595
	  static inicio + #238, #2595
	  static inicio + #239, #2595

	  ;Linha 6
	  static inicio + #240, #547
	  static inicio + #241, #2858
	  static inicio + #242, #3114
	  static inicio + #243, #2858
	  static inicio + #244, #547
	  static inicio + #245, #35
	  static inicio + #246, #35
	  static inicio + #247, #2858
	  static inicio + #248, #35
	  static inicio + #249, #35
	  static inicio + #250, #2851
	  static inicio + #251, #2851
	  static inicio + #252, #2851
	  static inicio + #253, #2851
	  static inicio + #254, #2851
	  static inicio + #255, #2339
	  static inicio + #256, #2339
	  static inicio + #257, #2858
	  static inicio + #258, #2339
	  static inicio + #259, #2339
	  static inicio + #260, #2851
	  static inicio + #261, #2851
	  static inicio + #262, #1066
	  static inicio + #263, #2851
	  static inicio + #264, #2851
	  static inicio + #265, #35
	  static inicio + #266, #35
	  static inicio + #267, #35
	  static inicio + #268, #35
	  static inicio + #269, #35
	  static inicio + #270, #2339
	  static inicio + #271, #2339
	  static inicio + #272, #35
	  static inicio + #273, #2339
	  static inicio + #274, #2339
	  static inicio + #275, #2851
	  static inicio + #276, #2851
	  static inicio + #277, #2346
	  static inicio + #278, #2595
	  static inicio + #279, #2595

	  ;Linha 7
	  static inicio + #280, #547
	  static inicio + #281, #547
	  static inicio + #282, #2858
	  static inicio + #283, #547
	  static inicio + #284, #547
	  static inicio + #285, #1571
	  static inicio + #286, #1571
	  static inicio + #287, #1571
	  static inicio + #288, #1571
	  static inicio + #289, #1571
	  static inicio + #290, #3107
	  static inicio + #291, #3107
	  static inicio + #292, #3107
	  static inicio + #293, #3107
	  static inicio + #294, #3107
	  static inicio + #295, #35
	  static inicio + #296, #35
	  static inicio + #297, #35
	  static inicio + #298, #35
	  static inicio + #299, #35
	  static inicio + #300, #2595
	  static inicio + #301, #2595
	  static inicio + #302, #2595
	  static inicio + #303, #2595
	  static inicio + #304, #2595
	  static inicio + #305, #3107
	  static inicio + #306, #3107
	  static inicio + #307, #3107
	  static inicio + #308, #3107
	  static inicio + #309, #3107
	  static inicio + #310, #2339
	  static inicio + #311, #2339
	  static inicio + #312, #35
	  static inicio + #313, #2339
	  static inicio + #314, #2339
	  static inicio + #315, #2851
	  static inicio + #316, #2851
	  static inicio + #317, #2851
	  static inicio + #318, #2851
	  static inicio + #319, #2595

	  ;Linha 8
	  static inicio + #320, #547
	  static inicio + #321, #547
	  static inicio + #322, #547
	  static inicio + #323, #547
	  static inicio + #324, #547
	  static inicio + #325, #1571
	  static inicio + #326, #1571
	  static inicio + #327, #1571
	  static inicio + #328, #1571
	  static inicio + #329, #1571
	  static inicio + #330, #2339
	  static inicio + #331, #2339
	  static inicio + #332, #2339
	  static inicio + #333, #2339
	  static inicio + #334, #2339
	  static inicio + #335, #803
	  static inicio + #336, #803
	  static inicio + #337, #803
	  static inicio + #338, #803
	  static inicio + #339, #803
	  static inicio + #340, #2595
	  static inicio + #341, #2595
	  static inicio + #342, #2595
	  static inicio + #343, #2595
	  static inicio + #344, #2595
	  static inicio + #345, #35
	  static inicio + #346, #35
	  static inicio + #347, #35
	  static inicio + #348, #35
	  static inicio + #349, #35
	  static inicio + #350, #2339
	  static inicio + #351, #2339
	  static inicio + #352, #35
	  static inicio + #353, #2339
	  static inicio + #354, #2339
	  static inicio + #355, #2851
	  static inicio + #356, #2851
	  static inicio + #357, #2851
	  static inicio + #358, #2851
	  static inicio + #359, #2851

	  ;Linha 9
	  static inicio + #360, #127
	  static inicio + #361, #127
	  static inicio + #362, #127
	  static inicio + #363, #127
	  static inicio + #364, #127
	  static inicio + #365, #127
	  static inicio + #366, #127
	  static inicio + #367, #127
	  static inicio + #368, #127
	  static inicio + #369, #127
	  static inicio + #370, #3107
	  static inicio + #371, #3107
	  static inicio + #372, #3107
	  static inicio + #373, #35
	  static inicio + #374, #35
	  static inicio + #375, #2339
	  static inicio + #376, #2851
	  static inicio + #377, #2595
	  static inicio + #378, #2595
	  static inicio + #379, #2595
	  static inicio + #380, #2339
	  static inicio + #381, #2339
	  static inicio + #382, #2339
	  static inicio + #383, #2339
	  static inicio + #384, #2339
	  static inicio + #385, #2851
	  static inicio + #386, #2851
	  static inicio + #387, #2851
	  static inicio + #388, #2851
	  static inicio + #389, #2851
	  static inicio + #390, #127
	  static inicio + #391, #127
	  static inicio + #392, #127
	  static inicio + #393, #127
	  static inicio + #394, #127
	  static inicio + #395, #127
	  static inicio + #396, #127
	  static inicio + #397, #127
	  static inicio + #398, #127
	  static inicio + #399, #127

	  ;Linha 10
	  static inicio + #400, #127
	  static inicio + #401, #127
	  static inicio + #402, #127
	  static inicio + #403, #127
	  static inicio + #404, #127
	  static inicio + #405, #127
	  static inicio + #406, #127
	  static inicio + #407, #127
	  static inicio + #408, #127
	  static inicio + #409, #127
	  static inicio + #410, #3107
	  static inicio + #411, #42
	  static inicio + #412, #3107
	  static inicio + #413, #35
	  static inicio + #414, #35
	  static inicio + #415, #2339
	  static inicio + #416, #2339
	  static inicio + #417, #2851
	  static inicio + #418, #2595
	  static inicio + #419, #2595
	  static inicio + #420, #2339
	  static inicio + #421, #2339
	  static inicio + #422, #2339
	  static inicio + #423, #2339
	  static inicio + #424, #2339
	  static inicio + #425, #2851
	  static inicio + #426, #2851
	  static inicio + #427, #2851
	  static inicio + #428, #2851
	  static inicio + #429, #2851
	  static inicio + #430, #127
	  static inicio + #431, #127
	  static inicio + #432, #127
	  static inicio + #433, #127
	  static inicio + #434, #127
	  static inicio + #435, #127
	  static inicio + #436, #127
	  static inicio + #437, #127
	  static inicio + #438, #127
	  static inicio + #439, #127

	  ;Linha 11
	  static inicio + #440, #127
	  static inicio + #441, #127
	  static inicio + #442, #127
	  static inicio + #443, #127
	  static inicio + #444, #127
	  static inicio + #445, #127
	  static inicio + #446, #127
	  static inicio + #447, #127
	  static inicio + #448, #127
	  static inicio + #449, #127
	  static inicio + #450, #3107
	  static inicio + #451, #3107
	  static inicio + #452, #3107
	  static inicio + #453, #35
	  static inicio + #454, #35
	  static inicio + #455, #2339
	  static inicio + #456, #2339
	  static inicio + #457, #2339
	  static inicio + #458, #2851
	  static inicio + #459, #2595
	  static inicio + #460, #35
	  static inicio + #461, #35
	  static inicio + #462, #1834
	  static inicio + #463, #35
	  static inicio + #464, #35
	  static inicio + #465, #3107
	  static inicio + #466, #3107
	  static inicio + #467, #42
	  static inicio + #468, #3107
	  static inicio + #469, #3107
	  static inicio + #470, #127
	  static inicio + #471, #127
	  static inicio + #472, #127
	  static inicio + #473, #127
	  static inicio + #474, #127
	  static inicio + #475, #127
	  static inicio + #476, #127
	  static inicio + #477, #127
	  static inicio + #478, #127
	  static inicio + #479, #127

	  ;Linha 12
	  static inicio + #480, #127
	  static inicio + #481, #127
	  static inicio + #482, #127
	  static inicio + #483, #127
	  static inicio + #484, #127
	  static inicio + #485, #127
	  static inicio + #486, #127
	  static inicio + #487, #127
	  static inicio + #488, #127
	  static inicio + #489, #127
	  static inicio + #490, #2339
	  static inicio + #491, #2339
	  static inicio + #492, #2339
	  static inicio + #493, #2339
	  static inicio + #494, #2339
	  static inicio + #495, #2339
	  static inicio + #496, #2339
	  static inicio + #497, #2851
	  static inicio + #498, #2595
	  static inicio + #499, #2595
	  static inicio + #500, #3107
	  static inicio + #501, #3107
	  static inicio + #502, #3107
	  static inicio + #503, #3107
	  static inicio + #504, #3107
	  static inicio + #505, #2339
	  static inicio + #506, #2339
	  static inicio + #507, #2339
	  static inicio + #508, #2339
	  static inicio + #509, #2339
	  static inicio + #510, #127
	  static inicio + #511, #127
	  static inicio + #512, #127
	  static inicio + #513, #127
	  static inicio + #514, #127
	  static inicio + #515, #127
	  static inicio + #516, #127
	  static inicio + #517, #127
	  static inicio + #518, #127
	  static inicio + #519, #127

	  ;Linha 13
	  static inicio + #520, #127
	  static inicio + #521, #127
	  static inicio + #522, #127
	  static inicio + #523, #127
	  static inicio + #524, #127
	  static inicio + #525, #127
	  static inicio + #526, #127
	  static inicio + #527, #127
	  static inicio + #528, #127
	  static inicio + #529, #127
	  static inicio + #530, #2339
	  static inicio + #531, #2339
	  static inicio + #532, #2339
	  static inicio + #533, #2339
	  static inicio + #534, #2339
	  static inicio + #535, #2339
	  static inicio + #536, #2851
	  static inicio + #537, #2595
	  static inicio + #538, #2595
	  static inicio + #539, #2595
	  static inicio + #540, #3107
	  static inicio + #541, #3107
	  static inicio + #542, #3107
	  static inicio + #543, #3107
	  static inicio + #544, #3107
	  static inicio + #545, #2339
	  static inicio + #546, #2339
	  static inicio + #547, #2339
	  static inicio + #548, #2339
	  static inicio + #549, #2339
	  static inicio + #550, #127
	  static inicio + #551, #127
	  static inicio + #552, #127
	  static inicio + #553, #127
	  static inicio + #554, #127
	  static inicio + #555, #127
	  static inicio + #556, #127
	  static inicio + #557, #127
	  static inicio + #558, #127
	  static inicio + #559, #127

	  ;Linha 14
	  static inicio + #560, #127
	  static inicio + #561, #127
	  static inicio + #562, #127
	  static inicio + #563, #127
	  static inicio + #564, #127
	  static inicio + #565, #127
	  static inicio + #566, #127
	  static inicio + #567, #127
	  static inicio + #568, #127
	  static inicio + #569, #127
	  static inicio + #570, #127
	  static inicio + #571, #127
	  static inicio + #572, #127
	  static inicio + #573, #127
	  static inicio + #574, #127
	  static inicio + #575, #3875
	  static inicio + #576, #3875
	  static inicio + #577, #127
	  static inicio + #578, #2851
	  static inicio + #579, #2851
	  static inicio + #580, #2851
	  static inicio + #581, #2851
	  static inicio + #582, #2851
	  static inicio + #583, #127
	  static inicio + #584, #127
	  static inicio + #585, #127
	  static inicio + #586, #127
	  static inicio + #587, #127
	  static inicio + #588, #127
	  static inicio + #589, #127
	  static inicio + #590, #127
	  static inicio + #591, #127
	  static inicio + #592, #127
	  static inicio + #593, #127
	  static inicio + #594, #127
	  static inicio + #595, #127
	  static inicio + #596, #127
	  static inicio + #597, #127
	  static inicio + #598, #127
	  static inicio + #599, #127

	  ;Linha 15
	  static inicio + #600, #127
	  static inicio + #601, #127
	  static inicio + #602, #127
	  static inicio + #603, #127
	  static inicio + #604, #127
	  static inicio + #605, #127
	  static inicio + #606, #127
	  static inicio + #607, #127
	  static inicio + #608, #127
	  static inicio + #609, #127
	  static inicio + #610, #127
	  static inicio + #611, #127
	  static inicio + #612, #127
	  static inicio + #613, #127
	  static inicio + #614, #127
	  static inicio + #615, #127
	  static inicio + #616, #127
	  static inicio + #617, #127
	  static inicio + #618, #2851
	  static inicio + #619, #2851
	  static inicio + #620, #2851
	  static inicio + #621, #2851
	  static inicio + #622, #2851
	  static inicio + #623, #127
	  static inicio + #624, #127
	  static inicio + #625, #127
	  static inicio + #626, #127
	  static inicio + #627, #127
	  static inicio + #628, #127
	  static inicio + #629, #127
	  static inicio + #630, #127
	  static inicio + #631, #127
	  static inicio + #632, #127
	  static inicio + #633, #127
	  static inicio + #634, #127
	  static inicio + #635, #127
	  static inicio + #636, #127
	  static inicio + #637, #127
	  static inicio + #638, #127
	  static inicio + #639, #127

	  ;Linha 16
	  static inicio + #640, #127
	  static inicio + #641, #127
	  static inicio + #642, #127
	  static inicio + #643, #127
	  static inicio + #644, #127
	  static inicio + #645, #127
	  static inicio + #646, #127
	  static inicio + #647, #127
	  static inicio + #648, #127
	  static inicio + #649, #127
	  static inicio + #650, #127
	  static inicio + #651, #127
	  static inicio + #652, #127
	  static inicio + #653, #127
	  static inicio + #654, #127
	  static inicio + #655, #127
	  static inicio + #656, #127
	  static inicio + #657, #127
	  static inicio + #658, #2851
	  static inicio + #659, #2851
	  static inicio + #660, #2851
	  static inicio + #661, #2851
	  static inicio + #662, #2851
	  static inicio + #663, #127
	  static inicio + #664, #127
	  static inicio + #665, #127
	  static inicio + #666, #127
	  static inicio + #667, #127
	  static inicio + #668, #127
	  static inicio + #669, #127
	  static inicio + #670, #127
	  static inicio + #671, #127
	  static inicio + #672, #127
	  static inicio + #673, #127
	  static inicio + #674, #127
	  static inicio + #675, #127
	  static inicio + #676, #127
	  static inicio + #677, #127
	  static inicio + #678, #127
	  static inicio + #679, #127

	  ;Linha 17
	  static inicio + #680, #127
	  static inicio + #681, #127
	  static inicio + #682, #127
	  static inicio + #683, #127
	  static inicio + #684, #127
	  static inicio + #685, #127
	  static inicio + #686, #127
	  static inicio + #687, #127
	  static inicio + #688, #127
	  static inicio + #689, #127
	  static inicio + #690, #127
	  static inicio + #691, #127
	  static inicio + #692, #127
	  static inicio + #693, #127
	  static inicio + #694, #127
	  static inicio + #695, #127
	  static inicio + #696, #127
	  static inicio + #697, #127
	  static inicio + #698, #3107
	  static inicio + #699, #3107
	  static inicio + #700, #2602
	  static inicio + #701, #3107
	  static inicio + #702, #3107
	  static inicio + #703, #127
	  static inicio + #704, #127
	  static inicio + #705, #127
	  static inicio + #706, #127
	  static inicio + #707, #127
	  static inicio + #708, #127
	  static inicio + #709, #127
	  static inicio + #710, #127
	  static inicio + #711, #127
	  static inicio + #712, #127
	  static inicio + #713, #127
	  static inicio + #714, #127
	  static inicio + #715, #127
	  static inicio + #716, #127
	  static inicio + #717, #127
	  static inicio + #718, #127
	  static inicio + #719, #127

	  ;Linha 18
	  static inicio + #720, #127
	  static inicio + #721, #127
	  static inicio + #722, #127
	  static inicio + #723, #127
	  static inicio + #724, #127
	  static inicio + #725, #127
	  static inicio + #726, #127
	  static inicio + #727, #127
	  static inicio + #728, #127
	  static inicio + #729, #127
	  static inicio + #730, #127
	  static inicio + #731, #127
	  static inicio + #732, #127
	  static inicio + #733, #127
	  static inicio + #734, #127
	  static inicio + #735, #127
	  static inicio + #736, #127
	  static inicio + #737, #127
	  static inicio + #738, #2339
	  static inicio + #739, #2339
	  static inicio + #740, #2339
	  static inicio + #741, #2339
	  static inicio + #742, #2339
	  static inicio + #743, #127
	  static inicio + #744, #127
	  static inicio + #745, #127
	  static inicio + #746, #127
	  static inicio + #747, #127
	  static inicio + #748, #127
	  static inicio + #749, #127
	  static inicio + #750, #127
	  static inicio + #751, #127
	  static inicio + #752, #127
	  static inicio + #753, #127
	  static inicio + #754, #127
	  static inicio + #755, #127
	  static inicio + #756, #127
	  static inicio + #757, #127
	  static inicio + #758, #127
	  static inicio + #759, #127

	  ;Linha 19
	  static inicio + #760, #127
	  static inicio + #761, #127
	  static inicio + #762, #127
	  static inicio + #763, #127
	  static inicio + #764, #127
	  static inicio + #765, #127
	  static inicio + #766, #127
	  static inicio + #767, #127
	  static inicio + #768, #127
	  static inicio + #769, #127
	  static inicio + #770, #127
	  static inicio + #771, #127
	  static inicio + #772, #127
	  static inicio + #773, #127
	  static inicio + #774, #127
	  static inicio + #775, #127
	  static inicio + #776, #127
	  static inicio + #777, #127
	  static inicio + #778, #127
	  static inicio + #779, #127
	  static inicio + #780, #127
	  static inicio + #781, #127
	  static inicio + #782, #127
	  static inicio + #783, #127
	  static inicio + #784, #127
	  static inicio + #785, #127
	  static inicio + #786, #127
	  static inicio + #787, #127
	  static inicio + #788, #127
	  static inicio + #789, #127
	  static inicio + #790, #127
	  static inicio + #791, #127
	  static inicio + #792, #127
	  static inicio + #793, #127
	  static inicio + #794, #127
	  static inicio + #795, #127
	  static inicio + #796, #127
	  static inicio + #797, #127
	  static inicio + #798, #127
	  static inicio + #799, #127

	  ;Linha 20
	  static inicio + #800, #127
	  static inicio + #801, #127
	  static inicio + #802, #127
	  static inicio + #803, #127
	  static inicio + #804, #127
	  static inicio + #805, #127
	  static inicio + #806, #127
	  static inicio + #807, #127
	  static inicio + #808, #127
	  static inicio + #809, #127
	  static inicio + #810, #127
	  static inicio + #811, #127
	  static inicio + #812, #127
	  static inicio + #813, #127
	  static inicio + #814, #127
	  static inicio + #815, #127
	  static inicio + #816, #127
	  static inicio + #817, #127
	  static inicio + #818, #127
	  static inicio + #819, #127
	  static inicio + #820, #127
	  static inicio + #821, #127
	  static inicio + #822, #127
	  static inicio + #823, #127
	  static inicio + #824, #127
	  static inicio + #825, #127
	  static inicio + #826, #127
	  static inicio + #827, #127
	  static inicio + #828, #127
	  static inicio + #829, #127
	  static inicio + #830, #127
	  static inicio + #831, #127
	  static inicio + #832, #127
	  static inicio + #833, #127
	  static inicio + #834, #127
	  static inicio + #835, #127
	  static inicio + #836, #127
	  static inicio + #837, #127
	  static inicio + #838, #127
	  static inicio + #839, #127

	  ;Linha 21
	  static inicio + #840, #127
	  static inicio + #841, #127
	  static inicio + #842, #127
	  static inicio + #843, #127
	  static inicio + #844, #127
	  static inicio + #845, #127
	  static inicio + #846, #127
	  static inicio + #847, #127
	  static inicio + #848, #127
	  static inicio + #849, #127
	  static inicio + #850, #127
	  static inicio + #851, #127
	  static inicio + #852, #127
	  static inicio + #853, #127
	  static inicio + #854, #127
	  static inicio + #855, #127
	  static inicio + #856, #127
	  static inicio + #857, #127
	  static inicio + #858, #127
	  static inicio + #859, #127
	  static inicio + #860, #127
	  static inicio + #861, #127
	  static inicio + #862, #127
	  static inicio + #863, #127
	  static inicio + #864, #127
	  static inicio + #865, #127
	  static inicio + #866, #127
	  static inicio + #867, #127
	  static inicio + #868, #127
	  static inicio + #869, #127
	  static inicio + #870, #127
	  static inicio + #871, #127
	  static inicio + #872, #127
	  static inicio + #873, #127
	  static inicio + #874, #127
	  static inicio + #875, #127
	  static inicio + #876, #127
	  static inicio + #877, #127
	  static inicio + #878, #127
	  static inicio + #879, #127

	  ;Linha 22
	  static inicio + #880, #127
	  static inicio + #881, #127
	  static inicio + #882, #127
	  static inicio + #883, #127
	  static inicio + #884, #127
	  static inicio + #885, #127
	  static inicio + #886, #127
	  static inicio + #887, #127
	  static inicio + #888, #127
	  static inicio + #889, #127
	  static inicio + #890, #127
	  static inicio + #891, #127
	  static inicio + #892, #127
	  static inicio + #893, #127
	  static inicio + #894, #127
	  static inicio + #895, #127
	  static inicio + #896, #127
	  static inicio + #897, #127
	  static inicio + #898, #127
	  static inicio + #899, #127
	  static inicio + #900, #127
	  static inicio + #901, #127
	  static inicio + #902, #127
	  static inicio + #903, #127
	  static inicio + #904, #127
	  static inicio + #905, #127
	  static inicio + #906, #127
	  static inicio + #907, #127
	  static inicio + #908, #127
	  static inicio + #909, #127
	  static inicio + #910, #127
	  static inicio + #911, #127
	  static inicio + #912, #127
	  static inicio + #913, #127
	  static inicio + #914, #127
	  static inicio + #915, #127
	  static inicio + #916, #127
	  static inicio + #917, #127
	  static inicio + #918, #127
	  static inicio + #919, #127

	  ;Linha 23
	  static inicio + #920, #127
	  static inicio + #921, #127
	  static inicio + #922, #127
	  static inicio + #923, #127
	  static inicio + #924, #127
	  static inicio + #925, #127
	  static inicio + #926, #127
	  static inicio + #927, #32
	  static inicio + #928, #32
	  static inicio + #929, #32
	  static inicio + #930, #32
	  static inicio + #931, #32
	  static inicio + #932, #32
	  static inicio + #933, #32
	  static inicio + #934, #32
	  static inicio + #935, #32
	  static inicio + #936, #32
	  static inicio + #937, #32
	  static inicio + #938, #32
	  static inicio + #939, #32
	  static inicio + #940, #127
	  static inicio + #941, #127
	  static inicio + #942, #127
	  static inicio + #943, #127
	  static inicio + #944, #127
	  static inicio + #945, #127
	  static inicio + #946, #127
	  static inicio + #947, #127
	  static inicio + #948, #127
	  static inicio + #949, #127
	  static inicio + #950, #127
	  static inicio + #951, #127
	  static inicio + #952, #127
	  static inicio + #953, #127
	  static inicio + #954, #127
	  static inicio + #955, #127
	  static inicio + #956, #127
	  static inicio + #957, #127
	  static inicio + #958, #127
	  static inicio + #959, #127

	  ;Linha 24
	  static inicio + #960, #127
	  static inicio + #961, #127
	  static inicio + #962, #127
	  static inicio + #963, #68
	  static inicio + #964, #73
	  static inicio + #965, #71
	  static inicio + #966, #73
	  static inicio + #967, #84
	  static inicio + #968, #69
	  static inicio + #969, #32
	  static inicio + #970, #81
	  static inicio + #971, #85
	  static inicio + #972, #65
	  static inicio + #973, #76
	  static inicio + #974, #81
	  static inicio + #975, #85
	  static inicio + #976, #69
	  static inicio + #977, #82
	  static inicio + #978, #32
	  static inicio + #979, #84
	  static inicio + #980, #69
	  static inicio + #981, #67
	  static inicio + #982, #76
	  static inicio + #983, #65
	  static inicio + #984, #32
	  static inicio + #985, #80
	  static inicio + #986, #65
	  static inicio + #987, #82
	  static inicio + #988, #65
	  static inicio + #989, #32
	  static inicio + #990, #67
	  static inicio + #991, #79
	  static inicio + #992, #77
	  static inicio + #993, #69
	  static inicio + #994, #67
	  static inicio + #995, #65
	  static inicio + #996, #82
	  static inicio + #997, #127
	  static inicio + #998, #127
	  static inicio + #999, #127

	  ;Linha 25
	  static inicio + #1000, #127
	  static inicio + #1001, #127
	  static inicio + #1002, #127
	  static inicio + #1003, #127
	  static inicio + #1004, #127
	  static inicio + #1005, #127
	  static inicio + #1006, #127
	  static inicio + #1007, #127
	  static inicio + #1008, #127
	  static inicio + #1009, #127
	  static inicio + #1010, #127
	  static inicio + #1011, #127
	  static inicio + #1012, #127
	  static inicio + #1013, #127
	  static inicio + #1014, #127
	  static inicio + #1015, #127
	  static inicio + #1016, #127
	  static inicio + #1017, #127
	  static inicio + #1018, #127
	  static inicio + #1019, #127
	  static inicio + #1020, #127
	  static inicio + #1021, #127
	  static inicio + #1022, #127
	  static inicio + #1023, #127
	  static inicio + #1024, #127
	  static inicio + #1025, #32
	  static inicio + #1026, #127
	  static inicio + #1027, #32
	  static inicio + #1028, #127
	  static inicio + #1029, #32
	  static inicio + #1030, #127
	  static inicio + #1031, #32
	  static inicio + #1032, #32
	  static inicio + #1033, #32
	  static inicio + #1034, #32
	  static inicio + #1035, #32
	  static inicio + #1036, #32
	  static inicio + #1037, #32
	  static inicio + #1038, #32
	  static inicio + #1039, #127

	  ;Linha 26
	  static inicio + #1040, #127
	  static inicio + #1041, #127
	  static inicio + #1042, #127
	  static inicio + #1043, #127
	  static inicio + #1044, #127
	  static inicio + #1045, #127
	  static inicio + #1046, #127
	  static inicio + #1047, #127
	  static inicio + #1048, #127
	  static inicio + #1049, #127
	  static inicio + #1050, #127
	  static inicio + #1051, #127
	  static inicio + #1052, #127
	  static inicio + #1053, #127
	  static inicio + #1054, #127
	  static inicio + #1055, #127
	  static inicio + #1056, #127
	  static inicio + #1057, #127
	  static inicio + #1058, #127
	  static inicio + #1059, #127
	  static inicio + #1060, #127
	  static inicio + #1061, #127
	  static inicio + #1062, #127
	  static inicio + #1063, #127
	  static inicio + #1064, #127
	  static inicio + #1065, #127
	  static inicio + #1066, #127
	  static inicio + #1067, #127
	  static inicio + #1068, #127
	  static inicio + #1069, #127
	  static inicio + #1070, #127
	  static inicio + #1071, #127
	  static inicio + #1072, #127
	  static inicio + #1073, #127
	  static inicio + #1074, #127
	  static inicio + #1075, #127
	  static inicio + #1076, #127
	  static inicio + #1077, #127
	  static inicio + #1078, #127
	  static inicio + #1079, #127

	  ;Linha 27
	  static inicio + #1080, #127
	  static inicio + #1081, #127
	  static inicio + #1082, #127
	  static inicio + #1083, #127
	  static inicio + #1084, #127
	  static inicio + #1085, #127
	  static inicio + #1086, #127
	  static inicio + #1087, #127
	  static inicio + #1088, #127
	  static inicio + #1089, #127
	  static inicio + #1090, #127
	  static inicio + #1091, #127
	  static inicio + #1092, #127
	  static inicio + #1093, #127
	  static inicio + #1094, #127
	  static inicio + #1095, #127
	  static inicio + #1096, #127
	  static inicio + #1097, #127
	  static inicio + #1098, #127
	  static inicio + #1099, #127
	  static inicio + #1100, #127
	  static inicio + #1101, #127
	  static inicio + #1102, #127
	  static inicio + #1103, #127
	  static inicio + #1104, #127
	  static inicio + #1105, #127
	  static inicio + #1106, #127
	  static inicio + #1107, #127
	  static inicio + #1108, #127
	  static inicio + #1109, #127
	  static inicio + #1110, #127
	  static inicio + #1111, #127
	  static inicio + #1112, #127
	  static inicio + #1113, #127
	  static inicio + #1114, #127
	  static inicio + #1115, #127
	  static inicio + #1116, #127
	  static inicio + #1117, #127
	  static inicio + #1118, #127
	  static inicio + #1119, #127

	  ;Linha 28
	  static inicio + #1120, #127
	  static inicio + #1121, #127
	  static inicio + #1122, #127
	  static inicio + #1123, #127
	  static inicio + #1124, #127
	  static inicio + #1125, #127
	  static inicio + #1126, #127
	  static inicio + #1127, #127
	  static inicio + #1128, #127
	  static inicio + #1129, #127
	  static inicio + #1130, #127
	  static inicio + #1131, #127
	  static inicio + #1132, #127
	  static inicio + #1133, #127
	  static inicio + #1134, #127
	  static inicio + #1135, #127
	  static inicio + #1136, #127
	  static inicio + #1137, #127
	  static inicio + #1138, #127
	  static inicio + #1139, #127
	  static inicio + #1140, #127
	  static inicio + #1141, #127
	  static inicio + #1142, #127
	  static inicio + #1143, #127
	  static inicio + #1144, #127
	  static inicio + #1145, #127
	  static inicio + #1146, #127
	  static inicio + #1147, #127
	  static inicio + #1148, #127
	  static inicio + #1149, #127
	  static inicio + #1150, #127
	  static inicio + #1151, #127
	  static inicio + #1152, #127
	  static inicio + #1153, #127
	  static inicio + #1154, #127
	  static inicio + #1155, #127
	  static inicio + #1156, #127
	  static inicio + #1157, #127
	  static inicio + #1158, #127
	  static inicio + #1159, #127

	  ;Linha 29
	  static inicio + #1160, #127
	  static inicio + #1161, #127
	  static inicio + #1162, #127
	  static inicio + #1163, #127
	  static inicio + #1164, #127
	  static inicio + #1165, #127
	  static inicio + #1166, #127
	  static inicio + #1167, #127
	  static inicio + #1168, #127
	  static inicio + #1169, #127
	  static inicio + #1170, #127
	  static inicio + #1171, #127
	  static inicio + #1172, #127
	  static inicio + #1173, #127
	  static inicio + #1174, #127
	  static inicio + #1175, #127
	  static inicio + #1176, #127
	  static inicio + #1177, #127
	  static inicio + #1178, #127
	  static inicio + #1179, #127
	  static inicio + #1180, #127
	  static inicio + #1181, #127
	  static inicio + #1182, #127
	  static inicio + #1183, #127
	  static inicio + #1184, #127
	  static inicio + #1185, #127
	  static inicio + #1186, #127
	  static inicio + #1187, #127
	  static inicio + #1188, #127
	  static inicio + #1189, #127
	  static inicio + #1190, #127
	  static inicio + #1191, #127
	  static inicio + #1192, #127
	  static inicio + #1193, #127
	  static inicio + #1194, #127
	  static inicio + #1195, #127
	  static inicio + #1196, #127
	  static inicio + #1197, #127
	  static inicio + #1198, #127
	  static inicio + #1199, #127



;********************************************************
;                   PROGRAMA PRINCIPAL
;********************************************************
main:
	; Strings dos paises
		;Argentina
		loadn r0, #'A'
	    loadn r4, #Argentina
	    storei r4, r0
	    loadn r0, #'r'
	    inc r4
	    storei r4, r0
	    loadn r0, #'g'
	    inc r4
	    storei r4, r0
	    loadn r0, #'e'
	    inc r4
	    storei r4, r0
	    loadn r0, #'n'
	    inc r4
	    storei r4, r0
	    loadn r0, #'t'
	    inc r4
	    storei r4, r0
	    loadn r0, #'i'
	    inc r4
	    storei r4, r0
	    loadn r0, #'n'
	    inc r4
	    storei r4, r0
	    loadn r0, #'a'
	    inc r4
	    storei r4, r0
	    loadn r0, #'\0'
	    inc r4
	    storei r4, r0

		;Bolivia
		loadn r0, #'B'
	    loadn r4, #Bolivia
	    storei r4, r0
	    loadn r0, #'o'
	    inc r4
	    storei r4, r0
	    loadn r0, #'l'
	    inc r4
	    storei r4, r0
	    loadn r0, #'i'
	    inc r4
	    storei r4, r0
	    loadn r0, #'v'
	    inc r4
	    storei r4, r0
	    loadn r0, #'i'
	    inc r4
	    storei r4, r0
	    loadn r0, #'a'
	    inc r4
	    storei r4, r0
	    loadn r0, #'\0'
	    inc r4
	    storei r4, r0

		;Colombia
		loadn r0, #'C'
	    loadn r4, #Colombia
	    storei r4, r0
	    loadn r0, #'o'
	    inc r4
	    storei r4, r0
	    loadn r0, #'l'
	    inc r4
	    storei r4, r0
	    loadn r0, #'o'
	    inc r4
	    storei r4, r0
	    loadn r0, #'m'
	    inc r4
	    storei r4, r0
	    loadn r0, #'b'
	    inc r4
	    storei r4, r0
	    loadn r0, #'i'
	    inc r4
	    storei r4, r0
	    loadn r0, #'a'
	    inc r4
	    storei r4, r0
	    loadn r0, #'\0'
	    inc r4
	    storei r4, r0

		;Venezuela
		loadn r0, #'V'
	    loadn r4, #Venezuela
	    storei r4, r0
	    loadn r0, #'e'
	    inc r4
	    storei r4, r0
	    loadn r0, #'n'
	    inc r4
	    storei r4, r0
	    loadn r0, #'e'
	    inc r4
	    storei r4, r0
	    loadn r0, #'z'
	    inc r4
	    storei r4, r0
	    loadn r0, #'u'
	    inc r4
	    storei r4, r0
	    loadn r0, #'e'
	    inc r4
	    storei r4, r0
	    loadn r0, #'l'
	    inc r4
	    storei r4, r0
	    loadn r0, #'a'
	    inc r4
	    storei r4, r0
	    loadn r0, #'\0'
	    inc r4
	    storei r4, r0

		;Suriname
		loadn r0, #'S'
	    loadn r4, #Suriname
	    storei r4, r0
	    loadn r0, #'u'
	    inc r4
	    storei r4, r0
	    loadn r0, #'r'
	    inc r4
	    storei r4, r0
	    loadn r0, #'i'
	    inc r4
	    storei r4, r0
	    loadn r0, #'n'
	    inc r4
	    storei r4, r0
	    loadn r0, #'a'
	    inc r4
	    storei r4, r0
	    loadn r0, #'m'
	    inc r4
	    storei r4, r0
	    loadn r0, #'e'
	    inc r4
	    storei r4, r0
	    loadn r0, #'\0'
	    inc r4
	    storei r4, r0

		;Guiana
		loadn r0, #'G'
	    loadn r4, #Guiana
	    storei r4, r0
	    loadn r0, #'u'
	    inc r4
	    storei r4, r0
	    loadn r0, #'i'
	    inc r4
	    storei r4, r0
	    loadn r0, #'a'
	    inc r4
	    storei r4, r0
	    loadn r0, #'n'
	    inc r4
	    storei r4, r0
	    loadn r0, #'a'
	    inc r4
	    storei r4, r0
	    loadn r0, #'\0'
	    inc r4
	    storei r4, r0

		;Guiana_Francesa
		loadn r0, #'G'
	    loadn r4, #Guiana_Francesa
	    storei r4, r0
	    loadn r0, #'u'
	    inc r4
	    storei r4, r0
	    loadn r0, #'i'
	    inc r4
	    storei r4, r0
	    loadn r0, #'a'
	    inc r4
	    storei r4, r0
	    loadn r0, #'n'
	    inc r4
	    storei r4, r0
	    loadn r0, #'a'
	    inc r4
	    storei r4, r0
	    loadn r0, #' '
	    inc r4
	    storei r4, r0
	    loadn r0, #'F'
	    inc r4
	    storei r4, r0
	    loadn r0, #'r'
	    inc r4
	    storei r4, r0
	    loadn r0, #'a'
	    inc r4
	    storei r4, r0
	    loadn r0, #'n'
	    inc r4
	    storei r4, r0
	    loadn r0, #'c'
	    inc r4
	    storei r4, r0
	    loadn r0, #'e'
	    inc r4
	    storei r4, r0
	    loadn r0, #'s'
	    inc r4
	    storei r4, r0
	    loadn r0, #'a'
	    inc r4
	    storei r4, r0
	    loadn r0, #'\0'
	    inc r4
	    storei r4, r0

		;Brasil
		loadn r0, #'B'
	    loadn r4, #Brasil
	    storei r4, r0
	    loadn r0, #'r'
	    inc r4
	    storei r4, r0
	    loadn r0, #'a'
	    inc r4
	    storei r4, r0
	    loadn r0, #'s'
	    inc r4
	    storei r4, r0
	    loadn r0, #'i'
	    inc r4
	    storei r4, r0
	    loadn r0, #'l'
	    inc r4
	    storei r4, r0
	    loadn r0, #'\0'
	    inc r4
	    storei r4, r0

		;Peru
		loadn r0, #'P'
	    loadn r4, #Peru
	    storei r4, r0
	    loadn r0, #'e'
	    inc r4
	    storei r4, r0
	    loadn r0, #'r'
	    inc r4
	    storei r4, r0
	    loadn r0, #'u'
	    inc r4
	    storei r4, r0
	    loadn r0, #'\0'
	    inc r4
	    storei r4, r0

		;Equador
		loadn r0, #'E'
	    loadn r4, #Equador
	    storei r4, r0
	    loadn r0, #'q'
	    inc r4
	    storei r4, r0
	    loadn r0, #'u'
	    inc r4
	    storei r4, r0
	    loadn r0, #'a'
	    inc r4
	    storei r4, r0
	    loadn r0, #'d'
	    inc r4
	    storei r4, r0
	    loadn r0, #'o'
	    inc r4
	    storei r4, r0
	    loadn r0, #'r'
	    inc r4
	    storei r4, r0
	    loadn r0, #'\0'
	    inc r4
	    storei r4, r0

		;Chile
		loadn r0, #'C'
	    loadn r4, #Chile
	    storei r4, r0
	    loadn r0, #'h'
	    inc r4
	    storei r4, r0
	    loadn r0, #'i'
	    inc r4
	    storei r4, r0
	    loadn r0, #'l'
	    inc r4
	    storei r4, r0
	    loadn r0, #'e'
	    inc r4
	    storei r4, r0
	    loadn r0, #'\0'
	    inc r4
	    storei r4, r0

		;Paraguai
		loadn r0, #'P'
	    loadn r4, #Paraguai
	    storei r4, r0
	    loadn r0, #'a'
	    inc r4
	    storei r4, r0
	    loadn r0, #'r'
	    inc r4
	    storei r4, r0
	    loadn r0, #'a'
	    inc r4
	    storei r4, r0
	    loadn r0, #'g'
	    inc r4
	    storei r4, r0
	    loadn r0, #'u'
	    inc r4
	    storei r4, r0
	    loadn r0, #'a'
	    inc r4
	    storei r4, r0
	    loadn r0, #'i'
	    inc r4
	    storei r4, r0
	    loadn r0, #'\0'
	    inc r4
	    storei r4, r0

		;Uruguai
		loadn r0, #'U'
	    loadn r4, #Uruguai
	    storei r4, r0
	    loadn r0, #'r'
	    inc r4
	    storei r4, r0
	    loadn r0, #'u'
	    inc r4
	    storei r4, r0
	    loadn r0, #'g'
	    inc r4
	    storei r4, r0
	    loadn r0, #'u'
	    inc r4
	    storei r4, r0
	    loadn r0, #'a'
	    inc r4
	    storei r4, r0
	    loadn r0, #'i'
	    inc r4
	    storei r4, r0
	    loadn r0, #'\0'
	    inc r4
	    storei r4, r0
	
	; Inicializa a variavel acertos como 0
	loadn r0, #0
	loadn r4, #Acertos
	storei r4, r0
	; Inicializa a flag de AcertoBrasil
	loadn r5, #AcertoBrasil
	storei r5, r0
	; Inicializa a flag de AcertoArgentina
	loadn r5, #AcertoArgentina
	storei r5, r0
	; Inicializa a flag de AcertoUruguai
	loadn r5, #AcertoUruguai
	storei r5, r0
	; Inicializa a flag de AcertoColombia
	loadn r5, #AcertoColombia
	storei r5, r0
	; Inicializa a flag de AcertoVenezuela
	loadn r5, #AcertoVenezuela
	storei r5, r0
	; Inicializa a flag de AcertoSuriname
	loadn r5, #AcertoSuriname
	storei r5, r0
	; Inicializa a flag de AcertoGuiana
	loadn r5, #AcertoGuiana
	storei r5, r0
	; Inicializa a flag de AcertoGuiana_Francesa
	loadn r5, #AcertoGuiana_Francesa
	storei r5, r0
	; Inicializa a flag de AcertoPeru
	loadn r5, #AcertoPeru
	storei r5, r0
	; Inicializa a flag de AcertoEquador
	loadn r5, #AcertoEquador
	storei r5, r0
	; Inicializa a flag de AcertoBolivia
	loadn r5, #AcertoBolivia
	storei r5, r0
	; Inicializa a flag de AcertoChile
	loadn r5, #AcertoChile
	storei r5, r0
	; Inicializa a flag de AcertoParaguai
	loadn r5, #AcertoParaguai
	storei r5, r0
	
	call printinicioScreen
	call digLetra
	
	; Imprime o mapa da America do Sul
	call printmapaScreen
	
	; Imprime o contador de paises (a parte do '/13')
	loadn r1, #47 ; r1 = 47 ou '/'
	loadn r2, #37 ; r0 = 37
	outchar r1, r2
	loadn r1, #49 ; r1 = 49 ou '1'
	inc r2 ; posicao++
	outchar r1, r2 ; imprime
	loadn r1, #51 ; r1 = 51 ou '3'
	inc r2 ; posicao++
	outchar r1, r2 ; imprime
	
	
	Loop:
		; Le uma palavra
		call inputPalavra
		
		; Compara a palavra com cada pais
		call comparaArgentina
		call comparaBrasil
		call comparaBolivia
		call comparaColombia
		call comparaEquador
		call comparaChile	
		call comparaGuiana
		call comparaGuiana_Francesa
		call comparaParaguai
		call comparaPeru
		call comparaSuriname
		call comparaUruguai
		call comparaVenezuela
		
		; Seta valores para os registradores
		loadn r0, #48 ; r0 = 48
		load r1, Acertos ; r1 = Acertos
		loadn r2, #35 ; r2 = 35 
		loadn r5, #13 ; r5 = 13
		
		; Testa o fim do programa
		cmp r1, r5 ; Acertos == 13?
		jeq FimPrograma
		
		; Testa se vai imprimir um ou dois digitos
		loadn r3, #9 ; r3 = 9
		cmp r1, r3 ; Acertos > 9?
		jgr PrintarDoisDig
		
		; Imprime um unico digito
		add r1, r1, r0
		outchar r1, r2
		jmp Loop
		
		; Acertos >= 10
		PrintarDoisDig:
		loadn r4, #1 ; r4 = 1
		loadn r3, #10 ; r3 = 10
		sub r1, r1, r3 ; r1 = Acertos - 10
		add r1, r1, r0 ; Transforma numero em caractere (digito)
		
		add r4, r4, r0 ; Transforma numero em caractere (digito)
		outchar r4, r2 ; Imprime na posicao 35
		inc r2 ; posicao++
		outchar r1, r2 ; Imprime na posicao 36
	
		; Testa o fim do programa
		;load r1, Acertos ; r1 = Acertos
		;loadn r2, #0 ; r2 = 1
		;cmp r1, r2 ; Acertos == 1?
		;jeq FimPrograma
		
		jmp Loop
	
	FimPrograma:
		; Printa o ultimo numero
		loadn r4, #1 ; r4 = 1
		loadn r1, #3 ; r1 = 3
		
		add r4, r4, r0 ; Transforma numero em char
		outchar r4, r2  ; imprime na posicao 1000
		inc r2 ; r2 = 1001
		add r1, r1, r0 ; Transforma numero em char
		outchar r1, r2 ; imprime na posicao 1001
		call printvenceuScreen
		
		halt
	
;-------------- Fim do Programa Principal ---------------

;********************************************************
;                   IMPRIME O MAPA INICIAL
;********************************************************
printinicioScreen:
  push R0
  push R1
  push R2
  push R3

  loadn R0, #inicio
  loadn R1, #0
  loadn R2, #1200

  printinicioScreenLoop:

    add R3,R0,R1
    loadi R3, R3
    outchar R3, R1
    inc R1
    cmp R1, R2

    jne printinicioScreenLoop

  pop R3
  pop R2
  pop R1
  pop R0
  rts
  
;********************************************************
;                      IMPRIME O MAPA
;********************************************************
printmapaScreen:
  push R0
  push R1
  push R2
  push R3

  loadn R0, #mapa
  loadn R1, #0
  loadn R2, #1200

  printmapaScreenLoop:

    add R3,R0,R1
    loadi R3, R3
    outchar R3, R1
    inc R1
    cmp R1, R2

    jne printmapaScreenLoop

  pop R3
  pop R2
  pop R1
  pop R0
  rts
  
;--------------------------------------------------------
;********************************************************
;                   IMPRIME O MAPA FINAL
;********************************************************
printvenceuScreen:
  push R0
  push R1
  push R2
  push R3

  loadn R0, #venceu
  loadn R1, #0
  loadn R2, #1200

  printvenceuScreenLoop:

    add R3,R0,R1
    loadi R3, R3
    outchar R3, R1
    inc R1
    cmp R1, R2

    jne printvenceuScreenLoop

  pop R3
  pop R2
  pop R1
  pop R0
  rts
;********************************************************
;                   DIGITE UMA LETRA
;********************************************************

digLetra:	; Espera que uma tecla seja digitada e salva na variavel global "Letra"
	push fr		; Protege o registrador de flags
	push r0
	push r1
	push r2
	loadn r1, #255	; Se nao digitar nada vem 255
	loadn r2, #0	; Logo que programa a FPGA o inchar vem 0

   digLetra_Loop:
		inchar r0			; Le o teclado, se nada for digitado = 255
		cmp r0, r1			;compara r0 com 255
		jeq digLetra_Loop	; Fica lendo ate' que digite uma tecla valida
		cmp r0, r2			;compara r0 com 0
		jeq digLetra_Loop	; Le novamente pois Logo que programa a FPGA o inchar vem 0

	store Letra, r0			; Salva a tecla na variasvel global "Letra"
	
   digLetra_Loop2:	
		inchar r0			; Le o teclado, se nada for digitado = 255
		cmp r0, r1			;compara r0 com 255
		jne digLetra_Loop2	; Fica lendo ate' que digite uma tecla valida
	
	pop r2
	pop r1
	pop r0
	pop fr
	rts
;--------------------------------------------------------

;********************************************************
;                   INPUT UMA PALAVRA
;********************************************************

inputPalavra:	; Rotina que recebe uma palavra para que o segundo usuario tente adivinhar
	;salva as variaveis anteriores e inicializa as novas
	push fr		; Protege o registrador de flags
	push r0		; Recebe letra digitada
	push r1		; codigo do enter
	push r2		; Contador de letras para o vetor que armazena a palavra
	push r3		; ponteiro para palavra
	push r4		; palavra[r3+r2]
	push r5		; Tamanho maximo da palavra

	loadn r1, #13		; codigo enter
	loadn r2, #0		; inicia r2 = 0
	loadn r3, #Palavra	; ponteiro para palavra
	loadn r5, #40		; Tamanho maximo da palavra
	;----------------

	;call printDigPalavra	; Seleciona uma mensagem para imprimir - Digite uma palavra!!

   inputPalavra_Loop:
		call digLetra		; Espera que uma tecla seja digitada e salva na variavel global "Letra"
	   		
		load r0, Letra				; Letra --> r0
		cmp r0, r1					;comparacao se r0 eh enter(13)
		jeq inputPalavra_Fim		; VAi para o fim se Enter!
		
		add r4, r3, r2
		storei r4, r0				; palavra[r2] = Letra

		inc r2
		store PalavraSize, r2			; Atualiza o tamanho da palavra
		cmp r2, r5						; verifica se r2 = 40
		jne inputPalavra_Loop			; Se for, sai, senao goto loop!!
				
   inputPalavra_Fim:
	; Poe um /0 no final da palavra pra poder imprimir e testar!!
	loadn r0, #0
	add r4, r3, r2
	storei r4, r0				; palavra[r2] = /0

	
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	pop fr
	rts		
;--------------------------------------------------------		

;********************************************************
;                   IMPRIME A PALAVRA DIGITADA
;********************************************************
	
printPalavra:	; Seleciona uma mensagem para imprimir - Digite uma palavra!!
	push fr		; Protege o registrador de flags
	push r0
	push r1
	push r2
	
	loadn r0, #0		; Posicao na tela onde a mensagem sera' escrita
	loadn r1, #Palavra	; Carrega r1 com o endereco do vetor que contem a mensagem
	loadn r2, #0		; Seleciona a COR da Mensagem
	
	call ImprimeStr   	; r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso;  r1 = endereco onde comeca a mensagem; r2 = cor da mensagem.   Obs: a mensagem sera' impressa ate' encontrar "/0"
	
	pop r2
	pop r1
	pop r0	
	pop fr
	rts	
;--------------------------------------------------------

;********************************************************
;                   IMPRIME STRING
;********************************************************

ImprimeStr:	;  Rotina de Impresao de Mensagens:    
	;r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso
	;  r1 = endereco onde comeca a mensagem
	; r2 = cor da mensagem.   Obs: a mensagem sera' impressa ate' encontrar "/0"
	push fr		; Protege o registrador de flags
	push r0	; protege o r0 na pilha para preservar seu valor
	push r1	; protege o r1 na pilha para preservar seu valor
	push r2	; protege o r1 na pilha para preservar seu valor
	push r3	; protege o r3 na pilha para ser usado na subrotina
	push r4	; protege o r4 na pilha para ser usado na subrotina
	
	loadn r3, #'\0'	; Criterio de parada

   ImprimeStr_Loop:	
		loadi r4, r1
		cmp r4, r3
		jeq ImprimeStr_Sai
		add r4, r2, r4
		outchar r4, r0
		inc r0
		inc r1
		jmp ImprimeStr_Loop
	
   ImprimeStr_Sai:	
	pop r4	; Resgata os valores dos registradores utilizados na Subrotina da Pilha
	pop r3
	pop r2
	pop r1
	pop r0
	pop fr
	rts
;-------------------------------------------------------

;********************************************************
;              COMPARA CADA PAIS COM A PALAVRA
;********************************************************

comparaBrasil:
	push fr		; Protege o registrador de flags
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7

	loadn r0, #'\0'
	loadn r1, #Brasil
	loadn r2, #Palavra
	loadn r3, #0; posicao da letra na palavra	
	
	Compara_Loop:
		; Carregando os registradores
		add r4, r1, r3 ; r4 = Brasil + posicao
		add r5, r2, r3 ; r5 = Palavra + posicao
		loadi r6, r4 ; r6 = Brasil[posicao]
		loadi r7, r5 ; r7 = Palavra[posicao]
		
		cmp r6, r7 ; Brasil[posicao] == Palavra[posicao]?
		jne Palavras_Diferentes ; Nao sao palavras iguais
		
		cmp r6, r0 ; Compara Brasil[posicao] com '\0'
		jeq Palavras_Iguais
		
		inc r3 ; posicao++
		jmp Compara_Loop
		
	Palavras_Diferentes:
		jmp FimBrasil
		
	Palavras_Iguais:
		loadn r4, #1
		load r5, AcertoBrasil
		cmp r4, r5
		jeq FimBrasil
		
		; Incrementa o contador de acertos		
		load r1, Acertos ; Coloca o numero de acertos no r1
		inc r1 ; incrementa r1
		store Acertos, r1 ; atualiza o valor da variavel
		
		load r5, AcertoBrasil
		loadn r5, #1
		store AcertoBrasil, r5
		
		; Atualiza o mapa
			loadn r2, #512
			loadn r0, #35
			add r0, r2, r0
			loadn r1, #219
			outchar r0, r1
			loadn r1, #220
			outchar r0, r1
			loadn r1, #226
			outchar r0, r1
			loadn r1, #259
			outchar r0, r1
			loadn r1, #260
			outchar r0, r1
			loadn r1, #264
			outchar r0, r1
			loadn r1, #265
			outchar r0, r1
			loadn r1, #266
			outchar r0, r1
			loadn r1, #296
			outchar r0, r1
			loadn r1, #297
			outchar r0, r1
			loadn r1, #298
			outchar r0, r1
			loadn r1, #299
			outchar r0, r1
			loadn r1, #300
			outchar r0, r1
			loadn r1, #301
			outchar r0, r1
			loadn r1, #302
			outchar r0, r1
			loadn r1, #303
			outchar r0, r1
			loadn r1, #304
			outchar r0, r1
			loadn r1, #305
			outchar r0, r1
			loadn r1, #306
			outchar r0, r1
			loadn r1, #307
			outchar r0, r1
			loadn r1, #336
			outchar r0, r1
			loadn r1, #337
			outchar r0, r1
			loadn r1, #338
			outchar r0, r1
			loadn r1, #339
			outchar r0, r1
			loadn r1, #340
			outchar r0, r1
			loadn r1, #341
			outchar r0, r1
			loadn r1, #342
			outchar r0, r1
			loadn r1, #343
			outchar r0, r1
			loadn r1, #344
			outchar r0, r1
			loadn r1, #345
			outchar r0, r1
			loadn r1, #346
			outchar r0, r1
			loadn r1, #347
			outchar r0, r1
			loadn r1, #348
			outchar r0, r1
			loadn r1, #349
			outchar r0, r1
			loadn r1, #374
			outchar r0, r1
			loadn r1, #375
			outchar r0, r1
			loadn r1, #376
			outchar r0, r1
			loadn r1, #377
			outchar r0, r1
			loadn r1, #378
			outchar r0, r1
			loadn r1, #379
			outchar r0, r1
			loadn r1, #380
			outchar r0, r1
			loadn r1, #381
			outchar r0, r1
			loadn r1, #382
			outchar r0, r1
			loadn r1, #383
			outchar r0, r1
			loadn r1, #384
			outchar r0, r1
			loadn r1, #385
			outchar r0, r1
			loadn r1, #386
			outchar r0, r1
			loadn r1, #387
			outchar r0, r1
			loadn r1, #388
			outchar r0, r1
			loadn r1, #389
			outchar r0, r1
			loadn r1, #390
			outchar r0, r1
			loadn r1, #413
			outchar r0, r1
			loadn r1, #414
			outchar r0, r1
			loadn r1, #415
			outchar r0, r1
			loadn r1, #416
			outchar r0, r1
			loadn r1, #417
			outchar r0, r1
			loadn r1, #418
			outchar r0, r1
			loadn r1, #419
			outchar r0, r1
			loadn r1, #420
			outchar r0, r1
			loadn r1, #421
			outchar r0, r1
			loadn r1, #422
			outchar r0, r1
			loadn r1, #423
			outchar r0, r1
			loadn r1, #424
			outchar r0, r1
			loadn r1, #425
			outchar r0, r1
			loadn r1, #426
			outchar r0, r1
			loadn r1, #427
			outchar r0, r1
			loadn r1, #428
			outchar r0, r1
			loadn r1, #429
			outchar r0, r1
			loadn r1, #430
			outchar r0, r1
			loadn r1, #452
			outchar r0, r1
			loadn r1, #453
			outchar r0, r1
			loadn r1, #454
			outchar r0, r1
			loadn r1, #455
			outchar r0, r1
			loadn r1, #456
			outchar r0, r1
			loadn r1, #457
			outchar r0, r1
			loadn r1, #458
			outchar r0, r1
			loadn r1, #459
			outchar r0, r1
			loadn r1, #460
			outchar r0, r1
			loadn r1, #461
			outchar r0, r1
			loadn r1, #462
			outchar r0, r1
			loadn r1, #463
			outchar r0, r1
			loadn r1, #464
			outchar r0, r1
			loadn r1, #465
			outchar r0, r1
			loadn r1, #466
			outchar r0, r1
			loadn r1, #467
			outchar r0, r1
			loadn r1, #468
			outchar r0, r1
			loadn r1, #469
			outchar r0, r1
			loadn r1, #470
			outchar r0, r1
			loadn r1, #492
			outchar r0, r1
			loadn r1, #493
			outchar r0, r1
			loadn r1, #494
			outchar r0, r1
			loadn r1, #495
			outchar r0, r1
			loadn r1, #496
			outchar r0, r1
			loadn r1, #497
			outchar r0, r1
			loadn r1, #498
			outchar r0, r1
			loadn r1, #499
			outchar r0, r1
			loadn r1, #500
			outchar r0, r1
			loadn r1, #501
			outchar r0, r1
			loadn r1, #502
			outchar r0, r1
			loadn r1, #503
			outchar r0, r1
			loadn r1, #504
			outchar r0, r1
			loadn r1, #505
			outchar r0, r1
			loadn r1, #506
			outchar r0, r1
			loadn r1, #507
			outchar r0, r1
			loadn r1, #508
			outchar r0, r1
			loadn r1, #509
			outchar r0, r1
			loadn r1, #534
			outchar r0, r1
			loadn r1, #535
			outchar r0, r1
			loadn r1, #536
			outchar r0, r1
			loadn r1, #537
			outchar r0, r1
			loadn r1, #538
			outchar r0, r1
			loadn r1, #539
			outchar r0, r1
			loadn r1, #540
			outchar r0, r1
			loadn r1, #541
			outchar r0, r1
			loadn r1, #542
			outchar r0, r1
			loadn r1, #543
			outchar r0, r1
			loadn r1, #544
			outchar r0, r1
			loadn r1, #545
			outchar r0, r1
			loadn r1, #546
			outchar r0, r1
			loadn r1, #547
			outchar r0, r1
			loadn r1, #548
			outchar r0, r1
			loadn r1, #549
			outchar r0, r1
			loadn r1, #577
			outchar r0, r1
			loadn r1, #578
			outchar r0, r1
			loadn r1, #579
			outchar r0, r1
			loadn r1, #580
			outchar r0, r1
			loadn r1, #581
			outchar r0, r1
			loadn r1, #582
			outchar r0, r1
			loadn r1, #583
			outchar r0, r1
			loadn r1, #584
			outchar r0, r1
			loadn r1, #585
			outchar r0, r1
			loadn r1, #586
			outchar r0, r1
			loadn r1, #587
			outchar r0, r1
			loadn r1, #588
			outchar r0, r1
			loadn r1, #589
			outchar r0, r1
			loadn r1, #620
			outchar r0, r1
			loadn r1, #621
			outchar r0, r1
			loadn r1, #622
			outchar r0, r1
			loadn r1, #623
			outchar r0, r1
			loadn r1, #624
			outchar r0, r1
			loadn r1, #625
			outchar r0, r1
			loadn r1, #626
			outchar r0, r1
			loadn r1, #627
			outchar r0, r1
			loadn r1, #628
			outchar r0, r1
			loadn r1, #661
			outchar r0, r1
			loadn r1, #662
			outchar r0, r1
			loadn r1, #663
			outchar r0, r1
			loadn r1, #664
			outchar r0, r1
			loadn r1, #665
			outchar r0, r1
			loadn r1, #666
			outchar r0, r1
			loadn r1, #667
			outchar r0, r1
			loadn r1, #668
			outchar r0, r1
			loadn r1, #702
			outchar r0, r1
			loadn r1, #703
			outchar r0, r1
			loadn r1, #704
			outchar r0, r1
			loadn r1, #705
			outchar r0, r1
			loadn r1, #706
			outchar r0, r1
			loadn r1, #707
			outchar r0, r1
			loadn r1, #743
			outchar r0, r1
			loadn r1, #744
			outchar r0, r1
			loadn r1, #745
			outchar r0, r1
			loadn r1, #746
			outchar r0, r1
			loadn r1, #782
			outchar r0, r1
			loadn r1, #783
			outchar r0, r1
			loadn r1, #784
			outchar r0, r1
			loadn r1, #785
			outchar r0, r1
			loadn r1, #786
			outchar r0, r1
			loadn r1, #821
			outchar r0, r1
			loadn r1, #822
			outchar r0, r1
			loadn r1, #823
			outchar r0, r1
			loadn r1, #824
			outchar r0, r1
			loadn r1, #825
			outchar r0, r1
			loadn r1, #861
			outchar r0, r1
			loadn r1, #862
			outchar r0, r1
			loadn r1, #863
			outchar r0, r1
			loadn r1, #864
			outchar r0, r1
			loadn r1, #865
			outchar r0, r1
			loadn r1, #901
			outchar r0, r1
			loadn r1, #902
			outchar r0, r1
			loadn r1, #903
			outchar r0, r1
			loadn r1, #904
			outchar r0, r1
			loadn r1, #942
			outchar r0, r1
			loadn r1, #943
			outchar r0, r1

		
		jmp FimBrasil
		
	FimBrasil:
	
		pop fr
		pop r0
		pop r1
		pop r2
		pop r3
		pop r4
		pop r5
		pop r6
		pop r7
		rts
;----------------
comparaArgentina:
	push fr		; Protege o registrador de flags
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7

	loadn r0, #'\0'
	loadn r1, #Argentina
	loadn r2, #Palavra
	loadn r3, #0; posicao da letra na palavra	
	
	Compara_Loop_Argentina:
		; Carregando os registradores
		add r4, r1, r3 ; r4 = Argentina + posicao
		add r5, r2, r3 ; r5 = Palavra + posicao
		loadi r6, r4 ; r6 = Argentina[posicao]
		loadi r7, r5 ; r7 = Palavra[posicao]
		
		cmp r6, r7 ; Argentina[posicao] == Palavra[posicao]?
		jne Palavras_Diferentes_Argentina ; Nao sao palavras iguais
		
		cmp r6, r0 ; Compara Argentina[posicao] com '\0'
		jeq Palavras_Iguais_Argentina
		
		inc r3 ; posicao++
		jmp Compara_Loop_Argentina
		
	Palavras_Diferentes_Argentina:
		jmp FimArgentina
		
	Palavras_Iguais_Argentina:
		loadn r4, #1
		load r5, AcertoArgentina
		cmp r4, r5
		jeq FimArgentina

		load r5, AcertoArgentina
		loadn r5, #1
		store AcertoArgentina, r5
		
		; Incrementa o contador de acertos		
		load r1, Acertos ; Coloca o numero de acertos no r1
		inc r1 ; incrementa r1
		store Acertos, r1 ; atualiza o valor da variavel
		
		; Atualiza o mapa
		loadn r2, #512
		loadn r0, #35
		add r0, r2, r0
		loadn r1, #695
		outchar r0, r1
		loadn r1, #696
		outchar r0, r1
		loadn r1, #697
		outchar r0, r1
		loadn r1, #734
		outchar r0, r1
		loadn r1, #735
		outchar r0, r1
		loadn r1, #736
		outchar r0, r1
		loadn r1, #737
		outchar r0, r1
		loadn r1, #738
		outchar r0, r1
		loadn r1, #742
		outchar r0, r1
		loadn r1, #773
		outchar r0, r1
		loadn r1, #774
		outchar r0, r1
		loadn r1, #775
		outchar r0, r1
		loadn r1, #776
		outchar r0, r1
		loadn r1, #777
		outchar r0, r1
		loadn r1, #778
		outchar r0, r1
		loadn r1, #779
		outchar r0, r1
		loadn r1, #780
		outchar r0, r1
		loadn r1, #781
		outchar r0, r1
		loadn r1, #813
		outchar r0, r1
		loadn r1, #814
		outchar r0, r1
		loadn r1, #815
		outchar r0, r1
		loadn r1, #816
		outchar r0, r1
		loadn r1, #817
		outchar r0, r1
		loadn r1, #818
		outchar r0, r1
		loadn r1, #819
		outchar r0, r1
		loadn r1, #820
		outchar r0, r1
		loadn r1, #852
		outchar r0, r1
		loadn r1, #853
		outchar r0, r1
		loadn r1, #854
		outchar r0, r1
		loadn r1, #855
		outchar r0, r1
		loadn r1, #856
		outchar r0, r1
		loadn r1, #857
		outchar r0, r1
		loadn r1, #858
		outchar r0, r1
		loadn r1, #859
		outchar r0, r1
		loadn r1, #892
		outchar r0, r1
		loadn r1, #893
		outchar r0, r1
		loadn r1, #894
		outchar r0, r1
		loadn r1, #895
		outchar r0, r1
		loadn r1, #896
		outchar r0, r1
		loadn r1, #897
		outchar r0, r1
		loadn r1, #898
		outchar r0, r1
		loadn r1, #932
		outchar r0, r1
		loadn r1, #933
		outchar r0, r1
		loadn r1, #934
		outchar r0, r1
		loadn r1, #935
		outchar r0, r1
		loadn r1, #936
		outchar r0, r1
		loadn r1, #937
		outchar r0, r1
		loadn r1, #938
		outchar r0, r1
		loadn r1, #972
		outchar r0, r1
		loadn r1, #973
		outchar r0, r1
		loadn r1, #974
		outchar r0, r1
		loadn r1, #975
		outchar r0, r1
		loadn r1, #976
		outchar r0, r1
		loadn r1, #977
		outchar r0, r1
		loadn r1, #978
		outchar r0, r1
		loadn r1, #1012
		outchar r0, r1
		loadn r1, #1013
		outchar r0, r1
		loadn r1, #1014
		outchar r0, r1
		loadn r1, #1015
		outchar r0, r1
		loadn r1, #1016
		outchar r0, r1
		loadn r1, #1017
		outchar r0, r1
		loadn r1, #1018
		outchar r0, r1
		loadn r1, #1019
		outchar r0, r1
		loadn r1, #1052
		outchar r0, r1
		loadn r1, #1053
		outchar r0, r1
		loadn r1, #1054
		outchar r0, r1
		loadn r1, #1055
		outchar r0, r1
		loadn r1, #1056
		outchar r0, r1
		loadn r1, #1057
		outchar r0, r1
		loadn r1, #1058
		outchar r0, r1
		loadn r1, #1059
		outchar r0, r1
		loadn r1, #1092
		outchar r0, r1
		loadn r1, #1093
		outchar r0, r1
		loadn r1, #1094
		outchar r0, r1
		loadn r1, #1095
		outchar r0, r1
		loadn r1, #1096
		outchar r0, r1
		loadn r1, #1097
		outchar r0, r1
		loadn r1, #1098
		outchar r0, r1
		loadn r1, #1099
		outchar r0, r1
		loadn r1, #1100
		outchar r0, r1
		loadn r1, #1101
		outchar r0, r1
		loadn r1, #1132
		outchar r0, r1
		loadn r1, #1133
		outchar r0, r1
		loadn r1, #1134
		outchar r0, r1
		loadn r1, #1135
		outchar r0, r1
		loadn r1, #1136
		outchar r0, r1
		loadn r1, #1137
		outchar r0, r1
		loadn r1, #1138
		outchar r0, r1
		loadn r1, #1139
		outchar r0, r1
		loadn r1, #1140
		outchar r0, r1
		loadn r1, #1141
		outchar r0, r1
		loadn r1, #1172
		outchar r0, r1
		loadn r1, #1173
		outchar r0, r1
		loadn r1, #1174
		outchar r0, r1
		loadn r1, #1175
		outchar r0, r1
		loadn r1, #1176
		outchar r0, r1
		loadn r1, #1177
		outchar r0, r1
		loadn r1, #1178
		outchar r0, r1
		loadn r1, #1179
		outchar r0, r1
		loadn r1, #1180
		outchar r0, r1
		loadn r1, #1181
		outchar r0, r1
		
		jmp FimArgentina
		
	FimArgentina:
	
		pop fr
		pop r0
		pop r1
		pop r2
		pop r3
		pop r4
		pop r5
		pop r6
		pop r7
		rts
;----------------
comparaUruguai:
	push fr		; Protege o registrador de flags
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7

	loadn r0, #'\0'
	loadn r1, #Uruguai
	loadn r2, #Palavra
	loadn r3, #0; posicao da letra na palavra	

	Compara_Loop_Uruguai:
		; Carregando os registradores
		add r4, r1, r3 ; r4 = Uruguai + posicao
		add r5, r2, r3 ; r5 = Palavra + posicao
		loadi r6, r4 ; r6 = Uruguai[posicao]
		loadi r7, r5 ; r7 = Palavra[posicao]
		
		cmp r6, r7 ; Uruguai[posicao] == Palavra[posicao]?
		jne Palavras_Diferentes_Uruguai ; Nao sao palavras iguais
		
		cmp r6, r0 ; Compara Uruguai[posicao] com '\0'
		jeq Palavras_Iguais_Uruguai
		
		inc r3 ; posicao++
		jmp Compara_Loop_Uruguai
		
	Palavras_Diferentes_Uruguai:
		;loadn r0, #202
		;loadn r1, #'X'
		;outchar r1, r0
		jmp FimUruguai
		
	Palavras_Iguais_Uruguai:
		
		loadn r4, #1
		load r5, AcertoUruguai
		cmp r4, r5
		jeq FimUruguai

		load r5, AcertoUruguai
		loadn r5, #1
		store AcertoUruguai, r5
		
		; Incrementa o contador de acertos		
		load r1, Acertos ; Coloca o numero de acertos no r1
		inc r1 ; incrementa r1
		store Acertos, r1 ; atualiza o valor da variavel
		
		; Atualiza o mapa
			loadn r2, #512
			loadn r0, #35
			add r0, r2, r0
			loadn r1, #860
			outchar r0, r1
			loadn r1, #899
			outchar r0, r1
			loadn r1, #900
			outchar r0, r1
			loadn r1, #939
			outchar r0, r1
			loadn r1, #940
			outchar r0, r1
			loadn r1, #941
			outchar r0, r1
			loadn r1, #979
			outchar r0, r1
			loadn r1, #980
			outchar r0, r1
			loadn r1, #981
			outchar r0, r1
			loadn r1, #982
			outchar r0, r1
			loadn r1, #1020
			outchar r0, r1
			loadn r1, #1021
			outchar r0, r1
			loadn r1, #1022
			outchar r0, r1
		
		jmp FimUruguai
		
	FimUruguai:

		pop fr
		pop r0
		pop r1
		pop r2
		pop r3
		pop r4
		pop r5
		pop r6
		pop r7
		rts
;----------------
comparaColombia:
	push fr        ; Protege o registrador de flags
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7

	loadn r0, #'\0'
	loadn r1, #Colombia
	loadn r2, #Palavra
	loadn r3, #0; posicao da letra na palavra

	Compara_Loop_Colombia:
	    ; Carregando os registradores
	    add r4, r1, r3 ; r4 = Colombia + posicao
	    add r5, r2, r3 ; r5 = Palavra + posicao
	    loadi r6, r4 ; r6 = Colombia[posicao]
	    loadi r7, r5 ; r7 = Palavra[posicao]

	    cmp r6, r7 ; Colombia[posicao] == Palavra[posicao]?
	    jne Palavras_Diferentes_Colombia ; Nao sao palavras iguais

	    cmp r6, r0 ; Compara Colombia[posicao] com '\0'
	    jeq Palavras_Iguais_Colombia

	    inc r3 ; posicao++
	    jmp Compara_Loop_Colombia

	Palavras_Diferentes_Colombia:
	    jmp FimColombia

	Palavras_Iguais_Colombia:
	
		loadn r4, #1
		load r5, AcertoColombia
		cmp r4, r5
		jeq FimColombia

		load r5, AcertoColombia
		loadn r5, #1
		store AcertoColombia, r5
		
	    ; Incrementa o contador de acertos		
		load r1, Acertos ; Coloca o numero de acertos no r1
		inc r1 ; incrementa r1
		store Acertos, r1 ; atualiza o valor da variavel
		
		; Atualiza o mapa
			loadn r2, #512
			loadn r0, #35
			add r0, r2, r0
			loadn r1, #53
			outchar r0, r1
			loadn r1, #54
			outchar r0, r1
			loadn r1, #92
			outchar r0, r1
			loadn r1, #93
			outchar r0, r1
			loadn r1, #131
			outchar r0, r1
			loadn r1, #132
			outchar r0, r1
			loadn r1, #133
			outchar r0, r1
			loadn r1, #170
			outchar r0, r1
			loadn r1, #171
			outchar r0, r1
			loadn r1, #172
			outchar r0, r1
			loadn r1, #173
			outchar r0, r1
			loadn r1, #174
			outchar r0, r1
			loadn r1, #209
			outchar r0, r1
			loadn r1, #210
			outchar r0, r1
			loadn r1, #211
			outchar r0, r1
			loadn r1, #212
			outchar r0, r1
			loadn r1, #213
			outchar r0, r1
			loadn r1, #214
			outchar r0, r1
			loadn r1, #215
			outchar r0, r1
			loadn r1, #248
			outchar r0, r1
			loadn r1, #249
			outchar r0, r1
			loadn r1, #250
			outchar r0, r1
			loadn r1, #251
			outchar r0, r1
			loadn r1, #252
			outchar r0, r1
			loadn r1, #253
			outchar r0, r1
			loadn r1, #254
			outchar r0, r1
			loadn r1, #255
			outchar r0, r1
			loadn r1, #290
			outchar r0, r1
			loadn r1, #291
			outchar r0, r1
			loadn r1, #292
			outchar r0, r1
			loadn r1, #293
			outchar r0, r1
			loadn r1, #294
			outchar r0, r1
			loadn r1, #295
			outchar r0, r1
			loadn r1, #333
			outchar r0, r1
			loadn r1, #334
			outchar r0, r1
			loadn r1, #335
			outchar r0, r1
	    
	    jmp FimColombia

	FimColombia:

		pop fr
		pop r0
		pop r1
		pop r2
		pop r3
		pop r4
		pop r5
		pop r6
		pop r7
		rts
;----------------
comparaVenezuela:
	push fr        ; Protege o registrador de flags
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7

	loadn r0, #'\0'
	loadn r1, #Venezuela
	loadn r2, #Palavra
	loadn r3, #0; posicao da letra na palavra

	Compara_Loop_Venezuela:
	    ; Carregando os registradores
	    add r4, r1, r3 ; r4 = Venezuela + posicao
	    add r5, r2, r3 ; r5 = Palavra + posicao
	    loadi r6, r4 ; r6 = Venezuela[posicao]
	    loadi r7, r5 ; r7 = Palavra[posicao]

	    cmp r6, r7 ; Venezuela[posicao] == Palavra[posicao]?
	    jne Palavras_Diferentes_Venezuela ; Nao sao palavras iguais

	    cmp r6, r0 ; Compara Venezuela[posicao] com '\0'
	    jeq Palavras_Iguais_Venezuela

	    inc r3 ; posicao++
	    jmp Compara_Loop_Venezuela

	Palavras_Diferentes_Venezuela:
	    jmp FimVenezuela

	Palavras_Iguais_Venezuela:
	    loadn r4, #1
		load r5, AcertoVenezuela
		cmp r4, r5
		jeq FimVenezuela

		load r5, AcertoVenezuela
		loadn r5, #1
		store AcertoVenezuela, r5
	    
	    ; Incrementa o contador de acertos		
		load r1, Acertos ; Coloca o numero de acertos no r1
		inc r1 ; incrementa r1
		store Acertos, r1 ; atualiza o valor da variavel
		
		; Atualiza o mapa
			loadn r2, #512
			loadn r0, #35
			add r0, r2, r0
			loadn r1, #94
			outchar r0, r1
			loadn r1, #95
			outchar r0, r1
			loadn r1, #96
			outchar r0, r1
			loadn r1, #97
			outchar r0, r1
			loadn r1, #98
			outchar r0, r1
			loadn r1, #99
			outchar r0, r1
			loadn r1, #134
			outchar r0, r1
			loadn r1, #135
			outchar r0, r1
			loadn r1, #136
			outchar r0, r1
			loadn r1, #137
			outchar r0, r1
			loadn r1, #138
			outchar r0, r1
			loadn r1, #139
			outchar r0, r1
			loadn r1, #140
			outchar r0, r1
			loadn r1, #175
			outchar r0, r1
			loadn r1, #176
			outchar r0, r1
			loadn r1, #177
			outchar r0, r1
			loadn r1, #178
			outchar r0, r1
			loadn r1, #179
			outchar r0, r1
			loadn r1, #180
			outchar r0, r1
			loadn r1, #216
			outchar r0, r1
			loadn r1, #217
			outchar r0, r1
			loadn r1, #218
			outchar r0, r1
			loadn r1, #256
			outchar r0, r1
			loadn r1, #257
			outchar r0, r1
			loadn r1, #258
			outchar r0, r1
		
	    jmp FimVenezuela

	FimVenezuela:

		pop fr
		pop r0
		pop r1
		pop r2
		pop r3
		pop r4
		pop r5
		pop r6
		pop r7
		rts
;----------------   
comparaSuriname:
	push fr        ; Protege o registrador de flags
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7

	loadn r0, #'\0'
	loadn r1, #Suriname
	loadn r2, #Palavra
	loadn r3, #0; posicao da letra na palavra

	Compara_Loop_Suriname:
	    ; Carregando os registradores
	    add r4, r1, r3 ; r4 = Suriname + posicao
	    add r5, r2, r3 ; r5 = Palavra + posicao
	    loadi r6, r4 ; r6 = Suriname[posicao]
	    loadi r7, r5 ; r7 = Palavra[posicao]

	    cmp r6, r7 ; Suriname[posicao] == Palavra[posicao]?
	    jne Palavras_Diferentes_Suriname ; Nao sao palavras iguais

	    cmp r6, r0 ; Compara Suriname[posicao] com '\0'
	    jeq Palavras_Iguais_Suriname

	    inc r3 ; posicao++
	    jmp Compara_Loop_Suriname

	Palavras_Diferentes_Suriname:
	    jmp FimSuriname

	Palavras_Iguais_Suriname:
	    ;loadn r0, #205
	    ;loadn r1, #'S'
	    ;outchar r1, r0
	    
	    loadn r4, #1
		load r5, AcertoSuriname
		cmp r4, r5
		jeq FimSuriname

		load r5, AcertoSuriname
		loadn r5, #1
		store AcertoSuriname, r5
		
	    ; Incrementa o contador de acertos		
		load r1, Acertos ; Coloca o numero de acertos no r1
		inc r1 ; incrementa r1
		store Acertos, r1 ; atualiza o valor da variavel
		
		; Atualiza o mapa
			loadn r2, #512
			loadn r0, #35
			add r0, r2, r0
			loadn r1, #183
			outchar r0, r1
			loadn r1, #184
			outchar r0, r1
			loadn r1, #223
			outchar r0, r1
			loadn r1, #224
			outchar r0, r1
			loadn r1, #263
			outchar r0, r1
	    
	    jmp FimSuriname

	FimSuriname:

		pop fr
		pop r0
		pop r1
		pop r2
		pop r3
		pop r4
		pop r5
		pop r6
		pop r7
		rts
;----------------	    
comparaGuiana:
	push fr        ; Protege o registrador de flags
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7

	loadn r0, #'\0'
	loadn r1, #Guiana
	loadn r2, #Palavra
	loadn r3, #0; posicao da letra na palavra

	Compara_Loop_Guiana:
	    ; Carregando os registradores
	    add r4, r1, r3 ; r4 = Guiana + posicao
	    add r5, r2, r3 ; r5 = Palavra + posicao
	    loadi r6, r4 ; r6 = Guiana[posicao]
	    loadi r7, r5 ; r7 = Palavra[posicao]

	    cmp r6, r7 ; Guiana[posicao] == Palavra[posicao]?
	    jne Palavras_Diferentes_Guiana ; Nao sao palavras iguais

	    cmp r6, r0 ; Compara Guiana[posicao] com '\0'
	    jeq Palavras_Iguais_Guiana

	    inc r3 ; posicao++
	    jmp Compara_Loop_Guiana

	Palavras_Diferentes_Guiana:
	        jmp FimGuiana

	Palavras_Iguais_Guiana:
	        ; Incrementa o contador de acertos	
	        
	        loadn r4, #1
			load r5, AcertoGuiana
			cmp r4, r5
			jeq FimGuiana

			load r5, AcertoGuiana
			loadn r5, #1
			store AcertoGuiana, r5	
			
			load r1, Acertos ; Coloca o numero de acertos no r1
			inc r1 ; incrementa r1
			store Acertos, r1 ; atualiza o valor da variavel
	        
	        ; Atualiza o mapa
	        	loadn r2, #512
				loadn r0, #35
				add r0, r2, r0
				loadn r1, #181
				outchar r0, r1
				loadn r1, #182
				outchar r0, r1
				loadn r1, #221
				outchar r0, r1
				loadn r1, #222
				outchar r0, r1
				loadn r1, #261
				outchar r0, r1
				loadn r1, #262
				outchar r0, r1

	        
	        jmp FimGuiana

	FimGuiana:

		pop fr
		pop r0
		pop r1
		pop r2
		pop r3
		pop r4
		pop r5
		pop r6
		pop r7
		rts
;----------------    
comparaGuiana_Francesa:
	push fr        ; Protege o registrador de flags
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7

	loadn r0, #'\0'
	loadn r1, #Guiana_Francesa
	loadn r2, #Palavra
	loadn r3, #0; posicao da letra na palavra

	Compara_Loop_Guiana_Francesa:
	    ; Carregando os registradores
	    add r4, r1, r3 ; r4 = Guiana_Francesa + posicao
	    add r5, r2, r3 ; r5 = Palavra + posicao
	    loadi r6, r4 ; r6 = Guiana_Francesa[posicao]
	    loadi r7, r5 ; r7 = Palavra[posicao]

	    cmp r6, r7 ; Guiana_Francesa[posicao] == Palavra[posicao]?
	    jne Palavras_Diferentes_Guiana_Francesa ; Nao sao palavras iguais

	    cmp r6, r0 ; Compara Guiana_Francesa[posicao] com '\0'
	    jeq Palavras_Iguais_Guiana_Francesa

	    inc r3 ; posicao++
	    jmp Compara_Loop_Guiana_Francesa

	Palavras_Diferentes_Guiana_Francesa:
	    jmp FimGuiana_Francesa

	Palavras_Iguais_Guiana_Francesa:
	    loadn r4, #1
		load r5, AcertoGuiana_Francesa
		cmp r4, r5
		jeq FimGuiana_Francesa

		load r5, AcertoGuiana_Francesa
		loadn r5, #1
		store AcertoGuiana_Francesa, r5
	    
	    ; Incrementa o contador de acertos		
		load r1, Acertos ; Coloca o numero de acertos no r1
		inc r1 ; incrementa r1
		store Acertos, r1 ; atualiza o valor da variavel
		
		; Atualiza o mapa
		loadn r2, #512 ; r2 = 512 / verde
		loadn r0, #35 ; r0 = '#'
		add r0, r2, r0 ; seleciona a cor verde para o char #
	    loadn r1, #185
	    outchar r0, r1
	    loadn r1, #225
	    outchar r0, r1
	    
	    
	    jmp FimGuiana_Francesa

	FimGuiana_Francesa:

	    pop fr
	    pop r0
	    pop r1
	    pop r2
	    pop r3
	    pop r4
	    pop r5
	    pop r6
	    pop r7
	    rts
;----------------    
comparaPeru:
	push fr        ; Protege o registrador de flags
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7

	loadn r0, #'\0'
	loadn r1, #Peru
	loadn r2, #Palavra
	loadn r3, #0; posicao da letra na palavra

	Compara_Loop_Peru:
	    ; Carregando os registradores
	    add r4, r1, r3 ; r4 = Peru + posicao
	    add r5, r2, r3 ; r5 = Palavra + posicao
	    loadi r6, r4 ; r6 = Peru[posicao]
	    loadi r7, r5 ; r7 = Palavra[posicao]

	    cmp r6, r7 ; Peru[posicao] == Palavra[posicao]?
	    jne Palavras_Diferentes_Peru ; Nao sao palavras iguais

	    cmp r6, r0 ; Compara Peru[posicao] com '\0'
	    jeq Palavras_Iguais_Peru

	    inc r3 ; posicao++
	    jmp Compara_Loop_Peru

	Palavras_Diferentes_Peru:
	    jmp FimPeru

	Palavras_Iguais_Peru:
	    loadn r4, #1
		load r5, AcertoPeru
		cmp r4, r5
		jeq FimPeru

		load r5, AcertoPeru
		loadn r5, #1
		store AcertoPeru, r5
	    
	    ; Incrementa o contador de acertos		
		load r1, Acertos ; Coloca o numero de acertos no r1
		inc r1 ; incrementa r1
		store Acertos, r1 ; atualiza o valor da variavel
		
		; Atualiza o mapa
			loadn r2, #512
			loadn r0, #35
			add r0, r2, r0
			loadn r1, #330
			outchar r0, r1
			loadn r1, #331
			outchar r0, r1
			loadn r1, #332
			outchar r0, r1
			loadn r1, #368
			outchar r0, r1
			loadn r1, #369
			outchar r0, r1
			loadn r1, #370
			outchar r0, r1
			loadn r1, #371
			outchar r0, r1
			loadn r1, #372
			outchar r0, r1
			loadn r1, #373
			outchar r0, r1
			loadn r1, #406
			outchar r0, r1
			loadn r1, #407
			outchar r0, r1
			loadn r1, #408
			outchar r0, r1
			loadn r1, #409
			outchar r0, r1
			loadn r1, #410
			outchar r0, r1
			loadn r1, #411
			outchar r0, r1
			loadn r1, #412
			outchar r0, r1
			loadn r1, #446
			outchar r0, r1
			loadn r1, #447
			outchar r0, r1
			loadn r1, #448
			outchar r0, r1
			loadn r1, #449
			outchar r0, r1
			loadn r1, #450
			outchar r0, r1
			loadn r1, #451
			outchar r0, r1
			loadn r1, #486
			outchar r0, r1
			loadn r1, #487
			outchar r0, r1
			loadn r1, #488
			outchar r0, r1
			loadn r1, #489
			outchar r0, r1
			loadn r1, #490
			outchar r0, r1
			loadn r1, #527
			outchar r0, r1
			loadn r1, #528
			outchar r0, r1
			loadn r1, #529
			outchar r0, r1
			loadn r1, #567
			outchar r0, r1
			loadn r1, #568
			outchar r0, r1
			loadn r1, #569
			outchar r0, r1
			loadn r1, #608
			outchar r0, r1
			loadn r1, #609
			outchar r0, r1
			loadn r1, #649
			outchar r0, r1
	    
	    jmp FimPeru

	FimPeru:
		pop fr
	    pop r0
	    pop r1
	    pop r2
	    pop r3
	    pop r4
	    pop r5
	    pop r6
	    pop r7
	    rts
;----------------	    
comparaEquador:
	push fr        ; Protege o registrador de flags
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7

	loadn r0, #'\0'
	loadn r1, #Equador
	loadn r2, #Palavra
	loadn r3, #0; posicao da letra na palavra

	Compara_Loop_Equador:
	    ; Carregando os registradores
	    add r4, r1, r3 ; r4 = Equador + posicao
	    add r5, r2, r3 ; r5 = Palavra + posicao
	    loadi r6, r4 ; r6 = Equador[posicao]
	    loadi r7, r5 ; r7 = Palavra[posicao]

	    cmp r6, r7 ; Equador[posicao] == Palavra[posicao]?
	    jne Palavras_Diferentes_Equador ; Nao sao palavras iguais

	    cmp r6, r0 ; Compara Equador[posicao] com '\0'
	    jeq Palavras_Iguais_Equador

	    inc r3 ; posicao++
	    jmp Compara_Loop_Equador

	Palavras_Diferentes_Equador:
	    jmp FimEquador

	Palavras_Iguais_Equador:
	    loadn r4, #1
		load r5, AcertoEquador
		cmp r4, r5
		jeq FimEquador

		load r5, AcertoEquador
		loadn r5, #1
		store AcertoEquador, r5
		
	    ; Incrementa o contador de acertos		
		load r1, Acertos ; Coloca o numero de acertos no r1
		inc r1 ; incrementa r1
		store Acertos, r1 ; atualiza o valor da variavel
		
		; Atualiza o mapa
			loadn r2, #512
			loadn r0, #35
			add r0, r2, r0
			loadn r1, #286
			outchar r0, r1
			loadn r1, #287
			outchar r0, r1
			loadn r1, #288
			outchar r0, r1
			loadn r1, #289
			outchar r0, r1
			loadn r1, #325
			outchar r0, r1
			loadn r1, #326
			outchar r0, r1
			loadn r1, #327
			outchar r0, r1
			loadn r1, #328
			outchar r0, r1
			loadn r1, #329
			outchar r0, r1
			loadn r1, #366
			outchar r0, r1
			loadn r1, #367
			outchar r0, r1
	    
	    jmp FimEquador

	FimEquador:

		pop fr
		pop r0
		pop r1
		pop r2
		pop r3
		pop r4
		pop r5
		pop r6
		pop r7
		rts
;----------------	    
comparaBolivia:
	push fr        ; Protege o registrador de flags
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7

	loadn r0, #'\0'
	loadn r1, #Bolivia
	loadn r2, #Palavra
	loadn r3, #0; posicao da letra na palavra

	Compara_Loop_Bolivia:
	    ; Carregando os registradores
	    add r4, r1, r3 ; r4 = Bolivia + posicao
	    add r5, r2, r3 ; r5 = Palavra + posicao
	    loadi r6, r4 ; r6 = Bolivia[posicao]
	    loadi r7, r5 ; r7 = Palavra[posicao]

	    cmp r6, r7 ; Bolivia[posicao] == Palavra[posicao]?
	    jne Palavras_Diferentes_Bolivia ; Nao sao palavras iguais

	    cmp r6, r0 ; Compara Bolivia[posicao] com '\0'
	    jeq Palavras_Iguais_Bolivia

	    inc r3 ; posicao++
	    jmp Compara_Loop_Bolivia

	Palavras_Diferentes_Bolivia:
	    jmp FimBolivia

	Palavras_Iguais_Bolivia:
	    loadn r4, #1
		load r5, AcertoBolivia
		cmp r4, r5
		jeq FimBolivia

		load r5, AcertoBolivia
		loadn r5, #1
		store AcertoBolivia, r5
	    
	    ; Incrementa o contador de acertos		
		load r1, Acertos ; Coloca o numero de acertos no r1
		inc r1 ; incrementa r1
		store Acertos, r1 ; atualiza o valor da variavel
		
		; Atualiza o mapa
			loadn r2, #512
			loadn r0, #35
			add r0, r2, r0
			loadn r1, #491
			outchar r0, r1
			loadn r1, #530
			outchar r0, r1
			loadn r1, #531
			outchar r0, r1
			loadn r1, #532
			outchar r0, r1
			loadn r1, #533
			outchar r0, r1
			loadn r1, #570
			outchar r0, r1
			loadn r1, #571
			outchar r0, r1
			loadn r1, #572
			outchar r0, r1
			loadn r1, #573
			outchar r0, r1
			loadn r1, #574
			outchar r0, r1
			loadn r1, #575
			outchar r0, r1
			loadn r1, #576
			outchar r0, r1
			loadn r1, #610
			outchar r0, r1
			loadn r1, #611
			outchar r0, r1
			loadn r1, #612
			outchar r0, r1
			loadn r1, #613
			outchar r0, r1
			loadn r1, #614
			outchar r0, r1
			loadn r1, #615
			outchar r0, r1
			loadn r1, #616
			outchar r0, r1
			loadn r1, #617
			outchar r0, r1
			loadn r1, #650
			outchar r0, r1
			loadn r1, #651
			outchar r0, r1
			loadn r1, #652
			outchar r0, r1
			loadn r1, #653
			outchar r0, r1
			loadn r1, #654
			outchar r0, r1
			loadn r1, #655
			outchar r0, r1
			loadn r1, #656
			outchar r0, r1
			loadn r1, #657
			outchar r0, r1
			loadn r1, #690
			outchar r0, r1
			loadn r1, #691
			outchar r0, r1
			loadn r1, #692
			outchar r0, r1
			loadn r1, #693
			outchar r0, r1
			loadn r1, #694
			outchar r0, r1
			loadn r1, #731
			outchar r0, r1
			loadn r1, #732
			outchar r0, r1
			loadn r1, #733
			outchar r0, r1
			loadn r1, #771
			outchar r0, r1
			loadn r1, #772
			outchar r0, r1
			loadn r1, #811
			outchar r0, r1
			loadn r1, #812
			outchar r0, r1
	    
	    jmp FimBolivia

	FimBolivia:

		pop fr
		pop r0
		pop r1
		pop r2
		pop r3
		pop r4
		pop r5
		pop r6
		pop r7
		rts
;----------------
comparaChile:
	push fr        ; Protege o registrador de flags
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7

	loadn r0, #'\0'
	loadn r1, #Chile
	loadn r2, #Palavra
	loadn r3, #0; posicao da letra na palavra

	Compara_Loop_Chile:
	    ; Carregando os registradores
	    add r4, r1, r3 ; r4 = Chile + posicao
	    add r5, r2, r3 ; r5 = Palavra + posicao
	    loadi r6, r4 ; r6 = Chile[posicao]
	    loadi r7, r5 ; r7 = Palavra[posicao]

	    cmp r6, r7 ; Chile[posicao] == Palavra[posicao]?
	    jne Palavras_Diferentes_Chile ; Nao sao palavras iguais

	    cmp r6, r0 ; Compara Chile[posicao] com '\0'
	    jeq Palavras_Iguais_Chile

	    inc r3 ; posicao++
	    jmp Compara_Loop_Chile

	Palavras_Diferentes_Chile:
	    jmp FimChile

	Palavras_Iguais_Chile:
	    loadn r4, #1
		load r5, AcertoChile
		cmp r4, r5
		jeq FimChile

		load r5, AcertoChile
		loadn r5, #1
		store AcertoChile, r5
		
	    ; Incrementa o contador de acertos		
		load r1, Acertos ; Coloca o numero de acertos no r1
		inc r1 ; incrementa r1
		store Acertos, r1 ; atualiza o valor da variavel
		
		; Atualiza o mapa
			loadn r2, #512
			loadn r0, #35
			add r0, r2, r0
			loadn r1, #689
			outchar r0, r1
			loadn r1, #729
			outchar r0, r1
			loadn r1, #730
			outchar r0, r1
			loadn r1, #769
			outchar r0, r1
			loadn r1, #770
			outchar r0, r1
			loadn r1, #809
			outchar r0, r1
			loadn r1, #810
			outchar r0, r1
			loadn r1, #849
			outchar r0, r1
			loadn r1, #850
			outchar r0, r1
			loadn r1, #851
			outchar r0, r1
			loadn r1, #889
			outchar r0, r1
			loadn r1, #890
			outchar r0, r1
			loadn r1, #891
			outchar r0, r1
			loadn r1, #930
			outchar r0, r1
			loadn r1, #931
			outchar r0, r1
			loadn r1, #970
			outchar r0, r1
			loadn r1, #971
			outchar r0, r1
			loadn r1, #1010
			outchar r0, r1
			loadn r1, #1011
			outchar r0, r1
			loadn r1, #1050
			outchar r0, r1
			loadn r1, #1051
			outchar r0, r1
			loadn r1, #1090
			outchar r0, r1
			loadn r1, #1091
			outchar r0, r1
			loadn r1, #1130
			outchar r0, r1
			loadn r1, #1131
			outchar r0, r1
			loadn r1, #1170
			outchar r0, r1
			loadn r1, #1171
			outchar r0, r1
	    
	    jmp FimChile

	FimChile:

		pop fr
		pop r0
		pop r1
		pop r2
		pop r3
		pop r4
		pop r5
		pop r6
		pop r7
		rts
;----------------		
comparaParaguai:
	push fr        ; Protege o registrador de flags
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7

	loadn r0, #'\0'
	loadn r1, #Paraguai
	loadn r2, #Palavra
	loadn r3, #0; posicao da letra na palavra

	Compara_Loop_Paraguai:
	    ; Carregando os registradores
	    add r4, r1, r3 ; r4 = Paraguai + posicao
	    add r5, r2, r3 ; r5 = Palavra + posicao
	    loadi r6, r4 ; r6 = Paraguai[posicao]
	    loadi r7, r5 ; r7 = Palavra[posicao]

	    cmp r6, r7 ; Paraguai[posicao] == Palavra[posicao]?
	    jne Palavras_Diferentes_Paraguai ; Nao sao palavras iguais

	    cmp r6, r0 ; Compara Paraguai[posicao] com '\0'
	    jeq Palavras_Iguais_Paraguai

	    inc r3 ; posicao++
	    jmp Compara_Loop_Paraguai

	Palavras_Diferentes_Paraguai:
	    jmp FimParaguai

	Palavras_Iguais_Paraguai:
	    loadn r4, #1
		load r5, AcertoParaguai
		cmp r4, r5
		jeq FimParaguai

		load r5, AcertoParaguai
		loadn r5, #1
		store AcertoParaguai, r5
		
	    ; Incrementa o contador de acertos		
		load r1, Acertos ; Coloca o numero de acertos no r1
		inc r1 ; incrementa r1
		store Acertos, r1 ; atualiza o valor da variavel
		
		; Atualiza o mapa
			loadn r2, #512
			loadn r0, #35
			add r0, r2, r0
			loadn r1, #618
			outchar r0, r1
			loadn r1, #619
			outchar r0, r1
			loadn r1, #658
			outchar r0, r1
			loadn r1, #659
			outchar r0, r1
			loadn r1, #660
			outchar r0, r1
			loadn r1, #698
			outchar r0, r1
			loadn r1, #699
			outchar r0, r1
			loadn r1, #700
			outchar r0, r1
			loadn r1, #701
			outchar r0, r1
			loadn r1, #739
			outchar r0, r1
			loadn r1, #740
			outchar r0, r1
			loadn r1, #741
			outchar r0, r1

	    
	    jmp FimParaguai

	FimParaguai:

		pop fr
		pop r0
		pop r1
		pop r2
		pop r3
		pop r4
		pop r5
		pop r6
		pop r7
		rts
;----------------