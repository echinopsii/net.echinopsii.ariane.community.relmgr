import logging
import time

__author__ = 'mffrench'

LOGGER = logging.getLogger(__name__)

class LogsStreamer(object):

    is_streaming = False

    @staticmethod
    def start():
        LogsStreamer.is_streaming = True

    @staticmethod
    def stop():
        LogsStreamer.is_streaming = False

    @staticmethod
    def generate_debug(socketio):
        LogsStreamer.is_streaming = True
        with open('/var/log/ariane/ariane_relsrv_debug.log') as f:
            while LogsStreamer.is_streaming:
                time.sleep(1)
                line = f.read()
                socketio.emit('message', {'data': line}, namespace='/streaming/logs')

    @staticmethod
    def generate_info(socketio):
        LogsStreamer.is_streaming = True
        with open('/var/log/ariane/ariane_relsrv_info.log') as f:
            while LogsStreamer.is_streaming:
                time.sleep(1)
                line = f.read()
                socketio.emit('message', {'data': line}, namespace='/streaming/logs')
