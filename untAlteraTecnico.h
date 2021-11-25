//---------------------------------------------------------------------------

#ifndef untAlteraTecnicoH
#define untAlteraTecnicoH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Grids.hpp>
#include "DM.h"
#include "untCadTecnico.h"
#include "untBuscaEditaEquipe.h"
//---------------------------------------------------------------------------
class TfrmAlteraTecnico : public TForm
{
__published:	// IDE-managed Components
	TLabeledEdit *edtFiltro;
	TDBGrid *DBGridTecnicos;
	TBitBtn *btnSelecionar;
	TBitBtn *btnFechar;
	TBitBtn *btnNovo;
	void __fastcall btnFecharClick(TObject *Sender);
	void __fastcall edtFiltroChange(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall DBGridTecnicosDblClick(TObject *Sender);
	void __fastcall btnSelecionarClick(TObject *Sender);
	void __fastcall btnNovoClick(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// User declarations
public:		// User declarations
	__fastcall TfrmAlteraTecnico(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmAlteraTecnico *frmAlteraTecnico;
//---------------------------------------------------------------------------
#endif
