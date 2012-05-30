.class Lcom/android/server/HDMIService;
.super Landroid/os/IHDMIService$Stub;
.source "HDMIService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HDMIService"


# instance fields
.field final m1280x720p50_16_9:I

.field final m1280x720p60_16_9:I

.field final m1440x480i60_16_9:I

.field final m1440x480i60_4_3:I

.field final m1440x576i50_16_9:I

.field final m1440x576i50_4_3:I

.field final m1920x1080i60_16_9:I

.field final m1920x1080p24_16_9:I

.field final m1920x1080p25_16_9:I

.field final m1920x1080p30_16_9:I

.field final m1920x1080p50_16_9:I

.field final m1920x1080p60_16_9:I

.field final m640x480p60_4_3:I

.field final m720x480p60_16_9:I

.field final m720x480p60_4_3:I

.field final m720x576p50_16_9:I

.field final m720x576p50_4_3:I

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHDMIModes:[I

.field private mHDMIUserOption:Z

.field private mListener:Lcom/android/server/HDMIListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 120
    invoke-direct {p0}, Landroid/os/IHDMIService$Stub;-><init>()V

    .line 54
    iput-boolean v5, p0, Lcom/android/server/HDMIService;->mHDMIUserOption:Z

    .line 57
    iput v6, p0, Lcom/android/server/HDMIService;->m640x480p60_4_3:I

    .line 58
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/HDMIService;->m720x480p60_4_3:I

    .line 59
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/HDMIService;->m720x480p60_16_9:I

    .line 60
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/HDMIService;->m1280x720p60_16_9:I

    .line 61
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/HDMIService;->m1920x1080i60_16_9:I

    .line 62
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/server/HDMIService;->m1440x480i60_4_3:I

    .line 63
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/server/HDMIService;->m1440x480i60_16_9:I

    .line 64
    const/16 v1, 0x10

    iput v1, p0, Lcom/android/server/HDMIService;->m1920x1080p60_16_9:I

    .line 65
    const/16 v1, 0x11

    iput v1, p0, Lcom/android/server/HDMIService;->m720x576p50_4_3:I

    .line 66
    const/16 v1, 0x12

    iput v1, p0, Lcom/android/server/HDMIService;->m720x576p50_16_9:I

    .line 67
    const/16 v1, 0x13

    iput v1, p0, Lcom/android/server/HDMIService;->m1280x720p50_16_9:I

    .line 68
    const/16 v1, 0x15

    iput v1, p0, Lcom/android/server/HDMIService;->m1440x576i50_4_3:I

    .line 69
    const/16 v1, 0x16

    iput v1, p0, Lcom/android/server/HDMIService;->m1440x576i50_16_9:I

    .line 70
    const/16 v1, 0x1f

    iput v1, p0, Lcom/android/server/HDMIService;->m1920x1080p50_16_9:I

    .line 71
    const/16 v1, 0x20

    iput v1, p0, Lcom/android/server/HDMIService;->m1920x1080p24_16_9:I

    .line 72
    const/16 v1, 0x21

    iput v1, p0, Lcom/android/server/HDMIService;->m1920x1080p25_16_9:I

    .line 73
    const/16 v1, 0x22

    iput v1, p0, Lcom/android/server/HDMIService;->m1920x1080p30_16_9:I

    .line 142
    new-instance v1, Lcom/android/server/HDMIService$1;

    invoke-direct {v1, p0}, Lcom/android/server/HDMIService$1;-><init>(Lcom/android/server/HDMIService;)V

    iput-object v1, p0, Lcom/android/server/HDMIService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    iput-object p1, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    .line 125
    iget-object v1, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/HDMIService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v7, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 127
    const-string v1, "ro.hdmi.enable"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const-string v1, "ctl.stop"

    const-string v2, "hdmid"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "ctl.start"

    const-string v2, "hdmid"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 134
    :cond_0
    new-instance v1, Lcom/android/server/HDMIListener;

    invoke-direct {v1, p0}, Lcom/android/server/HDMIListener;-><init>(Lcom/android/server/HDMIService;)V

    iput-object v1, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    .line 135
    iget-object v1, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "HDMI_USEROPTION"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, hdmiUserOption:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "HDMI_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    iput-boolean v6, p0, Lcom/android/server/HDMIService;->mHDMIUserOption:Z

    .line 140
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HDMIService;)Lcom/android/server/HDMIListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    return-object v0
.end method


# virtual methods
.method public broadcastHDMIPluggedEvent(Z)V
    .locals 4
    .parameter "connected"

    .prologue
    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 206
    if-eqz p1, :cond_0

    .line 207
    const-string v1, "EDID"

    iget-object v2, p0, Lcom/android/server/HDMIService;->mHDMIModes:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 209
    const-string v1, "HDMIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting Intent ACTION_HDMI_PLUGGED state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void
.end method

.method getBestMode()I
    .locals 7

    .prologue
    .line 109
    const/4 v2, 0x0

    .local v2, bestOrder:I
    const/4 v1, 0x1

    .line 110
    .local v1, bestMode:I
    iget-object v0, p0, Lcom/android/server/HDMIService;->mHDMIModes:[I

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v5, v0, v3

    .line 111
    .local v5, mode:I
    invoke-virtual {p0, v5}, Lcom/android/server/HDMIService;->getModeOrder(I)I

    move-result v6

    .line 112
    .local v6, order:I
    if-le v6, v2, :cond_0

    .line 113
    move v2, v6

    .line 114
    move v1, v5

    .line 110
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    .end local v5           #mode:I
    .end local v6           #order:I
    :cond_1
    return v1
.end method

.method public getHDMIUserOption()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/android/server/HDMIService;->mHDMIUserOption:Z

    return v0
.end method

.method getModeOrder(I)I
    .locals 1
    .parameter "mode"

    .prologue
    .line 77
    packed-switch p1, :pswitch_data_0

    .line 81
    :pswitch_0
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    .line 84
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 86
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 89
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 92
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 94
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 97
    :pswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 103
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public getModes()[I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/HDMIService;->mHDMIModes:[I

    return-object v0
.end method

.method public isHDMIConnected()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {v0}, Lcom/android/server/HDMIListener;->isHDMIConnected()Z

    move-result v0

    return v0
.end method

.method public notifyHDMIAudioOff()V
    .locals 2

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, connected:Z
    invoke-virtual {p0}, Lcom/android/server/HDMIService;->getHDMIUserOption()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {p0, v0}, Lcom/android/server/HDMIService;->broadcastHDMIPluggedEvent(Z)V

    .line 244
    :cond_0
    return-void
.end method

.method public notifyHDMIAudioOn()V
    .locals 2

    .prologue
    .line 233
    const/4 v0, 0x1

    .line 234
    .local v0, connected:Z
    invoke-virtual {p0}, Lcom/android/server/HDMIService;->getHDMIUserOption()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {p0, v0}, Lcom/android/server/HDMIService;->broadcastHDMIPluggedEvent(Z)V

    .line 237
    :cond_0
    return-void
.end method

.method public notifyHDMIConnected([I)V
    .locals 3
    .parameter "modes"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/server/HDMIService;->mHDMIModes:[I

    .line 214
    invoke-virtual {p0}, Lcom/android/server/HDMIService;->getHDMIUserOption()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    monitor-enter v1

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {p0}, Lcom/android/server/HDMIService;->getBestMode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/HDMIListener;->changeDisplayMode(I)V

    .line 217
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/HDMIListener;->enableHDMIOutput(Z)V

    .line 218
    monitor-exit v1

    .line 220
    :cond_0
    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyHDMIDisconnected()V
    .locals 3

    .prologue
    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/HDMIService;->mHDMIModes:[I

    .line 224
    invoke-virtual {p0}, Lcom/android/server/HDMIService;->getHDMIUserOption()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    monitor-enter v1

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/HDMIListener;->enableHDMIOutput(Z)V

    .line 227
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {p0}, Lcom/android/server/HDMIService;->getHDMIUserOption()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/HDMIListener;->setHPD(Z)V

    .line 228
    monitor-exit v1

    .line 230
    :cond_0
    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setActionsafeHeightRatio(F)V
    .locals 1
    .parameter "asHeightRatio"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {v0, p1}, Lcom/android/server/HDMIListener;->setActionsafeHeightRatio(F)V

    .line 189
    return-void
.end method

.method public setActionsafeWidthRatio(F)V
    .locals 1
    .parameter "asWidthRatio"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {v0, p1}, Lcom/android/server/HDMIListener;->setActionsafeWidthRatio(F)V

    .line 185
    return-void
.end method

.method public setHDMIOutput(Z)V
    .locals 4
    .parameter "enableHDMI"

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "HDMI_USEROPTION"

    if-eqz p1, :cond_1

    const-string v1, "HDMI_ON"

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 171
    iput-boolean p1, p0, Lcom/android/server/HDMIService;->mHDMIUserOption:Z

    .line 173
    iget-object v2, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    monitor-enter v2

    .line 174
    if-nez p1, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, connected:Z
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/HDMIService;->broadcastHDMIPluggedEvent(Z)V

    .line 177
    iget-object v1, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/HDMIListener;->enableHDMIOutput(Z)V

    .line 179
    .end local v0           #connected:Z
    :cond_0
    iget-object v1, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {p0}, Lcom/android/server/HDMIService;->getHDMIUserOption()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/HDMIListener;->setHPD(Z)V

    .line 180
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    return-void

    .line 169
    :cond_1
    const-string v1, "HDMI_OFF"

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {v0, p1}, Lcom/android/server/HDMIListener;->changeDisplayMode(I)V

    .line 197
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SHUTDOWN permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    const-string v0, "HDMIService"

    const-string v1, "Shutting down"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method
