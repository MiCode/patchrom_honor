.class public Lcom/android/huawei/projectmenu/UtilsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UtilsReceiver.java"


# static fields
.field private static final ACTION_CALL_SECRET:Ljava/lang/String; = "android.provider.Telephony.SECRET_CODE"

.field private static final ACTION_MANAGER_INFO:Ljava/lang/String; = "com.android.huawei.projectmenu.MANAGERINFO"

.field private static final ACTION_UPGRADE_SYSTEM:Ljava/lang/String; = "com.android.huawei.projectmenu.ACTION_UPGRADE_SYSTEM"

.field private static final HW_SECRET_CODE:Ljava/lang/String; = "hw_secret_code"

.field private static final MANAGER_INFO_SECRET_NUMBER:Ljava/lang/String; = "94932580"

.field private static final TAG:Ljava/lang/String; = "UtilsReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 28
    .local v6, uri:Landroid/net/Uri;
    if-nez v6, :cond_1

    .line 58
    .end local v6           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 31
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 32
    .local v7, uriStr:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 33
    .local v5, scheme:Ljava/lang/String;
    const-string v8, "ro.build.diplay.nonprojectmenu"

    const-string v9, "false"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, isDisplay:Ljava/lang/String;
    const-string v8, "UtilsReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getData="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " getScheme="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " nonprojectmenu="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string v8, "true"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "hw_secret_code"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "94932580"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 36
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.android.huawei.projectmenu.MANAGERINFO"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .local v2, i:Landroid/content/Intent;
    const-class v8, Lcom/android/huawei/projectmenu/ManagerInfoActivity;

    invoke-virtual {v2, p1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 38
    const/high16 v8, 0x1000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 39
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 43
    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #isDisplay:Ljava/lang/String;
    .end local v5           #scheme:Ljava/lang/String;
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #uriStr:Ljava/lang/String;
    :cond_2
    const-string v8, "com.android.huawei.projectmenu.ACTION_UPGRADE_SYSTEM"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 44
    const-string v8, "ro.config.do_sdcard_upgrade"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 45
    .local v1, doUpgrade:Z
    const/4 v4, 0x0

    .line 46
    .local v4, result:Z
    if-eqz v1, :cond_4

    .line 48
    const-string v8, "true"

    const-string v9, "ro.config.disable.nfc"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 49
    invoke-static {p1}, Lcom/android/internal/app/ShutdownThread;->disableNFC(Landroid/content/Context;)V

    .line 52
    :cond_3
    invoke-static {}, Lcom/android/huawei/projectmenu/ProjectMenu;->updateModemAndApp()Z

    move-result v4

    .line 55
    :cond_4
    const-string v8, "UtilsReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "===== doUpgrade is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " result is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
