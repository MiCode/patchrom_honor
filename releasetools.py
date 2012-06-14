import common
import edify_generator

def WriteRawImage(info, *args):
    info.script.Print("Writing boot.img...")
    info.script.Mount("/cust")
    info.script.AppendExtra('package_extract_file("boot.img", "/cust/image/boot.img");')
    #info.script.AppendExtra('run_program("/sbin/busybox", "rm", "-rf", "/cust/image/cust.img");')
    info.script.Unmount("/cust")
    info.script.ShowProgress(0.1000, 0)
    return True

def AddAssertions(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if ");" in edify.script[i] and ("ro.product.device" in edify.script[i] or "ro.build.product" in edify.script[i]):
            edify.script[i] = edify.script[i].replace(");", ' || getprop("ro.product.device") == "u8860" || getprop("ro.build.product") == "u8860");')
            return

def PatchBootImage(info):
    print "Patch bootimg"
    edify = info.script
    for i in xrange(len(edify.script)):
        if 'assert(apply_patch_check("EMMC:/dev/block/mmcblk0p1' in edify.script[i]:
            #print "edify.scrip[", i, "]=", edify.script[i] 
            s = edify.script[i].split(':')
            e2 = s[3]
            e1 = s[5].split('"')[0]
            edify.script[i] = 'mount("vfat", "EMMC", "/dev/block/mmcblk0p1", "/cust");\n' + 'assert(apply_patch_check("/cust/image/boot.img", "' + e1 +'", "' + e2 + '"));'
            info.script.Unmount("/cust")
        elif 'apply_patch("EMMC:/dev/block/mmcblk0p1' in edify.script[i]:
            #print "edify.scrip[", i, "]=", edify.script[i]
            s = edify.script[i].split(',')
            s[0] = 'apply_patch("/cust/image/boot.img"'
            edify.script[i] = '';
            for j in xrange(len(s) - 1):
                edify.script[i] = edify.script[i] + s[j] + ','
            edify.script[i] = edify.script[i] + s[len(s)-1]

def FullOTA_InstallEnd(info):
    AddAssertions(info)

def IncrementalOTA_InstallEnd(info):
    AddAssertions(info)
    PatchBootImage(info)
