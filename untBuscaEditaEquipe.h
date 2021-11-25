//---------------------------------------------------------------------------

#ifndef untBuscaEditaEquipeH
#define untBuscaEditaEquipeH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "DM.h"
#include <Vcl.Buttons.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.ExtDlgs.hpp>
#include <Vcl.Grids.hpp>
#include "untBuscaEquipe.h"
#include "untAddJogador.h"
#include "untAlteraTecnico.h"
//---------------------------------------------------------------------------
class TfrmBuscaEditaEquipe : public TForm
{
__published:	// IDE-managed Components
	TGroupBox *GroupBox1;
	TDBNavigator *DBNavigator1;
	TBitBtn *btnBuscarEquipe;
	TLabel *Label2;
	TPanel *Panel1;
	TImage *imgEscudo;
	TBitBtn *btnBuscar;
	TLabeledEdit *edtNome;
	TLabeledEdit *edtTreinador;
	TBitBtn *btnAlteraTreinador;
	TGroupBox *GroupBox2;
	TDBGrid *DBGridAtletas;
	TOpenPictureDialog *OPD1;
	TBitBtn *btnSalvarTime;
	TBitBtn *btnEditar;
	TBitBtn *btnFechar;
	TBitBtn *btnAddJogador;
	TBitBtn *btnRemoveElenco;
	TBitBtn *btnExcluir;
	void __fastcall FormShow(TObject *Sender);
	void __fastcall DBNavigator1Click(TObject *Sender, TNavigateBtn Button);
	void __fastcall btnFecharClick(TObject *Sender);
	void __fastcall btnBuscarEquipeClick(TObject *Sender);
	void __fastcall btnAlteraTreinadorClick(TObject *Sender);
	void __fastcall btnEditarClick(TObject *Sender);
	void __fastcall btnExcluirClick(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall DBGridAtletasDblClick(TObject *Sender);
	void __fastcall btnRemoveElencoClick(TObject *Sender);
	void __fastcall btnAddJogadorClick(TObject *Sender);
	void __fastcall btnSalvarTimeClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	UnicodeString codTecEditado;
	__fastcall TfrmBuscaEditaEquipe(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmBuscaEditaEquipe *frmBuscaEditaEquipe;
//---------------------------------------------------------------------------
#endif
