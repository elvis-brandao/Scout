//---------------------------------------------------------------------------

#ifndef untCadTimeH
#define untCadTimeH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
#include "DM.h"
#include <Vcl.Dialogs.hpp>
#include <Vcl.ExtDlgs.hpp>
#include "untAddJogador.h"
#include "untAddTecnico.h"
//---------------------------------------------------------------------------
class TfrmCadTime : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel1;
	TImage *imgEscudo;
	TLabel *Label2;
	TBitBtn *btnBuscar;
	TLabeledEdit *edtNome;
	TLabeledEdit *edtTreinador;
	TBitBtn *btnSalvarTime;
	TBitBtn *btnCancelar;
	TBitBtn *btnFechar;
	TBitBtn *btnAddTreinador;
	TBitBtn *btnAddJogador;
	TGroupBox *GroupBox1;
	TDBGrid *DBGridAtletas;
	TOpenPictureDialog *OPD1;
	TBitBtn *btnLimpaCampo;
	TBitBtn *btnSalvarElenco;
	void __fastcall FormShow(TObject *Sender);
	void __fastcall btnBuscarClick(TObject *Sender);
	void __fastcall btnFecharClick(TObject *Sender);
	void __fastcall btnCancelarClick(TObject *Sender);
	void __fastcall btnSalvarTimeClick(TObject *Sender);
	void __fastcall btnAddTreinadorClick(TObject *Sender);
	void __fastcall btnLimpaCampoClick(TObject *Sender);
	void __fastcall btnAddJogadorClick(TObject *Sender);
	void __fastcall btnSalvarElencoClick(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);

private:	// User declarations
public:		// User declarations
	UnicodeString codTec;
	UnicodeString codTime;
	__fastcall TfrmCadTime(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmCadTime *frmCadTime;
//---------------------------------------------------------------------------
#endif
