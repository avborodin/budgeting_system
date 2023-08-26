from django.conf import settings
import datetime
import urllib.request

#http://cbrates.rbc.ru/tsv/cb/840.tsv
#url = 'http://cbrates.rbc.ru/tsv/840/2021/12/05.tsv'

class Rbc:

    def __init__(self):
        self.url = settings.CURRENCY_RATES_URL
        self.file = '.tsv'
#       self.rate = '0'

    def exchange_rate(self, currency_code, date):

        if currency_code == 1:
            return 1

        if not date:
            date = datetime.date.today()

        url = self.url + str(currency_code) + '/'
        url += date
        url += self.file

        try:
            page = self.file_get_contents(url)
            rate = self.parse(page)
            return rate
        except:
            print("Не удалось получить курс валюты")

    def file_get_contents(self, url):
        get_url = urllib.request.urlopen(url)
        #print("Response Status: "+ str(get_url.getcode()))
        return get_url.read()
    
    def parse(self, page):
        if not page:
            raise Exception("Возможно указан неверный код валюты, также возможно на указанную дату еще не установлен курс валюты, либо сервер \"cbrates.rbc.ru\" недоступен")
        r = page.decode()
        r = r.split('\t')
        
        if r != []:
            res = float(r[1])/float(r[0])
            return res
        else:
            raise Exception("Сервер не выдал результатов по данной валюте на указнную дату")

    def getCourseFrom(self):
        pass

    def numberOfDays(self, y, m):
        leap = 0
        if y % 400 == 0:
            leap = 1
        elif y % 100 == 0:
            leap = 0
        elif y % 4 == 0:
             leap = 1

        if m == 2:
            return 28 + leap

        list = [1,3,5,7,8,10,12]

        if m in list:
            return 31
        return 30
