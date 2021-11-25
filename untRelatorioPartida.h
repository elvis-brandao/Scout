//---------------------------------------------------------------------------

#ifndef untRelatorioPartidaH
#define untRelatorioPartidaH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "DM.h"
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.DBCtrls.hpp>
//---------------------------------------------------------------------------
class TfrmRelatorioPartida : public TForm
{
__published:	// IDE-managed Components
	TDBGrid *DBGrid1;
	TLabeledEdit *edtFiltroAdversario;
	TGroupBox *gbDatas;
	TDateTimePicker *dtpInicio;
	TDateTimePicker *dtpFinal;
	TLabel *Label1;
	TLabel *Label2;
	TCheckBox *CBAdversario;
	TCheckBox *CBData;
	TBitBtn *btnRelatorioCompleto;
	TBitBtn *btnRelatorioConsolidado;
	TBitBtn *btnRelatorioItemSelecionado;
	TLabel *Label3;
	TDBComboBox *DBCBNomeTime;
	void __fastcall edtFiltroAdversarioChange(TObject *Sender);
	void __fastcall btnRelatorioCompletoClick(TObject *Sender);
	void __fastcall CBAdversarioMouseUp(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall CBDataMouseUp(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall btnLimpaFiltroClick(TObject *Sender);
	void __fastcall dtpInicioChange(TObject *Sender);
	void __fastcall dtpFinalChange(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall btnRelatorioConsolidadoClick(TObject *Sender);
	void __fastcall btnRelatorioItemSelecionadoClick(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall DBCBNomeTimeChange(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TfrmRelatorioPartida(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmRelatorioPartida *frmRelatorioPartida;
//---------------------------------------------------------------------------
#endif
