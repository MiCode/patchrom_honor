.class public final Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;
.super Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;
.source "MSimCdmaDataConnectionTracker.java"


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

.field protected mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

.field protected mSubscription:I

.field mSubscriptionData:Lcom/android/internal/telephony/Subscription;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/MSimCDMAPhone;)V
    .locals 3
    .parameter "p"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    .line 57
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    .line 59
    iput v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mDisconnectPendingCount:I

    .line 66
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    .line 67
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->getSubscription()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mSubscription:I

    .line 68
    iget v1, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mSubscription:I

    invoke-static {}, Lcom/android/internal/telephony/MSimPhoneFactory;->getDataSubscription()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mInternalDataEnabled:Z

    .line 69
    return-void
.end method


# virtual methods
.method protected broadcastMessenger()V
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->isActiveDataSubscription()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->broadcastMessenger()V

    goto :goto_0
.end method

.method public cleanUpAllConnections(Ljava/lang/String;)V
    .locals 1
    .parameter "cause"

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V

    .line 262
    return-void
.end method

.method public cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "cause"
    .parameter "disconnectAllCompleteMsg"

    .prologue
    .line 265
    const-string v1, "cleanUpAllConnections"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 266
    if-eqz p2, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_0
    const v1, 0x4201e

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 271
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 272
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 273
    return-void
.end method

.method protected cleanUpConnection(ZLjava/lang/String;)V
    .locals 8
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleanUpConnection: reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 127
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_0

    .line 128
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 130
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 131
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 134
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_0
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 135
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 137
    const/4 v4, 0x0

    .line 138
    .local v4, notificationDeferred:Z
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 139
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    if-eqz v1, :cond_1

    .line 140
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnectionAc;

    .line 142
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz p1, :cond_2

    .line 143
    const-string v5, "cleanUpConnection: teardown, call conn.disconnect"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 144
    const v5, 0x4200f

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7, p2}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, p2, v5}, Lcom/android/internal/telephony/DataConnection;->tearDown(Ljava/lang/String;Landroid/os/Message;)V

    .line 146
    const/4 v4, 0x1

    .line 147
    iget v5, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mDisconnectPendingCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mDisconnectPendingCount:I

    goto :goto_0

    .line 149
    :cond_2
    const-string v5, "cleanUpConnection: !tearDown, call conn.resetSynchronously"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 150
    if-eqz v2, :cond_3

    .line 151
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->resetSync()V

    .line 153
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 158
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v2           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 160
    if-nez v4, :cond_5

    .line 161
    const-string v5, "cleanupConnection: !notificationDeferred"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    .line 165
    :cond_5
    if-eqz p1, :cond_6

    iget v5, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mDisconnectPendingCount:I

    if-nez v5, :cond_6

    .line 166
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->notifyDataDisconnectComplete()V

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->notifyAllDataDisconnected()V

    .line 169
    :cond_6
    return-void
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/IccRecords;
    .locals 4

    .prologue
    .line 206
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->getSubscriptionInfo()Lcom/android/internal/telephony/Subscription;

    move-result-object v0

    .line 207
    .local v0, subscriptionData:Lcom/android/internal/telephony/Subscription;
    if-eqz v0, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget v2, v0, Lcom/android/internal/telephony/Subscription;->slotId:I

    sget-object v3, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/UiccManager;->getIccRecords(ILcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    .line 210
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

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->isActiveDataSubscription()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    const-string v1, "Ignore CDMA msgs since CDMA phone is not the current DDS"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void

    .line 105
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 112
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 107
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_1

    .line 108
    .local v0, enabled:Z
    :goto_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->onSetInternalDataEnabled(ZLandroid/os/Message;)V

    goto :goto_0

    .line 107
    .end local v0           #enabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 105
    :pswitch_data_0
    .packed-switch 0x4201b
        :pswitch_0
    .end packed-switch
.end method

.method protected isActiveDataSubscription()Z
    .locals 2

    .prologue
    .line 277
    iget v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mSubscription:I

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
    .line 329
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaDCT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mSubscription:I

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

    .line 330
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 334
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaDCT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mSubscription:I

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

    .line 335
    return-void
.end method

.method public notifyAllDataDisconnected()V
    .locals 1

    .prologue
    .line 310
    const-string/jumbo v0, "notifyAllDataDisconnected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 312
    return-void
.end method

.method protected notifyDataDisconnectComplete()V
    .locals 3

    .prologue
    .line 302
    const-string/jumbo v2, "notifyDataDisconnectComplete"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 303
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

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

    .line 304
    .local v1, m:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 306
    .end local v1           #m:Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 307
    return-void
.end method

.method protected onDataStateChanged(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onDataStateChanged(Landroid/os/AsyncResult;)V

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->notifyAllDataDisconnected()V

    .line 192
    :cond_0
    return-void
.end method

.method protected onDisconnectDone(ILandroid/os/AsyncResult;)V
    .locals 1
    .parameter "connId"
    .parameter "ar"

    .prologue
    .line 176
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onDisconnectDone(ILandroid/os/AsyncResult;)V

    .line 177
    iget v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mDisconnectPendingCount:I

    if-lez v0, :cond_0

    .line 178
    iget v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mDisconnectPendingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mDisconnectPendingCount:I

    .line 180
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mDisconnectPendingCount:I

    if-nez v0, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->notifyDataDisconnectComplete()V

    .line 182
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->notifyAllDataDisconnected()V

    .line 184
    :cond_1
    return-void
.end method

.method protected onSetInternalDataEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->onSetInternalDataEnabled(ZLandroid/os/Message;)V

    .line 231
    return-void
.end method

.method protected onSetInternalDataEnabled(ZLandroid/os/Message;)V
    .locals 3
    .parameter "enable"
    .parameter "onCompleteMsg"

    .prologue
    .line 234
    const-string/jumbo v2, "onSetInternalDataEnabled"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v0

    .line 236
    .local v0, prevEnabled:Z
    const/4 v1, 0x1

    .line 237
    .local v1, sendOnComplete:Z
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mInternalDataEnabled:Z

    if-eq v2, p1, :cond_0

    .line 238
    monitor-enter p0

    .line 239
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mInternalDataEnabled:Z

    .line 240
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v2

    if-eq v0, v2, :cond_0

    .line 242
    const/4 v1, 0x0

    .line 243
    if-nez v0, :cond_2

    .line 244
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->resetAllRetryCounts()V

    .line 245
    const-string v2, "dataEnabled"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    .line 252
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 253
    if-eqz p2, :cond_1

    .line 254
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 257
    :cond_1
    return-void

    .line 240
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 247
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->isDisconnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    const-string/jumbo v0, "notify All Data Disconnected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 321
    :cond_0
    return-void
.end method

.method protected registerForAllEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42001

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42006

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42004

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataCallListChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    const v1, 0x42008

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    const v1, 0x42007

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const v1, 0x42003

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const v1, 0x42014

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const v1, 0x4200b

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const v1, 0x4200c

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42019

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 82
    return-void
.end method

.method public setInternalDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->setInternalDataEnabled(ZLandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public setInternalDataEnabled(ZLandroid/os/Message;)Z
    .locals 4
    .parameter "enable"
    .parameter "onCompleteMsg"

    .prologue
    const/4 v2, 0x1

    .line 220
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

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 222
    const v1, 0x4201b

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 223
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 224
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 225
    return v2

    .line 223
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 325
    return-void
.end method

.method protected unregisterForAllEvents()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataCallListChanged(Landroid/os/Handler;)V

    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForRoamingOn(Landroid/os/Handler;)V

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForRoamingOff(Landroid/os/Handler;)V

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 97
    return-void
.end method

.method protected update()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 286
    const-string/jumbo v1, "update"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->isActiveDataSubscription()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    const-string/jumbo v1, "update(): Active DDS, register for all events now!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->registerForAllEvents()V

    .line 291
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mUserDataEnabled:Z

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->updateCurrentCarrierInProvider()Z

    .line 294
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->broadcastMessenger()V

    .line 299
    :goto_1
    return-void

    .line 291
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 296
    :cond_1
    const-string/jumbo v0, "update(): NOT the active DDS, unregister for all events!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->unregisterForAllEvents()V

    goto :goto_1
.end method

.method public updateRecords()V
    .locals 0

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->updateIccAvailability()V

    .line 282
    return-void
.end method
