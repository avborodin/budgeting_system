from django.conf import settings
from django.contrib import messages
from django.shortcuts import render, redirect, get_object_or_404
from django.http import HttpResponse, HttpResponseRedirect
from django.template import Context, loader
from django.template.loader import render_to_string
from django.core.mail import EmailMessage
from django.core.exceptions import PermissionDenied
from django.core.paginator import Paginator
from django.contrib.auth.decorators import login_required
from counterparty.forms import CounterpartyForm, BankDetailsForm
from counterparty.models import Counterparty, BankDetails, Group, Opf
from django.http import JsonResponse

#from django.views.decorators.csrf import csrf_exempt
def is_ajax(request):
	return request.META.get('HTTP_X_REQUESTED_WITH') == 'XMLHttpRequest'

# Create your views here.
@login_required(login_url="/login_user/")
def index(request):

	allowed_roles = ['Бухгалтер','Юрист','Директор']
	is_allowed = '0'
	
	if request.user.groups.exists():
		group = request.user.groups.all()[0].name
		if group in allowed_roles:
			is_allowed = '1';

	if request.user.is_superuser:
		is_allowed = '1';
	
	groups = Group.objects.all();
	counterparties = Counterparty.objects.all()
	
	if not (is_allowed):
		counterparties = counterparties.filter(user=request.user)

	if request.GET.get("name", ""):
		name = request.GET.get("name", "")
		counterparties = counterparties.filter(name__icontains=name)
	
	if request.GET.get("group", ""):
		group = request.GET.get("group", "")
		counterparties = counterparties.filter(group=group);
	
	if request.GET.get("inn", ""):
		inn = request.GET.get("inn", "")
		counterparties = counterparties.filter(inn__contains=inn)
	
	paginator = Paginator(counterparties, 25) # Show 25 contacts per page.

	page_number = request.GET.get('page')
	page_obj = paginator.get_page(page_number)

	context = {
		'groups':groups,
		'counterparties':counterparties,
		'page_obj':page_obj,
	}
	return render(request, "index.html", context)

def form_create(request):
	#request.is_ajax and
	is_btn_save = '0';
	html = '';
	
	if is_ajax(request=request):
		if request.method == 'POST' and request.POST.get('is_btn_save') == '1':
			is_btn_save = '1';
			counterparty_form = CounterpartyForm(request.POST, prefix='counterparty')
			bankdetails_form = BankDetailsForm(request.POST, prefix='bankdetails')

			if counterparty_form.is_valid() and bankdetails_form.is_valid():
				data_counterparty = Counterparty()
				data_counterparty.name = counterparty_form.cleaned_data['name'];
				data_counterparty.full_name = counterparty_form.cleaned_data['full_name'];
				data_counterparty.short_name = counterparty_form.cleaned_data['short_name'];
				data_counterparty.inn = counterparty_form.cleaned_data['inn'];
				data_counterparty.kpp = counterparty_form.cleaned_data['kpp'];
				data_counterparty.code_okpo = counterparty_form.cleaned_data['code_okpo'];
				data_counterparty.is_security_document = counterparty_form.cleaned_data['is_security_document'];
				data_counterparty.is_physical_face = counterparty_form.cleaned_data['is_physical_face'];
				data_counterparty.is_non_resident = counterparty_form.cleaned_data['is_non_resident'];
				data_counterparty.is_supplier = counterparty_form.cleaned_data['is_supplier'];
				data_counterparty.is_buyer = counterparty_form.cleaned_data['is_buyer'];
				data_counterparty.group = counterparty_form.cleaned_data['group'];
				data_counterparty.opf = counterparty_form.cleaned_data['opf'];
				data_counterparty.user = counterparty_form.cleaned_data['user'];
				data_counterparty.save()

				#bankdetails_form.counterparty_id = counterparty_form.id
				data_bankdetails = BankDetails()
				data_bankdetails.counterparty_id = data_counterparty.id
				data_bankdetails.bank_name = bankdetails_form.cleaned_data['bank_name'];
				data_bankdetails.bik = bankdetails_form.cleaned_data['bik'];
				data_bankdetails.correspondent_account = bankdetails_form.cleaned_data['correspondent_account'];
				data_bankdetails.checking_account = bankdetails_form.cleaned_data['checking_account'];
				data_bankdetails.account_type = bankdetails_form.cleaned_data['account_type'];
				data_bankdetails.currency = bankdetails_form.cleaned_data['currency'];			
				data_bankdetails.save()
				return HttpResponse("1");
		else:
			counterparty_form = CounterpartyForm(prefix='counterparty')
			bankdetails_form = BankDetailsForm(prefix='bankdetails')

		counterparty_form.initial['user'] = request.user.id
		
		context = {
			'counterparty_form':counterparty_form,
			'bankdetails_form':bankdetails_form,
			'action_name':'form_create',
			'is_btn_save':is_btn_save,
            'counterparty_id':'',
		}
		html = render_to_string("form.html", context, request=request)

	return HttpResponse(html)
	#return render(request,"form.html",context)

def form_edit(request, counterparty_id):
	counterparty_obj = get_object_or_404(Counterparty, pk=counterparty_id)
	if not (request.user.is_superuser or counterparty_obj.user == request.user):
		raise PermissionDenied
	
	html = ''
	if is_ajax(request=request):
		if request.method == 'POST' and request.POST.get('is_btn_save') == '1':
			counterparty_form = CounterpartyForm(request.POST, prefix='counterparty')
			bankdetails_form = BankDetailsForm(request.POST, prefix='bankdetails')

			if counterparty_form.is_valid() and bankdetails_form.is_valid():
				data_counterparty = Counterparty.objects.get(id=counterparty_id)
				data_counterparty.name = counterparty_form.cleaned_data['name'];
				data_counterparty.full_name = counterparty_form.cleaned_data['full_name'];
				data_counterparty.short_name = counterparty_form.cleaned_data['short_name'];
				data_counterparty.inn = counterparty_form.cleaned_data['inn'];
				data_counterparty.kpp = counterparty_form.cleaned_data['kpp'];
				data_counterparty.code_okpo = counterparty_form.cleaned_data['code_okpo'];
				data_counterparty.is_security_document = counterparty_form.cleaned_data['is_security_document'];
				data_counterparty.is_physical_face = counterparty_form.cleaned_data['is_physical_face'];
				data_counterparty.is_non_resident = counterparty_form.cleaned_data['is_non_resident'];
				data_counterparty.is_supplier = counterparty_form.cleaned_data['is_supplier'];
				data_counterparty.is_buyer = counterparty_form.cleaned_data['is_buyer'];
				data_counterparty.group = counterparty_form.cleaned_data['group'];
				data_counterparty.opf = counterparty_form.cleaned_data['opf'];
				data_counterparty.save()

				#bankdetails_form.counterparty_id = counterparty_form.id
				data_bankdetails = BankDetails.objects.get(counterparty_id=counterparty_id)
				data_bankdetails.bank_name = bankdetails_form.cleaned_data['bank_name'];
				data_bankdetails.bik = bankdetails_form.cleaned_data['bik'];
				data_bankdetails.correspondent_account = bankdetails_form.cleaned_data['correspondent_account'];
				data_bankdetails.checking_account = bankdetails_form.cleaned_data['checking_account'];
				data_bankdetails.account_type = bankdetails_form.cleaned_data['account_type'];
				data_bankdetails.currency = bankdetails_form.cleaned_data['currency'];			
				data_bankdetails.save()
				return HttpResponse("1");
		else:
			counterparty_form = CounterpartyForm(instance=counterparty_obj, prefix='counterparty')
			bankdetails_form = BankDetailsForm(instance=counterparty_obj.bankdetails, prefix='bankdetails')

		context = {
			'counterparty_form':counterparty_form,
			'bankdetails_form':bankdetails_form,
			'action_name':'form_edit'+'/'+str(counterparty_obj.id),
            'counterparty_id': counterparty_obj.id,
		}

		#return render(request,"form.html",context)
		html = render_to_string("form.html", context, request=request)

	return HttpResponse(html)

@login_required(login_url="/login_user/")
def delete(request, counterparty_id):
	counterparty_obj = get_object_or_404(Counterparty, pk=counterparty_id)
	if not (request.user.is_superuser or counterparty_obj.user == request.user):
		raise PermissionDenied

	Counterparty.objects.filter(id=counterparty_id).delete()
	return redirect("/")

def send_mail_with_file(request):

	message = request.POST.get("message",'')
	subject = request.POST.get("subject",'')
	to_email = request.POST.get("to_email",'')
	email = EmailMessage(subject, message, EMAIL_HOST_USER, [to_email])
	email.content_subtype = "html"  

	file = request.FILES['file']
	email.attach(file.name, file.read(), file.content_type);
	email.send()

	return HttpResponse("Sent");

def getCounterparties(request):
	counterparties = Counterparty.objects.all()
	return JsonResponse({'counterparties':list(counterparties.values())});

def getOpf(request):
    if is_ajax(request=request):
        if request.method == 'POST':
            opf_id = request.POST['opf_id']
            opf = Opf.objects.get(pk=opf_id)
            return JsonResponse({'name':opf.name, 'full_name':opf.full_name});
    else:
        return JsonResponse({'error':'sorry'});

def test(request):
	msg = EmailMessage('hhhhh', 'csadasd', '', [''])
	msg.content_subtype = "html"  # Main content is now text/html
	msg.send()	
	t = 1111
	return HttpResponse("Sent {{t}}")
