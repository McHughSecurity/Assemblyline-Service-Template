from assemblyline_v4_service.common.base import ServiceBase
from assemblyline_v4_service.common.result import Result, ResultSection, BODY_FORMAT

class TemplateService(ServiceBase):
    def __init__(self, config=None):
        super(TemplateService, self).__init__(config)

    def start(self):
        self.log.debug("serviceName service started")

    def stop(self):
        self.log.debug("serviceName service ended")
    
    def execute(self, request):
        result = Result()

        text_section = ResultSection('Example of a default section')
        text_section.add_line("This is a line displayed in the body of the section")
        text_section.set_heuristic(1)
        text_section.add_tag("network.static.domain", "cyber.gc.ca")
        result.add_section(text_section)

        request.result = result
