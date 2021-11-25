//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "untBuscaEditaEquipe.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmBuscaEditaEquipe *frmBuscaEditaEquipe;

UnicodeString nomeFotoEquipeEditada;
//---------------------------------------------------------------------------
__fastcall TfrmBuscaEditaEquipe::TfrmBuscaEditaEquipe(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmBuscaEditaEquipe::FormShow(TObject *Sender)
{
DM1->cdsTime->Active = true;
DM1->cdsTime->First();

if(DM1->cdsTime->RecordCount != 0)
{
	DM1->SQLQAtleta->SQL->Clear();
	DM1->SQLQAtleta->SQL->Add("SELECT * FROM tbatleta WHERE tbatleta.Cod_Time_Atleta = " + DM1->cdsTime->FieldByName("Cod_Time")->AsString);
	DM1->SQLQAtleta->Open();
	DM1->cdsAtleta2->Active = true;
	DM1->cdsAtleta2->Refresh();

	if (DM1->cdsTime->FieldByName("Cod_Treinador")->IsNull == true)
		edtTreinador->Text = "SEM TREINADOR";
	else
	{
		DM1->SQLQTreinador->SQL->Clear();
		DM1->SQLQTreinador->SQL->Add("SELECT * FROM tbtreinador");
		DM1->SQLQTreinador->SQL->Add("WHERE tbtreinador.Cod_Treinador = ");
		DM1->SQLQTreinador->SQL->Add(DM1->cdsTime->FieldByName("Cod_Treinador")->AsString);
		DM1->SQLQTreinador->Open();
		DM1->cdsTreinador2->Active = true;
		DM1->cdsTreinador2->Refresh();
		edtTreinador->Text = DM1->cdsTreinador2->FieldByName("Nome_Treinador")->AsString;
	}

	edtNome->Text = DM1->cdsTime->FieldByName("Nome_Time")->AsString;
	imgEscudo->Picture->LoadFromFile(DM1->cdsTime->FieldByName("Foto_Time")->AsString);

	btnAddJogador->Enabled = true;
	btnRemoveElenco->Enabled = true;
	DBNavigator1->SetFocus();
}
}
//---------------------------------------------------------------------------
void __fastcall TfrmBuscaEditaEquipe::DBNavigator1Click(TObject *Sender, TNavigateBtn Button)
{
if(DM1->cdsTime->RecordCount != 0)
{
	DM1->SQLQAtleta->SQL->Clear();
	DM1->SQLQAtleta->SQL->Add("SELECT * FROM tbatleta WHERE tbatleta.Cod_Time_Atleta = " + DM1->cdsTime->FieldByName("Cod_Time")->AsString);
	DM1->SQLQAtleta->Open();
	DM1->cdsAtleta2->Active = true;
	DM1->cdsAtleta2->Refresh();

	if (DM1->cdsTime->FieldByName("Cod_Treinador")->IsNull == true)
		edtTreinador->Text = "SEM TREINADOR";
	else
	{
		DM1->SQLQTreinador->SQL->Clear();
		DM1->SQLQTreinador->SQL->Add("SELECT * FROM tbtreinador");
		DM1->SQLQTreinador->SQL->Add("WHERE tbtreinador.Cod_Treinador = ");
		DM1->SQLQTreinador->SQL->Add(DM1->cdsTime->FieldByName("Cod_Treinador")->AsString);
		DM1->SQLQTreinador->Open();
		DM1->cdsTreinador2->Active = true;
		DM1->cdsTreinador2->Refresh();
		edtTreinador->Text = DM1->cdsTreinador2->FieldByName("Nome_Treinador")->AsString;
	}

	edtNome->Text = DM1->cdsTime->FieldByName("Nome_Time")->AsString;
	imgEscudo->Picture->LoadFromFile(DM1->cdsTime->FieldByName("Foto_Time")->AsString);

	btnAddJogador->Enabled = true;
	btnRemoveElenco->Enabled = true;
	DBNavigator1->SetFocus();
}
}
//---------------------------------------------------------------------------
void __fastcall TfrmBuscaEditaEquipe::btnFecharClick(TObject *Sender)
{
Close();
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaEditaEquipe::btnBuscarEquipeClick(TObject *Sender)
{
frmBuscaEquipe = new TfrmBuscaEquipe(Application);
frmBuscaEquipe->ShowModal();
delete frmBuscaEquipe;
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaEditaEquipe::btnAlteraTreinadorClick(TObject *Sender)
{
frmAlteraTecnico = new TfrmAlteraTecnico(Application);
frmAlteraTecnico->ShowModal();
delete frmAlteraTecnico;
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaEditaEquipe::btnEditarClick(TObject *Sender)
{
if (DM1->cdsTime->RecordCount == 0)
{
	ShowMessage("Não há registros para edição !");
}
else
{
    DM1->cdsTime->Edit();
	DBNavigator1->Enabled = false;
	btnBuscarEquipe->Enabled = false;
	btnBuscar->Enabled = true;
	btnSalvarTime->Enabled = true;
	btnExcluir->Enabled = false;
	btnEditar->Enabled = false;
	btnAlteraTreinador->Enabled = true;
	btnAddJogador->Enabled = false;
	btnRemoveElenco->Enabled = false;

	edtNome->ReadOnly = false;
	nomeFotoEquipeEditada = DM1->cdsTime->FieldByName("Cod_Time")->AsString + ".jpg";
	edtNome->SetFocus();
}
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaEditaEquipe::btnExcluirClick(TObject *Sender)
{
if (DM1->cdsTime->RecordCount == 0)
{
	MessageBoxA(NULL, "Não há registros para excluir!", "Exclusão de Time", MB_OK);
}
else
{
	TMsgDlgBtn myYes = mbYes;
	TMsgDlgBtn myNo = mbNo;

	if(MessageDlg("Deletar TIME ?", mtConfirmation, TMsgDlgButtons() << myYes << myNo,0) == mrYes)
	{
		DM1->cdsTime->Delete();
		DM1->cdsTime->ApplyUpdates(0);
		DM1->cdsTime->Refresh();
		if (DM1->cdsTime->RecordCount == 0)
		{
			btnAddJogador->Enabled = false;
			btnRemoveElenco->Enabled = false;
			edtNome->Clear();
			edtTreinador->Clear();
			imgEscudo->Picture->LoadFromFile("\semfoto.jpg");
			DM1->cdsAtleta2->Refresh();
		}
		else
		{
			DM1->cdsTime->First();
			DM1->SQLQAtleta->SQL->Clear();
			DM1->SQLQAtleta->SQL->Add("SELECT * FROM tbatleta WHERE tbatleta.Cod_Time_Atleta = " + DM1->cdsTime->FieldByName("Cod_Time")->AsString);
			DM1->SQLQAtleta->Open();
			DM1->cdsAtleta2->Active = true;
			DM1->cdsAtleta2->Refresh();

			if (DM1->cdsTime->FieldByName("Cod_Treinador")->IsNull == true)
				edtTreinador->Text = "SEM TREINADOR";
			else
			{
				DM1->SQLQTreinador->SQL->Clear();
				DM1->SQLQTreinador->SQL->Add("SELECT * FROM tbtreinador");
				DM1->SQLQTreinador->SQL->Add("WHERE tbtreinador.Cod_Treinador = ");
				DM1->SQLQTreinador->SQL->Add(DM1->cdsTime->FieldByName("Cod_Treinador")->AsString);
				DM1->SQLQTreinador->Open();
				DM1->cdsTreinador2->Active = true;
				DM1->cdsTreinador2->Refresh();
				edtTreinador->Text = DM1->cdsTreinador2->FieldByName("Nome_Treinador")->AsString;
			}

			edtNome->Text = DM1->cdsTime->FieldByName("Nome_Time")->AsString;
			imgEscudo->Picture->LoadFromFile(DM1->cdsTime->FieldByName("Foto_Time")->AsString);

			DBNavigator1->SetFocus();
		}
		MessageBoxA(NULL, "Time excluido com sucesso!", "Exclusão de Time", MB_OK);
	}
}
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaEditaEquipe::FormClose(TObject *Sender, TCloseAction &Action)
{
DM1->cdsTime->Active = false;
DM1->cdsAtleta2->Active = false;
DM1->cdsTreinador2->Active = false;
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaEditaEquipe::DBGridAtletasDblClick(TObject *Sender)
{
if (DM1->cdsAtleta2->RecordCount == 0)
{
	MessageBoxA(NULL, "Não há nenhum atleta para excluir!", "Exclusão de Atleta", MB_OK);
}
else
{
	TMsgDlgBtn myYes = mbYes;
	TMsgDlgBtn myNo = mbNo;

	if(MessageDlg("Remover este atleta do elenco ?", mtConfirmation, TMsgDlgButtons() << myYes << myNo,0) == mrYes)
	{
		DM1->cdsAtleta2->Edit();
		DM1->cdsAtleta2->FieldByName("Cod_Time_Atleta")->AsString = "";// Clear();
		DM1->cdsAtleta2->ApplyUpdates(0);
		DM1->cdsAtleta2->Refresh();
	}
}
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaEditaEquipe::btnRemoveElencoClick(TObject *Sender)
{
if (DM1->cdsAtleta2->RecordCount == 0)
{
	MessageBoxA(NULL, "Não há nenhum atleta para excluir!", "Exclusão de Atleta", MB_OK);
}
else
{
	TMsgDlgBtn myYes = mbYes;
	TMsgDlgBtn myNo = mbNo;

	if(MessageDlg("Remover este atleta do elenco ?", mtConfirmation, TMsgDlgButtons() << myYes << myNo,0) == mrYes)
	{
		DM1->cdsAtleta2->Edit();
		DM1->cdsAtleta2->FieldByName("Cod_Time_Atleta")->AsString = "";// Clear();
		DM1->cdsAtleta2->ApplyUpdates(0);
		DM1->cdsAtleta2->Refresh();
	}
}
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaEditaEquipe::btnAddJogadorClick(TObject *Sender)
{
frmAddJogador = new TfrmAddJogador(Application);
frmAddJogador->cod = DM1->cdsTime->FieldByName("Cod_Time")->AsString;
frmAddJogador->ShowModal();
delete frmAddJogador;
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaEditaEquipe::btnSalvarTimeClick(TObject *Sender)
{
//VALIDAÇÃO DOS CAMPOS
if (edtNome->Text == "" || edtTreinador->Text == "")
{
	MessageBoxA(NULL, "Favor preencher os campos Nome e Técnico do Time!", "Cadastro de Time", MB_OK);
	edtNome->SetFocus();
}
else
{
	try
	{
		DM1->cdsTime->FieldByName("Nome_Time")->AsString = edtNome->Text.c_str();
		DM1->cdsTime->FieldByName("Foto_Time")->AsString = "FOTOS\\\\TIME\\\\" + nomeFotoEquipeEditada;
		DM1->cdsTime->FieldByName("Cod_Treinador")->AsString = codTecEditado;
		imgEscudo->Picture->SaveToFile("\FOTOS\\TIME\\" + nomeFotoEquipeEditada);
		DM1->cdsTime->ApplyUpdates(0);
		DM1->cdsTime->Refresh();

		ShowMessage("Informações referentes ao time salvas com sucesso!");

		DBNavigator1->Enabled = true;
		btnBuscarEquipe->Enabled = true;
		btnBuscar->Enabled = false;
		btnSalvarTime->Enabled = false;
		btnExcluir->Enabled = true;
		btnEditar->Enabled = true;
		btnAlteraTreinador->Enabled = false;
		btnAddJogador->Enabled = true;
		btnRemoveElenco->Enabled = true;

		edtNome->ReadOnly = true;
		DBNavigator1->SetFocus();
	}
	catch (Exception& E)
	{
		DM1->cdsTime->Cancel(); //cancela a operação
		//Limpa os dados
		DM1->cdsTime->Refresh();

		DBNavigator1->Enabled = true;
		btnBuscarEquipe->Enabled = true;
		btnBuscar->Enabled = false;
		btnSalvarTime->Enabled = false;
		btnExcluir->Enabled = true;
		btnEditar->Enabled = true;
		btnAlteraTreinador->Enabled = false;
		btnAddJogador->Enabled = true;
		btnRemoveElenco->Enabled = true;

		edtNome->ReadOnly = true;
		DBNavigator1->SetFocus();

		ShowMessage("Um erro inesperado ocorreu!\n Erro: " + E.Message);
	}
}
}
//---------------------------------------------------------------------------


