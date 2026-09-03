错误类型：heap-use-after-free

错误信息：
AddressSanitizer: heap-use-after-free

分析：
程序在 free(greeting) 释放内存后，又通过 greeting[0] = 'J' 访问已经释放的内存。

修复：
将 greeting[0] = 'J' 放到 free(greeting) 之前，使用完内存后再调用 free()。

验证：
使用 AddressSanitizer 重新编译并运行，程序不再出现 heap-use-after-free 报错。
