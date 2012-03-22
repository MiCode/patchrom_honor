.class public Lcom/android/phone/InCallTouchUi;
.super Landroid/widget/FrameLayout;
.source "InCallTouchUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;
    }
.end annotation


# instance fields
.field private mAddButton:Landroid/widget/ImageButton;

.field private mApp:Lcom/android/phone/PhoneApp;

.field private mAudioButton:Landroid/widget/CompoundButton;

.field private mAudioModePopup:Landroid/widget/PopupMenu;

.field private mAudioModePopupVisible:Z

.field private mCdmaMergeButton:Landroid/view/ViewGroup;

.field private mDialpadButton:Landroid/widget/CompoundButton;

.field private mEndButton:Landroid/widget/ImageButton;

.field private mExtraButtonRow:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mHoldButton:Landroid/widget/CompoundButton;

.field private mHoldSwapSpacer:Landroid/view/View;

.field private mInCallControls:Landroid/view/View;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

.field private mLastIncomingCallActionTime:J

.field private mManageConferenceButton:Landroid/view/ViewGroup;

.field private mManageConferenceButtonImage:Landroid/widget/ImageButton;

.field private mMergeButton:Landroid/widget/ImageButton;

.field private mMuteButton:Landroid/widget/CompoundButton;

.field private mSwapButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 108
    new-instance v1, Lcom/android/phone/InCallTouchUi$1;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallTouchUi$1;-><init>(Lcom/android/phone/InCallTouchUi;)V

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    .line 136
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 137
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040010

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 142
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/InCallTouchUi;)Lcom/android/internal/widget/multiwaveview/MultiWaveView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    return-object v0
.end method

.method private handleAudioButtonClick()V
    .locals 2

    .prologue
    .line 667
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 668
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-boolean v1, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v1, :cond_0

    .line 670
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->showAudioModePopup()V

    .line 675
    :goto_0
    return-void

    .line 673
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->toggleSpeaker()V

    goto :goto_0
.end method

.method private hideIncomingCallWidget()V
    .locals 3

    .prologue
    .line 917
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 942
    :cond_0
    :goto_0
    return-void

    .line 923
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 924
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 925
    new-instance v1, Lcom/android/phone/InCallTouchUi$2;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallTouchUi$2;-><init>(Lcom/android/phone/InCallTouchUi;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 941
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1219
    const-string v0, "InCallTouchUi"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    return-void
.end method

.method private showAudioModePopup()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 683
    new-instance v7, Landroid/widget/PopupMenu;

    iget-object v10, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-direct {v7, v10, v11}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 685
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const/high16 v10, 0x7f0f

    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v11}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 687
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 688
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 692
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v2

    .line 694
    .local v2, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 701
    .local v3, menu:Landroid/view/Menu;
    const v7, 0x7f07009a

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 702
    .local v4, speakerItem:Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 708
    const v7, 0x7f07009b

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 709
    .local v1, earpieceItem:Landroid/view/MenuItem;
    const v7, 0x7f07009c

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 710
    .local v6, wiredHeadsetItem:Landroid/view/MenuItem;
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v5

    .line 711
    .local v5, usingHeadset:Z
    if-nez v5, :cond_1

    move v7, v8

    :goto_0
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 712
    if-nez v5, :cond_0

    move v9, v8

    :cond_0
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 713
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 714
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 719
    const v7, 0x7f07009d

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 720
    .local v0, bluetoothItem:Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 724
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->show()V

    .line 729
    iput-boolean v8, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 730
    return-void

    .end local v0           #bluetoothItem:Landroid/view/MenuItem;
    :cond_1
    move v7, v9

    .line 711
    goto :goto_0
.end method

.method private showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V
    .locals 6
    .parameter "ringingCall"

    .prologue
    const/16 v5, 0x65

    const/4 v4, 0x0

    .line 950
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 951
    .local v1, anim:Landroid/view/animation/Animation;
    if-eqz v1, :cond_0

    .line 952
    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    .line 953
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->clearAnimation()V

    .line 961
    :cond_0
    invoke-static {p1}, Lcom/android/phone/RespondViaSmsManager;->allowRespondViaSmsForCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    .line 962
    .local v0, allowRespondViaSms:Z
    if-eqz v0, :cond_1

    .line 965
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    const v3, 0x7f060006

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTargetResources(I)V

    .line 966
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    const v3, 0x7f060007

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTargetDescriptionsResourceId(I)V

    .line 968
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    const v3, 0x7f060008

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setDirectionDescriptionsResourceId(I)V

    .line 983
    :goto_0
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->reset(Z)V

    .line 984
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setVisibility(I)V

    .line 996
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 997
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1004
    return-void

    .line 972
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    const v3, 0x7f060009

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTargetResources(I)V

    .line 973
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    const v3, 0x7f06000a

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTargetDescriptionsResourceId(I)V

    .line 975
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    const v3, 0x7f06000b

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setDirectionDescriptionsResourceId(I)V

    goto :goto_0
.end method

.method private updateAudioButton(Lcom/android/phone/InCallControlState;)V
    .locals 12
    .parameter "inCallControlState"

    .prologue
    const/4 v11, 0x1

    const/16 v9, 0xff

    const/4 v10, 0x0

    .line 577
    const/4 v7, 0x0

    .line 580
    .local v7, showToggleStateIndication:Z
    const/4 v5, 0x0

    .line 583
    .local v5, showMoreIndicator:Z
    const/4 v6, 0x0

    .line 584
    .local v6, showSpeakerIcon:Z
    const/4 v4, 0x0

    .line 585
    .local v4, showHandsetIcon:Z
    const/4 v3, 0x0

    .line 587
    .local v3, showBluetoothIcon:Z
    iget-boolean v8, p1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v8, :cond_2

    .line 590
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v11}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 597
    const/4 v5, 0x1

    .line 598
    iget-boolean v8, p1, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v8, :cond_0

    .line 599
    const/4 v3, 0x1

    .line 637
    :goto_0
    const/4 v0, 0x0

    .line 638
    .local v0, HIDDEN:I
    const/16 v1, 0xff

    .line 640
    .local v1, VISIBLE:I
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v8}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 643
    .local v2, layers:Landroid/graphics/drawable/LayerDrawable;
    const v8, 0x7f070095

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v7, :cond_4

    move v8, v9

    :goto_1
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 646
    const v8, 0x7f070096

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v5, :cond_5

    move v8, v9

    :goto_2
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 649
    const v8, 0x7f070097

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v3, :cond_6

    move v8, v9

    :goto_3
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 652
    const v8, 0x7f070098

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v4, :cond_7

    move v8, v9

    :goto_4
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 655
    const v8, 0x7f070099

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v6, :cond_8

    :goto_5
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 657
    return-void

    .line 600
    .end local v0           #HIDDEN:I
    .end local v1           #VISIBLE:I
    .end local v2           #layers:Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    iget-boolean v8, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v8, :cond_1

    .line 601
    const/4 v6, 0x1

    goto :goto_0

    .line 603
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 609
    :cond_2
    iget-boolean v8, p1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    if-eqz v8, :cond_3

    .line 612
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v11}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 616
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    iget-boolean v11, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v8, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 619
    const/4 v7, 0x1

    .line 620
    const/4 v6, 0x1

    goto :goto_0

    .line 626
    :cond_3
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v10}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 627
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 630
    const/4 v7, 0x1

    .line 631
    const/4 v6, 0x1

    goto :goto_0

    .restart local v0       #HIDDEN:I
    .restart local v1       #VISIBLE:I
    .restart local v2       #layers:Landroid/graphics/drawable/LayerDrawable;
    :cond_4
    move v8, v10

    .line 643
    goto :goto_1

    :cond_5
    move v8, v10

    .line 646
    goto :goto_2

    :cond_6
    move v8, v10

    .line 649
    goto :goto_3

    :cond_7
    move v8, v10

    .line 652
    goto :goto_4

    :cond_8
    move v9, v10

    .line 655
    goto :goto_5
.end method


# virtual methods
.method public dismissAudioModePopup()V
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 741
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 742
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 744
    :cond_0
    return-void
.end method

.method public getTouchUiHeight()I
    .locals 3

    .prologue
    .line 829
    const/4 v0, 0x0

    .line 832
    .local v0, height:I
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 835
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 841
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 843
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 348
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 368
    :pswitch_0
    const-string v1, "InCallTouchUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click: View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :goto_0
    return-void

    .line 360
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 364
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->handleAudioButtonClick()V

    goto :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x7f070059
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 803
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 804
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 151
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 157
    const v1, 0x7f070054

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    .line 158
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;)V

    .line 161
    const v1, 0x7f070055

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    .line 165
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070066

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    .line 166
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070067

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    .line 168
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f07005f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    .line 170
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070060

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    .line 172
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070062

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    .line 174
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070061

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    .line 176
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070063

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    .line 178
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    .line 180
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070065

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldSwapSpacer:Landroid/view/View;

    .line 198
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070058

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    .line 201
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f07005c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    .line 203
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070059

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    .line 207
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f07005a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButtonImage:Landroid/widget/ImageButton;

    .line 226
    new-instance v0, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;-><init>(Lcom/android/phone/InCallTouchUi;)V

    .line 227
    .local v0, smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 228
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 853
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 5
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 1016
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_0

    .line 1022
    packed-switch p2, :pswitch_data_0

    .line 1040
    const-string v2, "InCallTouchUi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGrabbedStateChange: unexpected grabbedState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const/4 v1, 0x0

    .line 1043
    .local v1, hintTextResId:I
    const/4 v0, 0x0

    .line 1049
    .local v0, hintColorResId:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v1, v0}, Lcom/android/phone/InCallScreen;->updateIncomingCallWidgetHint(II)V

    .line 1051
    .end local v0           #hintColorResId:I
    .end local v1           #hintTextResId:I
    :cond_0
    return-void

    .line 1025
    :pswitch_0
    const/4 v1, 0x0

    .line 1026
    .restart local v1       #hintTextResId:I
    const/4 v0, 0x0

    .line 1027
    .restart local v0       #hintColorResId:I
    goto :goto_0

    .line 1022
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onIncomingRing()V
    .locals 0

    .prologue
    .line 1064
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 770
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 771
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), but null mInCallScreen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :goto_0
    return v3

    .line 775
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 789
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemClick:  unexpected View ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (MenuItem = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 777
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 783
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 786
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 775
    :pswitch_data_0
    .packed-switch 0x7f07009a
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 857
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/4 v3, 0x0

    .line 868
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 873
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    .line 881
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 882
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrigger("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") from incoming-call widget, but null mInCallScreen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :goto_0
    return-void

    .line 886
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 903
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialTrigger: unexpected whichHandle value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :goto_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3, v3}, Lcom/android/phone/InCallScreen;->updateIncomingCallWidgetHint(II)V

    goto :goto_0

    .line 889
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 894
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 899
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 886
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public refreshAudioModePopup()V
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 760
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->showAudioModePopup()V

    .line 762
    :cond_0
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 147
    return-void
.end method

.method public triggerPing()V
    .locals 4

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1079
    const-string v0, "- triggerPing: InCallScreen no longer in foreground; ignoring..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1123
    :cond_0
    :goto_0
    return-void

    .line 1083
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    if-nez v0, :cond_2

    .line 1086
    const-string v0, "InCallTouchUi"

    const-string v1, "- triggerPing: null mIncomingCallWidget!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1093
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->ping()V

    .line 1120
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method updateInCallControls(Lcom/android/internal/telephony/CallManager;)V
    .locals 9
    .parameter "cm"

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/16 v7, 0x8

    const/4 v4, 0x0

    .line 378
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 392
    .local v1, phoneType:I
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 396
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    const/4 v3, 0x0

    .line 402
    .local v3, showExtraButtonRow:Z
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v5, :cond_4

    .line 403
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 404
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 405
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 432
    :goto_0
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v5, :cond_1

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v5, :cond_1

    .line 433
    if-eq v1, v2, :cond_0

    if-ne v1, v6, :cond_9

    .line 440
    :cond_0
    const-string v5, "InCallTouchUi"

    const-string v6, "updateInCallControls: Add *and* Merge enabled, but can\'t show both!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_1
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->canEndCall:Z

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 456
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 457
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 460
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 461
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 464
    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->updateAudioButton(Lcom/android/phone/InCallControlState;)V

    .line 470
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v5, :cond_a

    .line 471
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 472
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 473
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 474
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 502
    :goto_1
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v5, :cond_2

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v5, :cond_2

    .line 508
    const-string v5, "InCallTouchUi"

    const-string v6, "updateInCallControls: Hold *and* Swap enabled, but can\'t show both!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_2
    if-ne v1, v8, :cond_d

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v5, :cond_d

    .line 516
    .local v2, showCdmaMerge:Z
    :goto_2
    if-eqz v2, :cond_e

    .line 517
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 518
    const/4 v3, 0x1

    .line 522
    :goto_3
    if-ne v1, v8, :cond_3

    .line 523
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v5, :cond_3

    .line 529
    const-string v5, "InCallTouchUi"

    const-string v6, "updateInCallControls: Merge *and* Swapenabled, but can\'t show both!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_3
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v5, :cond_f

    .line 537
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 538
    const/4 v3, 0x1

    .line 539
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButtonImage:Landroid/widget/ImageButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 547
    :goto_4
    if-eqz v3, :cond_10

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-nez v5, :cond_10

    .line 548
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 552
    :goto_5
    return-void

    .line 406
    .end local v2           #showCdmaMerge:Z
    :cond_4
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v5, :cond_8

    .line 407
    if-ne v1, v8, :cond_5

    .line 411
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 412
    :cond_5
    if-eq v1, v2, :cond_6

    if-ne v1, v6, :cond_7

    .line 414
    :cond_6
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 415
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 416
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 418
    :cond_7
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 428
    :cond_8
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 429
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 430
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 442
    :cond_9
    if-eq v1, v8, :cond_1

    .line 447
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 475
    :cond_a
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v5, :cond_b

    .line 476
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 477
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 478
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v7}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 490
    :cond_b
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    if-eqz v5, :cond_c

    .line 491
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 492
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 493
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 494
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 495
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldSwapSpacer:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 497
    :cond_c
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v7}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 498
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 499
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldSwapSpacer:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_d
    move v2, v4

    .line 514
    goto/16 :goto_2

    .line 520
    .restart local v2       #showCdmaMerge:Z
    :cond_e
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 541
    :cond_f
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_4

    .line 550
    :cond_10
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 12
    .parameter "cm"

    .prologue
    const/4 v11, 0x0

    .line 235
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v7, :cond_1

    .line 236
    const-string v7, "- updateState: mInCallScreen has been destroyed; bailing out..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    .line 243
    .local v6, state:Lcom/android/internal/telephony/Phone$State;
    const/4 v5, 0x0

    .line 244
    .local v5, showIncomingCallControls:Z
    const/4 v4, 0x0

    .line 246
    .local v4, showInCallControls:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 247
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 254
    .local v0, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v7

    if-nez v7, :cond_4

    .line 263
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 265
    const/4 v5, 0x1

    .line 272
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 273
    .local v1, now:J
    iget-wide v7, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    const-wide/16 v9, 0x1f4

    add-long/2addr v7, v9

    cmp-long v7, v1, v7

    if-gez v7, :cond_3

    .line 274
    const-string v7, "updateState: Too soon after last action; not drawing!"

    invoke-direct {p0, v7}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 275
    const/4 v5, 0x0

    .line 289
    .end local v1           #now:J
    :cond_3
    :goto_1
    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    .line 290
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "\'Incoming\' and \'in-call\' touch controls visible at the same time!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 279
    :cond_4
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->okToShowInCallTouchUi()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 280
    const/4 v4, 0x1

    goto :goto_1

    .line 294
    :cond_5
    if-eqz v4, :cond_7

    .line 296
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;)V

    .line 297
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 303
    :goto_2
    if-eqz v5, :cond_8

    .line 305
    invoke-direct {p0, v3}, Lcom/android/phone/InCallTouchUi;->showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V

    .line 314
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v7, v7, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v7, v11}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 332
    :goto_3
    sget-object v7, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v7, :cond_6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v7, :cond_0

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v7, :cond_0

    .line 339
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->dismissAudioModePopup()V

    goto :goto_0

    .line 300
    :cond_7
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 317
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 321
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v7, v7, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    goto :goto_3
.end method
