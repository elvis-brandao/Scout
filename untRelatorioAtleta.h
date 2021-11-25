//---------------------------------------------------------------------------

#ifndef untRelatorioAtletaH
#define untRelatorioAtletaH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "DM.h"
#include <Vcl.DBCtrls.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.Menus.hpp>
#include "untSelecionarAtletaRelatorio.h"
//---------------------------------------------------------------------------
class TfrmRelatorioAtleta : public TForm
{
__published:	// IDE-managed Components
	TDBGrid *DBGrid1;
	TLabel *Label1;
	TDBGrid *DBGrid2;
	TLabeledEdit *edtFiltroAdversario;
	TLabeledEdit *edtFiltroLocalPartida;
	TBitBtn *btnRelatorioCompleto;
	TBitBtn *BitBtn1;
	TLabel *Label2;
	void __fastcall FormShow(TObject *Sender);
	void __fastcall DBGrid1CellClick(TColumn *Column);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall edtFiltroAdversarioChange(TObject *Sender);
	void __fastcall edtFiltroLocalPartidaChange(TObject *Sender);
	void __fastcall btnRelatorioCompletoClick(TObject *Sender);
	void __fastcall BitBtn1Click(TObject *Sender);
private:	// User declarations
public:
String codPartida, codAtleta;
		// User declarations
	__fastcall TfrmRelatorioAtleta(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmRelatorioAtleta *frmRelatorioAtleta;
//---------------------------------------------------------------------------
#endif
