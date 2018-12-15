unit arTypes;

interface

const
  SUB_PROG_PAIS = 'Pais';
  SUB_PROG_ESTADO = 'Estado';
  SUB_PROG_CIDADE = 'Cidade';
  SUB_PROG_BAIRRO = 'Bairro';

type
  TarItemOrientation = (ioHorizontal, ioVertical, ioHFliped, ioVFliped);

  TarButtonKind = (bkCustom, bkEllipsis, bkPerson, bkUnlink);
  TarCustomComboButtonKind = bkEllipsis..bkPerson;

  TarSQLDialect = (sdANSI, sdInterbase, sdMSSQL, sdOracle);

  TCondition = (tcIgual, tcDiferente, tcMenor, tcMaior, tcMenorIgual,
    tcMaiorIgual, tcNulo, tcNaoNulo, tcContem, tcEntre, tcIniciaCom,
    tcTerminaCom);

  TFieldType = (tcInteger, tcString, tcDate, tcFloat, tcTime, tcMemo, tcDateTime);

  TarTipoPessoa = (tpAmbos, tpFisica, tpJuridica);

  TarPapel = (paQualquer = 0,
    paEmpresa = 1,
    paUnidade = 2,
    paUsuario = 3,
    paConjuge = 4,
    paResponsavelPessoaJuridica = 5,
    paPai = 6,
    paMae = 7,
    paInstituicaoEnsino = 8,
    paContador = 9);

  TarCadState = (csNone, csInsert, csEdit, csDelete, csView, csPrint, csSearch);

  TarParcelaLayout = (plAuto, plSemester, plYear);
  TarParcelaLimitRange = (prNone, prFirst, prLast);
  TarMesAnoLayout = plSemester..plYear;

  TarTimeType = (ttHour, ttHourMin, ttHourMinSec);

  TarCondition = tcIgual..tcTerminaCom;
  TarDefaultCondition = tcIgual..tcNaoNulo;
  TarMemoDefaultCondition = tcNulo..tcContem;

  TarFieldType = tcInteger..tcDateTime;

  TarNumberKind = (nkInteger, nkFloat, nkCurrency);

  TarAddressType = (atRua, atAvenida, atTravessa, atPraca, atParque,
    atRodovia, atOutro);

  TarAddressCEP = record
    LongType, ShortType, Address, State, LongState: string;
    City, CEP, StartDistrict, EndDistrict: string;
    StateCode, CityCode: Integer;
  end;

  TarReturnAddress = (raAddressOnly, raFullType, raShotType);

  TarTipoGeradorRelatorio = (grSEC_RelAlunosPorTurma = 1,
    grLOC_Locador = 2,
    grCIM_PosicaoGeral = 3,
    grRGF_Teste = 4,
    grLOC_RelAdministradora = 5,
    grCAI_RelBoletimCaixa = 6,
    grCTB_RelDotacao = 7,
    grLOC_RelAdministradoraEdificio = 8,
    grLOC_RelSeguradora = 9,
    grLOC_CorrespondenciaLocador = 10,
    grLOC_CorrespondenciaLocatario = 11,
    grLOC_RelFiador = 12,
    grSEC_RelDiarioClasse = 13,
    grSEC_RelAtaFinal = 14,
    grSEC_RelExtratoNotas = 15,
    grSEC_RelHistoricoDisciplina = 16,
    grBSE_CabecalhoPadrao = 17,
    grACD_RelCadastralAluno = 18,
    grCAI_RelMovimento = 19,
    grTES_RelInadimplentes = 20,
    grSEC_RelBoletim = 21,
    grTES_EmissaoRecibo = 22,
    grLOC_RelIPTU = 23,
    grLOC_RelLocatario = 24,
    grLOC_RelLocador = 25,
    grLOC_RelSeguroFianca = 26,
    grLOC_RelSeguroIncendio = 27,
    grLOC_RelLancamentoDespesa = 28,
    grCTB_RelComparativoReceitaDespesa = 29,
    grLOC_RelContrato = 30,
    grTES_RelAlunosPorEvento = 31,
    grSEC_RelDiploma = 32,
    grLOC_RelRendimentoLocador = 33,
    grSEC_RelRequerimentoMatricula = 34,
    grSIG_RelProjetoEstrategico = 35,
    grCIM_RelLicencasPagamentos = 36,
    grSIG_RelAtividadeEstrategica = 37,
    grCIM_RelImoveisLicencas = 38,
    grTES_RelacaoGratuidade = 39,
    grHOR_RelDisciplinaAndamento = 40,
    grSEC_ExtratoMatricula = 41,
    grTES_GeracaoBloquetos = 42,
    grSEC_RelEstatisticaAvaliacoes = 43,
    grSEC_RelLogMatricula = 44,
    grTES_RelLogParcela = 45,
    grLOC_RelAtrasado = 46,
    grFIN_RelPosicaoFinanceiro = 47,
    grLOC_RelReciboLocador = 48,
    grTES_RelContratoAluno = 49,
    grHOR_RelContratoProfessor = 50,
    grTES_ContratoAluno = 51,
    grFIN_RelPreparacaoRemessaCred = 52,
    grCTB_RelDemonstrativo = 53,
    grTES_Retorno = 54,
    grFIN_RelFornecedorContrato = 55,
    grHOR_ListagemRemessaProfessor = 56,
    grFIN_RelGeracaoRemessaCred = 57,
    grPAT_RelBem = 58,
    grHOR_RelCargaHorariaContratual = 59,
    grPAT_RelBalanceteSENAC = 60,
    grFIN_RelDiarioContabil = 61,
    grDOC_Glossario = 62,
    grLOC_EmissaoReciboLocatario = 63,
    grSIG_RelPlanejamentoEstrategico = 64,
    grPAT_RelLoteBem = 65,
    grTES_EmissaoReciboNegociacao = 66,
    grTES_AjustaNumeroControle = 67,
    grPRT_Protocolo = 68,
    grTES_RelFinanceiroParcelas = 69,
    grSEC_RelProjecaoFormando = 70,
    grLOC_RelPosicaoData = 71);

  TarDBOperation = (dopInsert, dopDelete, dopEdit, dopPost, dopCancel);

implementation

end.
