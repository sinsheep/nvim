import pynvim
import urllib.request as ur
import urllib.parse as up
import re
import os
import sys

headers = {
    'Cookie': 'JSESSIONID=34E77C1A34F590FBEA2C69048AF35C82; pgv_pvid=2789003169; __qc_wId=733'
}
tturl = 'http://www.tzcoder.cn/acmhome/submitcode.do'
# http://www.tzcoder.cn/acmhome/submitcode.do


@pynvim.plugin
class ojCommit(object):
    def __init__(self, vim):
        self.vim = vim

    @pynvim.command('TestCommand', sync=True)
    def alter_current_line(self) -> None:
        pynvim.api
        # self.vim.current.line = "new line"
        buf = self.vim.current.buffer
        buf.append('hi')

    @pynvim.command("OjCommit")
    def commit(self):
        b = self.vim.current.buffer
        problemId = str(b.name).replace('.cpp', '')[-4:]
        strtxt = "\n".join(b[:])
        fordate = {}
        fordate["contestId"] = "0"
        fordate["localIp"] = "60.180.247.221"
        fordate["problemId"] = problemId
        fordate["language"] = "C++"
        fordate["code"] = strtxt.encode("utf-8")
        refordate = up.urlencode(fordate).encode('utf-8')
        req = ur.Request(tturl, data=refordate, headers=headers)
        ur.urlopen(req)
