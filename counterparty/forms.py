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
			'id':forms.TextInput(attrs={'class':'form-control mr-sm-2','readonly':'readonly'}),
            'group':forms.Select(attrs={'class': 'form-control mr-sm-2'}),
			'name':forms.TextInput(attrs={'class':'form-control mr-sm-2','placeholder':'Наименование'}),
			'opf':forms.Select(attrs={'class': 'form-control mr-sm-2'}),
			'short_name':forms.TextInput(attrs={'class':'form-control mr-sm-2','placeholder':'Сокрашенное наименование'}),
			'full_name':forms.TextInput(attrs={'class': 'form-control mr-sm-2','placeholder':'Полное наименование' }),
			'inn':forms.TextInput(attrs={'class':'form-control mr-sm-2','placeholder':'ИНН'}),
			'kpp':forms.TextInput(attrs={'class':'form-control mr-sm-2','placeholder':'КПП'}),
			'code_okpo':forms.TextInput(attrs={'class':'form-control mr-sm-2','placeholder':'Код по ОКПО'}),
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
			'bik':forms.TextInput(attrs={'class':'form-control mr-sm-2','placeholder':'БИК'}),
			'bank_name':forms.TextInput(attrs={'class':'form-control mr-sm-2','placeholder':'Наименование банка'}),
			'correspondent_account':forms.TextInput(attrs={'class':'form-control mr-sm-2','placeholder':'Корр. Счет'}),
			'checking_account':forms.TextInput(attrs={'class':'form-control mr-sm-2','placeholder':'Расчетный cчет'}),
			'account_type':forms.Select(attrs={'class': 'form-control mr-sm-2'}),
			'currency':forms.Select(attrs={'class': 'form-control mr-sm-2'}),
		}