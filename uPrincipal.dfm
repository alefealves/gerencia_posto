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
    ActivePage = tbAbastecimento
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 1022
    ExplicitHeight = 869
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
        KeyField = 'CODIGO'
        ListField = 'NOME'
        TabOrder = 0
      end
      object DBData: TDBEdit
        Left = 27
        Top = 437
        Width = 130
        Height = 38
        TabStop = False
        DataField = 'DATA'
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
        ReadOnly = True
        TabOrder = 4
      end
      object DBLitros: TDBEdit
        Left = 27
        Top = 291
        Width = 180
        Height = 38
        DataField = 'LITROS'
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
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnExit = DBValorExit
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1018
        Height = 80
        Align = alTop
        TabOrder = 5
        VerticalAlignment = taAlignTop
        ExplicitWidth = 998
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
        Top = 476
        Width = 1018
        Height = 386
        Align = alBottom
        ParentBackground = False
        TabOrder = 9
        ExplicitTop = 412
        ExplicitWidth = 998
        object DBGridAbastecimento: TDBGrid
          Left = 1
          Top = 101
          Width = 1016
          Height = 284
          TabStop = False
          Align = alClient
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
          Width = 1016
          Height = 100
          Align = alTop
          Color = clGray
          ParentBackground = False
          TabOrder = 1
          ExplicitWidth = 996
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
    end
  end
  object qryCombustivel: TFDQuery
    Connection = form_dados.FDConnection1
    Left = 936
    Top = 468
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
      'select * from abastecimento')
    Left = 814
    Top = 344
    object FDAbastecimentoCODIGO: TIntegerField
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
      OnChange = FDAbastecimentoCODIGO_BOMBAChange
    end
    object FDAbastecimentoLITROS: TSingleField
      Alignment = taLeftJustify
      FieldName = 'LITROS'
      Origin = 'LITROS'
    end
    object FDAbastecimentoVALOR: TSingleField
      Alignment = taLeftJustify
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object FDAbastecimentoIMPOSTO: TSingleField
      Alignment = taLeftJustify
      FieldName = 'IMPOSTO'
      Origin = 'IMPOSTO'
    end
    object FDAbastecimentoDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
  end
  object DSAbastecimento: TDataSource
    DataSet = FDAbastecimento
    Left = 886
    Top = 344
  end
  object DSBomba: TDataSource
    DataSet = FDBomba
    Left = 830
    Top = 448
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
end
