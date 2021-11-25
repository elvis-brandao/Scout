//---------------------------------------------------------------------------

#ifndef untBuscaEquipeH
#define untBuscaEquipeH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "DM.h"
#include "untBuscaEditaEquipe.h"
#include <Vcl.Buttons.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Grids.hpp>
//---------------------------------------------------------------------------
class TfrmBuscaEquipe : public TForm
{
__published:	// IDE-managed Components
	TLabeledEdit *edtFiltro;
	TDBGrid *DBGridTecnicos;
	TBitBtn *btnSelecionar;
	TBitBtn *btnFechar;
	void __fastcall FormShow(TObject *Sender);
	void __fastcall btnFecharClick(TObject *Sender);
	void __fastcall edtFiltroChange(TObject *Sender);
	void __fastcall DBGridTecnicosDblClick(TObject *Sender);
	void __fastcall btnSelecionarClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TfrmBuscaEquipe(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmBuscaEquipe *frmBuscaEquipe;
//---------------------------------------------------------------------------
#endif
