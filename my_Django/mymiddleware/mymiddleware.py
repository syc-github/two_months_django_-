import logging
import time
logger_statistics=logging.getLogger('statistics')

class TestMiddle():

    def __init__(self,get_response):
        self.get_response=get_response

    def __call__(self, request):
        response=self.get_response(request)
        return response
        print('before call...',response)


class StatisticsMiddle():

    def __init__(self,get_response):
        self.get_response=get_response


    def __call__(self, request):
        print('before call')
        start_time = time.time()
        print(request)
        path=request.path
        # full_path=request.get_full_path
        response = self.get_response(request)
        end_time=time.time()
        info_time=end_time-start_time
        timeArray=time.localtime(info_time)
        time2Array=time.localtime(start_time)

        res_time=time.strftime("%Y-%m-%d %H:%M:%S",timeArray)
        res_time2=time.strftime("%Y-%m-%d %H:%M:%S",time2Array)
        print(res_time2)
        print(res_time)
        print('after call')
        #待完善,转换为人可以看懂的格式
        log_dict={
            'start_time':res_time2,
            # 'full_path':path,
            'use_time':res_time,
            'path':path
        }
        logger_statistics.info(repr(log_dict))
        return response
