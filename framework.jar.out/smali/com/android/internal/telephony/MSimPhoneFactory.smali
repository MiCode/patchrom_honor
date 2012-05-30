.class public Lcom/android/internal/telephony/MSimPhoneFactory;
.super Lcom/android/internal/telephony/PhoneFactory;
.source "MSimPhoneFactory.java"


# static fields
.field private static mCardSubscriptionManager:Lcom/android/internal/telephony/CardSubscriptionManager;

.field private static mMSimProxyManager:Lcom/android/internal/telephony/MSimProxyManager;

.field private static mSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;

.field private static sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sMadeMultiSimDefaults:Z

.field private static sProxyPhones:[Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcom/android/internal/telephony/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 41
    sput-object v0, Lcom/android/internal/telephony/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/MSimPhoneFactory;->sMadeMultiSimDefaults:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneFactory;-><init>()V

    return-void
.end method

.method public static getDataSubscription()I
    .locals 4

    .prologue
    .line 270
    const/4 v1, 0x0

    .line 273
    .local v1, subscription:I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "multi_sim_data_call"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 279
    :goto_0
    return v1

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "PHONE"

    const-string v3, "Settings Exception Reading Dual Sim Data Call Values"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDefaultSubscription()I
    .locals 4

    .prologue
    .line 219
    const/4 v1, 0x0

    .line 221
    .local v1, subscription:I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_subscription"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 227
    :goto_0
    return v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "PHONE"

    const-string v3, "Settings Exception Reading Default Subscription"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getMSimCdmaPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .parameter "subscription"

    .prologue
    .line 163
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 164
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    sget-object v1, Lcom/android/internal/telephony/MSimPhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p0

    sget-object v4, Lcom/android/internal/telephony/MSimPhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4, p0}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 166
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    .line 167
    return-object v0

    .line 166
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getMSimGsmPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .parameter "subscription"

    .prologue
    .line 171
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 172
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    sget-object v1, Lcom/android/internal/telephony/MSimPhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p0

    sget-object v4, Lcom/android/internal/telephony/MSimPhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4, p0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 174
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    return-object v0

    .line 175
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 179
    sget-object v0, Lcom/android/internal/telephony/MSimPhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 180
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MSimPhoneFactory.getPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/MSimPhoneFactory;->sMadeMultiSimDefaults:Z

    if-nez v0, :cond_2

    .line 184
    sget-boolean v0, Lcom/android/internal/telephony/MSimPhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_1
    if-nez p0, :cond_2

    .line 187
    sget-object v0, Lcom/android/internal/telephony/MSimPhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 190
    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Lcom/android/internal/telephony/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static getSMSSubscription()I
    .locals 4

    .prologue
    .line 284
    const/4 v1, 0x0

    .line 286
    .local v1, subscription:I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "multi_sim_sms"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 292
    :goto_0
    return v1

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "PHONE"

    const-string v3, "Settings Exception Reading Dual Sim SMS Values"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getVoiceSubscription()I
    .locals 4

    .prologue
    .line 232
    const/4 v1, 0x0

    .line 235
    .local v1, subscription:I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "multi_sim_voice_call"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 241
    :goto_0
    return v1

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "PHONE"

    const-string v3, "Settings Exception Reading Dual Sim Voice Call Values"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isPromptEnabled()Z
    .locals 6

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, prompt:Z
    const/4 v2, 0x0

    .line 249
    .local v2, value:I
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "multi_sim_voice_prompt"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 254
    :goto_0
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 255
    :goto_1
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prompt option:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return v0

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "PHONE"

    const-string v4, "Settings Exception Reading Dual Sim Voice Prompt Values"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    .end local v1           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static makeMultiSimDefaultPhone(Landroid/content/Context;)V
    .locals 20
    .parameter "context"

    .prologue
    .line 56
    const-class v15, Lcom/android/internal/telephony/Phone;

    monitor-enter v15

    .line 57
    :try_start_0
    sget-boolean v14, Lcom/android/internal/telephony/MSimPhoneFactory;->sMadeMultiSimDefaults:Z

    if-nez v14, :cond_8

    .line 58
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v14

    sput-object v14, Lcom/android/internal/telephony/MSimPhoneFactory;->sLooper:Landroid/os/Looper;

    .line 59
    sput-object p0, Lcom/android/internal/telephony/MSimPhoneFactory;->sContext:Landroid/content/Context;

    .line 61
    sget-object v14, Lcom/android/internal/telephony/MSimPhoneFactory;->sLooper:Landroid/os/Looper;

    if-nez v14, :cond_0

    .line 62
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v16, "MSimPhoneFactory.makeDefaultPhone must be called from Looper thread"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 157
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 66
    :cond_0
    const/4 v12, 0x0

    .line 68
    .local v12, retryCount:I
    :goto_0
    const/4 v6, 0x0

    .line 69
    .local v6, hasException:Z
    add-int/lit8 v12, v12, 0x1

    .line 74
    :try_start_1
    new-instance v14, Landroid/net/LocalServerSocket;

    const-string v16, "com.android.internal.telephony"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    :goto_1
    if-nez v6, :cond_2

    .line 91
    :try_start_2
    new-instance v14, Lcom/android/internal/telephony/MSimDefaultPhoneNotifier;

    invoke-direct {v14}, Lcom/android/internal/telephony/MSimDefaultPhoneNotifier;-><init>()V

    sput-object v14, Lcom/android/internal/telephony/MSimPhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 94
    const/4 v11, 0x0

    .line 95
    .local v11, preferredNetworkMode:I
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v14

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_1

    .line 96
    const/4 v11, 0x7

    .line 101
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v16, "preferred_cdma_subscription"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 104
    .local v4, cdmaSubscription:I
    const-string v14, "PHONE"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cdma Subscription set to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v9

    .line 110
    .local v9, numPhones:I
    new-array v8, v9, [I

    .line 111
    .local v8, networkModes:[I
    new-array v14, v9, [Lcom/android/internal/telephony/MSimPhoneProxy;

    sput-object v14, Lcom/android/internal/telephony/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 112
    new-array v14, v9, [Lcom/android/internal/telephony/RIL;

    sput-object v14, Lcom/android/internal/telephony/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v9, :cond_4

    .line 117
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v16, "preferred_network_mode"

    move-object/from16 v0, v16

    invoke-static {v14, v0, v7}, Landroid/provider/Settings$Secure;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    aput v14, v8, v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 124
    :goto_3
    :try_start_4
    const-string v14, "PHONE"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Network Mode set to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    aget v17, v8, v7

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget-object v14, Lcom/android/internal/telephony/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    new-instance v16, Lcom/android/internal/telephony/RIL;

    aget v17, v8, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    aput-object v16, v14, v7

    .line 114
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 75
    .end local v4           #cdmaSubscription:I
    .end local v7           #i:I
    .end local v8           #networkModes:[I
    .end local v9           #numPhones:I
    .end local v11           #preferredNetworkMode:I
    :catch_0
    move-exception v5

    .line 76
    .local v5, ex:Ljava/io/IOException;
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 81
    .end local v5           #ex:Ljava/io/IOException;
    :cond_2
    const/4 v14, 0x3

    if-le v12, v14, :cond_3

    .line 82
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v16, "MSimPhoneFactory probably already running"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 85
    :cond_3
    const-wide/16 v16, 0x7d0

    :try_start_5
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 86
    :catch_1
    move-exception v14

    goto/16 :goto_0

    .line 120
    .restart local v4       #cdmaSubscription:I
    .restart local v7       #i:I
    .restart local v8       #networkModes:[I
    .restart local v9       #numPhones:I
    .restart local v11       #preferredNetworkMode:I
    :catch_2
    move-exception v13

    .line 121
    .local v13, snfe:Landroid/provider/Settings$SettingNotFoundException;
    :try_start_6
    const-string v14, "PHONE"

    const-string v16, "Settings Exception Reading Value At Index"

    move-object/from16 v0, v16

    invoke-static {v14, v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    aput v11, v8, v7

    goto :goto_3

    .line 129
    .end local v13           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_4
    sget-object v14, Lcom/android/internal/telephony/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/internal/telephony/UiccManager;->getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/UiccManager;

    move-result-object v14

    sput-object v14, Lcom/android/internal/telephony/MSimPhoneFactory;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 130
    sget-object v14, Lcom/android/internal/telephony/MSimPhoneFactory;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    sget-object v16, Lcom/android/internal/telephony/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v14, v1}, Lcom/android/internal/telephony/CardSubscriptionManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/UiccManager;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/CardSubscriptionManager;

    move-result-object v14

    sput-object v14, Lcom/android/internal/telephony/MSimPhoneFactory;->mCardSubscriptionManager:Lcom/android/internal/telephony/CardSubscriptionManager;

    .line 132
    sget-object v14, Lcom/android/internal/telephony/MSimPhoneFactory;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    sget-object v16, Lcom/android/internal/telephony/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v14, v1}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/UiccManager;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v14

    sput-object v14, Lcom/android/internal/telephony/MSimPhoneFactory;->mSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;

    .line 135
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v9, :cond_7

    .line 136
    aget v14, v8, v7

    invoke-static {v14}, Lcom/android/internal/telephony/MSimPhoneFactory;->getPhoneType(I)I

    move-result v10

    .line 137
    .local v10, phoneType:I
    const/4 v14, 0x1

    if-ne v10, v14, :cond_6

    .line 138
    const-string v14, "PHONE"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Creating MSimGSMPhone sub = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v14, Lcom/android/internal/telephony/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    new-instance v16, Lcom/android/internal/telephony/MSimPhoneProxy;

    new-instance v17, Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    sget-object v18, Lcom/android/internal/telephony/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v18, v18, v7

    sget-object v19, Lcom/android/internal/telephony/MSimPhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    invoke-direct/range {v16 .. v17}, Lcom/android/internal/telephony/MSimPhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    aput-object v16, v14, v7

    .line 135
    :cond_5
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 141
    :cond_6
    const/4 v14, 0x2

    if-ne v10, v14, :cond_5

    .line 142
    const-string v14, "PHONE"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Creating MSimCDMAPhone sub = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-object v14, Lcom/android/internal/telephony/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    new-instance v16, Lcom/android/internal/telephony/MSimPhoneProxy;

    new-instance v17, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    sget-object v18, Lcom/android/internal/telephony/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v18, v18, v7

    sget-object v19, Lcom/android/internal/telephony/MSimPhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    invoke-direct/range {v16 .. v17}, Lcom/android/internal/telephony/MSimPhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    aput-object v16, v14, v7

    goto :goto_5

    .line 147
    .end local v10           #phoneType:I
    :cond_7
    sget-object v14, Lcom/android/internal/telephony/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    sget-object v16, Lcom/android/internal/telephony/MSimPhoneFactory;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    sget-object v17, Lcom/android/internal/telephony/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v0, v14, v1, v2}, Lcom/android/internal/telephony/MSimProxyManager;->getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/UiccManager;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/MSimProxyManager;

    move-result-object v14

    sput-object v14, Lcom/android/internal/telephony/MSimPhoneFactory;->mMSimProxyManager:Lcom/android/internal/telephony/MSimProxyManager;

    .line 150
    const/4 v14, 0x1

    sput-boolean v14, Lcom/android/internal/telephony/MSimPhoneFactory;->sMadeMultiSimDefaults:Z

    .line 153
    sget-object v14, Lcom/android/internal/telephony/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    const/16 v16, 0x0

    aget-object v14, v14, v16

    sput-object v14, Lcom/android/internal/telephony/MSimPhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 154
    sget-object v14, Lcom/android/internal/telephony/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    const/16 v16, 0x0

    aget-object v14, v14, v16

    sput-object v14, Lcom/android/internal/telephony/MSimPhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 155
    const/4 v14, 0x1

    sput-boolean v14, Lcom/android/internal/telephony/MSimPhoneFactory;->sMadeDefaults:Z

    .line 157
    .end local v4           #cdmaSubscription:I
    .end local v6           #hasException:Z
    .end local v7           #i:I
    .end local v8           #networkModes:[I
    .end local v9           #numPhones:I
    .end local v11           #preferredNetworkMode:I
    .end local v12           #retryCount:I
    :cond_8
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 158
    return-void
.end method

.method public static makeMultiSimDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/android/internal/telephony/MSimPhoneFactory;->makeMultiSimDefaultPhone(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public static setDataSubscription(I)V
    .locals 3
    .parameter "subscription"

    .prologue
    .line 302
    sget-object v0, Lcom/android/internal/telephony/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "multi_sim_data_call"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 304
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method

.method public static setDefaultSubscription(I)V
    .locals 4
    .parameter "subscription"

    .prologue
    .line 198
    sget-object v1, Lcom/android/internal/telephony/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_subscription"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    if-ltz p0, :cond_0

    sget-object v1, Lcom/android/internal/telephony/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    array-length v1, v1

    if-ge p0, v1, :cond_0

    .line 203
    sget-object v1, Lcom/android/internal/telephony/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p0

    sput-object v1, Lcom/android/internal/telephony/MSimPhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 204
    sget-object v1, Lcom/android/internal/telephony/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p0

    sput-object v1, Lcom/android/internal/telephony/MSimPhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 205
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/telephony/MSimPhoneFactory;->sMadeDefaults:Z

    .line 209
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 211
    const-string/jumbo v1, "subscription"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDefaultSubscription : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Broadcasting Default Subscription Changed..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-object v1, Lcom/android/internal/telephony/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 215
    return-void
.end method

.method public static setPromptEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 262
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 263
    .local v0, value:I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "multi_sim_voice_prompt"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 265
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVoicePromptOption to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void

    .line 262
    .end local v0           #value:I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setSMSSubscription(I)V
    .locals 4
    .parameter "subscription"

    .prologue
    .line 308
    sget-object v1, Lcom/android/internal/telephony/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "multi_sim_sms"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 311
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.transaction.SEND_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/telephony/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 313
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSMSSubscription : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void
.end method

.method public static setVoiceSubscription(I)V
    .locals 3
    .parameter "subscription"

    .prologue
    .line 296
    sget-object v0, Lcom/android/internal/telephony/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "multi_sim_voice_call"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 298
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVoiceSubscription : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-void
.end method
