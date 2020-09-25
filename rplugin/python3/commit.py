import os
import re
import sys
import urllib.parse as up
import urllib.request as ur

import pynvim

headers = {
    'Cookie': 'JSESSIONID=34E77C1A34F590FBEA2C69048AF35C82; pgv_pvid=2789003169; __qc_wId=733'
}
tturl = 'http://www.tzcoder.cn/acmhome/submitcode.do'
# http://www.tzcoder.cn/acmhome/submitcode.do


@pynvim.plugin
class ojCommit(object):
    def __init__(self, vim) -> None:
        self.vim = vim

    @pynvim.command('TestCommand', sync=True)
    def alter_current_line(self) -> None:
        self.vim.current.line = "new line"

    @pynvim.command("OjCommit")
    def commit(self) -> None:
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

    @pynvim.command("OjLevel")
    def different(self) -> None:
        turl = 'http://www.tzcoder.cn/acmhome/problemList.do?method=show&type=1&page='
        b = self.vim.current.buffer
        anotherId = b.name.replace(".cpp", '')[-4:]
        a = int(anotherId)
        a = int((a-1000)/100)+1
        url = turl+str(a)
        req = ur.Request(url)
        response = ur.urlopen(req)
        html = response.read().decode('gbk')
        arule = r'<td class="EVENLINE"><DIV align="center">' + str(anotherId) +\
            r'[\s\S]+?<td class="EVENLINE"><DIV align="center">([\d]+?)' \
            r'</DIV></td>'
        brule = r'<td class="ODDLINE"><DIV align="center">' + str(anotherId) +\
            r'[\s\S]+?<td class="ODDLINE"><DIV align="center">([\d]+?)' \
            r'</DIV></td>'
        if int(anotherId) % 2 == 0:
            aclist = re.findall(arule, html)
            if not len(aclist):
                aclist = re.findall(brule, html)
        else:
            aclist = re.findall(brule, html)
            if not len(aclist):
                aclist = re.findall(arule, html)
        self.vim.command("echo 'this problem rank is "+aclist[0]+"'")
