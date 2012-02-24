import common

def WriteRawImage(info, *args):
    info.script.Print("Writing boot.img...")
    info.script.Mount("/cust")
    info.script.AppendExtra('package_extract_file("boot.img", "/cust/image/boot.img");')
    info.script.Unmount("/cust")
    info.script.ShowProgress(0.1000, 0)
    return True

