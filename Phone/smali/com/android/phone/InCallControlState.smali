.class public Lcom/android/phone/InCallControlState;
.super Ljava/lang/Object;
.source "InCallControlState.java"


# instance fields
.field public bluetoothEnabled:Z

.field public bluetoothIndicatorOn:Z

.field public canAddCall:Z

.field public canEndCall:Z

.field public canHold:Z

.field public canMerge:Z

.field public canMute:Z

.field public canSwap:Z

.field public dialpadEnabled:Z

.field public dialpadVisible:Z

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field public manageConferenceEnabled:Z

.field public manageConferenceVisible:Z

.field public muteIndicatorOn:Z

.field public onHold:Z

.field public speakerEnabled:Z

.field public speakerOn:Z

.field public supportsHold:Z


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter "inCallScreen"
    .parameter "cm"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 91
    iput-object p2, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 92
    return-void
.end method


# virtual methods
.method public update()V
    .locals 15

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 99
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v10

    .line 100
    .local v10, state:Lcom/android/internal/telephony/Phone$State;
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 101
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 102
    .local v3, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v13, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v13, :cond_5

    move v4, v11

    .line 103
    .local v4, hasActiveForegroundCall:Z
    :goto_0
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    .line 106
    .local v5, hasHoldingCall:Z
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/TelephonyCapabilities;->supportsConferenceCallManagement(Lcom/android/internal/telephony/Phone;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 110
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 111
    iget-boolean v13, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v13, :cond_6

    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v13}, Lcom/android/phone/InCallScreen;->isManageConferenceMode()Z

    move-result v13

    if-nez v13, :cond_6

    move v13, v11

    :goto_1
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    .line 120
    :goto_2
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .line 127
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canEndCall:Z

    .line 130
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->canSwap:Z

    .line 131
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->canMerge:Z

    .line 134
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v13}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 135
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    .line 136
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v13}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    .line 144
    :goto_3
    sget-object v13, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v10, v13, :cond_9

    move v13, v11

    :goto_4
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    .line 145
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    .line 151
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 152
    .local v1, c:Lcom/android/internal/telephony/Connection;
    const/4 v7, 0x0

    .line 153
    .local v7, isEmergencyCall:Z
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v7

    .line 156
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    .line 157
    .local v6, isECM:Z
    if-nez v7, :cond_1

    if-eqz v6, :cond_a

    .line 158
    :cond_1
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 159
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    .line 167
    :goto_5
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v13}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    .line 171
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v13}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    .line 174
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/TelephonyCapabilities;->supportsHoldAndUnhold(Lcom/android/internal/telephony/Phone;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 176
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 180
    if-eqz v5, :cond_b

    sget-object v13, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v13, :cond_b

    move v13, v11

    :goto_6
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 183
    if-eqz v4, :cond_c

    if-nez v5, :cond_c

    move v8, v11

    .line 184
    .local v8, okToHold:Z
    :goto_7
    iget-boolean v9, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 185
    .local v9, okToUnhold:Z
    if-nez v8, :cond_2

    if-eqz v9, :cond_3

    :cond_2
    move v12, v11

    :cond_3
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    .line 206
    .end local v8           #okToHold:Z
    .end local v9           #okToUnhold:Z
    :cond_4
    :goto_8
    return-void

    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    .end local v4           #hasActiveForegroundCall:Z
    .end local v5           #hasHoldingCall:Z
    .end local v6           #isECM:Z
    .end local v7           #isEmergencyCall:Z
    :cond_5
    move v4, v12

    .line 102
    goto/16 :goto_0

    .restart local v4       #hasActiveForegroundCall:Z
    .restart local v5       #hasHoldingCall:Z
    :cond_6
    move v13, v12

    .line 111
    goto/16 :goto_1

    .line 115
    :cond_7
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 116
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    goto/16 :goto_2

    .line 138
    :cond_8
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    .line 139
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    goto :goto_3

    :cond_9
    move v13, v12

    .line 144
    goto :goto_4

    .line 161
    .restart local v1       #c:Lcom/android/internal/telephony/Connection;
    .restart local v6       #isECM:Z
    .restart local v7       #isEmergencyCall:Z
    :cond_a
    iput-boolean v4, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 162
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    goto :goto_5

    :cond_b
    move v13, v12

    .line 180
    goto :goto_6

    :cond_c
    move v8, v12

    .line 183
    goto :goto_7

    .line 186
    :cond_d
    if-eqz v5, :cond_e

    sget-object v13, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v13, :cond_e

    .line 191
    iget-object v12, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 192
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/TelephonyCapabilities;->supportsHoldAndUnhold(Lcom/android/internal/telephony/Phone;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 194
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 195
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 196
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    goto :goto_8

    .line 200
    .end local v0           #bgCall:Lcom/android/internal/telephony/Call;
    :cond_e
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 201
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 202
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    goto :goto_8
.end method
