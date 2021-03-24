from django.db import models
from django.contrib.auth.models import User

class Group(models.Model):
	name = models.CharField(max_length=128)

	def __str__(self):
		return self.name
		
	class Meta:    
		verbose_name = "группу"
		verbose_name_plural = "Группа"

class Opf(models.Model):
	name = models.CharField(max_length=128)
	full_name = models.CharField(max_length=128)

	def __str__(self):
		return self.name

	class Meta:    
		verbose_name = "ОПФ"
		verbose_name_plural = "ОПФ"

class Counterparty(models.Model):

	'''GROUP_CHOICES = [
        ('87', 'Банки'),
        ('838', 'Внутригрупповые'),
        ('845', 'Контрагенты (Поставщики и покупатели, займодавцы)'),
        ('846', 'Налоги и взносы'),
        ('877', 'Сотрудники'),
        ('1206', 'Учредители'),
    ]'''

	id = models.AutoField(primary_key=True, verbose_name='№ контрагента')
	#1c_id = models.IntegerField(default=0)
	group = models.ForeignKey(Group, on_delete=models.CASCADE, verbose_name='Группа') #many to one relation with Group
	user = models.ForeignKey(User, on_delete=models.CASCADE, verbose_name='Создатель') #many to one relation with User
	name = models.CharField(max_length=128, verbose_name='Наименование')
	opf = models.ForeignKey(Opf, on_delete=models.CASCADE) #many to one relation with Opf
	full_name = models.CharField(max_length=128, verbose_name='Полное наименование')
	short_name = models.CharField(max_length=128, verbose_name='Сокращенное наименование')
	inn = models.CharField(max_length=12, verbose_name='ИНН')
	kpp = models.CharField(max_length=12, verbose_name='КПП')
	code_okpo = models.CharField(max_length=128, verbose_name='Код по ОКПО')
	is_security_document = models.BooleanField(verbose_name='Д-ты по фин. безопасности')
	is_physical_face = models.BooleanField(verbose_name='Физ.лицо')
	is_non_resident = models.BooleanField(verbose_name='Нерезидент')
	is_supplier = models.BooleanField(verbose_name='Поставщик')	
	is_buyer = models.BooleanField(verbose_name='Покупатель')
	create_at = models.DateTimeField(auto_now_add=True, verbose_name='Дата создания')
	update_at = models.DateTimeField(auto_now=True, verbose_name='Дата обновления')
	#objects = models.Manager();

	def __str__(self):
		return self.name

	class Meta:    
		verbose_name = "контрагент"
		verbose_name_plural = "Контрагенты"

class Currency(models.Model):
	name = models.CharField(max_length=3)
	code = models.IntegerField(default=0)

	def __str__(self):
		return self.name
	
	class Meta:    
		verbose_name = "валюту "
		verbose_name_plural = "Валюта"

class AccountType(models.Model):
	name = models.CharField(max_length=128)

	def __str__(self):
		return self.name

	class Meta:    
		verbose_name = "тип счета"
		verbose_name_plural = "Типа счета"

class BankDetails(models.Model):
	counterparty  = models.OneToOneField(Counterparty, on_delete=models.CASCADE) #many to one relation with Group
	bank_name = models.CharField(max_length=128, verbose_name='Наименование банка') 	
	bik = models.CharField(max_length=9, verbose_name='БИК')
	correspondent_account = models.CharField(max_length=20, verbose_name='Корр. Счет') 
	checking_account = models.CharField(max_length=20, verbose_name='Расчетный счет')
	account_type = models.ForeignKey(AccountType, on_delete=models.CASCADE, verbose_name='Вид счета')
	current = models.ForeignKey(Currency, on_delete=models.CASCADE, verbose_name='Валюта счета')
	create_at = models.DateTimeField(auto_now_add=True)
	update_at = models.DateTimeField(auto_now=True)

	class Meta:    
		verbose_name = "банковскую реквизиту"
		verbose_name_plural = "Банковские реквизиты"    

class BankInfo(models.Model):
	name = models.CharField(max_length=128) 
	city = models.CharField(max_length=100)
	bik = models.CharField(max_length=9)
	correspondent_account = models.CharField(max_length=20)

	class Meta:    
		verbose_name = "инфо о банке"
		verbose_name_plural = "Инфо о банках"
