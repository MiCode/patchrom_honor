.class public Lcom/android/internal/telephony/gsm/MSimGSMPhone;
.super Lcom/android/internal/telephony/gsm/GSMPhone;
.source "MSimGSMPhone.java"


# instance fields
.field mSubscription:I

.field mSubscriptionData:Lcom/android/internal/telephony/Subscription;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V
    .locals 6
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "subscription"

    .prologue
    .line 55
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V
    .locals 5
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "unitTestMode"
    .parameter "subscription"

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V

    .line 50
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    .line 51
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    .line 63
    iput p5, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    .line 65
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSimGSMPhone: constructor: sub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mVmNumGsmKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mVmNumGsmKey:Ljava/lang/String;

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mVmCountKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mVmCountKey:Ljava/lang/String;

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mVmId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mVmId:Ljava/lang/String;

    .line 71
    new-instance v1, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;-><init>(Lcom/android/internal/telephony/gsm/MSimGSMPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 73
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    .line 74
    .local v0, subMgr:Lcom/android/internal/telephony/SubscriptionManager;
    iget v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, p0, v2, v4}, Lcom/android/internal/telephony/SubscriptionManager;->registerForSubscriptionActivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 76
    iget v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    const/16 v2, 0x1f5

    invoke-virtual {v0, v1, p0, v2, v4}, Lcom/android/internal/telephony/SubscriptionManager;->registerForSubscriptionDeactivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->setProperties()V

    .line 80
    return-void
.end method

.method private onSubscriptionActivated()V
    .locals 3

    .prologue
    .line 110
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    .line 111
    .local v0, subMgr:Lcom/android/internal/telephony/SubscriptionManager;
    iget v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/Subscription;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SUBSCRIPTION ACTIVATED : slotId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    iget v2, v2, Lcom/android/internal/telephony/Subscription;->slotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    iget v2, v2, Lcom/android/internal/telephony/Subscription;->m3gppIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "subId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    iget v2, v2, Lcom/android/internal/telephony/Subscription;->subId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "subStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    iget-object v2, v2, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->log(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->setProperties()V

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->updateIccAvailability()V

    .line 122
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateIccAvailability()V

    .line 123
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v1, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->updateRecords()V

    .line 126
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 127
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 128
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMEISV(Landroid/os/Message;)V

    .line 130
    return-void
.end method

.method private onSubscriptionDeactivated()V
    .locals 1

    .prologue
    .line 133
    const-string v0, "SUBSCRIPTION DEACTIVATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->log(Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    .line 135
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->resetSubSpecifics()V

    .line 136
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->dispose()V

    .line 86
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    .line 87
    .local v0, subMgr:Lcom/android/internal/telephony/SubscriptionManager;
    iget v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/SubscriptionManager;->unregisterForSubscriptionActivated(ILandroid/os/Handler;)V

    .line 88
    iget v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/SubscriptionManager;->unregisterForSubscriptionDeactivated(ILandroid/os/Handler;)V

    .line 89
    return-void
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, operatorNumeric:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_0
    return-object v0
.end method

.method public getSubscription()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    return v0
.end method

.method public getSubscriptionInfo()Lcom/android/internal/telephony/Subscription;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    return-object v0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "property"
    .parameter "defValue"

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    invoke-static {p1, v0, p2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/UiccCardApplication;
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    iget v1, v1, Lcom/android/internal/telephony/Subscription;->slotId:I

    sget-object v2, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/UiccManager;->getUiccCardApplication(ILcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 93
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 105
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleMessage(Landroid/os/Message;)V

    .line 107
    :goto_0
    return-void

    .line 95
    :pswitch_0
    const-string v0, "EVENT_SUBSCRIPTION_ACTIVATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->log(Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->onSubscriptionActivated()V

    goto :goto_0

    .line 100
    :pswitch_1
    const-string v0, "EVENT_SUBSCRIPTION_DEACTIVATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->log(Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->onSubscriptionDeactivated()V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initSubscriptionSpecifics()V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/android/internal/telephony/gsm/MSimGsmServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/MSimGsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 164
    return-void
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 255
    return-void
.end method

.method public resetSubSpecifics()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mImei:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mImeiSv:Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->setVoiceMessageCount(I)V

    .line 142
    return-void
.end method

.method public setInternalDataEnabled(ZLandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "onCompleteMsg"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->setInternalDataEnabled(ZLandroid/os/Message;)Z

    .line 206
    return-void
.end method

.method protected setProperties()V
    .locals 4

    .prologue
    .line 170
    const-string v0, "gsm.current.phone-type"

    iget v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 173
    return-void
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    invoke-static {p1, v0, p2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    .line 259
    return-void
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 9

    .prologue
    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, currentDds:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, operatorNumeric:Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "multi_sim_data_call"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 235
    :goto_0
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateCurrentCarrierInProvider: mSubscription = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getSubscription()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " currentDds = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " operatorNumeric = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getSubscription()I

    move-result v6

    if-ne v6, v0, :cond_0

    .line 240
    :try_start_1
    sget-object v6, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "current"

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 241
    .local v5, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 242
    .local v2, map:Landroid/content/ContentValues;
    const-string/jumbo v6, "numeric"

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    const/4 v6, 0x1

    .line 249
    .end local v2           #map:Landroid/content/ContentValues;
    .end local v5           #uri:Landroid/net/Uri;
    :goto_1
    return v6

    .line 231
    :catch_0
    move-exception v4

    .line 232
    .local v4, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v6, "GSM"

    const-string v7, "Exception Reading Dual Sim Data Subscription Value."

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 245
    .end local v4           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v1

    .line 246
    .local v1, e:Landroid/database/SQLException;
    const-string v6, "GSM"

    const-string v7, "Can\'t store current operator"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    .end local v1           #e:Landroid/database/SQLException;
    :cond_0
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public updateDataConnectionTracker()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->update()V

    .line 201
    return-void
.end method
