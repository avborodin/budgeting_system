import os
from django.db import models
from django.conf import settings

def currency_file_name(instance, filename):
    ext = filename.split('.')[-1]
    filename = "%s.%s" % (instance.code, ext)

    oldFile = settings.STATIC_ROOT + "images/currency/" + filename
    isFile = os.path.isfile(oldFile)

    if isFile:
        os.remove(oldFile)

    return 'currency/{0}'.format(filename)

# Create your models here.
class Currency(models.Model):
    code = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=5)
    flag = models.FileField(max_length=1001, upload_to=currency_file_name)
    status = models.IntegerField(default=1)

    def __str__(self):
        return self.name

    class Meta:
        db_table="currency"
        verbose_name = "валюту"
        verbose_name_plural = "Валюта"

class CurrencyExchangeRates(models.Model):
    date_course = models.DateField(auto_now=False, verbose_name="Дата курса")
    #code = models.IntegerField(default=1)
    currency = models.ForeignKey(Currency, on_delete=models.CASCADE, verbose_name='Валюта')
    course = models.DecimalField(max_digits=8, decimal_places=4, verbose_name='Курс валюты')

    def __str__(self):
        return str(self.course)

    class Meta:
        db_table="currency_exchange_rates"
        verbose_name = "курс валюты"
        verbose_name_plural = "Курсы валюты"