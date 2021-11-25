//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "untNovaPartida.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmNovaPartida *frmNovaPartida;
//---------------------------------------------------------------------------
__fastcall TfrmNovaPartida::TfrmNovaPartida(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmNovaPartida::FormShow(TObject *Sender)
{
DM1->cdsTime->Active = true;
DM1->cdsScoutpartida->Active = true;
DM1->cdsScoutatleta->Active = true;
DM1->cdsPartida->Active = true;
DTPDataPartida->Date = DTPDataPartida->Date.CurrentDate();
if (DM1->cdsTime->RecordCount > 0)
{
	edtTime->Text = DM1->cdsTime->FieldByName("Nome_Time")->AsString;

	DM1->SQLQAtleta->SQL->Clear();
	DM1->SQLQAtleta->SQL->Add("SELECT * FROM tbatleta WHERE tbatleta.Cod_Time_Atleta = " + DM1->cdsTime->FieldByName("Cod_Time")->AsString);
	DM1->SQLQAtleta->Open();
	DM1->cdsAtleta2->Active = true;
	DM1->cdsAtleta2->Refresh();
	DM1->cdsAtleta2->First();
	NAtletas = DM1->cdsAtleta2->RecordCount;
	for (int i = 1; i <= NAtletas; i++)
	{
		if (i == 1)
		{
			edt1->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 2)
		{
			edt2->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 3)
		{
			edt3->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 4)
		{
			edt4->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 5)
		{
			edt5->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 6)
		{
			edt6->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 7)
		{
			edt7->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 8)
		{
			edt8->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 9)
		{
			edt9->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 10)
		{
			edt10->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 11)
		{
			edt11->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 12)
		{
			edt12->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
	}
}
}
//---------------------------------------------------------------------------
void __fastcall TfrmNovaPartida::btnAlteraTimeClick(TObject *Sender)
{
edt1->Clear();
edt2->Clear();
edt3->Clear();
edt4->Clear();
edt5->Clear();
edt6->Clear();
edt7->Clear();
edt8->Clear();
edt9->Clear();
edt10->Clear();
edt11->Clear();
edt12->Clear();
frmSelecionaTime = new TfrmSelecionaTime(Application);
frmSelecionaTime->ShowModal();
delete frmSelecionaTime;
}
//---------------------------------------------------------------------------
void __fastcall TfrmNovaPartida::edtG1Change(TObject *Sender)
{
edtGTotal->Text = IntToStr(StrToInt(edtG1->Text)+StrToInt(edtG2->Text)+StrToInt(edtG3->Text)+StrToInt(edtG4->Text)+StrToInt(edtG5->Text)+StrToInt(edtG6->Text)+StrToInt(edtG7->Text)+StrToInt(edtG8->Text)+StrToInt(edtG9->Text)+StrToInt(edtG10->Text)+StrToInt(edtG11->Text)+StrToInt(edtG12->Text));
}
//---------------------------------------------------------------------------
void __fastcall TfrmNovaPartida::edtGTotalChange(TObject *Sender)
{
edtGolsPro->Text = edtGTotal->Text;
}
//---------------------------------------------------------------------------

void __fastcall TfrmNovaPartida::edtA1Change(TObject *Sender)
{
edtATotal->Text = IntToStr(StrToInt(edtA1->Text)+StrToInt(edtA2->Text)+StrToInt(edtA3->Text)+StrToInt(edtA4->Text)+StrToInt(edtA5->Text)+StrToInt(edtA6->Text)+StrToInt(edtA7->Text)+StrToInt(edtA8->Text)+StrToInt(edtA9->Text)+StrToInt(edtA10->Text)+StrToInt(edtA11->Text)+StrToInt(edtA12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmNovaPartida::edtCE1Change(TObject *Sender)
{
edtTC1->Text = IntToStr(StrToInt(edtCE1->Text)+ StrToInt(edtCC1->Text));
edtCETotal->Text = IntToStr(StrToInt(edtCE1->Text)+StrToInt(edtCE2->Text)+StrToInt(edtCE3->Text)+StrToInt(edtCE4->Text)+StrToInt(edtCE5->Text)+StrToInt(edtCE6->Text)+StrToInt(edtCE7->Text)+StrToInt(edtCE8->Text)+StrToInt(edtCE9->Text)+StrToInt(edtCE10->Text)+StrToInt(edtCE11->Text)+StrToInt(edtCE12->Text));
edtCCTotal->Text = IntToStr(StrToInt(edtCC1->Text)+StrToInt(edtCC2->Text)+StrToInt(edtCC3->Text)+StrToInt(edtCC4->Text)+StrToInt(edtCC5->Text)+StrToInt(edtCC6->Text)+StrToInt(edtCC7->Text)+StrToInt(edtCC8->Text)+StrToInt(edtCC9->Text)+StrToInt(edtCC10->Text)+StrToInt(edtCC11->Text)+StrToInt(edtCC12->Text));
}
//---------------------------------------------------------------------------
void __fastcall TfrmNovaPartida::edtCE2Change(TObject *Sender)
{
edtTC2->Text = IntToStr(StrToInt(edtCE2->Text)+ StrToInt(edtCC2->Text));
edtCETotal->Text = IntToStr(StrToInt(edtCE1->Text)+StrToInt(edtCE2->Text)+StrToInt(edtCE3->Text)+StrToInt(edtCE4->Text)+StrToInt(edtCE5->Text)+StrToInt(edtCE6->Text)+StrToInt(edtCE7->Text)+StrToInt(edtCE8->Text)+StrToInt(edtCE9->Text)+StrToInt(edtCE10->Text)+StrToInt(edtCE11->Text)+StrToInt(edtCE12->Text));
edtCCTotal->Text = IntToStr(StrToInt(edtCC1->Text)+StrToInt(edtCC2->Text)+StrToInt(edtCC3->Text)+StrToInt(edtCC4->Text)+StrToInt(edtCC5->Text)+StrToInt(edtCC6->Text)+StrToInt(edtCC7->Text)+StrToInt(edtCC8->Text)+StrToInt(edtCC9->Text)+StrToInt(edtCC10->Text)+StrToInt(edtCC11->Text)+StrToInt(edtCC12->Text));
}
//---------------------------------------------------------------------------
void __fastcall TfrmNovaPartida::edtCE3Change(TObject *Sender)
{
edtTC3->Text = IntToStr(StrToInt(edtCE3->Text)+ StrToInt(edtCC3->Text));
edtCETotal->Text = IntToStr(StrToInt(edtCE1->Text)+StrToInt(edtCE2->Text)+StrToInt(edtCE3->Text)+StrToInt(edtCE4->Text)+StrToInt(edtCE5->Text)+StrToInt(edtCE6->Text)+StrToInt(edtCE7->Text)+StrToInt(edtCE8->Text)+StrToInt(edtCE9->Text)+StrToInt(edtCE10->Text)+StrToInt(edtCE11->Text)+StrToInt(edtCE12->Text));
edtCCTotal->Text = IntToStr(StrToInt(edtCC1->Text)+StrToInt(edtCC2->Text)+StrToInt(edtCC3->Text)+StrToInt(edtCC4->Text)+StrToInt(edtCC5->Text)+StrToInt(edtCC6->Text)+StrToInt(edtCC7->Text)+StrToInt(edtCC8->Text)+StrToInt(edtCC9->Text)+StrToInt(edtCC10->Text)+StrToInt(edtCC11->Text)+StrToInt(edtCC12->Text));
}
//---------------------------------------------------------------------------
void __fastcall TfrmNovaPartida::edtCE4Change(TObject *Sender)
{
edtTC4->Text = IntToStr(StrToInt(edtCE4->Text)+ StrToInt(edtCC4->Text));
edtCETotal->Text = IntToStr(StrToInt(edtCE1->Text)+StrToInt(edtCE2->Text)+StrToInt(edtCE3->Text)+StrToInt(edtCE4->Text)+StrToInt(edtCE5->Text)+StrToInt(edtCE6->Text)+StrToInt(edtCE7->Text)+StrToInt(edtCE8->Text)+StrToInt(edtCE9->Text)+StrToInt(edtCE10->Text)+StrToInt(edtCE11->Text)+StrToInt(edtCE12->Text));
edtCCTotal->Text = IntToStr(StrToInt(edtCC1->Text)+StrToInt(edtCC2->Text)+StrToInt(edtCC3->Text)+StrToInt(edtCC4->Text)+StrToInt(edtCC5->Text)+StrToInt(edtCC6->Text)+StrToInt(edtCC7->Text)+StrToInt(edtCC8->Text)+StrToInt(edtCC9->Text)+StrToInt(edtCC10->Text)+StrToInt(edtCC11->Text)+StrToInt(edtCC12->Text));
}
//---------------------------------------------------------------------------
void __fastcall TfrmNovaPartida::edtCE5Change(TObject *Sender)
{
edtTC5->Text = IntToStr(StrToInt(edtCE5->Text)+ StrToInt(edtCC5->Text));
edtCETotal->Text = IntToStr(StrToInt(edtCE1->Text)+StrToInt(edtCE2->Text)+StrToInt(edtCE3->Text)+StrToInt(edtCE4->Text)+StrToInt(edtCE5->Text)+StrToInt(edtCE6->Text)+StrToInt(edtCE7->Text)+StrToInt(edtCE8->Text)+StrToInt(edtCE9->Text)+StrToInt(edtCE10->Text)+StrToInt(edtCE11->Text)+StrToInt(edtCE12->Text));
edtCCTotal->Text = IntToStr(StrToInt(edtCC1->Text)+StrToInt(edtCC2->Text)+StrToInt(edtCC3->Text)+StrToInt(edtCC4->Text)+StrToInt(edtCC5->Text)+StrToInt(edtCC6->Text)+StrToInt(edtCC7->Text)+StrToInt(edtCC8->Text)+StrToInt(edtCC9->Text)+StrToInt(edtCC10->Text)+StrToInt(edtCC11->Text)+StrToInt(edtCC12->Text));
}
//---------------------------------------------------------------------------
void __fastcall TfrmNovaPartida::edtCE6Change(TObject *Sender)
{
edtTC6->Text = IntToStr(StrToInt(edtCE6->Text)+ StrToInt(edtCC6->Text));
edtCETotal->Text = IntToStr(StrToInt(edtCE1->Text)+StrToInt(edtCE2->Text)+StrToInt(edtCE3->Text)+StrToInt(edtCE4->Text)+StrToInt(edtCE5->Text)+StrToInt(edtCE6->Text)+StrToInt(edtCE7->Text)+StrToInt(edtCE8->Text)+StrToInt(edtCE9->Text)+StrToInt(edtCE10->Text)+StrToInt(edtCE11->Text)+StrToInt(edtCE12->Text));
edtCCTotal->Text = IntToStr(StrToInt(edtCC1->Text)+StrToInt(edtCC2->Text)+StrToInt(edtCC3->Text)+StrToInt(edtCC4->Text)+StrToInt(edtCC5->Text)+StrToInt(edtCC6->Text)+StrToInt(edtCC7->Text)+StrToInt(edtCC8->Text)+StrToInt(edtCC9->Text)+StrToInt(edtCC10->Text)+StrToInt(edtCC11->Text)+StrToInt(edtCC12->Text));
}
//---------------------------------------------------------------------------
void __fastcall TfrmNovaPartida::edtCE7Change(TObject *Sender)
{
edtTC7->Text = IntToStr(StrToInt(edtCE7->Text)+ StrToInt(edtCC7->Text));
edtCETotal->Text = IntToStr(StrToInt(edtCE1->Text)+StrToInt(edtCE2->Text)+StrToInt(edtCE3->Text)+StrToInt(edtCE4->Text)+StrToInt(edtCE5->Text)+StrToInt(edtCE6->Text)+StrToInt(edtCE7->Text)+StrToInt(edtCE8->Text)+StrToInt(edtCE9->Text)+StrToInt(edtCE10->Text)+StrToInt(edtCE11->Text)+StrToInt(edtCE12->Text));
edtCCTotal->Text = IntToStr(StrToInt(edtCC1->Text)+StrToInt(edtCC2->Text)+StrToInt(edtCC3->Text)+StrToInt(edtCC4->Text)+StrToInt(edtCC5->Text)+StrToInt(edtCC6->Text)+StrToInt(edtCC7->Text)+StrToInt(edtCC8->Text)+StrToInt(edtCC9->Text)+StrToInt(edtCC10->Text)+StrToInt(edtCC11->Text)+StrToInt(edtCC12->Text));
}
//---------------------------------------------------------------------------
void __fastcall TfrmNovaPartida::edtCE8Change(TObject *Sender)
{
edtTC8->Text = IntToStr(StrToInt(edtCE8->Text)+ StrToInt(edtCC8->Text));
edtCETotal->Text = IntToStr(StrToInt(edtCE1->Text)+StrToInt(edtCE2->Text)+StrToInt(edtCE3->Text)+StrToInt(edtCE4->Text)+StrToInt(edtCE5->Text)+StrToInt(edtCE6->Text)+StrToInt(edtCE7->Text)+StrToInt(edtCE8->Text)+StrToInt(edtCE9->Text)+StrToInt(edtCE10->Text)+StrToInt(edtCE11->Text)+StrToInt(edtCE12->Text));
edtCCTotal->Text = IntToStr(StrToInt(edtCC1->Text)+StrToInt(edtCC2->Text)+StrToInt(edtCC3->Text)+StrToInt(edtCC4->Text)+StrToInt(edtCC5->Text)+StrToInt(edtCC6->Text)+StrToInt(edtCC7->Text)+StrToInt(edtCC8->Text)+StrToInt(edtCC9->Text)+StrToInt(edtCC10->Text)+StrToInt(edtCC11->Text)+StrToInt(edtCC12->Text));
}
//---------------------------------------------------------------------------
void __fastcall TfrmNovaPartida::edtCE9Change(TObject *Sender)
{
edtTC9->Text = IntToStr(StrToInt(edtCE9->Text)+ StrToInt(edtCC9->Text));
edtCETotal->Text = IntToStr(StrToInt(edtCE1->Text)+StrToInt(edtCE2->Text)+StrToInt(edtCE3->Text)+StrToInt(edtCE4->Text)+StrToInt(edtCE5->Text)+StrToInt(edtCE6->Text)+StrToInt(edtCE7->Text)+StrToInt(edtCE8->Text)+StrToInt(edtCE9->Text)+StrToInt(edtCE10->Text)+StrToInt(edtCE11->Text)+StrToInt(edtCE12->Text));
edtCCTotal->Text = IntToStr(StrToInt(edtCC1->Text)+StrToInt(edtCC2->Text)+StrToInt(edtCC3->Text)+StrToInt(edtCC4->Text)+StrToInt(edtCC5->Text)+StrToInt(edtCC6->Text)+StrToInt(edtCC7->Text)+StrToInt(edtCC8->Text)+StrToInt(edtCC9->Text)+StrToInt(edtCC10->Text)+StrToInt(edtCC11->Text)+StrToInt(edtCC12->Text));
}
//---------------------------------------------------------------------------
void __fastcall TfrmNovaPartida::edtCE10Change(TObject *Sender)
{
edtTC10->Text = IntToStr(StrToInt(edtCE10->Text)+ StrToInt(edtCC10->Text));
edtCETotal->Text = IntToStr(StrToInt(edtCE1->Text)+StrToInt(edtCE2->Text)+StrToInt(edtCE3->Text)+StrToInt(edtCE4->Text)+StrToInt(edtCE5->Text)+StrToInt(edtCE6->Text)+StrToInt(edtCE7->Text)+StrToInt(edtCE8->Text)+StrToInt(edtCE9->Text)+StrToInt(edtCE10->Text)+StrToInt(edtCE11->Text)+StrToInt(edtCE12->Text));
edtCCTotal->Text = IntToStr(StrToInt(edtCC1->Text)+StrToInt(edtCC2->Text)+StrToInt(edtCC3->Text)+StrToInt(edtCC4->Text)+StrToInt(edtCC5->Text)+StrToInt(edtCC6->Text)+StrToInt(edtCC7->Text)+StrToInt(edtCC8->Text)+StrToInt(edtCC9->Text)+StrToInt(edtCC10->Text)+StrToInt(edtCC11->Text)+StrToInt(edtCC12->Text));
}
//---------------------------------------------------------------------------
void __fastcall TfrmNovaPartida::edtCE11Change(TObject *Sender)
{
edtTC11->Text = IntToStr(StrToInt(edtCE11->Text)+ StrToInt(edtCC11->Text));
edtCETotal->Text = IntToStr(StrToInt(edtCE1->Text)+StrToInt(edtCE2->Text)+StrToInt(edtCE3->Text)+StrToInt(edtCE4->Text)+StrToInt(edtCE5->Text)+StrToInt(edtCE6->Text)+StrToInt(edtCE7->Text)+StrToInt(edtCE8->Text)+StrToInt(edtCE9->Text)+StrToInt(edtCE10->Text)+StrToInt(edtCE11->Text)+StrToInt(edtCE12->Text));
edtCCTotal->Text = IntToStr(StrToInt(edtCC1->Text)+StrToInt(edtCC2->Text)+StrToInt(edtCC3->Text)+StrToInt(edtCC4->Text)+StrToInt(edtCC5->Text)+StrToInt(edtCC6->Text)+StrToInt(edtCC7->Text)+StrToInt(edtCC8->Text)+StrToInt(edtCC9->Text)+StrToInt(edtCC10->Text)+StrToInt(edtCC11->Text)+StrToInt(edtCC12->Text));
}
//---------------------------------------------------------------------------
void __fastcall TfrmNovaPartida::edtCE12Change(TObject *Sender)
{
edtTC12->Text = IntToStr(StrToInt(edtCE12->Text)+ StrToInt(edtCC12->Text));
edtCETotal->Text = IntToStr(StrToInt(edtCE1->Text)+StrToInt(edtCE2->Text)+StrToInt(edtCE3->Text)+StrToInt(edtCE4->Text)+StrToInt(edtCE5->Text)+StrToInt(edtCE6->Text)+StrToInt(edtCE7->Text)+StrToInt(edtCE8->Text)+StrToInt(edtCE9->Text)+StrToInt(edtCE10->Text)+StrToInt(edtCE11->Text)+StrToInt(edtCE12->Text));
edtCCTotal->Text = IntToStr(StrToInt(edtCC1->Text)+StrToInt(edtCC2->Text)+StrToInt(edtCC3->Text)+StrToInt(edtCC4->Text)+StrToInt(edtCC5->Text)+StrToInt(edtCC6->Text)+StrToInt(edtCC7->Text)+StrToInt(edtCC8->Text)+StrToInt(edtCC9->Text)+StrToInt(edtCC10->Text)+StrToInt(edtCC11->Text)+StrToInt(edtCC12->Text));
}
//---------------------------------------------------------------------------
void __fastcall TfrmNovaPartida::edtPE1Change(TObject *Sender)
{
edtTP1->Text = IntToStr(StrToInt(edtPC1->Text)+ StrToInt(edtPE1->Text));
edtPCTotal->Text = IntToStr(StrToInt(edtPC1->Text)+StrToInt(edtPC2->Text)+StrToInt(edtPC3->Text)+StrToInt(edtPC4->Text)+StrToInt(edtPC5->Text)+StrToInt(edtPC6->Text)+StrToInt(edtPC7->Text)+StrToInt(edtPC8->Text)+StrToInt(edtPC9->Text)+StrToInt(edtPC10->Text)+StrToInt(edtPC11->Text)+StrToInt(edtPC12->Text));
edtPETotal->Text = IntToStr(StrToInt(edtPE1->Text)+StrToInt(edtPE2->Text)+StrToInt(edtPE3->Text)+StrToInt(edtPE4->Text)+StrToInt(edtPE5->Text)+StrToInt(edtPE6->Text)+StrToInt(edtPE7->Text)+StrToInt(edtPE8->Text)+StrToInt(edtPE9->Text)+StrToInt(edtPE10->Text)+StrToInt(edtPE11->Text)+StrToInt(edtPE12->Text));
}
//---------------------------------------------------------------------------
void __fastcall TfrmNovaPartida::edtPE2Change(TObject *Sender)
{
edtTP2->Text = IntToStr(StrToInt(edtPC2->Text)+ StrToInt(edtPE2->Text));
edtPCTotal->Text = IntToStr(StrToInt(edtPC1->Text)+StrToInt(edtPC2->Text)+StrToInt(edtPC3->Text)+StrToInt(edtPC4->Text)+StrToInt(edtPC5->Text)+StrToInt(edtPC6->Text)+StrToInt(edtPC7->Text)+StrToInt(edtPC8->Text)+StrToInt(edtPC9->Text)+StrToInt(edtPC10->Text)+StrToInt(edtPC11->Text)+StrToInt(edtPC12->Text));
edtPETotal->Text = IntToStr(StrToInt(edtPE1->Text)+StrToInt(edtPE2->Text)+StrToInt(edtPE3->Text)+StrToInt(edtPE4->Text)+StrToInt(edtPE5->Text)+StrToInt(edtPE6->Text)+StrToInt(edtPE7->Text)+StrToInt(edtPE8->Text)+StrToInt(edtPE9->Text)+StrToInt(edtPE10->Text)+StrToInt(edtPE11->Text)+StrToInt(edtPE12->Text));
}
//---------------------------------------------------------------------------
void __fastcall TfrmNovaPartida::edtPE3Change(TObject *Sender)
{
edtTP3->Text = IntToStr(StrToInt(edtPC3->Text)+ StrToInt(edtPE3->Text));
edtPCTotal->Text = IntToStr(StrToInt(edtPC1->Text)+StrToInt(edtPC2->Text)+StrToInt(edtPC3->Text)+StrToInt(edtPC4->Text)+StrToInt(edtPC5->Text)+StrToInt(edtPC6->Text)+StrToInt(edtPC7->Text)+StrToInt(edtPC8->Text)+StrToInt(edtPC9->Text)+StrToInt(edtPC10->Text)+StrToInt(edtPC11->Text)+StrToInt(edtPC12->Text));
edtPETotal->Text = IntToStr(StrToInt(edtPE1->Text)+StrToInt(edtPE2->Text)+StrToInt(edtPE3->Text)+StrToInt(edtPE4->Text)+StrToInt(edtPE5->Text)+StrToInt(edtPE6->Text)+StrToInt(edtPE7->Text)+StrToInt(edtPE8->Text)+StrToInt(edtPE9->Text)+StrToInt(edtPE10->Text)+StrToInt(edtPE11->Text)+StrToInt(edtPE12->Text));
}
//---------------------------------------------------------------------------
void __fastcall TfrmNovaPartida::edtPE4Change(TObject *Sender)
{
edtTP4->Text = IntToStr(StrToInt(edtPC4->Text)+ StrToInt(edtPE4->Text));
edtPCTotal->Text = IntToStr(StrToInt(edtPC1->Text)+StrToInt(edtPC2->Text)+StrToInt(edtPC3->Text)+StrToInt(edtPC4->Text)+StrToInt(edtPC5->Text)+StrToInt(edtPC6->Text)+StrToInt(edtPC7->Text)+StrToInt(edtPC8->Text)+StrToInt(edtPC9->Text)+StrToInt(edtPC10->Text)+StrToInt(edtPC11->Text)+StrToInt(edtPC12->Text));
edtPETotal->Text = IntToStr(StrToInt(edtPE1->Text)+StrToInt(edtPE2->Text)+StrToInt(edtPE3->Text)+StrToInt(edtPE4->Text)+StrToInt(edtPE5->Text)+StrToInt(edtPE6->Text)+StrToInt(edtPE7->Text)+StrToInt(edtPE8->Text)+StrToInt(edtPE9->Text)+StrToInt(edtPE10->Text)+StrToInt(edtPE11->Text)+StrToInt(edtPE12->Text));
}
//---------------------------------------------------------------------------
void __fastcall TfrmNovaPartida::edtPE5Change(TObject *Sender)
{
edtTP5->Text = IntToStr(StrToInt(edtPC5->Text)+ StrToInt(edtPE5->Text));
edtPCTotal->Text = IntToStr(StrToInt(edtPC1->Text)+StrToInt(edtPC2->Text)+StrToInt(edtPC3->Text)+StrToInt(edtPC4->Text)+StrToInt(edtPC5->Text)+StrToInt(edtPC6->Text)+StrToInt(edtPC7->Text)+StrToInt(edtPC8->Text)+StrToInt(edtPC9->Text)+StrToInt(edtPC10->Text)+StrToInt(edtPC11->Text)+StrToInt(edtPC12->Text));
edtPETotal->Text = IntToStr(StrToInt(edtPE1->Text)+StrToInt(edtPE2->Text)+StrToInt(edtPE3->Text)+StrToInt(edtPE4->Text)+StrToInt(edtPE5->Text)+StrToInt(edtPE6->Text)+StrToInt(edtPE7->Text)+StrToInt(edtPE8->Text)+StrToInt(edtPE9->Text)+StrToInt(edtPE10->Text)+StrToInt(edtPE11->Text)+StrToInt(edtPE12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmNovaPartida::edtPE6Change(TObject *Sender)
{
edtTP6->Text = IntToStr(StrToInt(edtPC6->Text)+ StrToInt(edtPE6->Text));
edtPCTotal->Text = IntToStr(StrToInt(edtPC1->Text)+StrToInt(edtPC2->Text)+StrToInt(edtPC3->Text)+StrToInt(edtPC4->Text)+StrToInt(edtPC5->Text)+StrToInt(edtPC6->Text)+StrToInt(edtPC7->Text)+StrToInt(edtPC8->Text)+StrToInt(edtPC9->Text)+StrToInt(edtPC10->Text)+StrToInt(edtPC11->Text)+StrToInt(edtPC12->Text));
edtPETotal->Text = IntToStr(StrToInt(edtPE1->Text)+StrToInt(edtPE2->Text)+StrToInt(edtPE3->Text)+StrToInt(edtPE4->Text)+StrToInt(edtPE5->Text)+StrToInt(edtPE6->Text)+StrToInt(edtPE7->Text)+StrToInt(edtPE8->Text)+StrToInt(edtPE9->Text)+StrToInt(edtPE10->Text)+StrToInt(edtPE11->Text)+StrToInt(edtPE12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmNovaPartida::edtPE7Change(TObject *Sender)
{
edtTP7->Text = IntToStr(StrToInt(edtPC7->Text)+ StrToInt(edtPE7->Text));
edtPCTotal->Text = IntToStr(StrToInt(edtPC1->Text)+StrToInt(edtPC2->Text)+StrToInt(edtPC3->Text)+StrToInt(edtPC4->Text)+StrToInt(edtPC5->Text)+StrToInt(edtPC6->Text)+StrToInt(edtPC7->Text)+StrToInt(edtPC8->Text)+StrToInt(edtPC9->Text)+StrToInt(edtPC10->Text)+StrToInt(edtPC11->Text)+StrToInt(edtPC12->Text));
edtPETotal->Text = IntToStr(StrToInt(edtPE1->Text)+StrToInt(edtPE2->Text)+StrToInt(edtPE3->Text)+StrToInt(edtPE4->Text)+StrToInt(edtPE5->Text)+StrToInt(edtPE6->Text)+StrToInt(edtPE7->Text)+StrToInt(edtPE8->Text)+StrToInt(edtPE9->Text)+StrToInt(edtPE10->Text)+StrToInt(edtPE11->Text)+StrToInt(edtPE12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmNovaPartida::edtPE8Change(TObject *Sender)
{
edtTP8->Text = IntToStr(StrToInt(edtPC8->Text)+ StrToInt(edtPE8->Text));
edtPCTotal->Text = IntToStr(StrToInt(edtPC1->Text)+StrToInt(edtPC2->Text)+StrToInt(edtPC3->Text)+StrToInt(edtPC4->Text)+StrToInt(edtPC5->Text)+StrToInt(edtPC6->Text)+StrToInt(edtPC7->Text)+StrToInt(edtPC8->Text)+StrToInt(edtPC9->Text)+StrToInt(edtPC10->Text)+StrToInt(edtPC11->Text)+StrToInt(edtPC12->Text));
edtPETotal->Text = IntToStr(StrToInt(edtPE1->Text)+StrToInt(edtPE2->Text)+StrToInt(edtPE3->Text)+StrToInt(edtPE4->Text)+StrToInt(edtPE5->Text)+StrToInt(edtPE6->Text)+StrToInt(edtPE7->Text)+StrToInt(edtPE8->Text)+StrToInt(edtPE9->Text)+StrToInt(edtPE10->Text)+StrToInt(edtPE11->Text)+StrToInt(edtPE12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmNovaPartida::edtPE9Change(TObject *Sender)
{
edtTP9->Text = IntToStr(StrToInt(edtPC9->Text)+ StrToInt(edtPE9->Text));
edtPCTotal->Text = IntToStr(StrToInt(edtPC1->Text)+StrToInt(edtPC2->Text)+StrToInt(edtPC3->Text)+StrToInt(edtPC4->Text)+StrToInt(edtPC5->Text)+StrToInt(edtPC6->Text)+StrToInt(edtPC7->Text)+StrToInt(edtPC8->Text)+StrToInt(edtPC9->Text)+StrToInt(edtPC10->Text)+StrToInt(edtPC11->Text)+StrToInt(edtPC12->Text));
edtPETotal->Text = IntToStr(StrToInt(edtPE1->Text)+StrToInt(edtPE2->Text)+StrToInt(edtPE3->Text)+StrToInt(edtPE4->Text)+StrToInt(edtPE5->Text)+StrToInt(edtPE6->Text)+StrToInt(edtPE7->Text)+StrToInt(edtPE8->Text)+StrToInt(edtPE9->Text)+StrToInt(edtPE10->Text)+StrToInt(edtPE11->Text)+StrToInt(edtPE12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmNovaPartida::edtPE10Change(TObject *Sender)
{
edtTP10->Text = IntToStr(StrToInt(edtPC10->Text)+ StrToInt(edtPE10->Text));
edtPCTotal->Text = IntToStr(StrToInt(edtPC1->Text)+StrToInt(edtPC2->Text)+StrToInt(edtPC3->Text)+StrToInt(edtPC4->Text)+StrToInt(edtPC5->Text)+StrToInt(edtPC6->Text)+StrToInt(edtPC7->Text)+StrToInt(edtPC8->Text)+StrToInt(edtPC9->Text)+StrToInt(edtPC10->Text)+StrToInt(edtPC11->Text)+StrToInt(edtPC12->Text));
edtPETotal->Text = IntToStr(StrToInt(edtPE1->Text)+StrToInt(edtPE2->Text)+StrToInt(edtPE3->Text)+StrToInt(edtPE4->Text)+StrToInt(edtPE5->Text)+StrToInt(edtPE6->Text)+StrToInt(edtPE7->Text)+StrToInt(edtPE8->Text)+StrToInt(edtPE9->Text)+StrToInt(edtPE10->Text)+StrToInt(edtPE11->Text)+StrToInt(edtPE12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmNovaPartida::edtPE11Change(TObject *Sender)
{
edtTP11->Text = IntToStr(StrToInt(edtPC11->Text)+ StrToInt(edtPE11->Text));
edtPCTotal->Text = IntToStr(StrToInt(edtPC1->Text)+StrToInt(edtPC2->Text)+StrToInt(edtPC3->Text)+StrToInt(edtPC4->Text)+StrToInt(edtPC5->Text)+StrToInt(edtPC6->Text)+StrToInt(edtPC7->Text)+StrToInt(edtPC8->Text)+StrToInt(edtPC9->Text)+StrToInt(edtPC10->Text)+StrToInt(edtPC11->Text)+StrToInt(edtPC12->Text));
edtPETotal->Text = IntToStr(StrToInt(edtPE1->Text)+StrToInt(edtPE2->Text)+StrToInt(edtPE3->Text)+StrToInt(edtPE4->Text)+StrToInt(edtPE5->Text)+StrToInt(edtPE6->Text)+StrToInt(edtPE7->Text)+StrToInt(edtPE8->Text)+StrToInt(edtPE9->Text)+StrToInt(edtPE10->Text)+StrToInt(edtPE11->Text)+StrToInt(edtPE12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmNovaPartida::edtPE12Change(TObject *Sender)
{
edtTP12->Text = IntToStr(StrToInt(edtPC12->Text)+ StrToInt(edtPE12->Text));
edtPCTotal->Text = IntToStr(StrToInt(edtPC1->Text)+StrToInt(edtPC2->Text)+StrToInt(edtPC3->Text)+StrToInt(edtPC4->Text)+StrToInt(edtPC5->Text)+StrToInt(edtPC6->Text)+StrToInt(edtPC7->Text)+StrToInt(edtPC8->Text)+StrToInt(edtPC9->Text)+StrToInt(edtPC10->Text)+StrToInt(edtPC11->Text)+StrToInt(edtPC12->Text));
edtPETotal->Text = IntToStr(StrToInt(edtPE1->Text)+StrToInt(edtPE2->Text)+StrToInt(edtPE3->Text)+StrToInt(edtPE4->Text)+StrToInt(edtPE5->Text)+StrToInt(edtPE6->Text)+StrToInt(edtPE7->Text)+StrToInt(edtPE8->Text)+StrToInt(edtPE9->Text)+StrToInt(edtPE10->Text)+StrToInt(edtPE11->Text)+StrToInt(edtPE12->Text));
}
void __fastcall TfrmNovaPartida::edtPETotalChange(TObject *Sender)
{
edtTPTotal->Text = IntToStr(StrToInt(edtPCTotal->Text)+StrToInt(edtPETotal->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmNovaPartida::edtCCTotalChange(TObject *Sender)
{
edtTCTotal->Text = IntToStr(StrToInt(edtCCTotal->Text)+StrToInt(edtCETotal->Text));
}
//---------------------------------------------------------------------------
void __fastcall TfrmNovaPartida::FormClose(TObject *Sender, TCloseAction &Action)

{
DM1->cdsTime->Active = false;
DM1->cdsAtleta2->Active = false;
DM1->cdsScoutpartida->Active = false;
DM1->cdsScoutatleta->Active = false;
DM1->cdsPartida->Active = false;
}
//---------------------------------------------------------------------------
void __fastcall TfrmNovaPartida::btnSalvarScoutClick(TObject *Sender)
{
//VALIDAÇÃO DOS CAMPOS
if (edtAdversario->Text == "ADVERSÁRIO" || edtLocalPartida->Text == "LOCAL DA PARTIDA" || edtAdversario->Text == "" || edtLocalPartida->Text == "")
{
	MessageBoxA(NULL, "Favor preencher os campos: \n\n Nome do Adversário e  \n Local da partida \n\ncom os dados corretamente.", "Cadastro de Scout", MB_OK);
	edtAdversario->SetFocus();
}
else
{
	try
	{
		DM1->cdsScoutpartida->Append();
		DM1->cdsScoutpartida->FieldByName("TotalAssistencias_Scout")->AsString = edtATotal->Text.c_str();
		DM1->cdsScoutpartida->FieldByName("TotalChutesCertos_Scout")->AsString = edtCCTotal->Text.c_str();
		DM1->cdsScoutpartida->FieldByName("TotalChutes_Scout")->AsString = edtTCTotal->Text.c_str();
		DM1->cdsScoutpartida->FieldByName("TotalChutesErrados_Scout")->AsString = edtCETotal->Text.c_str();
		DM1->cdsScoutpartida->FieldByName("TotalPasses_Scout")->AsString = edtTPTotal->Text.c_str();
		DM1->cdsScoutpartida->FieldByName("TotalPassesCertos_Scout")->AsString = edtPCTotal->Text.c_str();
		DM1->cdsScoutpartida->FieldByName("TotalPassesErrados_Scout")->AsString = edtPETotal->Text.c_str();
		DM1->cdsScoutpartida->FieldByName("p100PassesCertos_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtPCTotal->Text)/StrToFloat(edtTPTotal->Text))*100));
		DM1->cdsScoutpartida->FieldByName("p100PassesErrados_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtPETotal->Text)/StrToFloat(edtTPTotal->Text))*100));
		DM1->cdsScoutpartida->FieldByName("p100ChutesCertos_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtCCTotal->Text)/StrToFloat(edtTCTotal->Text))*100));
		DM1->cdsScoutpartida->FieldByName("p100ChutesErrados_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtCETotal->Text)/StrToFloat(edtTCTotal->Text))*100));
		//DM1->cdsScoutpartida->FieldByName("TotalGols_Scout")->AsString = edtGTotal->Text.c_str();

		DM1->cdsScoutpartida->ApplyUpdates(0);
		DM1->cdsScoutpartida->Refresh();

		DM1->cdsPartida->Append();
		DM1->cdsPartida->FieldByName("Local_Partida")->AsString = edtLocalPartida->Text.c_str();
//		DTPDataPartida->Format = "yyyy/dd/MM";
		DM1->cdsPartida->FieldByName("Data_Partida")->AsDateTime = DTPDataPartida->Date;
//		DTPDataPartida->Format = "";
		DM1->cdsPartida->FieldByName("Adversario_Partida")->AsString = edtAdversario->Text.c_str();
		DM1->cdsPartida->FieldByName("GolsContra_Partida")->AsString = edtGolsContra->Text.c_str();
		DM1->cdsPartida->FieldByName("GolsPro_Partida")->AsString = edtGolsPro->Text.c_str();
		DM1->cdsPartida->FieldByName("Cod_Time_Partida")->AsInteger = DM1->cdsTime->FieldByName("Cod_Time")->AsInteger;
		DM1->cdsPartida->FieldByName("Cod_Scout_Partida")->AsInteger = DM1->cdsScoutpartidaCod_Scout->Value;
		DM1->cdsPartida->ApplyUpdates(0);
		DM1->cdsPartida->Refresh();

		DM1->cdsAtleta2->First();
		for (int i = 1; i <= NAtletas; i++)
		{
			if (i == 1)
			{
				DM1->cdsScoutatleta->Append();
				DM1->cdsScoutatleta->FieldByName("Total_Passes_Scout")->AsString = edtTP1->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalPassesCertos_Scout")->AsString = edtPC1->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalPassesErrados_Scout")->AsString = edtPE1->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Gols_Scout")->AsString = edtG1->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Assistencias_Scout")->AsString = edtA1->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutes_Scout")->AsString = edtTC1->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutesCertos_Scout")->AsString = edtCC1->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutesErrados_Scout")->AsString = edtCE1->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Cod_Atleta_Scoult")->AsInteger = DM1->cdsAtleta2Cod_Atleta->Value;
				DM1->cdsScoutatleta->FieldByName("Cod_Partida_Scoult")->AsInteger = DM1->cdsPartidaCod_Partida->Value;
				DM1->cdsScoutatleta->FieldByName("p100PassesCertos_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtPC1->Text)/StrToFloat(edtTP1->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100PassesErrados_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtPE1->Text)/StrToFloat(edtTP1->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100ChutesCertos_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtCC1->Text)/StrToFloat(edtTC1->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100ChutesErrados_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtCE1->Text)/StrToFloat(edtTC1->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100Assistencias_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtA1->Text)/StrToFloat(edtATotal->Text))*100));
				DM1->cdsScoutatleta->ApplyUpdates(0);
				DM1->cdsScoutatleta->Refresh();
				DM1->cdsAtleta2->Next();
			}
			if (i == 2)
			{
				DM1->cdsScoutatleta->Append();
				DM1->cdsScoutatleta->FieldByName("Total_Passes_Scout")->AsString = edtTP2->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalPassesCertos_Scout")->AsString = edtPC2->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalPassesErrados_Scout")->AsString = edtPE2->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Gols_Scout")->AsString = edtG2->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Assistencias_Scout")->AsString = edtA2->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutes_Scout")->AsString = edtTC2->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutesCertos_Scout")->AsString = edtCC2->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutesErrados_Scout")->AsString = edtCE2->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Cod_Atleta_Scoult")->AsInteger = DM1->cdsAtleta2Cod_Atleta->Value;
				DM1->cdsScoutatleta->FieldByName("Cod_Partida_Scoult")->AsInteger = DM1->cdsPartidaCod_Partida->Value;
				DM1->cdsScoutatleta->FieldByName("p100PassesCertos_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtPC2->Text)/StrToFloat(edtTP2->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100PassesErrados_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtPE2->Text)/StrToFloat(edtTP2->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100ChutesCertos_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtCC2->Text)/StrToFloat(edtTC2->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100ChutesErrados_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtCE2->Text)/StrToFloat(edtTC2->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100Assistencias_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtA2->Text)/StrToFloat(edtATotal->Text))*100));
				DM1->cdsScoutatleta->ApplyUpdates(0);
				DM1->cdsScoutatleta->Refresh();
				DM1->cdsAtleta2->Next();
			}
			if (i == 3)
			{
				DM1->cdsScoutatleta->Append();
				DM1->cdsScoutatleta->FieldByName("Total_Passes_Scout")->AsString = edtTP3->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalPassesCertos_Scout")->AsString = edtPC3->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalPassesErrados_Scout")->AsString = edtPE3->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Gols_Scout")->AsString = edtG3->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Assistencias_Scout")->AsString = edtA3->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutes_Scout")->AsString = edtTC3->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutesCertos_Scout")->AsString = edtCC3->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutesErrados_Scout")->AsString = edtCE3->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Cod_Atleta_Scoult")->AsInteger = DM1->cdsAtleta2Cod_Atleta->Value;
				DM1->cdsScoutatleta->FieldByName("Cod_Partida_Scoult")->AsInteger = DM1->cdsPartidaCod_Partida->Value;
				DM1->cdsScoutatleta->FieldByName("p100PassesCertos_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtPC3->Text)/StrToFloat(edtTP3->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100PassesErrados_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtPE3->Text)/StrToFloat(edtTP3->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100ChutesCertos_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtCC3->Text)/StrToFloat(edtTC3->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100ChutesErrados_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtCE3->Text)/StrToFloat(edtTC3->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100Assistencias_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtA3->Text)/StrToFloat(edtATotal->Text))*100));
				DM1->cdsScoutatleta->ApplyUpdates(0);
				DM1->cdsScoutatleta->Refresh();
				DM1->cdsAtleta2->Next();
			}
			if (i == 4)
			{
				DM1->cdsScoutatleta->Append();
				DM1->cdsScoutatleta->FieldByName("Total_Passes_Scout")->AsString = edtTP4->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalPassesCertos_Scout")->AsString = edtPC4->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalPassesErrados_Scout")->AsString = edtPE4->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Gols_Scout")->AsString = edtG4->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Assistencias_Scout")->AsString = edtA4->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutes_Scout")->AsString = edtTC4->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutesCertos_Scout")->AsString = edtCC4->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutesErrados_Scout")->AsString = edtCE4->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Cod_Atleta_Scoult")->AsInteger = DM1->cdsAtleta2Cod_Atleta->Value;
				DM1->cdsScoutatleta->FieldByName("Cod_Partida_Scoult")->AsInteger = DM1->cdsPartidaCod_Partida->Value;
				DM1->cdsScoutatleta->FieldByName("p100PassesCertos_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtPC4->Text)/StrToFloat(edtTP4->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100PassesErrados_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtPE4->Text)/StrToFloat(edtTP4->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100ChutesCertos_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtCC4->Text)/StrToFloat(edtTC4->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100ChutesErrados_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtCE4->Text)/StrToFloat(edtTC4->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100Assistencias_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtA4->Text)/StrToFloat(edtATotal->Text))*100));
				DM1->cdsScoutatleta->ApplyUpdates(0);
				DM1->cdsScoutatleta->Refresh();
				DM1->cdsAtleta2->Next();
			}
			if (i == 5)
			{
				DM1->cdsScoutatleta->Append();
				DM1->cdsScoutatleta->FieldByName("Total_Passes_Scout")->AsString = edtTP5->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalPassesCertos_Scout")->AsString = edtPC5->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalPassesErrados_Scout")->AsString = edtPE5->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Gols_Scout")->AsString = edtG5->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Assistencias_Scout")->AsString = edtA5->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutes_Scout")->AsString = edtTC5->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutesCertos_Scout")->AsString = edtCC5->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutesErrados_Scout")->AsString = edtCE5->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Cod_Atleta_Scoult")->AsInteger = DM1->cdsAtleta2Cod_Atleta->Value;
				DM1->cdsScoutatleta->FieldByName("Cod_Partida_Scoult")->AsInteger = DM1->cdsPartidaCod_Partida->Value;
				DM1->cdsScoutatleta->FieldByName("p100PassesCertos_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtPC5->Text)/StrToFloat(edtTP5->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100PassesErrados_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtPE5->Text)/StrToFloat(edtTP5->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100ChutesCertos_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtCC5->Text)/StrToFloat(edtTC5->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100ChutesErrados_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtCE5->Text)/StrToFloat(edtTC5->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100Assistencias_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtA5->Text)/StrToFloat(edtATotal->Text))*100));
				DM1->cdsScoutatleta->ApplyUpdates(0);
				DM1->cdsScoutatleta->Refresh();
				DM1->cdsAtleta2->Next();
			}
			if (i == 6)
			{
				DM1->cdsScoutatleta->Append();
				DM1->cdsScoutatleta->FieldByName("Total_Passes_Scout")->AsString = edtTP6->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalPassesCertos_Scout")->AsString = edtPC6->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalPassesErrados_Scout")->AsString = edtPE6->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Gols_Scout")->AsString = edtG6->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Assistencias_Scout")->AsString = edtA6->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutes_Scout")->AsString = edtTC6->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutesCertos_Scout")->AsString = edtCC6->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutesErrados_Scout")->AsString = edtCE6->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Cod_Atleta_Scoult")->AsInteger = DM1->cdsAtleta2Cod_Atleta->Value;
				DM1->cdsScoutatleta->FieldByName("Cod_Partida_Scoult")->AsInteger = DM1->cdsPartidaCod_Partida->Value;
				DM1->cdsScoutatleta->FieldByName("p100PassesCertos_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtPC6->Text)/StrToFloat(edtTP6->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100PassesErrados_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtPE6->Text)/StrToFloat(edtTP6->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100ChutesCertos_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtCC6->Text)/StrToFloat(edtTC6->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100ChutesErrados_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtCE6->Text)/StrToFloat(edtTC6->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100Assistencias_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtA6->Text)/StrToFloat(edtATotal->Text))*100));
				DM1->cdsScoutatleta->ApplyUpdates(0);
				DM1->cdsScoutatleta->Refresh();
				DM1->cdsAtleta2->Next();
			}
			if (i == 7)
			{
				DM1->cdsScoutatleta->Append();
				DM1->cdsScoutatleta->FieldByName("Total_Passes_Scout")->AsString = edtTP7->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalPassesCertos_Scout")->AsString = edtPC7->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalPassesErrados_Scout")->AsString = edtPE7->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Gols_Scout")->AsString = edtG7->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Assistencias_Scout")->AsString = edtA7->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutes_Scout")->AsString = edtTC7->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutesCertos_Scout")->AsString = edtCC7->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutesErrados_Scout")->AsString = edtCE7->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Cod_Atleta_Scoult")->AsInteger = DM1->cdsAtleta2Cod_Atleta->Value;
				DM1->cdsScoutatleta->FieldByName("Cod_Partida_Scoult")->AsInteger = DM1->cdsPartidaCod_Partida->Value;
				DM1->cdsScoutatleta->FieldByName("p100PassesCertos_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtPC7->Text)/StrToFloat(edtTP7->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100PassesErrados_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtPE7->Text)/StrToFloat(edtTP7->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100ChutesCertos_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtCC7->Text)/StrToFloat(edtTC7->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100ChutesErrados_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtCE7->Text)/StrToFloat(edtTC7->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100Assistencias_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtA7->Text)/StrToFloat(edtATotal->Text))*100));
				DM1->cdsScoutatleta->ApplyUpdates(0);
				DM1->cdsScoutatleta->Refresh();
				DM1->cdsAtleta2->Next();
			}
			if (i == 8)
			{
				DM1->cdsScoutatleta->Append();
				DM1->cdsScoutatleta->FieldByName("Total_Passes_Scout")->AsString = edtTP8->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalPassesCertos_Scout")->AsString = edtPC8->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalPassesErrados_Scout")->AsString = edtPE8->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Gols_Scout")->AsString = edtG8->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Assistencias_Scout")->AsString = edtA8->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutes_Scout")->AsString = edtTC8->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutesCertos_Scout")->AsString = edtCC8->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutesErrados_Scout")->AsString = edtCE8->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Cod_Atleta_Scoult")->AsInteger = DM1->cdsAtleta2Cod_Atleta->Value;
				DM1->cdsScoutatleta->FieldByName("Cod_Partida_Scoult")->AsInteger = DM1->cdsPartidaCod_Partida->Value;
				DM1->cdsScoutatleta->FieldByName("p100PassesCertos_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtPC8->Text)/StrToFloat(edtTP8->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100PassesErrados_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtPE8->Text)/StrToFloat(edtTP8->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100ChutesCertos_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtCC8->Text)/StrToFloat(edtTC8->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100ChutesErrados_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtCE8->Text)/StrToFloat(edtTC8->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100Assistencias_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtA8->Text)/StrToFloat(edtATotal->Text))*100));
				DM1->cdsScoutatleta->ApplyUpdates(0);
				DM1->cdsScoutatleta->Refresh();
				DM1->cdsAtleta2->Next();
			}
			if (i == 9)
			{
				DM1->cdsScoutatleta->Append();
				DM1->cdsScoutatleta->FieldByName("Total_Passes_Scout")->AsString = edtTP9->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalPassesCertos_Scout")->AsString = edtPC9->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalPassesErrados_Scout")->AsString = edtPE9->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Gols_Scout")->AsString = edtG9->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Assistencias_Scout")->AsString = edtA9->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutes_Scout")->AsString = edtTC9->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutesCertos_Scout")->AsString = edtCC9->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutesErrados_Scout")->AsString = edtCE9->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Cod_Atleta_Scoult")->AsInteger = DM1->cdsAtleta2Cod_Atleta->Value;
				DM1->cdsScoutatleta->FieldByName("Cod_Partida_Scoult")->AsInteger = DM1->cdsPartidaCod_Partida->Value;
				DM1->cdsScoutatleta->FieldByName("p100PassesCertos_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtPC9->Text)/StrToFloat(edtTP9->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100PassesErrados_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtPE9->Text)/StrToFloat(edtTP9->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100ChutesCertos_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtCC9->Text)/StrToFloat(edtTC9->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100ChutesErrados_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtCE9->Text)/StrToFloat(edtTC9->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100Assistencias_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtA9->Text)/StrToFloat(edtATotal->Text))*100));
				DM1->cdsScoutatleta->ApplyUpdates(0);
				DM1->cdsScoutatleta->Refresh();
				DM1->cdsAtleta2->Next();
			}
			if (i == 10)
			{
				DM1->cdsScoutatleta->Append();
				DM1->cdsScoutatleta->FieldByName("Total_Passes_Scout")->AsString = edtTP10->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalPassesCertos_Scout")->AsString = edtPC10->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalPassesErrados_Scout")->AsString = edtPE10->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Gols_Scout")->AsString = edtG10->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Assistencias_Scout")->AsString = edtA10->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutes_Scout")->AsString = edtTC10->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutesCertos_Scout")->AsString = edtCC10->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutesErrados_Scout")->AsString = edtCE10->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Cod_Atleta_Scoult")->AsInteger = DM1->cdsAtleta2Cod_Atleta->Value;
				DM1->cdsScoutatleta->FieldByName("Cod_Partida_Scoult")->AsInteger = DM1->cdsPartidaCod_Partida->Value;
				DM1->cdsScoutatleta->FieldByName("p100PassesCertos_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtPC10->Text)/StrToFloat(edtTP10->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100PassesErrados_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtPE10->Text)/StrToFloat(edtTP10->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100ChutesCertos_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtCC10->Text)/StrToFloat(edtTC10->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100ChutesErrados_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtCE10->Text)/StrToFloat(edtTC10->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100Assistencias_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtA10->Text)/StrToFloat(edtATotal->Text))*100));
				DM1->cdsScoutatleta->ApplyUpdates(0);
				DM1->cdsScoutatleta->Refresh();
				DM1->cdsAtleta2->Next();
			}
			if (i == 11)
			{
				DM1->cdsScoutatleta->Append();
				DM1->cdsScoutatleta->FieldByName("Total_Passes_Scout")->AsString = edtTP11->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalPassesCertos_Scout")->AsString = edtPC11->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalPassesErrados_Scout")->AsString = edtPE11->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Gols_Scout")->AsString = edtG11->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Assistencias_Scout")->AsString = edtA11->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutes_Scout")->AsString = edtTC11->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutesCertos_Scout")->AsString = edtCC11->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutesErrados_Scout")->AsString = edtCE11->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Cod_Atleta_Scoult")->AsInteger = DM1->cdsAtleta2Cod_Atleta->Value;
				DM1->cdsScoutatleta->FieldByName("Cod_Partida_Scoult")->AsInteger = DM1->cdsPartidaCod_Partida->Value;
				DM1->cdsScoutatleta->FieldByName("p100PassesCertos_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtPC11->Text)/StrToFloat(edtTP11->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100PassesErrados_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtPE11->Text)/StrToFloat(edtTP11->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100ChutesCertos_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtCC11->Text)/StrToFloat(edtTC11->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100ChutesErrados_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtCE11->Text)/StrToFloat(edtATotal->Text))*100));
				DM1->cdsScoutatleta->ApplyUpdates(0);
				DM1->cdsScoutatleta->Refresh();
				DM1->cdsAtleta2->Next();
			}
			if (i == 12)
			{
				DM1->cdsScoutatleta->Append();
				DM1->cdsScoutatleta->FieldByName("Total_Passes_Scout")->AsString = edtTP12->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalPassesCertos_Scout")->AsString = edtPC12->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalPassesErrados_Scout")->AsString = edtPE12->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Gols_Scout")->AsString = edtG12->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Assistencias_Scout")->AsString = edtA12->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutes_Scout")->AsString = edtTC12->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutesCertos_Scout")->AsString = edtCC12->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("TotalChutesErrados_Scout")->AsString = edtCE12->Text.c_str();
				DM1->cdsScoutatleta->FieldByName("Cod_Atleta_Scoult")->AsInteger = DM1->cdsAtleta2Cod_Atleta->Value;
				DM1->cdsScoutatleta->FieldByName("Cod_Partida_Scoult")->AsInteger = DM1->cdsPartidaCod_Partida->Value;
				DM1->cdsScoutatleta->FieldByName("p100PassesCertos_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtPC12->Text)/StrToFloat(edtTP12->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100PassesErrados_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtPE12->Text)/StrToFloat(edtTP12->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100ChutesCertos_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtCC12->Text)/StrToFloat(edtTC12->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100ChutesErrados_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtCE12->Text)/StrToFloat(edtTC12->Text))*100));
				DM1->cdsScoutatleta->FieldByName("p100Assistencias_Scout")->AsString = FormatFloat("#0.00", ((StrToFloat(edtA12->Text)/StrToFloat(edtATotal->Text))*100));
				DM1->cdsScoutatleta->ApplyUpdates(0);
				DM1->cdsScoutatleta->Refresh();
				DM1->cdsAtleta2->Next();
			}
		}

		//LIMPAR TODOS OS CAMPOS, PARA O PRÓXIMO SCOULT
		edtAdversario->Text = "ADVERSÁRIO";
		edtLocalPartida->Text = "LOCAL DA PARTIDA";
		edtGolsContra->Text = "0";

		edtPC1->Text = "0";
		edtPC2->Text = "0";
		edtPC3->Text = "0";
		edtPC4->Text = "0";
		edtPC5->Text = "0";
		edtPC6->Text = "0";
		edtPC7->Text = "0";
		edtPC8->Text = "0";
		edtPC9->Text = "0";
		edtPC10->Text = "0";
		edtPC11->Text = "0";
		edtPC12->Text = "0";

		edtPE1->Text = "0";
		edtPE2->Text = "0";
		edtPE3->Text = "0";
		edtPE4->Text = "0";
		edtPE5->Text = "0";
		edtPE6->Text = "0";
		edtPE7->Text = "0";
		edtPE8->Text = "0";
		edtPE9->Text = "0";
		edtPE10->Text = "0";
		edtPE11->Text = "0";
		edtPE12->Text = "0";

		edtCC1->Text = "0";
		edtCC2->Text = "0";
		edtCC3->Text = "0";
		edtCC4->Text = "0";
		edtCC5->Text = "0";
		edtCC6->Text = "0";
		edtCC7->Text = "0";
		edtCC8->Text = "0";
		edtCC9->Text = "0";
		edtCC10->Text = "0";
		edtCC11->Text = "0";
		edtCC12->Text = "0";

		edtCE1->Text = "0";
		edtCE2->Text = "0";
		edtCE3->Text = "0";
		edtCE4->Text = "0";
		edtCE5->Text = "0";
		edtCE6->Text = "0";
		edtCE7->Text = "0";
		edtCE8->Text = "0";
		edtCE9->Text = "0";
		edtCE10->Text = "0";
		edtCE11->Text = "0";
		edtCE12->Text = "0";

		edtA1->Text = "0";
		edtA2->Text = "0";
		edtA3->Text = "0";
		edtA4->Text = "0";
		edtA5->Text = "0";
		edtA6->Text = "0";
		edtA7->Text = "0";
		edtA8->Text = "0";
		edtA9->Text = "0";
		edtA10->Text = "0";
		edtA11->Text = "0";
		edtA12->Text = "0";

		edtG1->Text = "0";
		edtG2->Text = "0";
		edtG3->Text = "0";
		edtG4->Text = "0";
		edtG5->Text = "0";
		edtG6->Text = "0";
		edtG7->Text = "0";
		edtG8->Text = "0";
		edtG9->Text = "0";
		edtG10->Text = "0";
		edtG11->Text = "0";
		edtG12->Text = "0";

		ShowMessage("Informações salvas com sucesso!");
	}
	catch (Exception& E)
	{
		DM1->cdsScoutpartida->Cancel();
		DM1->cdsScoutpartida->Refresh();
		DM1->cdsPartida->Cancel();
		DM1->cdsPartida->Refresh();
		DM1->cdsScoutatleta->Cancel();
		DM1->cdsScoutatleta->Refresh();
		ShowMessage("Informações NÃO salvas com sucesso! \nVerifique os dados e tente novamente...");
	}
}
}
//---------------------------------------------------------------------------
void __fastcall TfrmNovaPartida::edtAdversarioMouseUp(TObject *Sender, TMouseButton Button, TShiftState Shift, int X, int Y)

{
edtAdversario->Text = "";
}
//---------------------------------------------------------------------------

void __fastcall TfrmNovaPartida::edtLocalPartidaMouseUp(TObject *Sender, TMouseButton Button, TShiftState Shift, int X, int Y)

{
edtLocalPartida->Text = "";
}
//---------------------------------------------------------------------------

void __fastcall TfrmNovaPartida::btnFecharClick(TObject *Sender)
{
Close();
}
//---------------------------------------------------------------------------

