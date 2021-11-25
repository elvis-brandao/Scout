//---------------------------------------------------------------------------

#ifndef untCadTecnicoH
#define untCadTecnicoH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "DM.h"
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.ExtDlgs.hpp>
//---------------------------------------------------------------------------
class TfrmCadTecnico : public TForm
{
__published:	// IDE-managed Components
	TLabeledEdit *edtNome;
	TLabeledEdit *edtRG;
	TPanel *Panel1;
	TLabel *Label2;
	TImage *imgTecnico;
	TBitBtn *btnBuscar;
	TOpenPictureDialog *OPD1;
	TBitBtn *btnConfirmar;
	TBitBtn *btnCancelar;
	TBitBtn *btnFechar;
	void __fastcall FormShow(TObject *Sender);
	void __fastcall btnBuscarClick(TObject *Sender);
	void __fastcall btnConfirmarClick(TObject *Sender);
	void __fastcall btnCancelarClick(TObject *Sender);
	void __fastcall btnFecharClick(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// User declarations
public:		// User declarations
	__fastcall TfrmCadTecnico(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmCadTecnico *frmCadTecnico;
//---------------------------------------------------------------------------
#endif
