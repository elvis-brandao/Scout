//---------------------------------------------------------------------------

#ifndef untBuscaEditaTecnicoH
#define untBuscaEditaTecnicoH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "DM.h"
#include <Vcl.DBCtrls.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Mask.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.ExtDlgs.hpp>
#include "untBuscaTecnico.h"
//---------------------------------------------------------------------------
class TfrmBuscaEditaTecnico : public TForm
{
__published:	// IDE-managed Components
	TDBNavigator *DBNavigator1;
	TLabeledEdit *edtNome;
	TLabeledEdit *edtRG;
	TBitBtn *btnConfirmar;
	TBitBtn *btnEditar;
	TBitBtn *btnFechar;
	TGroupBox *GroupBox1;
	TLabel *Label2;
	TPanel *Panel1;
	TImage *imgTecnico;
	TBitBtn *btnBuscar;
	TOpenPictureDialog *OPD1;
	TBitBtn *btnBuscarTecnico;
	TBitBtn *btnExcluir;
	void __fastcall FormShow(TObject *Sender);
	void __fastcall DBNavigator1Click(TObject *Sender, TNavigateBtn Button);
	void __fastcall btnFecharClick(TObject *Sender);
	void __fastcall btnEditarClick(TObject *Sender);
	void __fastcall btnConfirmarClick(TObject *Sender);
	void __fastcall btnBuscarClick(TObject *Sender);
	void __fastcall btnBuscarTecnicoClick(TObject *Sender);
	void __fastcall btnExcluirClick(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// User declarations
public:		// User declarations
	__fastcall TfrmBuscaEditaTecnico(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmBuscaEditaTecnico *frmBuscaEditaTecnico;
//---------------------------------------------------------------------------
#endif
