from django.contrib import admin
from counterparty.models import Group, Opf, AccountType, Counterparty, BankDetails, BankInfo
#from currency.models import Currency
admin.site.site_header = "Администрирование Expo Fusion"

# Register your models here.

#StackedInline
class BankDetailsInline(admin.TabularInline):
	model = BankDetails

class CounterpartyAdmin(admin.ModelAdmin):
	#inlines = ProductAdmin.inlines + (MyProductInline,)
	readonly_fields = ['id','create_at', 'update_at']
	fieldsets = [
		('КОНТРАГЕНТ', {'fields': (
			('id','group', 'user'), 
			('name', 'opf'),
			('short_name', 'full_name'),
			('inn', 'kpp', 'code_okpo'),
			('is_security_document', 'is_physical_face', 'is_non_resident', 'is_supplier', 'is_buyer'),
			('create_at', 'update_at')
		)}),
	]
	
	inlines = [
		BankDetailsInline,
	]

admin.site.register(Group)
admin.site.register(Opf)
#admin.site.register(Currency)
admin.site.register(AccountType)
admin.site.register(Counterparty, CounterpartyAdmin)
admin.site.register(BankDetails)
admin.site.register(BankInfo)
