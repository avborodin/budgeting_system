# Generated by Django 4.2 on 2023-07-20 16:47

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('counterparty', '0002_alter_counterparty_options_bankdetails_currency_and_more'),
    ]

    operations = [
        migrations.RenameModel('Currency', 'CurrencyBak'),
        migrations.RenameField('BankDetails', 'current', 'currencybak'),
    ]
