# Create your views here.
from rest_framework.decorators import api_view

from myapp.handler import APIResponse
from myapp.models import Doctor
from myapp.serializers import DoctorSerializer


@api_view(['GET'])
def list_api(request):
    if request.method == 'GET':
        doctors = Doctor.objects.all().order_by('-create_time')
        serializer = DoctorSerializer(doctors, many=True)
        return APIResponse(code=0, msg='查询成功', data=serializer.data)

