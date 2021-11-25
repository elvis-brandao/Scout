//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "untSelecionaTime.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmSelecionaTime *frmSelecionaTime;
//---------------------------------------------------------------------------
__fastcall TfrmSelecionaTime::TfrmSelecionaTime(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmSelecionaTime::FormShow(TObject *Sender)
{
DM1->cdsTime->Active = true;
}
//---------------------------------------------------------------------------
void __fastcall TfrmSelecionaTime::btnFecharClick(TObject *Sender)
{
Close();
}
//---------------------------------------------------------------------------
void __fastcall TfrmSelecionaTime::edtFiltroChange(TObject *Sender)
{
DM1->cdsTime->Filtered = false;
DM1->cdsTime->Filter = "Nome_Time LIKE" + QuotedStr("%"+edtFiltro->Text+"%");
DM1->cdsTime->Filtered = true;
}
//---------------------------------------------------------------------------
void __fastcall TfrmSelecionaTime::DBGridTecnicosDblClick(TObject *Sender)
{
frmNovaPartida->edtTime->Text = DM1->cdsTime->FieldByName("Nome_Time")->AsString;
DM1->SQLQAtleta->SQL->Clear();
DM1->SQLQAtleta->SQL->Add("SELECT * FROM tbatleta WHERE tbatleta.Cod_Time_Atleta = " + DM1->cdsTime->FieldByName("Cod_Time")->AsString);
DM1->SQLQAtleta->Open();
DM1->cdsAtleta2->Active = true;
DM1->cdsAtleta2->Refresh();
DM1->cdsAtleta2->First();
frmNovaPartida->NAtletas = DM1->cdsAtleta2->RecordCount;
for (int i = 1; i <= frmNovaPartida->NAtletas; i++)
{
	if (i == 1)
	{
		frmNovaPartida->edt1->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 2)
	{
		frmNovaPartida->edt2->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 3)
	{
		frmNovaPartida->edt3->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 4)
	{
		frmNovaPartida->edt4->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 5)
	{
		frmNovaPartida->edt5->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 6)
	{
		frmNovaPartida->edt6->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 7)
	{
		frmNovaPartida->edt7->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 8)
	{
		frmNovaPartida->edt8->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 9)
	{
		frmNovaPartida->edt9->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 10)
	{
		frmNovaPartida->edt10->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 11)
	{
		frmNovaPartida->edt11->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 12)
	{
		frmNovaPartida->edt12->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
}
}
//---------------------------------------------------------------------------

void __fastcall TfrmSelecionaTime::btnSelecionarClick(TObject *Sender)
{
frmNovaPartida->edtTime->Text = DM1->cdsTime->FieldByName("Nome_Time")->AsString;
DM1->SQLQAtleta->SQL->Clear();
DM1->SQLQAtleta->SQL->Add("SELECT * FROM tbatleta WHERE tbatleta.Cod_Time_Atleta = " + DM1->cdsTime->FieldByName("Cod_Time")->AsString);
DM1->SQLQAtleta->Open();
DM1->cdsAtleta2->Active = true;
DM1->cdsAtleta2->Refresh();
DM1->cdsAtleta2->First();
frmNovaPartida->NAtletas = DM1->cdsAtleta2->RecordCount;
for (int i = 1; i <= frmNovaPartida->NAtletas; i++)
{
	if (i == 1)
	{
		frmNovaPartida->edt1->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 2)
	{
		frmNovaPartida->edt2->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 3)
	{
		frmNovaPartida->edt3->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 4)
	{
		frmNovaPartida->edt4->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 5)
	{
		frmNovaPartida->edt5->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 6)
	{
		frmNovaPartida->edt6->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 7)
	{
		frmNovaPartida->edt7->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 8)
	{
		frmNovaPartida->edt8->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 9)
	{
		frmNovaPartida->edt9->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 10)
	{
		frmNovaPartida->edt10->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 11)
	{
		frmNovaPartida->edt11->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 12)
	{
		frmNovaPartida->edt12->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
}
}
//---------------------------------------------------------------------------


