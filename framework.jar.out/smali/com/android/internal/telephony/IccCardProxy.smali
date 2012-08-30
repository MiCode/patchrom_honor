.class public Lcom/android/internal/telephony/IccCardProxy;
.super Landroid/os/Handler;
.source "IccCardProxy.java"

# interfaces
.implements Lcom/android/internal/telephony/IccCard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCardProxy$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_APP_READY:I = 0x6

.field private static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0xb

.field private static final EVENT_ICC_ABSENT:I = 0x4

.field private static final EVENT_ICC_CHANGED:I = 0x3

.field private static final EVENT_ICC_LOCKED:I = 0x5

.field private static final EVENT_ICC_REFRESH:I = 0xc

.field private static final EVENT_IMSI_READY:I = 0x8

.field private static final EVENT_PERSO_LOCKED:I = 0x9

.field private static final EVENT_RADIO_OFF_OR_UNAVAILABLE:I = 0x1

.field private static final EVENT_RADIO_ON:I = 0x2

.field protected static final EVENT_RECORDS_LOADED:I = 0x7

.field private static final LOG_TAG:Ljava/lang/String; = "RIL_IccCardProxy"


# instance fields
.field protected mAbsentRegistrants:Landroid/os/RegistrantList;

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private mCdmaSubscriptionFromNv:Z

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field protected mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

.field protected mExternalState:Lcom/android/internal/telephony/IccCard$State;

.field protected mIccRecords:Lcom/android/internal/telephony/IccRecords;

.field private mInitialized:Z

.field private mIsMultimodeCdmaPhone:Z

.field private mPersoLockedRegistrants:Landroid/os/RegistrantList;

.field private mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

.field private mPinLockedRegistrants:Landroid/os/RegistrantList;

.field protected mQuietMode:Z

.field private mRadioOn:Z

.field private mReadyRegistrants:Landroid/os/RegistrantList;

.field protected mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

.field protected mUiccCard:Lcom/android/internal/telephony/UiccCard;

.field protected mUiccManager:Lcom/android/internal/telephony/UiccManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .parameter "context"
    .parameter "ci"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 70
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mReadyRegistrants:Landroid/os/RegistrantList;

    .line 71
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 72
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    .line 73
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPersoLockedRegistrants:Landroid/os/RegistrantList;

    .line 75
    sget-object v0, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    .line 76
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 77
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 78
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 79
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 80
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 81
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionFromNv:Z

    .line 83
    const-string/jumbo v0, "ro.config.multimode_cdma"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIsMultimodeCdmaPhone:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    .line 88
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    .line 89
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .line 92
    const-string v0, "Creating"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lcom/android/internal/telephony/IccCardProxy;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 95
    const/16 v0, 0xb

    invoke-static {p1, p2, p0, v0, v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 97
    invoke-static {}, Lcom/android/internal/telephony/UiccManager;->getInstance()Lcom/android/internal/telephony/UiccManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 99
    const/4 v0, 0x2

    invoke-interface {p2, p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 100
    const/4 v0, 0x1

    invoke-interface {p2, p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 101
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    .line 102
    return-void
.end method

.method private processLockedState()V
    .locals 4

    .prologue
    .line 370
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-nez v2, :cond_0

    .line 390
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v1

    .line 375
    .local v1, pin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;
    sget-object v2, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-ne v1, v2, :cond_1

    .line 376
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_0

    .line 380
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    move-result-object v0

    .line 381
    .local v0, appState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    sget-object v2, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardApplicationStatus$AppState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 383
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 384
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_0

    .line 387
    :pswitch_1
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_0

    .line 381
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 611
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;Z)V

    .line 612
    return-void
.end method

.method private updateQuietMode()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 132
    const-string v3, "Updating quiet mode"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 133
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    .line 135
    .local v2, oldQuietMode:Z
    iget-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v6, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v3, v6, :cond_1

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, newQuietMode:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3GPP subscription -> QuietMode: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 155
    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    if-nez v3, :cond_5

    if-ne v0, v4, :cond_5

    .line 158
    const-string v3, "Switching to QuietMode."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 159
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    .line 160
    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    .line 166
    :cond_0
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QuietMode is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (app_type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " nv: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionFromNv:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " multimode: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mIsMultimodeCdmaPhone:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 168
    iput-boolean v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    .line 169
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccCardProxy;->sendMessage(Landroid/os/Message;)Z

    .line 170
    return-void

    .line 144
    .end local v0           #newQuietMode:Z
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v1

    .line 145
    .local v1, newSubscriptionSource:I
    if-ne v1, v4, :cond_3

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionFromNv:Z

    .line 147
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionFromNv:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mIsMultimodeCdmaPhone:Z

    if-eqz v3, :cond_2

    .line 148
    const-string v3, "Cdma multimode phone detected. Forcing IccCardProxy into 3gpp mode"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 149
    sget-object v3, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    .line 151
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionFromNv:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v6, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v3, v6, :cond_4

    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mIsMultimodeCdmaPhone:Z

    if-nez v3, :cond_4

    move v0, v4

    .restart local v0       #newQuietMode:Z
    :goto_3
    goto/16 :goto_0

    .end local v0           #newQuietMode:Z
    :cond_3
    move v3, v5

    .line 145
    goto :goto_2

    :cond_4
    move v0, v5

    .line 151
    goto :goto_3

    .line 161
    .end local v1           #newSubscriptionSource:I
    .restart local v0       #newQuietMode:Z
    :cond_5
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    if-ne v3, v4, :cond_0

    if-nez v0, :cond_0

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switching out from QuietMode. Force broadcast of current state:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 163
    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    .line 164
    iget-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;Z)V

    goto/16 :goto_1
.end method


# virtual methods
.method public broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "value"
    .parameter "reason"

    .prologue
    .line 330
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    if-eqz v1, :cond_0

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuietMode: NOT Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 345
    :goto_0
    return-void

    .line 336
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 338
    const-string/jumbo v1, "phoneName"

    const-string v2, "Phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string/jumbo v1, "ss"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 344
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 348
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 349
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    if-eqz p3, :cond_0

    .line 351
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 352
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 353
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 359
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 360
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    if-eqz p3, :cond_0

    .line 362
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 363
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 364
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 105
    const-string v0, "Disposing"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccManager;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 112
    return-void
.end method

.method public getIccCardState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    return-object v0
.end method

.method public getIccFdnAvailable()Z
    .locals 2

    .prologue
    .line 402
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFdnAvailable()Z

    move-result v0

    .line 403
    .local v0, retValue:Z
    :goto_0
    return v0

    .line 402
    .end local v0           #retValue:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIccFdnEnabled()Z
    .locals 2

    .prologue
    .line 397
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFdnEnabled()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 398
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 397
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 622
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIccLockEnabled()Z
    .locals 2

    .prologue
    .line 408
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccLockEnabled()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 409
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 408
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getIccPin1RetryCount()I
    .locals 2

    .prologue
    .line 413
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPin1RetryCount()I

    move-result v0

    .line 414
    .local v0, retValue:I
    :goto_0
    return v0

    .line 413
    .end local v0           #retValue:I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIccPin2Blocked()Z
    .locals 2

    .prologue
    .line 424
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPin2Blocked()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 425
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 424
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccPin2RetryCount()I
    .locals 2

    .prologue
    .line 418
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPin2RetryCount()I

    move-result v0

    .line 419
    .local v0, retValue:I
    :goto_0
    return v0

    .line 418
    .end local v0           #retValue:I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIccPuk2Blocked()Z
    .locals 2

    .prologue
    .line 430
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPuk2Blocked()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 431
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 430
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/IccRecords;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getRecordsLoaded()Z

    move-result v0

    .line 633
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    .line 438
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 173
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 218
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message with number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 175
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    .line 176
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 177
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_0

    .line 181
    :pswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    .line 182
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    if-nez v0, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateQuietMode()V

    goto :goto_0

    .line 187
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateIccAvailability()V

    goto :goto_0

    .line 192
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->processLockedState()V

    goto :goto_0

    .line 195
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_0

    .line 198
    :pswitch_6
    const-string v0, "LOADED"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :pswitch_7
    const-string v0, "IMSI"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .line 205
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mPersoLockedRegistrants:Landroid/os/RegistrantList;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 206
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_0

    .line 209
    :pswitch_9
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateQuietMode()V

    goto :goto_0

    .line 213
    :pswitch_a
    const-string v0, "RIL_IccCardProxy"

    const-string v1, "handleMessage get message EVENT_ICC_REFRESH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v0, "SIM_REFRESH"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public hasIccCard()Z
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v0, v1, :cond_0

    .line 443
    const/4 v0, 0x1

    .line 445
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 449
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 450
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 449
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 637
    const-string v0, "RIL_IccCardProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 641
    const-string v0, "RIL_IccCardProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    return-void
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 471
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 473
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 475
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    .line 476
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 478
    :cond_0
    return-void
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 504
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 506
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 508
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->isPinLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 511
    :cond_0
    return-void
.end method

.method public registerForPersoLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 488
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 489
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mPersoLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 491
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    .line 492
    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 494
    :cond_0
    return-void
.end method

.method public registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 454
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 456
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 458
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    .line 459
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 461
    :cond_0
    return-void
.end method

.method protected registerUiccCardEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCard;->registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->registerForPersoLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 309
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/IccRecords;->registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 310
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 312
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v1, 0xc

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/IccRecords;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 314
    :cond_6
    return-void
.end method

.method protected setExternalState(Lcom/android/internal/telephony/IccCard$State;Z)V
    .locals 2
    .parameter "newState"
    .parameter "override"

    .prologue
    .line 598
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v0, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    .line 602
    const-string v0, "gsm.sim.state"

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$State;->getIntentString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_0

    .line 607
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 518
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 519
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    if-eqz p3, :cond_0

    .line 521
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 522
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 523
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 529
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 530
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    if-eqz p3, :cond_0

    .line 532
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 533
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 534
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setPhoneType(I)V
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting Phone Type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 121
    sget-object v0, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    .line 125
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateQuietMode()V

    .line 126
    return-void

    .line 122
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 123
    sget-object v0, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    goto :goto_0
.end method

.method public supplyDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .parameter "pin"
    .parameter "type"
    .parameter "onComplete"

    .prologue
    .line 543
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 544
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->supplyDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    if-eqz p3, :cond_0

    .line 546
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CommandsInterface is not set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 547
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 548
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 554
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 555
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    if-eqz p2, :cond_0

    .line 557
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 558
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 559
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 565
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 566
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    if-eqz p2, :cond_0

    .line 568
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 569
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 570
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "puk"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    .line 576
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 577
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    if-eqz p3, :cond_0

    .line 579
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 580
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 581
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "onComplete"

    .prologue
    .line 587
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 588
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    if-eqz p3, :cond_0

    .line 590
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 591
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 592
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 482
    return-void
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 515
    return-void
.end method

.method public unregisterForPersoLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPersoLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 498
    return-void
.end method

.method public unregisterForReady(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 465
    return-void
.end method

.method protected unregisterUiccCardEvents()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCard;->unregisterForAbsent(Landroid/os/Handler;)V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForLocked(Landroid/os/Handler;)V

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForPersoLocked(Landroid/os/Handler;)V

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForImsiReady(Landroid/os/Handler;)V

    .line 322
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 324
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unRegisterForIccRefresh(Landroid/os/Handler;)V

    .line 326
    :cond_6
    return-void
.end method

.method protected updateExternalState()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v0, v1, :cond_3

    .line 261
    :cond_0
    const-string/jumbo v0, "persist.radio.apm_sim_not_pwdn"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 262
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    if-eqz v0, :cond_1

    .line 263
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    .line 302
    :goto_0
    return-void

    .line 265
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_0

    .line 268
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_0

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-nez v0, :cond_5

    .line 275
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_0

    .line 279
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardApplicationStatus$AppState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 282
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_0

    .line 285
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_0

    .line 288
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_0

    .line 291
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->isPersoLocked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .line 293
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_0

    .line 295
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_0

    .line 299
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method updateIccAvailability()V
    .locals 7

    .prologue
    .line 224
    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccManager;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v1

    .line 225
    .local v1, newCard:Lcom/android/internal/telephony/UiccCard;
    sget-object v3, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    .line 226
    .local v3, state:Lcom/android/internal/telephony/IccCardStatus$CardState;
    const/4 v0, 0x0

    .line 227
    .local v0, newApp:Lcom/android/internal/telephony/UiccCardApplication;
    const/4 v2, 0x0

    .line 228
    .local v2, newRecords:Lcom/android/internal/telephony/IccRecords;
    if-eqz v1, :cond_3

    .line 229
    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    .line 230
    const-string v4, "RIL_IccCardProxy"

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

    .line 231
    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/UiccCard;->getApplication(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v2

    .line 239
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-ne v4, v2, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-ne v4, v0, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eq v4, v1, :cond_2

    .line 240
    :cond_1
    const-string v4, "Icc changed. Reregestering."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->unregisterUiccCardEvents()V

    .line 242
    iput-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 243
    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 244
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->registerUiccCardEvents()V

    .line 248
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateExternalState()V

    .line 249
    return-void

    .line 236
    :cond_3
    const-string v4, "RIL_IccCardProxy"

    const-string v5, "No card available"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
