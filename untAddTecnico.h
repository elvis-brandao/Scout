//---------------------------------------------------------------------------

#ifndef untAddTecnicoH
#define untAddTecnicoH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "DM.h"
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
#include <Vcl.Buttons.hpp>
#include "untCadTime.h"
#include "untCadTecnico.h"
//---------------------------------------------------------------------------
class TfrmAddTecnico : public TForm
{
__published:	// IDE-managed Components
	TLabeledEdit *edtFiltro;
	TDBGrid *DBGridTecnicos;
	TBitBtn *btnSelecionar;
	TBitBtn *btnFechar;
	TBitBtn *btnNovo;
	void __fastcall FormShow(TObject *Sender);
	void __fastcall edtFiltroChange(TObject *Sender);
	void __fastcall DBGridTecnicosDblClick(TObject *Sender);
	void __fastcall btnSelecionarClick(TObject *Sender);
	void __fastcall btnFecharClick(TObject *Sender);
	void __fastcall btnNovoClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TfrmAddTecnico(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmAddTecnico *frmAddTecnico;
//---------------------------------------------------------------------------
#endif
