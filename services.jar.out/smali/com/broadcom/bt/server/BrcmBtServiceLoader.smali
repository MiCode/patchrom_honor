.class public Lcom/broadcom/bt/server/BrcmBtServiceLoader;
.super Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;
.source "BrcmBtServiceLoader.java"


# static fields
.field private static final FM_ALWAYS_ON:Z = true

.field public static final TAG:Ljava/lang/String; = "BrcmBtServiceLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;-><init>()V

    return-void
.end method

.method public static loadServices(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    .line 39
    :try_start_0
    const-string v4, "BrcmBtServiceLoader"

    const-string v5, "Initializing...."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 41
    .local v2, pkgMgr:Landroid/content/pm/PackageManager;
    const-string v4, "com.broadcom.bt.app.system"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 42
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    const-string v4, "system"

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    const-string v4, "BrcmBtServiceLoader"

    const-string v5, "********BT/Fm services configured to run in system process..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v4, "service.brcm.bt.is_sta"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v4, "BrcmBtServiceLoader"

    const-string v5, "Soft On/Off enabled...Starting FM services..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v0, i:Landroid/content/Intent;
    const-string v4, "com.broadcom.bt.service.fm.INIT"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 63
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    .end local v2           #pkgMgr:Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 57
    .restart local v1       #info:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #pkgMgr:Landroid/content/pm/PackageManager;
    :cond_0
    const-string v4, "BrcmBtServiceLoader"

    const-string v5, "********BT/Fm services configured to run as standalone process..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v4, "service.brcm.bt.is_sta"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    .end local v2           #pkgMgr:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 61
    .local v3, t:Ljava/lang/Throwable;
    const-string v4, "BrcmBtServiceLoader"

    const-string v5, "Error reading BrcmBluetoothServices package"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
