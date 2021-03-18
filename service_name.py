#import ...

from assemblyline_v4_service.common.base import ServiceBase
from assemblyline_v4_service.common.result import Result, ResultSection, BODY_FORMAT

class serviceName(ServiceBase):
  def __init__(self, config=None):
    super(serviceName, self).__init__(config)
    
  def start(self):
		self.log.debug("serviceName service started")
    
  def stop(self):
		self.log.debug("serviceName service ended")
    
  def execute(self, request):
		result = Result()
    # Insert magic here
    request.result = result
