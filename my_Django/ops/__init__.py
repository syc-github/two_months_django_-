import logging
from logging import Filter


class XXXFilter(Filter):
    def filter(self,record):
        if 'syc' in record.msg:
            return False
        else:
            return True