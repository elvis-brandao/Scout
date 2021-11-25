//---------------------------------------------------------------------------

#ifndef untBuscaEditaAtletaH
#define untBuscaEditaAtletaH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.ExtDlgs.hpp>
#include "DM.h"
#include "untBuscaAtleta.h"
//---------------------------------------------------------------------------
class TfrmBuscaEditaAtleta : public TForm
{
__published:	// IDE-managed Components
	TGroupBox *GroupBox1;
	TDBNavigator *DBNavigator1;
	TBitBtn *btnBuscarAtleta;
	TBitBtn *btnFechar;
	TBitBtn *btnConfirmar;
	TBitBtn *btnEditar;
	TBitBtn *btnExcluir;
	TLabel *Label1;
	TLabeledEdit *edtNome;
	TLabeledEdit *edtRG;
	TDateTimePicker *dtpNascimento;
	TLabeledEdit *edtIdade;
	TLabel *Label2;
	TPanel *Panel1;
	TImage *imgAtleta;
	TBitBtn *btnBuscar;
	TOpenPictureDialog *OPD1;
	void __fastcall FormShow(TObject *Sender);
	void __fastcall DBNavigator1Click(TObject *Sender, TNavigateBtn Button);
	void __fastcall btnFecharClick(TObject *Sender);
	void __fastcall btnExcluirClick(TObject *Sender);
	void __fastcall btnEditarClick(TObject *Sender);
	void __fastcall btnBuscarClick(TObject *Sender);
	void __fastcall btnConfirmarClick(TObject *Sender);
	void __fastcall dtpNascimentoChange(TObject *Sender);
	void __fastcall btnBuscarAtletaClick(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// User declarations
public:		// User declarations
	__fastcall TfrmBuscaEditaAtleta(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmBuscaEditaAtleta *frmBuscaEditaAtleta;
//---------------------------------------------------------------------------
#endif
