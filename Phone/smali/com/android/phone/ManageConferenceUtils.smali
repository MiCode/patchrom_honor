.class public Lcom/android/phone/ManageConferenceUtils;
.super Ljava/lang/Object;
.source "ManageConferenceUtils.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# static fields
.field private static final DBG:Z


# instance fields
.field private mButtonManageConferenceDone:Landroid/widget/Button;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mConferenceCallList:[Landroid/view/ViewGroup;

.field private mConferenceTime:Landroid/widget/Chronometer;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mManageConferencePanel:Landroid/view/ViewGroup;

.field private mNumCallersInConference:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .parameter "inCallScreen"
    .parameter "cm"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ManageConferenceUtils constructor..."

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 64
    iput-object p2, p0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 65
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 340
    const-string v0, "ManageConferenceUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void
.end method


# virtual methods
.method public final displayCallerInfoForConferenceRow(Lcom/android/internal/telephony/CallerInfo;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 7
    .parameter "ci"
    .parameter "nameTextView"
    .parameter "numberTypeTextView"
    .parameter "numberTextView"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 248
    const-string v0, ""

    .line 249
    .local v0, callerName:Ljava/lang/String;
    const-string v1, ""

    .line 250
    .local v1, callerNumber:Ljava/lang/String;
    const-string v2, ""

    .line 251
    .local v2, callerNumberType:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 252
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 253
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 255
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f0c0004

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    :cond_0
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 269
    invoke-virtual {p4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    :goto_1
    return-void

    .line 259
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 260
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    goto :goto_0

    .line 272
    :cond_2
    invoke-virtual {p4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public endConferenceConnection(ILcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "i"
    .parameter "connection"

    .prologue
    .line 286
    sget-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===> ENDING conference connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 289
    :cond_0
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 293
    return-void
.end method

.method public getNumCallersInConference()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    return v0
.end method

.method public initManageConferencePanel()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    .line 68
    sget-boolean v3, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "initManageConferencePanel()..."

    invoke-direct {p0, v3}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 69
    :cond_0
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-nez v3, :cond_4

    .line 70
    sget-boolean v3, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "initManageConferencePanel: first-time initialization!"

    invoke-direct {p0, v3}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 73
    :cond_1
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f070050

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 74
    .local v1, stub:Landroid/view/ViewStub;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 76
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f070068

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    .line 78
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-nez v3, :cond_2

    .line 79
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t find manageConferencePanel!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 83
    :cond_2
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f070069

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Chronometer;

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    .line 85
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    iget-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v5, 0x7f0c0161

    invoke-virtual {v4, v5}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    .line 88
    new-array v3, v6, [Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    .line 90
    new-array v2, v6, [I

    fill-array-data v2, :array_0

    .line 92
    .local v2, viewGroupIdList:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_3

    .line 93
    iget-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    aget v5, v2, v0

    invoke-virtual {v3, v5}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    aput-object v3, v4, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_3
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f070072

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mButtonManageConferenceDone:Landroid/widget/Button;

    .line 98
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mButtonManageConferenceDone:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .end local v0           #i:I
    .end local v1           #stub:Landroid/view/ViewStub;
    .end local v2           #viewGroupIdList:[I
    :cond_4
    return-void

    .line 90
    nop

    :array_0
    .array-data 0x4
        0x6dt 0x0t 0x7t 0x7ft
        0x6et 0x0t 0x7t 0x7ft
        0x6ft 0x0t 0x7t 0x7ft
        0x70t 0x0t 0x7t 0x7ft
        0x71t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 325
    sget-boolean v1, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callerinfo query complete, updating UI."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    :cond_0
    move-object v0, p2

    .line 328
    check-cast v0, Landroid/view/ViewGroup;

    .line 329
    .local v0, vg:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 332
    const v1, 0x7f070020

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f070021

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f070022

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0, p3, v1, v2, v3}, Lcom/android/phone/ManageConferenceUtils;->displayCallerInfoForConferenceRow(Lcom/android/internal/telephony/CallerInfo;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 336
    return-void
.end method

.method public separateConferenceConnection(ILcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "i"
    .parameter "connection"

    .prologue
    .line 302
    sget-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===> SEPARATING conference connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 305
    :cond_0
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->separateCall(Lcom/android/internal/telephony/Connection;)V

    .line 315
    return-void
.end method

.method public setPanelVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 109
    :cond_0
    return-void

    .line 107
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public startConferenceTime(J)V
    .locals 1
    .parameter "base"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 117
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 119
    :cond_0
    return-void
.end method

.method public stopConferenceTime()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 128
    :cond_0
    return-void
.end method

.method public updateManageConferencePanel(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v5, 0x0

    .line 143
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    iput v6, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    .line 144
    sget-boolean v6, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateManageConferencePanel()... num connections in conference = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 149
    :cond_0
    iget-object v6, p0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    .line 150
    .local v2, hasActiveCall:Z
    iget-object v6, p0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    .line 151
    .local v3, hasHoldingCall:Z
    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 153
    .local v0, canSeparate:Z
    :goto_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    const/4 v6, 0x5

    if-ge v4, v6, :cond_4

    .line 154
    iget v6, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    if-ge v4, v6, :cond_3

    .line 156
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 157
    .local v1, connection:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0, v4, v1, v0}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V

    .line 153
    .end local v1           #connection:Lcom/android/internal/telephony/Connection;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0           #canSeparate:Z
    .end local v4           #i:I
    :cond_2
    move v0, v5

    .line 151
    goto :goto_0

    .line 160
    .restart local v0       #canSeparate:Z
    .restart local v4       #i:I
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6, v5}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V

    goto :goto_2

    .line 163
    :cond_4
    return-void
.end method

.method public updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V
    .locals 11
    .parameter "i"
    .parameter "connection"
    .parameter "canSeparate"

    .prologue
    const/4 v10, 0x0

    .line 179
    sget-boolean v8, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateManageConferenceRow("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")...  connection = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 181
    :cond_0
    if-eqz p2, :cond_4

    .line 183
    iget-object v8, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 186
    iget-object v8, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    const v9, 0x7f07001f

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 188
    .local v0, endButton:Landroid/widget/ImageButton;
    iget-object v8, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    const v9, 0x7f070023

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 190
    .local v6, separateButton:Landroid/widget/ImageButton;
    iget-object v8, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    const v9, 0x7f070020

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 192
    .local v3, nameTextView:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    const v9, 0x7f070022

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 194
    .local v4, numberTextView:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    const v9, 0x7f070021

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 197
    .local v5, numberTypeTextView:Landroid/widget/TextView;
    sget-boolean v8, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- button: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", nameTextView: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 200
    :cond_1
    new-instance v1, Lcom/android/phone/ManageConferenceUtils$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/phone/ManageConferenceUtils$1;-><init>(Lcom/android/phone/ManageConferenceUtils;ILcom/android/internal/telephony/Connection;)V

    .line 206
    .local v1, endThisConnection:Landroid/view/View$OnClickListener;
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    if-eqz p3, :cond_3

    .line 209
    new-instance v7, Lcom/android/phone/ManageConferenceUtils$2;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/phone/ManageConferenceUtils$2;-><init>(Lcom/android/phone/ManageConferenceUtils;ILcom/android/internal/telephony/Connection;)V

    .line 215
    .local v7, separateThisConnection:Landroid/view/View$OnClickListener;
    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    invoke-virtual {v6, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 223
    .end local v7           #separateThisConnection:Landroid/view/View$OnClickListener;
    :goto_0
    iget-object v8, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v9, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v9, v9, p1

    invoke-static {v8, p2, p0, v9}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v2

    .line 228
    .local v2, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget-boolean v8, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  - got info from startGetCallerInfo(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 231
    :cond_2
    iget-object v8, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0, v8, v3, v5, v4}, Lcom/android/phone/ManageConferenceUtils;->displayCallerInfoForConferenceRow(Lcom/android/internal/telephony/CallerInfo;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 237
    .end local v0           #endButton:Landroid/widget/ImageButton;
    .end local v1           #endThisConnection:Landroid/view/View$OnClickListener;
    .end local v2           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v3           #nameTextView:Landroid/widget/TextView;
    .end local v4           #numberTextView:Landroid/widget/TextView;
    .end local v5           #numberTypeTextView:Landroid/widget/TextView;
    .end local v6           #separateButton:Landroid/widget/ImageButton;
    :goto_1
    return-void

    .line 218
    .restart local v0       #endButton:Landroid/widget/ImageButton;
    .restart local v1       #endThisConnection:Landroid/view/View$OnClickListener;
    .restart local v3       #nameTextView:Landroid/widget/TextView;
    .restart local v4       #numberTextView:Landroid/widget/TextView;
    .restart local v5       #numberTypeTextView:Landroid/widget/TextView;
    .restart local v6       #separateButton:Landroid/widget/ImageButton;
    :cond_3
    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 235
    .end local v0           #endButton:Landroid/widget/ImageButton;
    .end local v1           #endThisConnection:Landroid/view/View$OnClickListener;
    .end local v3           #nameTextView:Landroid/widget/TextView;
    .end local v4           #numberTextView:Landroid/widget/TextView;
    .end local v5           #numberTypeTextView:Landroid/widget/TextView;
    .end local v6           #separateButton:Landroid/widget/ImageButton;
    :cond_4
    iget-object v8, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method
