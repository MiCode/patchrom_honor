.class public Lcom/android/internal/telephony/MSimPhoneProxy;
.super Lcom/android/internal/telephony/PhoneProxy;
.source "MSimPhoneProxy.java"


# instance fields
.field private mSubscription:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mSubscription:I

    .line 39
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mSubscription:I

    .line 40
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 149
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 157
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 161
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 145
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 153
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method


# virtual methods
.method protected createNewPhone(I)V
    .locals 2
    .parameter "newVoiceRadioTech"

    .prologue
    .line 49
    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    const-string v0, "PHONE"

    const-string v1, "MSimPhoneProxy: deleteAndCreatePhone: Creating MSimCdmaPhone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mSubscription:I

    invoke-static {v0}, Lcom/android/internal/telephony/MSimPhoneFactory;->getMSimCdmaPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "PHONE"

    const-string v1, "MSimPhoneProxy: deleteAndCreatePhone: Creating MSimGsmPhone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mSubscription:I

    invoke-static {v0}, Lcom/android/internal/telephony/MSimPhoneFactory;->getMSimGsmPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManagerProxy()Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    return-object v0
.end method

.method public getPhoneSubInfoProxy()Lcom/android/internal/telephony/PhoneSubInfoProxy;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    return-object v0
.end method

.method public getSubscription()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mSubscription:I

    return v0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 43
    new-instance v0, Lcom/android/internal/telephony/MSimIccCardProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/MSimIccCardProxy;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    .line 45
    return-void
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 128
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 126
    :cond_1
    const-string v0, "Phone object is not MultiSim. This should not hit!!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MSimPhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected sendBroadcastStickyIntent()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    const-string/jumbo v1, "phoneName"

    iget-object v2, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string/jumbo v1, "subscription"

    iget v2, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public setInternalDataEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/MSimPhoneProxy;->setInternalDataEnabled(ZLandroid/os/Message;)V

    .line 108
    return-void
.end method

.method public setInternalDataEnabled(ZLandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "onCompleteMsg"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->setInternalDataEnabled(ZLandroid/os/Message;)V

    .line 118
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->setInternalDataEnabled(ZLandroid/os/Message;)V

    goto :goto_0

    .line 116
    :cond_1
    const-string v0, "Phone object is not MultiSim. This should not hit!!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MSimPhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    .line 138
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    goto :goto_0

    .line 136
    :cond_1
    const-string v0, "Phone object is not MultiSim. This should not hit!!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MSimPhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->updateCurrentCarrierInProvider()Z

    move-result v0

    .line 91
    :goto_0
    return v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->updateCurrentCarrierInProvider()Z

    move-result v0

    goto :goto_0

    .line 90
    :cond_1
    const-string v0, "Phone object is not MultiSim. This should not hit!!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MSimPhoneProxy;->logd(Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDataConnectionTracker()V
    .locals 1

    .prologue
    .line 96
    const-string v0, "Updating Data Connection Tracker"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MSimPhoneProxy;->logd(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->updateDataConnectionTracker()V

    .line 104
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->updateDataConnectionTracker()V

    goto :goto_0

    .line 102
    :cond_1
    const-string v0, "Phone object is not MultiSim. This should not hit!!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MSimPhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method
