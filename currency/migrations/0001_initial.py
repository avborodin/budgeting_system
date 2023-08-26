# Generated by Django 4.2 on 2023-07-14 13:23

import currency.models
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Currency',
            fields=[
                ('code', models.IntegerField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=5)),
                ('flag', models.FileField(max_length=1001, upload_to=currency.models.currency_file_name)),
                ('status', models.IntegerField(default=1)),
            ],
            options={
                'db_table': 'currency',
            },
        ),
        migrations.CreateModel(
            name='CurrencyExchangeRates',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date_course', models.DateField(verbose_name='Дата курса')),
                ('course', models.DecimalField(decimal_places=4, max_digits=8)),
                ('currency', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='currency.currency', verbose_name='Валюта курса')),
            ],
            options={
                'db_table': 'currency_exchange_rates',
            },
        ),
    ]
