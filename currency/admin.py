from django.conf import settings
from django.contrib import admin
from django.utils.html import format_html
from currency.models import Currency, CurrencyExchangeRates

class CurrencyAdmin(admin.ModelAdmin):
	
    list_display = ['name','code','thumbnail']

    def thumbnail(self, obj):
        return format_html('<img src="{}{}" style="width: 16px; \
                           height: 16px"/>'.format(settings.STATIC_URL+"images/",obj.flag))

    thumbnail.short_description = 'flag'

class CurrencyExchangeRatesAdmin(admin.ModelAdmin):
	
    list_display = ['id','date_course','course', 'currency']

admin.site.register(Currency, CurrencyAdmin)
admin.site.register(CurrencyExchangeRates, CurrencyExchangeRatesAdmin)

