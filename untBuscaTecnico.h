//---------------------------------------------------------------------------

#ifndef untBuscaTecnicoH
#define untBuscaTecnicoH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "DM.h"
#include <Vcl.Buttons.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Grids.hpp>
#include "untCadTecnico.h"
#include "untBuscaEditaTecnico.h"
//---------------------------------------------------------------------------
class TfrmBuscaTecnico : public TForm
{
__published:	// IDE-managed Components
	TLabeledEdit *edtFiltro;
	TDBGrid *DBGridTecnicos;
	TBitBtn *btnSelecionar;
	TBitBtn *btnFechar;
	void __fastcall btnFecharClick(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall btnNovoClick(TObject *Sender);
	void __fastcall edtFiltroChange(TObject *Sender);
	void __fastcall DBGridTecnicosDblClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TfrmBuscaTecnico(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmBuscaTecnico *frmBuscaTecnico;
//---------------------------------------------------------------------------
#endif
