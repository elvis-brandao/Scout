//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "untBuscaEditaTecnico.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmBuscaEditaTecnico *frmBuscaEditaTecnico;

UnicodeString nomeFotoTecnicoEditado;
//---------------------------------------------------------------------------
__fastcall TfrmBuscaEditaTecnico::TfrmBuscaEditaTecnico(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmBuscaEditaTecnico::FormShow(TObject *Sender)
{
DM1->cdsTreinador->Active = true;
DM1->cdsTreinador->First();
if(DM1->cdsTreinador->RecordCount != 0)
{
	edtNome->Text = DM1->cdsTreinador->FieldByName("Nome_Treinador")->AsString;
	edtRG->Text = DM1->cdsTreinador->FieldByName("RG_Treinador")->AsString;
	imgTecnico->Picture->LoadFromFile(DM1->cdsTreinador->FieldByName("Foto_Treinador")->AsString);
	DBNavigator1->SetFocus();
}
}
//---------------------------------------------------------------------------
void __fastcall TfrmBuscaEditaTecnico::DBNavigator1Click(TObject *Sender, TNavigateBtn Button)
{
if(DM1->cdsTreinador->RecordCount != 0)
{
	edtNome->Text = DM1->cdsTreinador->FieldByName("Nome_Treinador")->AsString;
	edtRG->Text = DM1->cdsTreinador->FieldByName("RG_Treinador")->AsString;
	imgTecnico->Picture->LoadFromFile(DM1->cdsTreinador->FieldByName("Foto_Treinador")->AsString);
	DBNavigator1->SetFocus();
}
}
//---------------------------------------------------------------------------
void __fastcall TfrmBuscaEditaTecnico::btnFecharClick(TObject *Sender)
{
Close();
}
//---------------------------------------------------------------------------
void __fastcall TfrmBuscaEditaTecnico::btnEditarClick(TObject *Sender)
{
if (DM1->cdsTreinador->RecordCount == 0)
{
	ShowMessage("Não há registros para edição !");
}
else
{
	DM1->cdsTreinador->Edit();
	DBNavigator1->Enabled = false;
	btnEditar->Enabled = false;
	btnBuscarTecnico->Enabled = false;
	btnBuscar->Enabled = true;
	btnConfirmar->Enabled = true;
	btnExcluir->Enabled = false;
	edtNome->ReadOnly = false;
	edtRG->ReadOnly = false;
	nomeFotoTecnicoEditado = DM1->cdsTreinador->FieldByName("Cod_Treinador")->AsString + ".jpg";
	edtNome->SetFocus();
}
}
//---------------------------------------------------------------------------
void __fastcall TfrmBuscaEditaTecnico::btnConfirmarClick(TObject *Sender)
{
//VALIDAÇÃO DOS CAMPOS
if (edtNome->Text == "" || edtRG->Text == "")
{
	MessageBoxA(NULL, "Favor preencher os campos Nome e RG!", "Edição de Técnico", MB_OK);
	edtNome->SetFocus();
}
else
{
	try
	{
		DM1->cdsTreinador->FieldByName("Nome_Treinador")->AsString = edtNome->Text.c_str();
		DM1->cdsTreinador->FieldByName("RG_Treinador")->AsString = edtRG->Text.c_str();
		DM1->cdsTreinador->FieldByName("Foto_Treinador")->AsString = "FOTOS\\\\TREINADOR\\\\" + nomeFotoTecnicoEditado;
		imgTecnico->Picture->SaveToFile("\FOTOS\\TREINADOR\\" + nomeFotoTecnicoEditado);
		DM1->cdsTreinador->ApplyUpdates(0);
		DM1->cdsTreinador->Refresh();

		DBNavigator1->Enabled = true;
		btnEditar->Enabled = true;
		btnBuscarTecnico->Enabled = true;
		btnBuscar->Enabled = false;
		btnConfirmar->Enabled = false;
		btnExcluir->Enabled = true;
		edtNome->ReadOnly = true;
		edtRG->ReadOnly = true;

		MessageBoxA(NULL, "Informações salvas com sucesso!", "Edição de Técnico", MB_OK);
		DBNavigator1->SetFocus();
	}
	catch (Exception& E)
	{
		//DM1->cdsTreinador->Cancel(); //cancela a operação
		//Limpa os dados
		//DM1->cdsTreinador->Refresh();
		ShowMessage("Alguem já cadastrado com esse RG!\n"
					"Verifique os dados e tente novamente...");
		edtRG->Clear();
		edtRG->SetFocus();
	}
}
}
//---------------------------------------------------------------------------
void __fastcall TfrmBuscaEditaTecnico::btnBuscarClick(TObject *Sender)
{
if (OPD1->Execute())
{
imgTecnico->Picture->LoadFromFile(OPD1->FileName);
nomeFotoTecnicoEditado = DM1->cdsTreinador->FieldByName("Cod_Treinador")->AsString + ".jpg";
}
}
//---------------------------------------------------------------------------
void __fastcall TfrmBuscaEditaTecnico::btnBuscarTecnicoClick(TObject *Sender)
{
frmBuscaTecnico = new TfrmBuscaTecnico(Application);
frmBuscaTecnico->ShowModal();
delete frmBuscaTecnico;
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaEditaTecnico::btnExcluirClick(TObject *Sender)
{
if (DM1->cdsTreinador->RecordCount == 0)
{
	MessageBoxA(NULL, "Não há registros para excluir!", "Exclusão de Técnico", MB_OK);
}
else
{
	TMsgDlgBtn myYes = mbYes;
	TMsgDlgBtn myNo = mbNo;

	if(MessageDlg("Deletar registro ?", mtConfirmation, TMsgDlgButtons() << myYes << myNo,0) == mrYes)
	{
		DM1->cdsTreinador->Delete();
		DM1->cdsTreinador->ApplyUpdates(0);
		DM1->cdsTreinador->Refresh();
		if (DM1->cdsTreinador->RecordCount == 0)
		{
			edtNome->Clear();
			edtRG->Clear();
			imgTecnico->Picture->LoadFromFile("\semfoto.jpg");
		}
		else
		{
			DM1->cdsTreinador->First();
			edtNome->Text = DM1->cdsTreinador->FieldByName("Nome_Treinador")->AsString;
			edtRG->Text = DM1->cdsTreinador->FieldByName("RG_Treinador")->AsString;
			imgTecnico->Picture->LoadFromFile(DM1->cdsTreinador->FieldByName("Foto_Treinador")->AsString);
			DBNavigator1->SetFocus();
		}
		MessageBoxA(NULL, "Registro excluido com sucesso!", "Exclusão de Técnico", MB_OK);
	}
}
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaEditaTecnico::FormClose(TObject *Sender, TCloseAction &Action)

{
DM1->cdsTreinador->Active = false;
}
//---------------------------------------------------------------------------

