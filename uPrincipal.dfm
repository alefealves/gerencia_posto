object form_principal: Tform_principal
  Left = 0
  Top = 0
  Caption = 'LMC - Livro de Movimentacao de Combust'#237'veis'
  ClientHeight = 933
  ClientWidth = 1042
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 30
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1042
    Height = 933
    ActivePage = tbVolumeVendido
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 1032
    ExplicitHeight = 901
    object tbAbastecimento: TTabSheet
      Caption = 'Abastecimento'
      object Label1: TLabel
        Left = 27
        Top = 108
        Width = 69
        Height = 30
        Caption = 'Bomba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 27
        Top = 259
        Width = 55
        Height = 30
        Caption = 'Litros'
        FocusControl = DBLitros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 27
        Top = 184
        Width = 50
        Height = 30
        Caption = 'Valor'
        FocusControl = DBValor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 27
        Top = 335
        Width = 138
        Height = 30
        Caption = 'Valor Imposto'
        FocusControl = DBImposto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 27
        Top = 407
        Width = 45
        Height = 30
        Caption = 'Data'
        FocusControl = DBData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 240
        Top = 110
        Width = 122
        Height = 30
        Caption = 'Combust'#237'vel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 423
        Top = 110
        Width = 102
        Height = 30
        Caption = 'Valor Litro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 603
        Top = 110
        Width = 129
        Height = 30
        Caption = 'Perc Imposto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBBomba: TDBLookupComboBox
        Left = 27
        Top = 138
        Width = 180
        Height = 38
        DataField = 'CODIGO_BOMBA'
        DataSource = DSAbastecimento
        KeyField = 'CODIGO'
        ListField = 'NOME'
        ListSource = DSBomba
        TabOrder = 0
        OnExit = DBBombaExit
      end
      object DBData: TDBEdit
        Left = 27
        Top = 437
        Width = 120
        Height = 38
        TabStop = False
        DataField = 'DATA'
        DataSource = DSAbastecimento
        ReadOnly = True
        TabOrder = 3
      end
      object DBImposto: TDBEdit
        Left = 27
        Top = 365
        Width = 180
        Height = 38
        TabStop = False
        DataField = 'IMPOSTO'
        DataSource = DSAbastecimento
        ReadOnly = True
        TabOrder = 4
      end
      object DBLitros: TDBEdit
        Left = 27
        Top = 291
        Width = 180
        Height = 38
        DataField = 'LITROS'
        DataSource = DSAbastecimento
        ReadOnly = True
        TabOrder = 1
      end
      object DBValor: TDBEdit
        Left = 27
        Top = 212
        Width = 180
        Height = 38
        Hint = 'decimais separados por v'#237'rgula'
        DataField = 'VALOR'
        DataSource = DSAbastecimento
        MaxLength = 20
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnExit = DBValorExit
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1026
        Height = 80
        Align = alTop
        TabOrder = 5
        VerticalAlignment = taAlignTop
        object btNovo: TButton
          Left = 27
          Top = 16
          Width = 122
          Height = 49
          Caption = 'Novo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btNovoClick
        end
        object btSalvar: TButton
          Left = 171
          Top = 16
          Width = 122
          Height = 49
          Caption = 'Salvar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btSalvarClick
        end
        object btEditar: TButton
          Left = 315
          Top = 16
          Width = 122
          Height = 49
          Caption = 'Editar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btEditarClick
        end
        object btExcluir: TButton
          Left = 459
          Top = 16
          Width = 122
          Height = 49
          Caption = 'Excluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = btExcluirClick
        end
        object btCancelar: TButton
          Left = 603
          Top = 16
          Width = 122
          Height = 49
          Caption = 'Cancelar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = btCancelarClick
        end
      end
      object edCombustivel: TEdit
        Left = 240
        Top = 138
        Width = 150
        Height = 38
        TabStop = False
        ReadOnly = True
        TabOrder = 6
      end
      object edValorLitro: TEdit
        Left = 423
        Top = 138
        Width = 150
        Height = 38
        TabStop = False
        ReadOnly = True
        TabOrder = 7
      end
      object edPercImposto: TEdit
        Left = 603
        Top = 138
        Width = 150
        Height = 38
        TabStop = False
        ReadOnly = True
        TabOrder = 8
      end
      object Panel2: TPanel
        Left = 0
        Top = 489
        Width = 1026
        Height = 386
        Align = alBottom
        ParentBackground = False
        TabOrder = 9
        object DBGridAbastecimento: TDBGrid
          Left = 1
          Top = 101
          Width = 1024
          Height = 284
          TabStop = False
          Align = alClient
          DataSource = DSAbastecimento
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -21
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Caption = 'Codigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGO_BOMBA'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'LITROS'
              Title.Caption = 'Litros'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Title.Caption = 'Valor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPOSTO'
              Title.Caption = 'Imposto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA'
              Title.Caption = 'Data'
              Visible = True
            end>
        end
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 1024
          Height = 100
          Align = alTop
          Color = clGray
          ParentBackground = False
          TabOrder = 1
          object Label9: TLabel
            Left = 26
            Top = 10
            Width = 110
            Height = 30
            Caption = 'Data Inicial'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 202
            Top = 10
            Width = 87
            Height = 30
            Caption = 'Data Fim'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 378
            Top = 10
            Width = 69
            Height = 30
            Caption = 'Bomba'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btPesquisar: TButton
            Left = 562
            Top = 32
            Width = 122
            Height = 49
            Caption = 'Pesquisar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            OnClick = btPesquisarClick
          end
          object dtInicial: TDateTimePicker
            Left = 26
            Top = 38
            Width = 151
            Height = 38
            Date = 45334.000000000000000000
            Time = 0.000000000007275958
            TabOrder = 0
          end
          object dtFim: TDateTimePicker
            Left = 202
            Top = 38
            Width = 151
            Height = 38
            Date = 45334.000000000000000000
            Time = 0.000000000007275958
            TabOrder = 1
          end
          object codBomba: TDBLookupComboBox
            Left = 378
            Top = 38
            Width = 145
            Height = 38
            DragCursor = crHandPoint
            KeyField = 'CODIGO'
            ListField = 'NOME'
            ListSource = dsBombaSearch
            TabOrder = 2
          end
        end
      end
    end
    object tbVolumeVendido: TTabSheet
      Caption = 'Volume Vendido'
      ImageIndex = 1
      OnShow = tbVolumeVendidoShow
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1026
        Height = 80
        Align = alTop
        Color = clGray
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 1016
        object Label12: TLabel
          Left = 26
          Top = 8
          Width = 110
          Height = 30
          Caption = 'Data Inicial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 202
          Top = 8
          Width = 87
          Height = 30
          Caption = 'Data Fim'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 768
          Top = 8
          Width = 130
          Height = 30
          Caption = 'Total Per'#237'odo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btPesqVolu: TButton
          Left = 394
          Top = 25
          Width = 122
          Height = 49
          Caption = 'Pesquisar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btPesqVoluClick
        end
        object volDatIni: TDateTimePicker
          Left = 26
          Top = 36
          Width = 151
          Height = 38
          Date = 45334.000000000000000000
          Time = 0.000000000007275958
          TabOrder = 0
        end
        object volDatFim: TDateTimePicker
          Left = 202
          Top = 36
          Width = 151
          Height = 38
          Date = 45334.000000000000000000
          Time = 0.000000000007275958
          TabOrder = 1
        end
        object btExportar: TButton
          Left = 546
          Top = 25
          Width = 122
          Height = 49
          Caption = 'Exportar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = btExportarClick
        end
        object DBTotalPeriodo: TDBEdit
          Left = 768
          Top = 36
          Width = 140
          Height = 38
          DataField = 'TOTAL'
          DataSource = form_dados.dsDSRelatorioSum
          ReadOnly = True
          TabOrder = 4
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 80
        Width = 1026
        Height = 795
        Align = alClient
        DataSource = DSRelatorio
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -21
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TANQUE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BOMBA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Visible = True
          end>
      end
      object DrawGrid1: TDrawGrid
        Left = 1024
        Top = 840
        Width = 320
        Height = 120
        TabOrder = 2
      end
    end
  end
  object qryCombustivel: TFDQuery
    Connection = form_dados.FDConnection1
    Left = 960
    Top = 484
  end
  object qryBombaSearch: TFDQuery
    Connection = form_dados.FDConnection1
    SQL.Strings = (
      'select codigo,nome from bomba order by 1;')
    Left = 764
    Top = 540
    object qryBombaSearchCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryBombaSearchNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 10
    end
  end
  object dsBombaSearch: TDataSource
    DataSet = qryBombaSearch
    Left = 885
    Top = 536
  end
  object FDAbastecimento: TFDQuery
    Connection = form_dados.FDConnection1
    SQL.Strings = (
      'select * from abastecimento order by 1;')
    Left = 814
    Top = 344
    object FDAbastecimentoCODIGO: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDAbastecimentoCODIGO_BOMBA: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CODIGO_BOMBA'
      Origin = 'CODIGO_BOMBA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDAbastecimentoDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDAbastecimentoLITROS: TBCDField
      Alignment = taLeftJustify
      FieldName = 'LITROS'
      Origin = 'LITROS'
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
      Precision = 18
    end
    object FDAbastecimentoVALOR: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
      Precision = 18
    end
    object FDAbastecimentoIMPOSTO: TBCDField
      Alignment = taLeftJustify
      FieldName = 'IMPOSTO'
      Origin = 'IMPOSTO'
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
      Precision = 18
    end
  end
  object DSAbastecimento: TDataSource
    DataSet = FDAbastecimento
    OnDataChange = DSAbastecimentoDataChange
    Left = 886
    Top = 344
  end
  object DSBomba: TDataSource
    DataSet = FDBomba
    Left = 814
    Top = 440
  end
  object FDBomba: TFDQuery
    Connection = form_dados.FDConnection1
    SQL.Strings = (
      'select * from bomba order by 1;')
    Left = 894
    Top = 432
    object FDBombaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDBombaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 10
    end
    object FDBombaCODIGO_TANQUE: TIntegerField
      FieldName = 'CODIGO_TANQUE'
      Origin = 'CODIGO_TANQUE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDBombaCODIGO_COMBUSTIVEL: TIntegerField
      FieldName = 'CODIGO_COMBUSTIVEL'
      Origin = 'CODIGO_COMBUSTIVEL'
    end
  end
  object FDRelatorio: TFDQuery
    Connection = form_dados.FDConnection1
    SQL.Strings = (
      'select * from volume_vendido'
      'where ((cast(dia as date) >= :dat_ini) '
      'and (cast(dia as date) <= :dat_fim));'
      '')
    Left = 806
    Top = 272
    ParamData = <
      item
        Name = 'DAT_INI'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end
      item
        Name = 'DAT_FIM'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
    object FDRelatorioDIA: TDateField
      DisplayLabel = 'Dia'
      FieldName = 'DIA'
      Origin = 'DIA'
    end
    object FDRelatorioTANQUE: TStringField
      DisplayLabel = 'Tanque'
      FieldName = 'TANQUE'
      Origin = 'TANQUE'
      Size = 10
    end
    object FDRelatorioBOMBA: TStringField
      DisplayLabel = 'Bomba'
      FieldName = 'BOMBA'
      Origin = 'BOMBA'
      Size = 10
    end
    object FDRelatorioVALOR: TBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
      Precision = 18
    end
  end
  object DSRelatorio: TDataSource
    DataSet = FDRelatorio
    OnDataChange = DSAbastecimentoDataChange
    Left = 878
    Top = 272
  end
end
