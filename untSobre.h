//---------------------------------------------------------------------------

#ifndef untSobreH
#define untSobreH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <jpeg.hpp>
#include <Buttons.hpp>
//---------------------------------------------------------------------------
class TfrmSobre : public TForm
{
__published:	// IDE-managed Components
        TGroupBox *GroupBox1;
        TMemo *Memo1;
        TImage *Image2;
        TLabel *Label3;
        TLabel *Label5;
        TBitBtn *BitBtn1;
	TLabel *Label1;
private:	// User declarations
public:		// User declarations
        __fastcall TfrmSobre(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmSobre *frmSobre;
//---------------------------------------------------------------------------
#endif
