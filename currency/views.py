from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from currency.helper import Rbc
import datetime
import calendar
from currency.models import Currency, CurrencyExchangeRates


def index(request):

    #data_test = test.objects.get(id=1)
    #ip = request.META.get('REMOTE_ADDR')

    #return HttpResponse(data_test.titlee)

    #ip = datetime.date(2010,1,1)
    #ip = datetime.datetime.now().day

    rbc = Rbc();
    obj = calendar.Calendar()

    currs = Currency.objects.all().filter(status='1')

    for year in range(2009,2010):
        for month in range(1, 13):
            #for day in range(1, rbc.numberOfDays(year,month)+1):
            for day in obj.itermonthdays(year, month):
                if day:
                    date_course = datetime.date(int(year), int(month), int(day))
                    date_rbc = date_course.strftime("%Y/%m/%d")
                    date_course = date_course.strftime("%Y-%m-%d")

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

    return HttpResponse(day)

