.class public final Lcom/android/internal/telephony/ims/IsimFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "IsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RIL_IsimFH"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .parameter "app"
    .parameter "aid"
    .parameter "ci"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "IsimFileHandler finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IsimFileHandler;->logd(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 1
    .parameter "efid"

    .prologue
    .line 43
    packed-switch p1, :pswitch_data_0

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ims/IsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    .line 47
    :pswitch_0
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x6f02
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 54
    const-string v0, "RIL_IsimFH"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 58
    const-string v0, "RIL_IsimFH"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method
