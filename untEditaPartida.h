//---------------------------------------------------------------------------

#ifndef untEditaPartidaH
#define untEditaPartidaH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.DBCtrls.hpp>
#include "DM.h"
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
#include <Vcl.Imaging.pngimage.hpp>
#include <Vcl.Imaging.jpeg.hpp>
#include "untBuscaPartida.h"
//---------------------------------------------------------------------------
class TfrmEditaPartida : public TForm
{
__published:	// IDE-managed Components
	TBitBtn *btnFechar;
	TBitBtn *btnSalvarScout;
	TLabel *Label2;
	TLabel *Label4;
	TPanel *Panel1;
	TLabel *Label3;
	TLabel *Label1;
	TEdit *edtAdversario;
	TEdit *edtLocalPartida;
	TEdit *edtGolsPro;
	TDateTimePicker *DTPDataPartida;
	TEdit *edtGolsContra;
	TUpDown *UpDown2;
	TEdit *edtTime;
	TPanel *Panel2;
	TLabel *Label5;
	TLabel *Label6;
	TLabel *Label7;
	TLabel *Label8;
	TLabel *Label9;
	TLabel *Label10;
	TLabel *Label11;
	TLabel *Label12;
	TLabel *Label13;
	TLabel *Label15;
	TEdit *edt1;
	TEdit *edt2;
	TEdit *edt3;
	TEdit *edt4;
	TEdit *edt5;
	TEdit *edt6;
	TEdit *edt11;
	TEdit *edt10;
	TEdit *edt12;
	TEdit *edt9;
	TEdit *edt8;
	TEdit *edt7;
	TEdit *edtPC1;
	TUpDown *UpDown3;
	TEdit *edtPC2;
	TUpDown *UpDown4;
	TEdit *edtPC3;
	TUpDown *UpDown5;
	TEdit *edtPC4;
	TUpDown *UpDown6;
	TEdit *edtPC5;
	TEdit *edtPC6;
	TUpDown *UpDown7;
	TUpDown *UpDown8;
	TEdit *edtPC7;
	TUpDown *UpDown9;
	TEdit *edtPC8;
	TEdit *edtPC9;
	TEdit *edtPC10;
	TEdit *edtPC11;
	TEdit *edtPC12;
	TUpDown *UpDown10;
	TUpDown *UpDown11;
	TUpDown *UpDown12;
	TUpDown *UpDown13;
	TUpDown *UpDown14;
	TEdit *edtPE1;
	TEdit *edtPE2;
	TEdit *edtPE3;
	TEdit *edtPE4;
	TEdit *edtPE5;
	TEdit *edtPE6;
	TEdit *edtPE7;
	TEdit *edtPE8;
	TEdit *edtPE9;
	TEdit *edtPE10;
	TEdit *edtPE11;
	TEdit *edtPE12;
	TUpDown *UpDown15;
	TUpDown *UpDown16;
	TUpDown *UpDown17;
	TUpDown *UpDown18;
	TUpDown *UpDown19;
	TUpDown *UpDown20;
	TUpDown *UpDown21;
	TUpDown *UpDown22;
	TUpDown *UpDown23;
	TUpDown *UpDown24;
	TUpDown *UpDown25;
	TUpDown *UpDown26;
	TEdit *edtTP1;
	TEdit *edtTP2;
	TEdit *edtTP3;
	TEdit *edtTP4;
	TEdit *edtTP5;
	TEdit *edtTP6;
	TEdit *edtTP7;
	TEdit *edtTP8;
	TEdit *edtTP9;
	TEdit *edtTP10;
	TEdit *edtTP11;
	TEdit *edtTP12;
	TEdit *edtCC1;
	TEdit *edtCC2;
	TEdit *edtCC3;
	TEdit *edtCC4;
	TEdit *edtCC5;
	TEdit *edtCC6;
	TEdit *edtCC7;
	TEdit *edtCC8;
	TEdit *edtCC9;
	TEdit *edtCC10;
	TEdit *edtCC11;
	TEdit *edtCC12;
	TUpDown *UpDown39;
	TUpDown *UpDown40;
	TUpDown *UpDown41;
	TUpDown *UpDown42;
	TUpDown *UpDown43;
	TUpDown *UpDown44;
	TUpDown *UpDown45;
	TUpDown *UpDown46;
	TUpDown *UpDown47;
	TUpDown *UpDown48;
	TUpDown *UpDown49;
	TUpDown *UpDown50;
	TEdit *edtA1;
	TUpDown *UpDown51;
	TUpDown *UpDown52;
	TUpDown *UpDown53;
	TUpDown *UpDown54;
	TUpDown *UpDown55;
	TUpDown *UpDown56;
	TUpDown *UpDown57;
	TUpDown *UpDown58;
	TUpDown *UpDown59;
	TUpDown *UpDown60;
	TUpDown *UpDown61;
	TUpDown *UpDown62;
	TEdit *edtA12;
	TEdit *edtA11;
	TEdit *edtA10;
	TEdit *edtA9;
	TEdit *edtA8;
	TEdit *edtA7;
	TEdit *edtA6;
	TEdit *edtA5;
	TEdit *edtA4;
	TEdit *edtA3;
	TEdit *edtA2;
	TEdit *edtG1;
	TEdit *edtG2;
	TEdit *edtG3;
	TEdit *edtG4;
	TEdit *edtG5;
	TEdit *edtG6;
	TEdit *edtG7;
	TEdit *edtG8;
	TEdit *edtG9;
	TEdit *edtG10;
	TEdit *edtG11;
	TEdit *edtG12;
	TUpDown *UpDown63;
	TUpDown *UpDown64;
	TUpDown *UpDown65;
	TUpDown *UpDown66;
	TUpDown *UpDown67;
	TUpDown *UpDown68;
	TUpDown *UpDown69;
	TUpDown *UpDown70;
	TUpDown *UpDown71;
	TUpDown *UpDown72;
	TUpDown *UpDown73;
	TUpDown *UpDown74;
	TEdit *edtCE1;
	TEdit *edtCE2;
	TEdit *edtCE3;
	TEdit *edtCE4;
	TEdit *edtCE5;
	TEdit *edtCE6;
	TEdit *edtCE7;
	TEdit *edtCE8;
	TEdit *edtCE9;
	TEdit *edtCE10;
	TEdit *edtCE11;
	TEdit *edtCE12;
	TUpDown *UpDown27;
	TUpDown *UpDown28;
	TUpDown *UpDown29;
	TUpDown *UpDown30;
	TUpDown *UpDown31;
	TUpDown *UpDown32;
	TUpDown *UpDown33;
	TUpDown *UpDown34;
	TUpDown *UpDown35;
	TUpDown *UpDown36;
	TUpDown *UpDown37;
	TUpDown *UpDown38;
	TEdit *edtTC1;
	TEdit *edtTC2;
	TEdit *edtTC3;
	TEdit *edtTC4;
	TEdit *edtTC5;
	TEdit *edtTC6;
	TEdit *edtTC7;
	TEdit *edtTC8;
	TEdit *edtTC9;
	TEdit *edtTC10;
	TEdit *edtTC11;
	TEdit *edtTC12;
	TEdit *edtPCTotal;
	TEdit *edtPETotal;
	TEdit *edtTPTotal;
	TEdit *edtCCTotal;
	TEdit *edtCETotal;
	TEdit *edtTCTotal;
	TEdit *edtATotal;
	TEdit *edtGTotal;
	TGroupBox *GroupBox1;
	TDBNavigator *DBNavigator1;
	TBitBtn *btnBuscarTecnico;
	TBitBtn *btnEditar;
	TImage *Image1;
	TImage *Image2;
	void __fastcall FormShow(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall DBNavigator1Click(TObject *Sender, TNavigateBtn Button);
	void __fastcall btnFecharClick(TObject *Sender);
	void __fastcall edtG1Change(TObject *Sender);
	void __fastcall edtGTotalChange(TObject *Sender);
	void __fastcall edtA1Change(TObject *Sender);
	void __fastcall edtCE1Change(TObject *Sender);
	void __fastcall edtCE2Change(TObject *Sender);
	void __fastcall edtCE3Change(TObject *Sender);
	void __fastcall edtCE4Change(TObject *Sender);
	void __fastcall edtCE5Change(TObject *Sender);
	void __fastcall edtCE6Change(TObject *Sender);
	void __fastcall edtCE7Change(TObject *Sender);
	void __fastcall edtCE8Change(TObject *Sender);
	void __fastcall edtCE9Change(TObject *Sender);
	void __fastcall edtCE10Change(TObject *Sender);
	void __fastcall edtCE11Change(TObject *Sender);
	void __fastcall edtCE12Change(TObject *Sender);
	void __fastcall edtPE1Change(TObject *Sender);
	void __fastcall edtPE2Change(TObject *Sender);
	void __fastcall edtPE3Change(TObject *Sender);
	void __fastcall edtPE4Change(TObject *Sender);
	void __fastcall edtPE5Change(TObject *Sender);
	void __fastcall edtPE6Change(TObject *Sender);
	void __fastcall edtPE7Change(TObject *Sender);
	void __fastcall edtPE8Change(TObject *Sender);
	void __fastcall edtPE9Change(TObject *Sender);
	void __fastcall edtPE10Change(TObject *Sender);
	void __fastcall edtPE11Change(TObject *Sender);
	void __fastcall edtPE12Change(TObject *Sender);
	void __fastcall edtPETotalChange(TObject *Sender);
	void __fastcall edtCCTotalChange(TObject *Sender);
	void __fastcall btnEditarClick(TObject *Sender);
	void __fastcall btnSalvarScoutClick(TObject *Sender);
	void __fastcall btnBuscarTecnicoClick(TObject *Sender);
private:	// User declarations
public:
	int NAtletas;
	// User declarations
	__fastcall TfrmEditaPartida(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmEditaPartida *frmEditaPartida;
//---------------------------------------------------------------------------
#endif
