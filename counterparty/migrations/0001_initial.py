# Generated by Django 3.1.3 on 2021-03-22 15:43

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='AccountType',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=128)),
            ],
            options={
                'verbose_name': 'тип счета',
                'verbose_name_plural': 'Типа счета',
            },
        ),
        migrations.CreateModel(
            name='BankInfo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=128)),
                ('city', models.CharField(max_length=100)),
                ('bik', models.CharField(max_length=9)),
                ('correspondent_account', models.CharField(max_length=20)),
            ],
            options={
                'verbose_name': 'инфо о банке',
                'verbose_name_plural': 'Инфо о банках',
            },
        ),
        migrations.CreateModel(
            name='Currency',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=3)),
                ('code', models.IntegerField(default=0)),
            ],
            options={
                'verbose_name': 'валюту ',
                'verbose_name_plural': 'Валюта',
            },
        ),
        migrations.CreateModel(
            name='Group',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=128)),
            ],
            options={
                'verbose_name': 'группу',
                'verbose_name_plural': 'Группа',
            },
        ),
        migrations.CreateModel(
            name='Opf',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=128)),
                ('full_name', models.CharField(max_length=128)),
            ],
            options={
                'verbose_name': 'ОПФ',
                'verbose_name_plural': 'ОПФ',
            },
        ),
        migrations.CreateModel(
            name='Counterparty',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False, verbose_name='№ контрагента')),
                ('name', models.CharField(max_length=128, verbose_name='Наименование')),
                ('full_name', models.CharField(max_length=128, verbose_name='Полное наименование')),
                ('short_name', models.CharField(max_length=128, verbose_name='Сокращенное наименование')),
                ('inn', models.CharField(max_length=12, verbose_name='ИНН')),
                ('kpp', models.CharField(max_length=12, verbose_name='КПП')),
                ('code_okpo', models.CharField(max_length=128, verbose_name='Код по ОКПО')),
                ('is_security_document', models.BooleanField(verbose_name='Д-ты по фин. безопасности')),
                ('is_physical_face', models.BooleanField(verbose_name='Физ.лицо')),
                ('is_non_resident', models.BooleanField(verbose_name='Нерезидент')),
                ('is_supplier', models.BooleanField(verbose_name='Поставщик')),
                ('is_buyer', models.BooleanField(verbose_name='Покупатель')),
                ('create_at', models.DateTimeField(auto_now_add=True, verbose_name='Дата создания')),
                ('update_at', models.DateTimeField(auto_now=True, verbose_name='Дата обновления')),
                ('group', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='counterparty.group', verbose_name='Группа')),
                ('opf', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='counterparty.opf')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='Создатель')),
            ],
            options={
                'verbose_name': 'контрагент',
                'verbose_name_plural': 'Контрагенты',
            },
        ),
        migrations.CreateModel(
            name='BankDetails',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('bank_name', models.CharField(max_length=128)),
                ('bik', models.CharField(max_length=9)),
                ('correspondent_account', models.CharField(max_length=20)),
                ('checking_account', models.CharField(max_length=20)),
                ('create_at', models.DateTimeField(auto_now_add=True)),
                ('update_at', models.DateTimeField(auto_now=True)),
                ('account_type', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='counterparty.accounttype')),
                ('counterparty', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='counterparty.counterparty')),
                ('current', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='counterparty.currency')),
            ],
            options={
                'verbose_name': 'банковскую реквизиту',
                'verbose_name_plural': 'Банковские реквизиты',
            },
        ),
    ]
