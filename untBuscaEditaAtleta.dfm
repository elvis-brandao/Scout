object frmBuscaEditaAtleta: TfrmBuscaEditaAtleta
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Visualizar/Editar Atletas'
  ClientHeight = 244
  ClientWidth = 627
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 208
    Top = 138
    Width = 127
    Height = 18
    Caption = 'Data Nascimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 500
    Top = 8
    Width = 36
    Height = 19
    Caption = 'Foto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 364
    Height = 65
    Caption = ' Navegar entre Registros '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 5
      Top = 25
      Width = 215
      Height = 34
      DataSource = DM1.dsAtleta
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      Hints.Strings = (
        'Primeiro'
        'Anterior'
        'Pr'#243'ximo'
        'Ultimo'
        'Insert record'
        'Delete record'
        'Edit record'
        'Post edit'
        'Cancel edit'
        'Refresh'
        'Apply updates'
        'Cancel updates')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = DBNavigator1Click
    end
    object btnBuscarAtleta: TBitBtn
      Left = 226
      Top = 24
      Width = 133
      Height = 35
      Caption = 'Buscar Atleta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F6F6EBEBEBE4E4E4E7E7E7F2
        F2F2FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3CECECEA8A8A89494948D8D8D9090909E
        9E9EC2C2C2EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF1F1F1B3B3B38787877A7A7A5E5E5E5D5D5D61616155
        5555626262A9A9A9F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFEFAFAFAF7F7F7F7F7F7FBFBFBFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFEFEFED1D1D18B8B8B6A6A6A4F4F4F6B65618E735F99796092
        78676E6967555555B5B5B5FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FDFDFDECECECD2D2D2BDBDBDB1B1B1B2B2B2C1C1C1DFDFDFF9F9F9FFFFFFFFFF
        FFFFFFFFFFFFFFFEFEFECDCDCD7878783F3F3E7A583FD3A35EE5C977E6CD79E0
        C06EC8935085654E585858F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD
        DFDFDFACACAC9696969090908E8E8E8F8F8F9191919F9F9FCCCCCCF8F8F8FFFF
        FFFFFFFFFCFCFCF7F7F7DDDDDD545454624735DEB970E9D87EE8D77CE5D478E3
        D074DFC96DD19F52604B3FB4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3
        B5B5B59090907676766464645B5B5B5D5D5D747474929292A3A3A3DDDDDDFAFA
        FAD9D9D9AAAAAA8B8B8B7E7E7E3C3C3BB48659E8D895E7D892E3D180DFCA74DE
        C874E1CD84E6D2A4785843737373FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFECECEC
        8686864F4F4F6363637474747F7E7E7B7A7A717171575757979797BABABAC3C3
        C35050505858589C9C9CB4B4B44D4D4CC99A6DE8DAA5E9DCABEADDB0EBDEB6EC
        E0BBEDE1C0D1B798413B363A3A3AD1D1D1FEFEFEFFFFFFFFFFFFFFFFFFC5C5C5
        404040524E4C8F6B4EC19159D6A45DD5A15AB6844E9378665D5D5DA5A5A55959
        598C8C8CE0E0E0BBBBBB929292464646835C43E3C9A2ECDFBDEDE2C3EEE4C8EF
        E5CCC7B8A25C554E363635272726474747E6E6E6FFFFFFFFFFFFFFFFFF6A6A6A
        403834B8844CE5CA77E9D97FE8D87EE6D579E2CC72D3A4566D5E529797974242
        426E6E6E5454544040406464647373732D2D2D5B493B907B67A39482988E8078
        71686262615C5C5C3D3D3C2A2A29222222646464DADADAFEFEFEFBFBFB454545
        926947E5CF85E6D57EE3CF73E0CB6FDEC86ADFCB78DFC87F7C6544666666A7A7
        A7828282C9C9C9FEFEFEFFFFFFFDFDFD4343432D2D2C3C3C3B4E4E4E63636271
        71717575756464644545442B2B2A626262464646515151F6F6F6FBFBFB393939
        CBA173E7D89AE8D99FE6D79DE5D69CE7D9A8EADDB5DCC28060513E393939B8B8
        B8C6C6C6E9E9E9F9F9F9FBFBFBFDFDFD8A8A8A2929293636354949485E5E5D6E
        6E6E7676766A6A6A4D4D4C2F2F2E444444A2A2A2484848F3F3F3FEFEFE555555
        B99474E8D9ABE9DCB2EADEB7ECE0BDEDE2C2E9DAB59C7F474A44412E2E2E9090
        90C7C7C7CFCFCFD5D5D5D7D7D7DADADAB5B5B52828273131304343425858576A
        6A6A7575756F6F6F5555553636356B6B6BAFAFAF5A5A5AFCFCFCFFFFFFB4B4B4
        654B3BD9B489ECE0C1EEE4CAEEE4CBE0C99B9B7D465F57524F4F4F3535355353
        53CCCCCCC4C4C4A6A6A69494948181818D8D8D4242412D2D2C3D3D3C51515165
        65657373727373735D5D5D3D3D3C4D4D4D5E5E5EBCBCBCFFFFFFFFFFFFFFFFFF
        6564644B3E3382613C96754788683A6B5C476A68686C6C6C5656563D3D3D2C2C
        2CBCBCBC999999565656979797BCBCBCBFBFBF8080802929283737364B4B4A60
        605F70707074747464646444444440403FBCBCBCFCFCFCFFFFFFFFFFFFFFFFFF
        E8E8E82D2D2D2E2E2E4444445858586C6C6C7676767070705E5E5E4444442D2D
        2D7A7A7A717171ADADADBABABA7171714F4F4F5555552A2A2A3131304444435A
        5A596C6C6C7474746A6A6A4C4C4C3C3C3BE1E1E1FEFEFEFFFFFFFFFFFFFFFFFF
        FFFFFFA9A9A92525253B3B3B5151516464647575757474746464644C4C4C3333
        333E3E3EA5A5A5626262656565828282C6C6C67777772B2B2A2D2D2B3D3D3D53
        53526767677373726E6E6E545453303030939393FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFEFE5E5E5E3131314848485C5C5C7171717575756A6A6A5454543B3B
        3B272727777777353535616161E7E7E73C3C3C2020202222222929283737364C
        4C4B6161616F6F6F6F6F6F4C4C4C363636707070FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE4E4E43534343E3E3E5454546A6A6A7474746E6E6E5B5B5B4242
        422B2B2B2323232525253737377373734242422F2F2F32323234343437373743
        43435454545A5A5A4C4C4C434343464646626262FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFA4A4A43434344A4A4A6161617272727171716161614949
        493333333232323535354B4B4B3E3E3E4545453F3F3F41414144444446464649
        49494C4C4C4F4F4F5252525858584747472E2E2EFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFE5B5B5B4040405656566C6C6C7171716666664D4D
        4D3F3F3F4242424444444848485252525050504F4F4F5A5A5A6363636969696C
        6C6C6B6B6B676767595959343434030303222222FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF7474743F3E3E4C4C4C6060606363635555554D4D
        4D5050505353536161616363636767675454545858583939394F4F4F5E5E5E65
        65655252523737372626261515150606067B7B7BFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFCCCCCC5757575454545757575B5B5B5F5F5F6363
        636B6B6B6D6D6D3C3C3C3B3B3B4F4F4F5252523838382828284747476F6F6F6C
        6C6C5959593E3E3E2B2B2B2121211D1D1D9B9B9BFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9898985D5D5D7979797A7A7A7E7E7E7A7A
        7A7171715858584242422929294A4A4A5252523F3F3F2B2B2B818181FFFFFFFF
        FFFFF5F5F56F6F6F4B4B4B3F3F3F2B2B2BB0B0B0FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB3D3D3D1D1D1D3434343B3B3B5656
        566666665C5C5C4C4C4C3131314040405E5E5E676767C6C6C6FBFBFBFFFFFFFF
        FFFFFFFFFFD5D5D56B6B6B626262949494FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E14141412323233434344E4E
        4E6464645C5C5CC0C0C0F8F8F8DBDBDBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE6262623939394949
        495D5D5D474747E0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E24D4D4D4848
        48565656878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6DADA
        DAEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = btnBuscarAtletaClick
    end
  end
  object btnFechar: TBitBtn
    Left = 357
    Top = 200
    Width = 105
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
    TabOrder = 1
    OnClick = btnFecharClick
  end
  object btnConfirmar: TBitBtn
    Left = 135
    Top = 200
    Width = 105
    Height = 36
    Caption = 'Salvar'
    Enabled = False
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FF7F2B287F2B287F2B287F2B28A18283A18283A18283A18283
      A18283A18283A18283A18283A18283A18283A182837F2B287F2B287F2B287F2B
      28FF00FFFF00FFFF00FFFF00FF7F2B28B04E4CC24A4ABA4A49B441418B5959E2
      D9D9C9BDBDC4AFADE2CFCCF3EBE7F3EDEAE5DEDEDAE0DEDAE0DEB165647A1817
      822121A53939AD44457F2B28FF00FFFF00FFFF00FF7F2B28B4514FC24A4AC24E
      4EBB45468B3C3DE2D9D9791617791617AC4E4CF4E7E3FFFFFCFAF6F2EFF6F3EF
      F6F3B16564791515822020A93A3AB448487F2B28FF00FFFF00FFFF00FF7F2B28
      B2504EC24A4AC04D4DB844448C4040E2D9D9791617791617B25350E3D5D3FAF8
      F4FEF8F4FCFFFBFCFFFFB16564791515822020A73A3AB247477F2B28FF00FFFF
      00FFFF00FF7F2B28B2504EC24A4AC04D4DB743438F4141E2D9D9791617791617
      B25350CFC0BFEBEAE7FAF4F2FFFFFFFCFFFFB16564791515822020A73A3AB247
      477F2B28FF00FFFF00FFFF00FF7F2B28B2504EC24A4AC04D4DB74343914241E2
      D9D9791617791617B25350B0A09FD4D4D1EEE7E3FFFFFFFCFFFFB16564781414
      832020A73A3AB247477F2B28FF00FFFF00FFFF00FF7F2B28B2504EC24A4AC04D
      4DB54242934343E2D9D9791617791617B253508C8382A7AFADD3D4D0FCFFFFFC
      FFFFB16564741111801E1EA63939B247477F2B28FF00FFFF00FFFF00FF7F2B28
      B2504EC24A4ABF4C4CB744449C4141E2D9D9E2D9D9E2D9D9E2D9D9E2D9D9E2D9
      D9E2D9D9E2D9D9E2D9D9B16564831C1C8C2727AB3D3DB246477F2B28FF00FFFF
      00FFFF00FF7F2B28B2514EC24A4ABF4B4BBD4A49B74646BF5B5BCE7777D07B7B
      CC7475CE6E6FCB6C6CC76868C46868C05A5AB64443B44141B64343BD4949B145
      467F2B28FF00FFFF00FFFF00FF7F2B28C24A4AC24A4AB24443B74B49BC5151BB
      504FBB4D4CBB4D4DBB4D4DBB4D4DBB4D4CBB4D4CBA4C4BBB504FC05857C15B5A
      C15757C14E4EB044457F2B28FF00FFFF00FFFF00FF7F2B28C24A4AC24A4ACA8C
      8ACA8C8ACB8F8CCC908ECC908ECC908ECC908ECC908ECC908ECC908FCC908FCC
      908FCC908ECC918FCB908EC05555C24A4A7F2B28FF00FFFF00FFFF00FF7F2B28
      C24A4AC24A4AD7B4B1FEFCFCFEFCFCFFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFE
      FEFFFEFEFFFEFEFFFEFEFEFCFCFCFBFBDDB7B6B54B4BC24A4A7F2B28FF00FFFF
      00FFFF00FF7F2B28C24A4AC24A4AD9B8B6FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDDB7B7B44948C24A
      4A7F2B28FF00FFFF00FFFF00FF7F2B28C24A4AC24A4AD9B6B4FEFEFEFEFEFEBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFEFEFEFEFEFE
      DDB7B6B44948C24A4A7F2B28FF00FFFF00FFFF00FF7F2B28C24A4AC24A4AD9B6
      B4FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEDDB7B6B44948C24A4A7F2B28FF00FFFF00FFFF00FF7F2B28
      C24A4AC24A4AD9B6B4FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDDB7B6B44948C24A4A7F2B28FF00FFFF
      00FFFF00FF7F2B28C24A4AC24A4AD9B6B4FEFEFEFEFEFEBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFEFEFEFEFEFEDDB7B6B44948C24A
      4A7F2B28FF00FFFF00FFFF00FF7F2B28C24A4AC24A4AD9B6B4FEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      DDB7B6B44948C24A4A7F2B28FF00FFFF00FFFF00FF7F2B28C24A4AC24A4AD9B6
      B4FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEDDB7B6B44948C24A4A7F2B28FF00FFFF00FFFF00FF7F2B28
      C24A4AC24A4AD9B7B5FEFEFEFEFEFEBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFFEFEFEFEFEFEDDB7B6B54A4AC24A4A7F2B28FF00FFFF
      00FFFF00FF7F2B28C24A4AC24A4AD3B1AFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDDB8B6C24A4AC24A
      4A7F2B28FF00FFFF00FFFF00FFFF00FF7F2B287F2B28C1A09EFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      E0BAB77F2B287F2B28FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    TabOrder = 2
    OnClick = btnConfirmarClick
  end
  object btnEditar: TBitBtn
    Left = 8
    Top = 200
    Width = 121
    Height = 36
    Caption = 'Editar Atleta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000C40E0000C40E00000000000000000000FF00FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      00FFFFFFFFFFFFFF404040404040404040404040404040404040404040404040
      4040404040404040404040404040404040404040404040404040404040404040
      40404040FFFFFFFFFFFFFFFFFFC0C0C0CDD4D8CDD4D8CDD4D8CDD4D8CDD4D8CD
      D4D8CDD4D8CDD4D8CDD4D8CDD4D8CDD4D8CDD4D8CDD4D8CDD4D8CDD4D8CDD4D8
      CDD4D8CDD4D8CDD4D8CDD4D8404040FFFFFFFFFFFFC0C0C0CFD6DACFD6DACFD6
      DACFD6DACFD6DACFD6DACFD6DACFD6DACFD6DACFD6DACFD6DACFD6DACFD6DACF
      D6DACFD6DACFD6DACFD6DACFD6DACFD6DACFD6DA404040FFFFFFFFFFFFC0C0C0
      D2D8DBD2D8DBD2D8DBD2D8DBD2D8DBD2D8DBD2D8DBD2D8DBD2D8DBD2D8DBD2D8
      DBD2D8DBD2D8DBD2D8DBD2D8DBD2D8DBD2D8DBD2D8DBD2D8DBD2D8DB404040FF
      FFFFFFFFFFC0C0C0D4DADDD4DADDD4DADDD4DADDD4DADDD4DADD000000000000
      000000000000000000000000000000000000D4DADDD4DADDD4DADDD4DADDD4DA
      DDD4DADD404040FFFFFFFFFFFFC0C0C0D6DCDFD6DCDFD6DCDFD6DCDFD6DCDF00
      0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000D6DCDFD6DCDF
      D6DCDFD6DCDFD6DCDFD6DCDF404040FFFFFFFFFFFFC0C0C0D9DEE1D9DEE1D9DE
      E1D9DEE1000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000D9DEE1D9DEE1D9DEE1D9DEE1D9DEE1D9DEE1404040FFFFFFFFFFFFC0C0C0
      DBE0E3DBE0E3DBE0E3000000FFFFFFFFFFFF000000FFFFFF0000000000000000
      00FFFFFFFFFFFF000000DBE0E3DBE0E3DBE0E3DBE0E3DBE0E3DBE0E3404040FF
      FFFFFFFFFFC0C0C0DEE2E5DEE2E5DEE2E5000000000000000000FFFFFFFFFFFF
      000000697374C1C1C1000000FFFFFF000000DEE2E5DEE2E5DEE2E5DEE2E5DEE2
      E5DEE2E5404040FFFFFFFFFFFFC0C0C0E0E4E7E0E4E7E0E4E7000000FFFFFFFF
      FFFFFFFFFFFFFFFF000000C1C1C1346AC8346AC8000000000000E0E4E7E0E4E7
      E0E4E7E0E4E7E0E4E7E0E4E7404040FFFFFFFFFFFFC0C0C0E2E6E9E2E6E9E2E6
      E9000000FFFFFF00000000000000000000000000000094D6FF346AC8346AC800
      0000E2E6E9E2E6E9E2E6E9E2E6E9E2E6E9E2E6E9404040FFFFFFFFFFFFC0C0C0
      E5E9EAE5E9EAE5E9EA000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0094D6FF346AC8346AC8000000E5E9EAE5E9EAE5E9EAE5E9EAE5E9EA404040FF
      FFFFFFFFFFC0C0C0E7EBECE7EBECE7EBEC000000FFFFFF000000000000000000
      00000000000000000000000094D6FF627B29627B29000000E7EBECE7EBECE7EB
      ECE7EBEC404040FFFFFFFFFFFFC0C0C0E9EDEEE9EDEEE9EDEE000000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000627B29346AC8346AC8
      000000E9EDEEE9EDEEE9EDEE404040FFFFFFFFFFFFC0C0C0ECEFF0ECEFF0ECEF
      F0000000FFFFFF000000000000000000000000000000000000000000FFFFFF00
      0000346AC8346AC8000000ECEFF0ECEFF0ECEFF0404040FFFFFFFFFFFFC0C0C0
      EEF1F2EEF1F2EEF1F2000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000000000000000EEF1F2EEF1F2EEF1F2EEF1F2404040FF
      FFFFFFFFFFC0C0C0F1F3F4F1F3F4F1F3F4000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000F1F3F4F1F3F4F1F3F4F1F3F4F1F3
      F4F1F3F4404040FFFFFFFFFFFFC0C0C0F3F5F6F3F5F6F3F5F600000000000000
      0000000000000000000000000000000000000000000000000000F3F5F6F3F5F6
      F3F5F6F3F5F6F3F5F6F3F5F6404040FFFFFFFFFFFFC0C0C0F5F7F8F5F7F8F5F7
      F8F5F7F8F5F7F8F5F7F8F5F7F8F5F7F8F5F7F8F5F7F8F5F7F8F5F7F8F5F7F8F5
      F7F8F5F7F8F5F7F8F5F7F8F5F7F8F5F7F8F5F7F8404040FFFFFFFFFFFFC0C0C0
      F8F9F9F8F9F9F8F9F9F8F9F9F8F9F9F8F9F9F8F9F9F8F9F9F8F9F9F8F9F9F8F9
      F9F8F9F9F8F9F9F8F9F9F8F9F9F8F9F9F8F9F9F8F9F9F8F9F9F8F9F9404040FF
      FFFFFFFFFFC0C0C0FAFBFBFAFBFBFAFBFBFAFBFBFAFBFBFAFBFBFAFBFBFAFBFB
      FAFBFBFAFBFBFAFBFBFAFBFBFAFBFBFAFBFBFAFBFBFAFBFBFAFBFBFAFBFBFAFB
      FBFAFBFB404040FFFFFFFFFFFFFFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FF}
    ParentFont = False
    TabOrder = 3
    OnClick = btnEditarClick
  end
  object btnExcluir: TBitBtn
    Left = 246
    Top = 200
    Width = 105
    Height = 36
    Caption = 'Excluir'
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFEFEFEF9F9F9F0F0F0E6E6E6E0E0E08D8D8D4B4B4B3D3D
      3D000000000000000000000000000000000000464646707070ACACACD3D3D3D5
      D5D5E4E4E4F7F7F7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEF4F4F4E3E3E3CDCDCD9898982F2F2F0000000000005159
      59495858404E4E677474536161414E4E3C49493C49490000000000003B3B3B8B
      8B8BC1C1C1DADADAF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF9F9F9E2E2E2BCBCBC8D8D8D0000004A57576D7D7D697676A8B3
      B394A1A1616D6DA5B3B38B9D9D45545470848457696935414147565638444400
      0000808080BCBCBCE2E2E2FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF5F5F5D3D3D3A7A7A7000000546666515B5B93A4A4788282B6C1
      C1A2B1B15F6B6BA2B1B18B9D9D4554547084845E7171374343586A6A3C494948
      5757000000AFAFAFD5D5D5F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF8F8F8DCDCDCB6B6B6000000657B7B515B5B93A4A47B8585B6C1
      C1A2B1B15F6B6BA2B1B18B9D9D4554547084845E7171374343586A6A3743434F
      5F5F000000B7B7B7D5D5D5F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFCFCFCE9E9E9D4D4D40000006E8585515B5B8B9D9D7B8585B6C1
      C1A2B1B15F6B6BA2B1B18B9D9D4554547084845E7171374343586A6A37434358
      6A6A000000CECECEE5E5E5FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFDFDFDF5F5F5EBEBEB0000006E8585515B5B94A5A57B8585B7C2
      C2A2B1B15F6B6BA2B1B18B9D9D4554547084845E7171374343586A6A37434358
      6A6A000000E9E9E9F4F4F4FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFAFAFAF7F7F70000006E8585515B5B93A4A47B8585B6C1
      C1A2B1B15F6B6BA2B1B18B9D9D4554547084845E7171374343586A6A37434358
      6A6A000000F9F9F9FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFDFDFDFCFCFC0000006E8585515B5B9CACAC7B8585B3BB
      BB9AA3A34B54548A9393859191374242526060566868364141586A6A37434358
      6A6A000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000006E8585545D5D829191788282A3AA
      AA717A7A454E4E808A8A6D7C7C3742425260604A5A5A323C3C414E4E2C353545
      5454000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000657A7A515B5B7685856B76768E98
      986B7575465151747F7F586A6A354040516262455454333E3E4655552B343443
      5151000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000005D71714B57573A42422026262121
      211B1B1B000000242424000000000000000000000000131616222A2A27303034
      3F3F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000002D37370F0F0F3437387578789398
      997E898AA4B2B39EAAAA8AA1A3738687798D8F5561625154542E313100000023
      2B2B000000F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFCDCDCD000000424242737B7B969F9FC7D1D2D2DB
      DCBECBCCC2D0D1B6C3C496AFB196AFB196AFB183989A6D7F806B7C7D5E696A3E
      4040000000CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF6D6D6D4F5C5D7D929393A2A3A6B7B8D0D7D8D4DB
      DBCAD2D3C3C8C8BDC5C6ADBCBDA8B8BA8B9E9F788C8E778B8C788C8E68797A5D
      6B6C454D4E868686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF4040408298999DAEAFBEC3C3DCDEDEE8E9E9FAFB
      FBFCFDFDFDFDFDFAFBFCF7F9F9EFF2F2E3E9EAD1DADBB1BFC08494956677785D
      6D6E4D5B5B323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF00000098A9AAB2B6B6F7F9F9F8FAFAF0F4F4DAE1
      E2CED9D9CFDADBC1D3D5BED1D3A9C2C4A3BEC0ACC4C5C3D5D6BFCCCDADBABB69
      7A7C607071212121FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF000000CCD8D9F2F5F6D1DADBCED9DAD9E4E5C3CF
      D0C9D3D3BCC9CAA6B6B7A1B6B896AFB0889FA19DB8B99DB7B99CB6B8A9C2C497
      ADAF76898B000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF080808C1D0D1B5CBCCC4D5D6D1DEDFC0CDCEA6AC
      AC8A8F90777D7E555C5C3E46475664656576776F7E80A7BDBE9AB3B59BB5B69A
      B3B5889FA1000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF00000093A9AAB5CBCCBACED0C1D3D5A3ADAE8A93
      944244452123233134352328291A1E1E46525393ACAD899192AFC1C296AFB192
      AAAC7D9293000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFABABAB0000008FA6A8A1BBBDA3BEC08AA1A35C6C
      6D727C7C494C4C3F45453A4344676F6FB9C5C69BB5B65D6C6D9BB1B38EA6A77A
      8F90000000BABABAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABA5F5F5F0000000000003D4748A6B8
      BADFE2E2F0F1F1E6E9EAEEF2F2E5EAEBB5C0C14A565746515200000000000068
      6868CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA6F6F6F1C1C
      1C767676E6E6E6D3D3D3C3C3C3909090494949000000414141D3D3D3FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADAD
      AD000000000000000000000000000000000000A7A7A7FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    TabOrder = 4
    OnClick = btnExcluirClick
  end
  object edtNome: TLabeledEdit
    Left = 8
    Top = 106
    Width = 473
    Height = 26
    CharCase = ecUpperCase
    EditLabel.Width = 114
    EditLabel.Height = 18
    EditLabel.Caption = 'Nome do Atleta'
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
    ReadOnly = True
    TabOrder = 5
  end
  object edtRG: TLabeledEdit
    Left = 8
    Top = 162
    Width = 177
    Height = 26
    CharCase = ecUpperCase
    EditLabel.Width = 71
    EditLabel.Height = 18
    EditLabel.Caption = 'RG Atleta'
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
    MaxLength = 15
    NumbersOnly = True
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object dtpNascimento: TDateTimePicker
    Left = 208
    Top = 162
    Width = 193
    Height = 24
    Date = 0.596827453700825600
    Time = 0.596827453700825600
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnChange = dtpNascimentoChange
  end
  object edtIdade: TLabeledEdit
    Left = 424
    Top = 162
    Width = 57
    Height = 26
    CharCase = ecUpperCase
    EditLabel.Width = 43
    EditLabel.Height = 18
    EditLabel.Caption = 'Idade'
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
    MaxLength = 15
    NumbersOnly = True
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
  object Panel1: TPanel
    Left = 500
    Top = 32
    Width = 113
    Height = 137
    BevelInner = bvLowered
    BevelKind = bkSoft
    BevelOuter = bvLowered
    TabOrder = 9
    object imgAtleta: TImage
      Left = 2
      Top = 2
      Width = 105
      Height = 129
      Align = alClient
      Stretch = True
      ExplicitLeft = 72
      ExplicitTop = 64
      ExplicitHeight = 105
    end
  end
  object btnBuscar: TBitBtn
    Left = 504
    Top = 171
    Width = 105
    Height = 25
    Caption = 'Buscar Foto'
    Enabled = False
    Glyph.Data = {
      E6000000424DE60000000000000076000000280000000E0000000E0000000100
      0400000000007000000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33003333333333333300300000000333330000B7B7B7B03333000B0B7B7B7B03
      33000BB0B7B7B7B033000FBB0000000033000BFB0B0B0B0333000FBFBFBFB003
      33000BFBFBF00033330030BFBF03333333003800008333333300333333333333
      33003333333333333300}
    TabOrder = 10
    OnClick = btnBuscarClick
  end
  object OPD1: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp|JPG (*.jpg)|*.jpg'
    FilterIndex = 2
    Left = 584
    Top = 200
  end
end
