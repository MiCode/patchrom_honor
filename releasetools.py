import common
import edify_generator

def WriteRawImage(info, *args):
    info.script.Print("Writing boot.img...")
    info.script.Mount("/cust")
    info.script.AppendExtra('package_extract_file("boot.img", "/cust/image/boot.img");')
    info.script.Unmount("/cust")
    info.script.ShowProgress(0.1000, 0)
    return True

def AddAssertions(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if ");" in edify.script[i] and ("ro.product.device" in edify.script[i] or "ro.build.product" in edify.script[i]):
            edify.script[i] = edify.script[i].replace(");", ' || getprop("ro.product.device") == "u8860" || getprop("ro.build.product") == "u8860");')
            return

def FullOTA_InstallEnd(info):
    AddAssertions(info)

def IncrementalOTA_InstallEnd(info):
    AddAssertions(info)
