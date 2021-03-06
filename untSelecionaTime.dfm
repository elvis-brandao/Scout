object frmSelecionaTime: TfrmSelecionaTime
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Selecionar time'
  ClientHeight = 380
  ClientWidth = 582
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object edtFiltro: TLabeledEdit
    Left = 8
    Top = 34
    Width = 555
    Height = 26
    CharCase = ecUpperCase
    EditLabel.Width = 127
    EditLabel.Height = 18
    EditLabel.Caption = 'Filtrar por NOME'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -15
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 75
    ParentFont = False
    TabOrder = 0
    OnChange = edtFiltroChange
  end
  object DBGridTecnicos: TDBGrid
    Left = 8
    Top = 66
    Width = 555
    Height = 257
    DataSource = DM1.dsTime
    GradientEndColor = clMedGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGridTecnicosDblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Cod_Time'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Time'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome_Time'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Time'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 435
        Visible = True
      end>
  end
  object btnSelecionar: TBitBtn
    Left = 8
    Top = 334
    Width = 122
    Height = 36
    Caption = 'Selecionar'
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEF2E6C5D5ADA7BF8293B1668AAB5989AA
      5893B166A6BF81C5D5ADEDF2E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEF3E7AEC58D8AAB5A88A95889AA58
      89AA5889AA5888A95889AA5888A95887A75677934C9CAE81EBEEE5FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2DEBF8DAD5E88A95888
      A95888A95888A95888A95888A95888A95888A95884A455728C496E87466E8746
      748D4EC7D1B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6D6AE89AA
      5988A95889AA5889AA5888A95889AA5889AA5889AA5888A9587F9E517089476E
      88466E88466E87466E88466F8847B8C5A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      D2DEBF89AA5989AA5888A95889AA5889AA5888A95889AA5889AA5888A9577A96
      4E6E88466E87466E88466E88466E87466E88466E88466F8847C7D1B8FFFFFFFF
      FFFFFFFFFFEEF3E78DAD5E88A95888A95888A95888A95888A95888A95888A958
      86A65775904B6E87466E87466E87466E87466E87466E87466E87466E87466E87
      46748D4DEBEEE5FFFFFFFFFFFFAEC58D88A95889AA5889AA5888A95889AA5889
      AA5888A958ADC48CB5C39F768F516E87466E88466E87466E88466E88466E8746
      6E88466E88466E87466E88469CAE81FFFFFFEEF2E68AAB5A88A95889AA5889AA
      5888A95889AA5889AA58B7CB9AFEFEFEFFFFFFDDE3D4758D4F6E88466E87466E
      88466E88466E87466E88466E88466E87466E88466F8947E9EDE3C5D5AD88A958
      88A95888A95888A95888A95888A958B1C690FDFDFCFEFEFEFEFEFEFEFEFED6DD
      CB728B4B6E87466E87466E87466E87466E87466E87466E87466E87466E8746B7
      C4A4A7BF8289AA5888A95889AA5889AA5888A958AAC287FCFDFBFEFEFEFFFFFF
      FEFEFEFFFFFFFEFEFECFD7C27189496E88466E88466E87466E88466E88466E87
      466E88466E884692A57493B16689AA5888A95889AA5889AA58A4BE80FAFBF8FF
      FFFFFEFEFED7E2C7ABC389FBFCFAFEFEFEFFFFFFC6D0B76E88466E88466E8746
      6E88466E88466E87466E88466E88467A92558AAB5989AA5888A95889AA588CAC
      5CF5F8F1FFFFFFFFFFFFDEE7D08BAC5C89AA58B0C690FDFEFDFFFFFFFEFEFEBD
      C9AB6E88466E87466E88466E88466E87466E88466E8946819F5389AA5888A958
      88A95888A9588CAC5DF6F8F2FEFEFEE3EBD88EAD6088A95888A95888A958B7CB
      9AFEFEFEFEFEFEFEFEFEB4C1A06E87466E87466E87466E8746708A4882A15489
      AA5893B16689AA5888A95889AA5889AA589BB773B5CA978EAE6088A95889AA58
      89AA5889AA5888A958BFD0A4FEFEFEFFFFFFFEFEFEABBA946E88466E8846728C
      4984A45589AA5892B065A6BF8188A95888A95888A95888A95888A95888A95888
      A95888A95888A95888A95888A95888A95889AA59C6D6AFFEFEFEFEFEFEFDFDFD
      91A574748E4A86A65788A95888A958A6BF81C5D5AD89AA5888A95889AA5889AA
      5888A95889AA5889AA5888A95889AA5889AA5889AA5888A95889AA5889AA59CE
      DBBAFFFFFFFEFEFEA8BB8C87A85788A95889AA5889AA58C5D5ADEEF3E78AAB5A
      88A95889AA5889AA5888A95889AA5889AA5888A95889AA5889AA5889AA5888A9
      5889AA5888A9588AAA59BACE9EBDCFA18AAA5A89AA5888A95889AA588AAB5AEE
      F3E7FFFFFFAEC48C88A95888A95888A95888A95888A95888A95888A95888A958
      88A95888A95888A95888A95888A95888A95888A95888A95888A95888A95888A9
      5888A958AEC48CFFFFFFFFFFFFEEF3E78DAD5E89AA5889AA5888A95889AA5889
      AA5888A95889AA5889AA5889AA5888A95889AA5888A95889AA5889AA5888A958
      89AA5889AA5888A9588EAE5FEEF3E7FFFFFFFFFFFFFFFFFFD2DEBF89AA5989AA
      5888A95889AA5889AA5888A95889AA5889AA5889AA5888A95889AA5888A95889
      AA5889AA5888A95889AA5889AA5888A958D2DFBFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFC5D5AD88A95888A95888A95888A95888A95888A95888A95888A95888A9
      5888A95888A95888A95888A95888A95888A95888A958C5D5ADFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD2DFBF8DAD5E89AA5889AA5888A95889AA58
      89AA5889AA5888A95889AA5888A95889AA5889AA5888A9588EAE5FD2DFBFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEF3E7AEC58D8A
      AB5A88A95889AA5889AA5889AA5888A95889AA5888A95889AA588AAB5AAEC48C
      EEF3E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFEEF3E7C5D5ADA6BF8192B06589AA5889AA5892B065A6BF81C5
      D5ADEEF3E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    TabOrder = 2
    OnClick = btnSelecionarClick
  end
  object btnFechar: TBitBtn
    Left = 136
    Top = 334
    Width = 121
    Height = 36
    Caption = 'Fechar'
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF995F
      33D7961FDEAE5BEACC97FBF4E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFA86A38D7971FD2901CD2901CD2901CD2901CDFAF5BECD09EF9F1
      E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFDDBEA4C0A28A8C8F958B4D1AD8991FD2901CD2901CD2901CD2901C
      D2901CD2901CD2901CD49527E5BC6FD0AB8FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFB97B45864B1F0B101B6F3702D9991FD2901DD2
      901DD2901DD2901DD2901DD2901DD2901DD2901DD5951DA4581FFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF824E894E200A0F1B743A
      02DA9920D3901ED3901ED3901ED3901ED3901ED3901ED3901ED3901ED6941DA7
      5D23FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FCFFFFFFFFFFFFC38650
      8D5122090F1B783D02DB9921D4911FD4911FD4911FD4911FD4911FD4911FD491
      1FD4911FD7951EAA6125FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1513CDFF
      FFFFFFFFFFCF924E8D5525090F1B7B4102DB9A23D49220D49220D49220D49220
      D49220D49220D49220D49220D7961FAD6528FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF1513CD1B1BE4FFFFFFD89F57925826090E1B804606DC9B25D69522D5
      9423D59423D59423D59423D59423D59423D59423D79722B0682CFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF1513CD242CF81519E8805066A1621F090E198649
      0AD7911FC48727D79623D59525D59525D59525D59525D59525D59525D79924B3
      6B2D1F2CEB1F2CEB222DEB222CEB212CEB212BEB222CEC2532F42331F61925F7
      3624820D110E884B0BEAD095C4CBDCC07917D79929D79728D79728D79728D797
      28D79728D99B27B7702F6D76EF263DF42A3FF42A3FF42A3EF4293DF4293CF427
      3AF32739F32839F5202FF80B098F905106EAC875DEC391D49425D7992CD79A2C
      D79A2CD79A2CD79A2CD79A2CDA9E2CB974316F78EF2A44F42D46F42D45F42C45
      F42C44F42C42F42C42F42B41F4293EF42F48F65C6FFF4F2B7DE8B84DDFAD4DE0
      B054DDA745D99E32D99B2FD99C30D99C31D99C31DCA031BC7833707BF22A45F4
      2C48F42C47F42C46F42C45F42C46F32F48F42C45F43852F595A7FF1B1ACF9658
      19E7BB5AE0B256E0B256E0B357E1B45ADEAC4BD9A036D99F36DAA037DCA437C1
      7D357480F484A0FA849EF9849EF9839CF9849CF98BA0FA2E4BF43D5BF691A7FF
      2620D60B0D119A5E1DE8BC65E2B45DE2B45DE2B45DE2B45DE2B65EE3B45EDFAB
      4BDDA33BDFA73EC480363A3AED4D50EF4B4EEF4A4EEF4A4EEF4B50EF363BEF44
      67F794ACFE6245B7A56B2C070C149E6524E9C16CE4B965E4B965E4B965E4B965
      E4B965E4B965E4BA67E4B660DFAA46C88439FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF292BEF8DA1F92527FAE9B862AB7132060B16A46A27ECC475E6BC6DE6
      BC6DE6BC6DE6BC6DE6BC6DE6BC6DE6BC6DE6BC6FE8C071CA8937FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF2B27F11B17F1FFFFFFE5B15DAB7536060A16AA6F
      2BEDC97BE8C274E8C274E8C274E8C274E8C274E8C274E8C274E8C274EAC679CD
      8C3BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1812F1FFFFFFFFFFFFE0AD66
      AF7838050A15AF752EEFCD84EAC67DEAC67DEAC67DEAC67DEAC67DEAC67DEAC6
      7DEAC67DEDCA83D0903CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFE1B06AB17B3A040A15B27A32F1D18FEDCA86EDCA86EDCA86EDCA86
      EDCA86EDCA86EDCA86EDCA86EFCE8DD3943DFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFE3B46CB37E3B040914B88037F4D797EFD08FEF
      D08FEFD08FEFD08FEFD08FEFD08FEFD08FEFD08FF1D496D6993FFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5B86DB8823E040A14C690
      3FFFE4A9F8DE9FF6DA9CF3D79AF2D799F2D799F2D799F2D799F2D799F4DBA0D8
      9C41FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6BB71
      B7833F04091426211C847458907B5DC8B182F4DCA6FEE8B0FAE4ADF9E2ABF7DF
      A9F6DFA7F7E2AFDBA045FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFE9BD72D09B4870512E75552F6D4F2C6B4D2B6749296245275C4024
      B28B4FBF9655EDCA7BF0D38FF4D99BDFA748FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFE9C175E6B352EAB755EBB855EBB855EBB855EB
      B855EBB855EAB755E8B351E6B150E3AD4EE3AC4DE3AC4DE4B050}
    TabOrder = 3
    OnClick = btnFecharClick
  end
end
