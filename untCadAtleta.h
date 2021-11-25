//---------------------------------------------------------------------------

#ifndef untCadAtletaH
#define untCadAtletaH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.ExtDlgs.hpp>
#include "DM.h"
#include <Vcl.ComCtrls.hpp>
//---------------------------------------------------------------------------
class TfrmCadAtleta : public TForm
{
__published:	// IDE-managed Components
	TLabel *Label2;
	TPanel *Panel1;
	TImage *imgAtleta;
	TBitBtn *btnBuscar;
	TOpenPictureDialog *OPD1;
	TBitBtn *btnConfirmar;
	TBitBtn *btnCancelar;
	TBitBtn *btnFechar;
	TLabeledEdit *edtNome;
	TLabeledEdit *edtRG;
	TDateTimePicker *dtpNascimento;
	TLabel *Label1;
	TLabeledEdit *edtIdade;
	void __fastcall FormShow(TObject *Sender);
	void __fastcall btnFecharClick(TObject *Sender);
	void __fastcall btnCancelarClick(TObject *Sender);
	void __fastcall dtpNascimentoChange(TObject *Sender);
	void __fastcall btnConfirmarClick(TObject *Sender);
	void __fastcall btnBuscarClick(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// User declarations
public:		// User declarations
	__fastcall TfrmCadAtleta(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmCadAtleta *frmCadAtleta;
//---------------------------------------------------------------------------
#endif
