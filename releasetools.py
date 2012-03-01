import common
import edify_generator

def WriteRawImage(info, *args):
    info.script.Print("Writing boot.img...")
    info.script.Mount("/cust")
    info.script.AppendExtra('package_extract_file("boot.img", "/cust/image/boot.img");')
    info.script.Unmount("/cust")
    info.script.ShowProgress(0.1000, 0)
    return True

def FullOTA_InstallEnd(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if "hwu8860" in edify.script[i]:
            edify.script[i] = edify.script[i].replace("hwu8860", "u8860")
            return

