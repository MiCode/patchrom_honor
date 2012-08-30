.class public final Lcom/android/internal/telephony/ims/IsimUiccRecords;
.super Lcom/android/internal/telephony/IccRecords;
.source "IsimUiccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/ims/IsimRecords;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/IsimUiccRecords$1;,
        Lcom/android/internal/telephony/ims/IsimUiccRecords$EfIsimDomainLoaded;,
        Lcom/android/internal/telephony/ims/IsimUiccRecords$EfIsimImpuLoaded;,
        Lcom/android/internal/telephony/ims/IsimUiccRecords$EfIsimImpiLoaded;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DUMP_RECORDS:Z = false

.field private static final EVENT_APP_READY:I = 0x1

.field protected static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final TAG_ISIM_VALUE:I = 0x80


# instance fields
.field private mIsimDomain:Ljava/lang/String;

.field private mIsimImpi:Ljava/lang/String;

.field private mIsimImpu:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .parameter "app"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 63
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->recordsRequested:Z

    .line 66
    iput v0, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->recordsToLoad:I

    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/ims/IsimUiccRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->mIsimImpi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400([B)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/internal/telephony/ims/IsimUiccRecords;->isimTlvToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/ims/IsimUiccRecords;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->mIsimImpu:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/ims/IsimUiccRecords;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->mIsimImpu:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/ims/IsimUiccRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->mIsimDomain:Ljava/lang/String;

    return-object p1
.end method

.method private static isimTlvToString([B)Ljava/lang/String;
    .locals 4
    .parameter "record"

    .prologue
    .line 175
    new-instance v0, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 177
    .local v0, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v1

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1

    .line 178
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 183
    :goto_0
    return-object v1

    .line 180
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    const-string v1, "GSM"

    const-string v2, "[ISIM] can\'t find TLV tag in ISIM record, returning null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disposing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IsimUiccRecords;->resetRecords()V

    .line 77
    invoke-super {p0}, Lcom/android/internal/telephony/IccRecords;->dispose()V

    .line 78
    return-void
.end method

.method protected fetchIsimRecords()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x64

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->recordsRequested:Z

    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f02

    new-instance v2, Lcom/android/internal/telephony/ims/IsimUiccRecords$EfIsimImpiLoaded;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/ims/IsimUiccRecords$EfIsimImpiLoaded;-><init>(Lcom/android/internal/telephony/ims/IsimUiccRecords;Lcom/android/internal/telephony/ims/IsimUiccRecords$1;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/ims/IsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 109
    iget v0, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->recordsToLoad:I

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f04

    new-instance v2, Lcom/android/internal/telephony/ims/IsimUiccRecords$EfIsimImpuLoaded;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/ims/IsimUiccRecords$EfIsimImpuLoaded;-><init>(Lcom/android/internal/telephony/ims/IsimUiccRecords;Lcom/android/internal/telephony/ims/IsimUiccRecords$1;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/ims/IsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 113
    iget v0, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->recordsToLoad:I

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f03

    new-instance v2, Lcom/android/internal/telephony/ims/IsimUiccRecords$EfIsimDomainLoaded;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/ims/IsimUiccRecords$EfIsimDomainLoaded;-><init>(Lcom/android/internal/telephony/ims/IsimUiccRecords;Lcom/android/internal/telephony/ims/IsimUiccRecords$1;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/ims/IsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 117
    iget v0, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->recordsToLoad:I

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchIsimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->recordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 1
    .parameter "plmn"

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->mIsimDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->mIsimImpi:Ljava/lang/String;

    return-object v0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->mIsimImpu:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->mIsimImpu:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 82
    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 83
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] while being destroyed. Ignoring."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    return-void

    .line 89
    :cond_0
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 95
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccRecords;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 100
    .local v0, exc:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Exception parsing SIM record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 91
    .end local v0           #exc:Ljava/lang/RuntimeException;
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IsimUiccRecords;->onReady()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 207
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ISIM] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 211
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ISIM] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 204
    return-void
.end method

.method public onReady()V
    .locals 0

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IsimUiccRecords;->fetchIsimRecords()V

    .line 255
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    .line 190
    iget v0, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->recordsToLoad:I

    .line 192
    iget v0, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->recordsRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IsimUiccRecords;->onAllRecordsLoaded()V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->recordsToLoad:I

    if-gez v0, :cond_0

    .line 195
    const-string/jumbo v0, "recordsToLoad <0, programmer error suspected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IsimUiccRecords;->loge(Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    .line 260
    return-void
.end method

.method protected resetRecords()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/IsimUiccRecords;->recordsRequested:Z

    .line 127
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "voiceNumber"

    .prologue
    .line 249
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    .line 266
    return-void
.end method

.method public setVoiceMessageWaiting(IILandroid/os/Message;)V
    .locals 0
    .parameter "line"
    .parameter "countWaiting"
    .parameter "onComplete"

    .prologue
    .line 271
    return-void
.end method
