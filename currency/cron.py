from currency.models import Currency, CurrencyExchangeRates
from currency.helper import Rbc
from datetime import datetime


def load_rbc():

    rbc = Rbc()
    date = datetime.now()
    date_rbc = date.strftime("%Y/%m/%d")
    date_course = date.strftime("%Y-%m-%d")

    currs = Currency.objects.all().filter(status='1')

    for curr in currs:
        exchange_rate = rbc.exchange_rate(currency_code=curr.code, date=date_rbc)

        try:
            currExRate = CurrencyExchangeRates.objects.get(date_course=date_course, currency_id=curr.code)
            currExRate.course = exchange_rate
            currExRate.save()
        except CurrencyExchangeRates.DoesNotExist:
            currExRate = CurrencyExchangeRates()
            currExRate.date_course = date_course
            currExRate.course = exchange_rate
            currExRate.currency_id = curr.code
            currExRate.save()
