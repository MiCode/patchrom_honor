.class public final Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;
.super Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
.source "MSimGsmDataConnectionTracker.java"


# instance fields
.field private mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

.field private mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected mDisconnectPendingCount:I

.field protected mPendingDataDisableCompleteMsg:Landroid/os/Message;

.field protected mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

.field protected mSubscription:I

.field mSubscriptionData:Lcom/android/internal/telephony/Subscription;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/MSimGSMPhone;)V
    .locals 3
    .parameter "p"

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    .line 59
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    .line 61
    iput v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mDisconnectPendingCount:I

    .line 68
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    .line 69
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getSubscription()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mSubscription:I

    .line 70
    iget v1, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mSubscription:I

    invoke-static {}, Lcom/android/internal/telephony/MSimPhoneFactory;->getDataSubscription()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mInternalDataEnabled:Z

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mInternalDataEnabled (is data sub?) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mInternalDataEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method protected broadcastMessenger()V
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->isActiveDataSubscription()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->broadcastMessenger()V

    goto :goto_0
.end method

.method public cleanUpAllConnections(Ljava/lang/String;)V
    .locals 1
    .parameter "cause"

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V

    .line 293
    return-void
.end method

.method public cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "cause"
    .parameter "disconnectAllCompleteMsg"

    .prologue
    .line 302
    const-string v1, "cleanUpAllConnections"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 303
    if-eqz p2, :cond_0

    .line 304
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_0
    const v1, 0x4201e

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 308
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 309
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 310
    return-void
.end method

.method protected cleanUpAllConnections(ZLjava/lang/String;)V
    .locals 2
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    .line 140
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanUpConnection: mDisconnectPendingCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mDisconnectPendingCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 143
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mDisconnectPendingCount:I

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->notifyDataDisconnectComplete()V

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->notifyAllDataDisconnected()V

    .line 147
    :cond_0
    return-void
.end method

.method protected cleanUpConnection(ZLcom/android/internal/telephony/ApnContext;)V
    .locals 8
    .parameter "tearDown"
    .parameter "apnContext"

    .prologue
    const/4 v7, 0x0

    .line 152
    if-nez p2, :cond_1

    .line 153
    const-string v4, "cleanUpConnection: apn context is null"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cleanUpConnection: tearDown="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v1

    .line 161
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz p1, :cond_6

    .line 162
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v4, v5, :cond_3

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v4, v5, :cond_3

    const/4 v2, 0x1

    .line 164
    .local v2, isConnected:Z
    :goto_1
    if-nez v2, :cond_4

    .line 167
    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 168
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v4

    if-nez v4, :cond_2

    .line 169
    invoke-virtual {p2, v7}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 170
    invoke-virtual {p2, v7}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 201
    .end local v2           #isConnected:Z
    :cond_2
    :goto_2
    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v0

    .line 203
    .local v0, apnList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 204
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->cancelReconnectAlarm(Lcom/android/internal/telephony/DataConnectionAc;)V

    goto :goto_0

    .line 162
    .end local v0           #apnList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 174
    .restart local v2       #isConnected:Z
    :cond_4
    if-eqz v1, :cond_5

    .line 175
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v4, v5, :cond_2

    .line 176
    const-string v4, "cleanUpConnection: tearing down"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 177
    const v4, 0x4200f

    invoke-virtual {p0, v4, p2}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 178
    .local v3, msg:Landroid/os/Message;
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/internal/telephony/DataConnection;->tearDown(Ljava/lang/String;Landroid/os/Message;)V

    .line 179
    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 180
    iget v4, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mDisconnectPendingCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mDisconnectPendingCount:I

    goto :goto_2

    .line 185
    .end local v3           #msg:Landroid/os/Message;
    :cond_5
    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 186
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 192
    .end local v2           #isConnected:Z
    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->resetSync()V

    .line 193
    :cond_7
    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 194
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2, v7}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 196
    invoke-virtual {p2, v7}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    goto :goto_2
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/IccRecords;
    .locals 4

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getSubscriptionInfo()Lcom/android/internal/telephony/Subscription;

    move-result-object v0

    .line 238
    .local v0, subscriptionData:Lcom/android/internal/telephony/Subscription;
    if-eqz v0, :cond_0

    .line 239
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget v2, v0, Lcom/android/internal/telephony/Subscription;->slotId:I

    sget-object v3, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/UiccManager;->getIccRecords(ILcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    .line 241
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 110
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->isActiveDataSubscription()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    const-string v1, "Ignore GSM msgs since GSM phone is not the current DDS"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 114
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 121
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 116
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_1

    .line 117
    .local v0, enabled:Z
    :goto_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->onSetInternalDataEnabled(ZLandroid/os/Message;)V

    goto :goto_0

    .line 116
    .end local v0           #enabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 114
    :pswitch_data_0
    .packed-switch 0x4201b
        :pswitch_0
    .end packed-switch
.end method

.method protected isActiveDataSubscription()Z
    .locals 2

    .prologue
    .line 314
    iget v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mSubscription:I

    invoke-static {}, Lcom/android/internal/telephony/MSimPhoneFactory;->getDataSubscription()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 362
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSimGsmDCT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 367
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSimGsmDCT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void
.end method

.method protected notifyAllDataDisconnected()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 345
    return-void
.end method

.method protected notifyDataDisconnectComplete()V
    .locals 3

    .prologue
    .line 336
    const-string/jumbo v2, "notifyDataDisconnectComplete"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 337
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 338
    .local v1, m:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 340
    .end local v1           #m:Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 341
    return-void
.end method

.method protected onDisconnectDone(ILandroid/os/AsyncResult;)V
    .locals 1
    .parameter "connId"
    .parameter "ar"

    .prologue
    .line 215
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onDisconnectDone(ILandroid/os/AsyncResult;)V

    .line 216
    iget v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mDisconnectPendingCount:I

    if-lez v0, :cond_0

    .line 217
    iget v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mDisconnectPendingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mDisconnectPendingCount:I

    .line 219
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mDisconnectPendingCount:I

    if-nez v0, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->notifyDataDisconnectComplete()V

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->notifyAllDataDisconnected()V

    .line 223
    :cond_1
    return-void
.end method

.method protected onSetInternalDataEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->onSetInternalDataEnabled(ZLandroid/os/Message;)V

    .line 262
    return-void
.end method

.method protected onSetInternalDataEnabled(ZLandroid/os/Message;)V
    .locals 3
    .parameter "enable"
    .parameter "onCompleteMsg"

    .prologue
    .line 265
    const-string/jumbo v2, "onSetInternalDataEnabled"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v0

    .line 267
    .local v0, prevEnabled:Z
    const/4 v1, 0x1

    .line 268
    .local v1, sendOnComplete:Z
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mInternalDataEnabled:Z

    if-eq v2, p1, :cond_0

    .line 269
    monitor-enter p0

    .line 270
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mInternalDataEnabled:Z

    .line 271
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v2

    if-eq v0, v2, :cond_0

    .line 273
    const/4 v1, 0x0

    .line 274
    if-nez v0, :cond_2

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->resetAllRetryCounts()V

    .line 276
    const-string v2, "dataEnabled"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    .line 283
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 284
    if-eqz p2, :cond_1

    .line 285
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 288
    :cond_1
    return-void

    .line 271
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 278
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 350
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    const-string/jumbo v0, "notify All Data Disconnected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 354
    :cond_0
    return-void
.end method

.method protected registerForAllEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42001

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42006

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42004

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataCallListChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    const v1, 0x42008

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    const v1, 0x42007

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x42010

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x42009

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x4200b

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x4200c

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x42016

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x42017

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 90
    return-void
.end method

.method public setInternalDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->setInternalDataEnabled(ZLandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public setInternalDataEnabled(ZLandroid/os/Message;)Z
    .locals 4
    .parameter "enable"
    .parameter "onCompleteMsg"

    .prologue
    const/4 v2, 0x1

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInternalDataEnabled("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 253
    const v1, 0x4201b

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 254
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 255
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 256
    return v2

    .line 254
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 358
    return-void
.end method

.method protected unregisterForAllEvents()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataCallListChanged(Landroid/os/Handler;)V

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForRoamingOn(Landroid/os/Handler;)V

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForRoamingOff(Landroid/os/Handler;)V

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V

    .line 106
    return-void
.end method

.method protected update()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 319
    const-string/jumbo v1, "update"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->isActiveDataSubscription()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    const-string/jumbo v1, "update(): Active DDS, register for all events now!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->registerForAllEvents()V

    .line 323
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->updateIccAvailability()V

    .line 325
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mUserDataEnabled:Z

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/gsm/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->updateCurrentCarrierInProvider()Z

    .line 328
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->broadcastMessenger()V

    .line 333
    :goto_1
    return-void

    .line 325
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 330
    :cond_1
    const-string/jumbo v0, "update(): NOT the active DDS, unregister for all events!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->unregisterForAllEvents()V

    goto :goto_1
.end method

.method public updateRecords()V
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->isActiveDataSubscription()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->updateIccAvailability()V

    .line 299
    :cond_0
    return-void
.end method
