.class public Lcom/android/huawei/projectmenu/DumpPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "DumpPreferenceActivity.java"


# static fields
.field private static final DIALOG_CHANGING_LOG_FLAG:I = 0x1

.field private static final DIALOG_DUMP_OPEN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DumpPreferenceActivity"


# instance fields
.field private mChangingLogPref:Landroid/preference/Preference;

.field private mDumpLogPref:Landroid/preference/Preference;

.field private mModemLogPref:Landroid/preference/Preference;

.field private mSleepLogPref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static checkSdcard()Z
    .locals 2

    .prologue
    .line 190
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, sdcardState:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    const/4 v1, 0x1

    .line 194
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private iniChangingLogState()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 60
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 61
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/huawei/projectmenu/ProjectMenu;->getChangingFlag()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 62
    .local v0, changingLogState:Z
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 63
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_key_changing_switch"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    return-void

    .line 61
    .end local v0           #changingLogState:Z
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static updataDumpService(Z)V
    .locals 2
    .parameter "dumpFlag"

    .prologue
    .line 156
    if-eqz p0, :cond_0

    .line 157
    const-string v0, "ctl.start"

    const-string v1, "applogcat"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "ctl.start"

    const-string v1, "kmsglogcat"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v0, "ctl.stop"

    const-string v1, "applogcat"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v0, "ctl.stop"

    const-string v1, "kmsglogcat"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static updataModemService(Z)V
    .locals 2
    .parameter "modemFlag"

    .prologue
    .line 182
    if-eqz p0, :cond_0

    .line 183
    const-string v0, "ctl.start"

    const-string v1, "modemlogcat"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    const-string v0, "ctl.stop"

    const-string v1, "modemlogcat"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static updataSleepLog(Z)V
    .locals 2
    .parameter "sleepLog"

    .prologue
    .line 170
    if-eqz p0, :cond_0

    .line 171
    const-string v0, "ctl.start"

    const-string v1, "sleeplogcat"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    const-string v0, "ctl.stop"

    const-string v1, "sleeplogcat"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->addPreferencesFromResource(I)V

    .line 43
    const-string v0, "pref_key_dump_switch"

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->mDumpLogPref:Landroid/preference/Preference;

    .line 46
    const-string v0, "pref_key_changing_switch"

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->mChangingLogPref:Landroid/preference/Preference;

    .line 47
    invoke-direct {p0}, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->iniChangingLogState()V

    .line 50
    const-string v0, "pref_key_sleep_log_switch"

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->mSleepLogPref:Landroid/preference/Preference;

    .line 53
    const-string v0, "pref_key_modem_switch"

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->mModemLogPref:Landroid/preference/Preference;

    .line 55
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f060074

    .line 133
    packed-switch p1, :pswitch_data_0

    .line 149
    const-string v0, "DumpPreferenceActivity"

    const-string v1, "error dialog id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 135
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0600a5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 142
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0600bf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 71
    iget-object v5, p0, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->mDumpLogPref:Landroid/preference/Preference;

    if-ne p2, v5, :cond_2

    .line 72
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 73
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v5, "pref_key_dump_switch"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 75
    .local v0, enable:Z
    const-string v5, "DumpPreferenceActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceTreeClick enable is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->checkSdcard()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0, v4}, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->showDialog(I)V

    .line 128
    .end local v0           #enable:Z
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :goto_0
    return v3

    .line 81
    .restart local v0       #enable:Z
    .restart local v1       #prefs:Landroid/content/SharedPreferences;
    :cond_0
    invoke-static {v0}, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->updataDumpService(Z)V

    .line 128
    .end local v0           #enable:Z
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0

    .line 86
    :cond_2
    iget-object v5, p0, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->mModemLogPref:Landroid/preference/Preference;

    if-ne p2, v5, :cond_4

    .line 87
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 88
    .restart local v1       #prefs:Landroid/content/SharedPreferences;
    const-string v5, "pref_key_modem_switch"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 90
    .restart local v0       #enable:Z
    const-string v5, "DumpPreferenceActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modem log enable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->checkSdcard()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v0, :cond_3

    .line 92
    invoke-virtual {p0, v4}, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->showDialog(I)V

    goto :goto_0

    .line 96
    :cond_3
    invoke-static {v0}, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->updataModemService(Z)V

    goto :goto_1

    .line 100
    .end local v0           #enable:Z
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_4
    iget-object v5, p0, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->mChangingLogPref:Landroid/preference/Preference;

    if-ne p2, v5, :cond_6

    .line 101
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 102
    .restart local v1       #prefs:Landroid/content/SharedPreferences;
    const-string v5, "pref_key_changing_switch"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    move v0, v3

    .line 105
    .local v0, enable:I
    :goto_2
    invoke-static {v0}, Lcom/android/huawei/projectmenu/ProjectMenu;->setChangingFlag(I)Z

    move-result v2

    .line 107
    .local v2, succFlag:Z
    if-nez v2, :cond_1

    .line 108
    invoke-virtual {p0, v3}, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->showDialog(I)V

    goto :goto_1

    .end local v0           #enable:I
    .end local v2           #succFlag:Z
    :cond_5
    move v0, v4

    .line 102
    goto :goto_2

    .line 115
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_6
    iget-object v5, p0, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->mSleepLogPref:Landroid/preference/Preference;

    if-ne p2, v5, :cond_1

    .line 116
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 117
    .restart local v1       #prefs:Landroid/content/SharedPreferences;
    const-string v5, "pref_key_sleep_log_switch"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 119
    .local v0, enable:Z
    const-string v5, "DumpPreferenceActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sleep log enable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {}, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->checkSdcard()Z

    move-result v5

    if-nez v5, :cond_7

    if-eqz v0, :cond_7

    .line 121
    invoke-virtual {p0, v4}, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 125
    :cond_7
    invoke-static {v0}, Lcom/android/huawei/projectmenu/DumpPreferenceActivity;->updataSleepLog(Z)V

    goto/16 :goto_1
.end method
