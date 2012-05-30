.class public Lcom/android/internal/telephony/MSimIccCardProxy;
.super Lcom/android/internal/telephony/IccCardProxy;
.source "MSimIccCardProxy.java"


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_ICC_RECORD_EVENTS:I = 0x1f4

.field private static final EVENT_SUBSCRIPTION_ACTIVATED:I = 0x1f5

.field private static final EVENT_SUBSCRIPTION_DEACTIVATED:I = 0x1f6

.field private static final LOG_TAG:Ljava/lang/String; = "RIL_MSimIccCardProxy"


# instance fields
.field private mCardIndex:I

.field private mSubscriptionData:Lcom/android/internal/telephony/Subscription;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 4
    .parameter "context"
    .parameter "ci"
    .parameter "cardIndex"

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/IccCardProxy;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 58
    iput-object v3, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    .line 63
    iput p3, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mCardIndex:I

    .line 66
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    .line 67
    .local v0, subMgr:Lcom/android/internal/telephony/SubscriptionManager;
    iget v1, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mCardIndex:I

    const/16 v2, 0x1f5

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/internal/telephony/SubscriptionManager;->registerForSubscriptionActivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 68
    iget v1, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mCardIndex:I

    const/16 v2, 0x1f6

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/internal/telephony/SubscriptionManager;->registerForSubscriptionDeactivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/telephony/MSimIccCardProxy;->resetProperties()V

    .line 71
    return-void
.end method

.method private onSubscriptionActivated()V
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    .line 134
    .local v0, subMgr:Lcom/android/internal/telephony/SubscriptionManager;
    iget v1, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mCardIndex:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/Subscription;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    .line 136
    invoke-virtual {p0}, Lcom/android/internal/telephony/MSimIccCardProxy;->resetProperties()V

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/telephony/MSimIccCardProxy;->updateIccAvailability()V

    .line 138
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimIccCardProxy;->updateStateProperty()V

    .line 139
    return-void
.end method

.method private onSubscriptionDeactivated()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/telephony/MSimIccCardProxy;->resetProperties()V

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/telephony/MSimIccCardProxy;->updateIccAvailability()V

    .line 145
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimIccCardProxy;->updateStateProperty()V

    .line 146
    return-void
.end method

.method private updateStateProperty()V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    if-eqz v0, :cond_0

    .line 195
    const-string v0, "gsm.sim.state"

    iget-object v1, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    iget v1, v1, Lcom/android/internal/telephony/Subscription;->subId:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/MSimIccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 198
    :cond_0
    return-void
.end method


# virtual methods
.method public broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "value"
    .parameter "reason"

    .prologue
    .line 214
    iget v1, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mCardIndex:I

    .line 215
    .local v1, subId:I
    iget-boolean v2, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mQuietMode:Z

    if-eqz v2, :cond_0

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuietMode: NOT Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MSimIccCardProxy;->log(Ljava/lang/String;)V

    .line 231
    :goto_0
    return-void

    .line 221
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 223
    const-string/jumbo v2, "phoneName"

    const-string v3, "Phone"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string/jumbo v2, "ss"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string/jumbo v2, "reason"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string/jumbo v2, "subscription"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for subscription : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MSimIccCardProxy;->log(Ljava/lang/String;)V

    .line 230
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Lcom/android/internal/telephony/IccCardProxy;->dispose()V

    .line 77
    invoke-virtual {p0}, Lcom/android/internal/telephony/MSimIccCardProxy;->resetProperties()V

    .line 78
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 82
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 128
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccCardProxy;->handleMessage(Landroid/os/Message;)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 84
    :sswitch_0
    const-string v5, "EVENT_SUBSCRIPTION_ACTIVATED"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MSimIccCardProxy;->log(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimIccCardProxy;->onSubscriptionActivated()V

    goto :goto_0

    .line 89
    :sswitch_1
    const-string v5, "EVENT_SUBSCRIPTION_DEACTIVATED"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MSimIccCardProxy;->log(Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimIccCardProxy;->onSubscriptionDeactivated()V

    goto :goto_0

    .line 94
    :sswitch_2
    iget-object v5, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v6, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v5, :cond_2

    .line 95
    iget-object v5, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    check-cast v5, Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, operator:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    iget v4, v5, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 97
    .local v4, sub:I
    :cond_1
    if-eqz v3, :cond_3

    .line 98
    const-string v5, "gsm.sim.operator.numeric"

    invoke-static {v5, v4, v3}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 103
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    check-cast v5, Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, countryCode:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 105
    const-string v5, "gsm.sim.operator.iso-country"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 112
    .end local v1           #countryCode:Ljava/lang/String;
    .end local v3           #operator:Ljava/lang/String;
    .end local v4           #sub:I
    :cond_2
    :goto_2
    const-string v5, "LOADED"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/MSimIccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    .restart local v3       #operator:Ljava/lang/String;
    .restart local v4       #sub:I
    :cond_3
    const-string v5, "RIL_MSimIccCardProxy"

    const-string v6, "EVENT_RECORDS_LOADED Operator name is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 109
    .restart local v1       #countryCode:Ljava/lang/String;
    :cond_4
    const-string v5, "RIL_MSimIccCardProxy"

    const-string v6, "EVENT_RECORDS_LOADED Country code is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 116
    .end local v1           #countryCode:Ljava/lang/String;
    .end local v3           #operator:Ljava/lang/String;
    .end local v4           #sub:I
    :sswitch_3
    iget-object v5, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v6, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v5, :cond_0

    .line 117
    iget-object v5, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    iget v4, v5, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 118
    .restart local v4       #sub:I
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 119
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 120
    .local v2, eventCode:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    .line 121
    const-string v5, "gsm.sim.operator.alpha"

    iget-object v6, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iget-object v6, v6, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-static {v5, v4, v6}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 82
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_2
        0x1f4 -> :sswitch_3
        0x1f5 -> :sswitch_0
        0x1f6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 256
    const-string v0, "RIL_MSimIccCardProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 261
    const-string v0, "RIL_MSimIccCardProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method

.method protected registerUiccCardEvents()V
    .locals 3

    .prologue
    .line 202
    invoke-super {p0}, Lcom/android/internal/telephony/IccCardProxy;->registerUiccCardEvents()V

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 204
    :cond_0
    return-void
.end method

.method resetProperties()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v1, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v0, v1, :cond_0

    .line 187
    const-string v0, "gsm.sim.operator.numeric"

    iget-object v1, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    iget v1, v1, Lcom/android/internal/telephony/Subscription;->subId:I

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 188
    const-string v0, "gsm.sim.operator.iso-country"

    iget-object v1, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    iget v1, v1, Lcom/android/internal/telephony/Subscription;->subId:I

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 189
    const-string v0, "gsm.sim.operator.alpha"

    iget-object v1, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    iget v1, v1, Lcom/android/internal/telephony/Subscription;->subId:I

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 191
    :cond_0
    return-void
.end method

.method protected setExternalState(Lcom/android/internal/telephony/IccCard$State;Z)V
    .locals 3
    .parameter "newState"
    .parameter "override"

    .prologue
    .line 235
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v0, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    .line 239
    const-string v0, "gsm.sim.state"

    iget v1, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mCardIndex:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/MSimIccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$State;->getIntentString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/MSimIccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    if-eqz v0, :cond_2

    .line 243
    const-string v0, "gsm.sim.state"

    iget v1, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mCardIndex:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/MSimIccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$State;->getIntentString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/MSimIccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iget-object v1, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0
.end method

.method protected unregisterUiccCardEvents()V
    .locals 1

    .prologue
    .line 208
    invoke-super {p0}, Lcom/android/internal/telephony/IccCardProxy;->unregisterUiccCardEvents()V

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 210
    :cond_0
    return-void
.end method

.method updateIccAvailability()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 151
    iget-object v4, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget v5, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mCardIndex:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/UiccManager;->getUiccCard(I)Lcom/android/internal/telephony/UiccCard;

    move-result-object v1

    .line 152
    .local v1, newCard:Lcom/android/internal/telephony/UiccCard;
    sget-object v3, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    .line 153
    .local v3, state:Lcom/android/internal/telephony/IccCardStatus$CardState;
    const/4 v0, 0x0

    .line 154
    .local v0, newApp:Lcom/android/internal/telephony/UiccCardApplication;
    const/4 v2, 0x0

    .line 155
    .local v2, newRecords:Lcom/android/internal/telephony/IccRecords;
    if-eqz v1, :cond_3

    .line 156
    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    .line 157
    const-string v4, "RIL_MSimIccCardProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Card State = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v4, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/UiccCard;->getApplication(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v2

    .line 166
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-ne v4, v2, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-ne v4, v0, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eq v4, v1, :cond_2

    .line 167
    :cond_1
    const-string v4, "Icc changed. Reregestering."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/MSimIccCardProxy;->log(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/telephony/MSimIccCardProxy;->unregisterUiccCardEvents()V

    .line 169
    iput-object v7, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 170
    iput-object v7, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 171
    iput-object v7, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 173
    if-eqz v2, :cond_2

    .line 174
    iput-object v1, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 175
    iput-object v0, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 176
    iput-object v2, p0, Lcom/android/internal/telephony/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 177
    invoke-virtual {p0}, Lcom/android/internal/telephony/MSimIccCardProxy;->registerUiccCardEvents()V

    .line 181
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/MSimIccCardProxy;->updateExternalState()V

    .line 182
    return-void

    .line 163
    :cond_3
    const-string v4, "RIL_MSimIccCardProxy"

    const-string v5, "No card available"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
