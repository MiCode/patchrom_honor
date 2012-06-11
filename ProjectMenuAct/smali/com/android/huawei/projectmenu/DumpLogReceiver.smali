.class public Lcom/android/huawei/projectmenu/DumpLogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DumpLogReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DumpLogReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, action:Ljava/lang/String;
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 21
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v5, "pref_key_dump_switch"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 24
    .local v1, enableDump:Z
    const-string v5, "pref_key_sleep_log_switch"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 26
    .local v3, enableSleepLog:Z
    const-string v5, "DumpLogReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sleep log has checked="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const-string v5, "pref_key_modem_switch"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 29
    .local v2, enableModem:Z
    const-string v5, "DumpLogReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dump & log has checked="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string v5, "DumpLogReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modem log has checked="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    if-nez v1, :cond_1

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 36
    if-eqz v1, :cond_2

    .line 37
    invoke-static {v9}, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->updataDumpService(Z)V

    .line 40
    :cond_2
    if-eqz v3, :cond_3

    .line 41
    invoke-static {v9}, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->updataSleepLog(Z)V

    .line 44
    :cond_3
    if-eqz v2, :cond_0

    .line 45
    invoke-static {v9}, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->updataModemService(Z)V

    goto :goto_0

    .line 47
    :cond_4
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 48
    invoke-static {v8}, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->updataDumpService(Z)V

    .line 49
    invoke-static {v8}, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->updataSleepLog(Z)V

    .line 50
    invoke-static {v8}, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->updataModemService(Z)V

    goto :goto_0
.end method
