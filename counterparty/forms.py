from django import forms
from django.forms import ModelForm
from counterparty.models import Counterparty, BankDetails


class CounterpartyForm(ModelForm):
	
	class Meta:
		model = Counterparty
		fields = [	
			'id', 'group', 'user','name',
			'opf','full_name', 'short_name',
			'inn','kpp','code_okpo',
			'is_security_document','is_physical_face',
			'is_non_resident','is_supplier','is_buyer'
		]

		widgets = {
			#'phone'     : TextInput(attrs={'class': 'input','placeholder':'phone'}),
			#'address'   : TextInput(attrs={'class': 'input','placeholder':'address'}),
			#'user':forms.CharField(widget=forms.HiddenInput()),
			'id':forms.TextInput(attrs={'class':'form-control','readonly':'readonly'}),
            'group':forms.Select(attrs={'class': 'form-control'}),
			'name':forms.TextInput(attrs={'class':'form-control','placeholder':'Наименование'}),
			'opf':forms.Select(attrs={'class': 'form-control'}),
			'short_name':forms.TextInput(attrs={'class':'form-control','placeholder':'Сокрашенное наименование', 'readonly':'readonly'}),
			'full_name':forms.TextInput(attrs={'class': 'form-control','placeholder':'Полное наименование', 'readonly':'readonly'}),
			'inn':forms.TextInput(attrs={'class':'form-control','placeholder':'ИНН'}),
			'kpp':forms.TextInput(attrs={'class':'form-control','placeholder':'КПП'}),
			'code_okpo':forms.TextInput(attrs={'class':'form-control','placeholder':'Код по ОКПО'}),
			'is_security_document':forms.CheckboxInput(attrs={'class':'form-check-input'}),
			'is_physical_face':forms.CheckboxInput(attrs={'class':'form-check-input'}),
			'is_non_resident':forms.CheckboxInput(attrs={'class':'form-check-input'}),
			'is_supplier':forms.CheckboxInput(attrs={'class':'form-check-input'}),
			'is_buyer':forms.CheckboxInput(attrs={'class':'form-check-input'}),
			#'image'     : FileInput(attrs={'class': 'input', 'placeholder': 'image', }),
		}

class BankDetailsForm(ModelForm):

	class Meta:
		model = BankDetails
		fields = [
			'bank_name','bik','correspondent_account',
			'checking_account','account_type','currency'
		]

		widgets = {
			'bik':forms.TextInput(attrs={'class':'form-control','placeholder':'БИК'}),
			'bank_name':forms.TextInput(attrs={'class':'form-control','placeholder':'Наименование банка'}),
			'correspondent_account':forms.TextInput(attrs={'class':'form-control','placeholder':'Корр. Счет'}),
			'checking_account':forms.TextInput(attrs={'class':'form-control','placeholder':'Расчетный cчет'}),
			'account_type':forms.Select(attrs={'class': 'form-control'}),
			'currency':forms.Select(attrs={'class': 'form-control'}),
		}
