.class public Lcom/android/internal/telephony/cdma/MSimCDMAPhone;
.super Lcom/android/internal/telephony/cdma/CDMAPhone;
.source "MSimCDMAPhone.java"


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
    .line 68
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V

    .line 69
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

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V

    .line 63
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSubscription:I

    .line 75
    iput p5, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSubscription:I

    .line 77
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSimCDMAPhone: constructor: sub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mVmNumCdmaKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mVmNumCdmaKey:Ljava/lang/String;

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mVmCountKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mVmCountKey:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    .line 83
    .local v0, subMgr:Lcom/android/internal/telephony/SubscriptionManager;
    iget v1, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSubscription:I

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, p0, v2, v4}, Lcom/android/internal/telephony/SubscriptionManager;->registerForSubscriptionActivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 85
    iget v1, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSubscription:I

    const/16 v2, 0x1f5

    invoke-virtual {v0, v1, p0, v2, v4}, Lcom/android/internal/telephony/SubscriptionManager;->registerForSubscriptionDeactivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 87
    return-void
.end method

.method private onSubscriptionActivated()V
    .locals 3

    .prologue
    .line 165
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    .line 166
    .local v0, subMgr:Lcom/android/internal/telephony/SubscriptionManager;
    iget v1, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/Subscription;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SUBSCRIPTION ACTIVATED : slotId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    iget v2, v2, Lcom/android/internal/telephony/Subscription;->slotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    iget v2, v2, Lcom/android/internal/telephony/Subscription;->m3gpp2Index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "subId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    iget v2, v2, Lcom/android/internal/telephony/Subscription;->subId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "subStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    iget-object v2, v2, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->log(Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->setProperties()V

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->updateIccAvailability()V

    .line 177
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateIccAvailability()V

    .line 178
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    check-cast v1, Lcom/android/internal/telephony/cdma/MSimCdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/MSimCdmaServiceStateTracker;->updateCdmaSubscription()V

    .line 179
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v1, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->updateRecords()V

    .line 182
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x15

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    .line 183
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 184
    return-void
.end method

.method private onSubscriptionDeactivated()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    const-string v0, "SUBSCRIPTION DEACTIVATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->log(Ljava/lang/String;)V

    .line 189
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mMeid:Ljava/lang/String;

    .line 190
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mEsn:Ljava/lang/String;

    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->setVoiceMessageCount(I)V

    .line 192
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    .line 193
    return-void
.end method

.method private setProperties()V
    .locals 6

    .prologue
    .line 218
    const-string v2, "gsm.current.phone-type"

    iget v3, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSubscription:I

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 222
    const-string/jumbo v2, "ro.cdma.home.operator.alpha"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, operatorAlpha:Ljava/lang/String;
    const-string v2, "gsm.sim.operator.alpha"

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object v2, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, operatorNumeric:Ljava/lang/String;
    const-string v2, "gsm.sim.operator.numeric"

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->setIsoCountryProperty(Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    .line 234
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->dispose()V

    .line 141
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    .line 142
    .local v0, subMgr:Lcom/android/internal/telephony/SubscriptionManager;
    iget v1, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSubscription:I

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/SubscriptionManager;->unregisterForSubscriptionActivated(ILandroid/os/Handler;)V

    .line 143
    iget v1, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSubscription:I

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/SubscriptionManager;->unregisterForSubscriptionDeactivated(ILandroid/os/Handler;)V

    .line 144
    return-void
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 4

    .prologue
    .line 273
    const/4 v0, 0x0

    .line 275
    .local v0, operatorNumeric:Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCdmaSubscriptionSource:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 276
    const-string/jumbo v1, "ro.cdma.home.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    :goto_0
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorNumeric: mCdmaSubscriptionSource = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCdmaSubscriptionSource:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " operatorNumeric = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-object v0

    .line 277
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCdmaSubscriptionSource:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_1
    const-string v2, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorNumeric: Cannot retrieve operatorNumeric: mCdmaSubscriptionSource = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCdmaSubscriptionSource:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mIccRecords = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccRecords;->getRecordsLoaded()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSubscription()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSubscription:I

    return v0
.end method

.method public getSubscriptionInfo()Lcom/android/internal/telephony/Subscription;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    return-object v0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "property"
    .parameter "defValue"

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 257
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSubscription:I

    invoke-static {p1, v0, p2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/UiccCardApplication;
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    iget v1, v1, Lcom/android/internal/telephony/Subscription;->slotId:I

    sget-object v2, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/UiccManager;->getUiccCardApplication(ILcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 242
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
    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 160
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleMessage(Landroid/os/Message;)V

    .line 162
    :goto_0
    return-void

    .line 150
    :pswitch_0
    const-string v0, "EVENT_SUBSCRIPTION_ACTIVATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->log(Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->onSubscriptionActivated()V

    goto :goto_0

    .line 155
    :pswitch_1
    const-string v0, "EVENT_SUBSCRIPTION_DEACTIVATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->log(Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->onSubscriptionDeactivated()V

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected init(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 8
    .parameter "context"
    .parameter "notifier"

    .prologue
    const/16 v7, 0x1a

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 98
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v6}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 99
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 100
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1b

    invoke-static {p1, v2, p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 102
    new-instance v2, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;-><init>(Lcom/android/internal/telephony/cdma/MSimCDMAPhone;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 103
    new-instance v2, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    .line 104
    new-instance v2, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 105
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/android/internal/telephony/cdma/EriManager;-><init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    .line 107
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 108
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x8

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 109
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x5

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 110
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 111
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/16 v3, 0x13

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 112
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x19

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 113
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v7, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 116
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 118
    .local v1, pm:Landroid/os/PowerManager;
    const-string v2, "CDMA"

    invoke-virtual {v1, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 121
    const-string/jumbo v2, "ril.cdma.inecmmode"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, inEcm:Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mIsPhoneInEcmState:Z

    .line 123
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mIsPhoneInEcmState:Z

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 129
    :cond_0
    const-string/jumbo v2, "ro.cdma.otaspnumschema"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    .line 133
    invoke-interface {p2, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 134
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->setProperties()V

    .line 135
    return-void
.end method

.method protected initSstIcc()V
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Lcom/android/internal/telephony/UiccManager;->getInstance()Lcom/android/internal/telephony/UiccManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 93
    new-instance v0, Lcom/android/internal/telephony/cdma/MSimCdmaServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/MSimCdmaServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .line 94
    return-void
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 328
    return-void
.end method

.method sendEmergencyCallbackModeChange()V
    .locals 3

    .prologue
    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "phoneinECMState"

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mIsPhoneInEcmState:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 210
    const-string/jumbo v1, "subscription"

    iget v2, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 212
    const-string v1, "CDMA"

    const-string/jumbo v2, "sendEmergencyCallbackModeChange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void
.end method

.method public setInternalDataEnabled(ZLandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "onCompleteMsg"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->setInternalDataEnabled(ZLandroid/os/Message;)Z

    .line 267
    return-void
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSubscription:I

    invoke-static {p1, v0, p2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    .line 333
    return-void
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 9

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, currentDds:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, operatorNumeric:Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "multi_sim_data_call"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 308
    :goto_0
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateCurrentCarrierInProvider: mSubscription = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->getSubscription()I

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

    .line 311
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->getSubscription()I

    move-result v6

    if-ne v6, v0, :cond_0

    .line 313
    :try_start_1
    sget-object v6, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "current"

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 314
    .local v5, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 315
    .local v2, map:Landroid/content/ContentValues;
    const-string/jumbo v6, "numeric"

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 317
    const/4 v6, 0x1

    .line 322
    .end local v2           #map:Landroid/content/ContentValues;
    .end local v5           #uri:Landroid/net/Uri;
    :goto_1
    return v6

    .line 304
    :catch_0
    move-exception v4

    .line 305
    .local v4, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v6, "CDMA"

    const-string v7, "Exception Reading Dual Sim Data Subscription Value."

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 318
    .end local v4           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v1

    .line 319
    .local v1, e:Landroid/database/SQLException;
    const-string v6, "CDMA"

    const-string v7, "Can\'t store current operator"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    .end local v1           #e:Landroid/database/SQLException;
    :cond_0
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public updateDataConnectionTracker()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->update()V

    .line 262
    return-void
.end method
