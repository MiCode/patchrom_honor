.class public Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;
.super Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.source "MSimLockPatternKeyguardView.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MSimLockPatternKeyguardView"


# instance fields
.field private mIsPinUnlockCancelled:[Z

.field private mIsPukUnlockCancelled:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V
    .locals 2
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "controller"

    .prologue
    const/4 v1, 0x2

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V

    .line 52
    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPinUnlockCancelled:[Z

    .line 53
    new-array v0, v1, [Z

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPukUnlockCancelled:[Z

    .line 86
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    .line 87
    return-void

    .line 52
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 53
    nop

    :array_1
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPukLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPukUnlockCancelled:[Z

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;I)Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPinUnlockCancelled:[Z

    return-object v0
.end method

.method private getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    .locals 3

    .prologue
    .line 476
    const/4 v1, 0x0

    .line 477
    .local v1, isPukRequired:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 478
    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPukLocked(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const/4 v1, 0x1

    .line 479
    :goto_1
    if-eqz v1, :cond_4

    .line 481
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v2

    if-nez v2, :cond_5

    .line 483
    :cond_2
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    .line 488
    :goto_2
    return-object v2

    .line 478
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 477
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 485
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mShowLockBeforeUnlock:Z

    if-eqz v2, :cond_7

    .line 486
    :cond_6
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    goto :goto_2

    .line 488
    :cond_7
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    goto :goto_2
.end method

.method private getPinLockedSubscription()I
    .locals 3

    .prologue
    .line 305
    const/4 v1, 0x1

    .line 307
    .local v1, subscription:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 308
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPinLocked(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPinUnlockCancelled:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_1

    .line 309
    move v1, v0

    .line 313
    :cond_0
    return v1

    .line 307
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getPukLockedSubscription()I
    .locals 3

    .prologue
    .line 324
    const/4 v1, 0x0

    .line 326
    .local v1, subscription:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 327
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPukLocked(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPukUnlockCancelled:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_1

    .line 328
    move v1, v0

    .line 332
    :cond_0
    return v1

    .line 326
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getSimState(I)Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    return-object v0
.end method

.method private isSimPinLocked(I)Z
    .locals 2
    .parameter "subscription"

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSimPukLocked(I)Z
    .locals 2
    .parameter "subscription"

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;
    .locals 17
    .parameter "unlockMode"

    .prologue
    .line 398
    const/4 v3, 0x0

    .line 403
    .local v3, unlockView:Landroid/view/View;
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_0

    .line 404
    new-instance v2, Lcom/android/internal/policy/impl/PatternUnlockScreen;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mContext:Landroid/content/Context;

    .end local v3           #unlockView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/policy/impl/PatternUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;I)V

    .line 411
    .local v2, view:Lcom/android/internal/policy/impl/PatternUnlockScreen;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mEnableFallback:Z

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setEnableFallback(Z)V

    .line 412
    move-object v3, v2

    .line 464
    .end local v2           #view:Lcom/android/internal/policy/impl/PatternUnlockScreen;
    .restart local v3       #unlockView:Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->initializeTransportControlView(Landroid/view/View;)V

    .line 465
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->initializeFaceLockAreaView(Landroid/view/View;)V

    .line 467
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-object v4, v3

    .line 468
    :goto_1
    return-object v4

    .line 413
    :cond_0
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_1

    .line 414
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getPukLockedSubscription()I

    move-result v9

    .line 415
    .local v9, subscription:I
    const-string v4, "MSimLockPatternKeyguardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display SimPukUnlockScreen for sub :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    new-instance v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    .end local v3           #unlockView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 422
    .restart local v3       #unlockView:Landroid/view/View;
    goto :goto_0

    .end local v9           #subscription:I
    :cond_1
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_2

    .line 423
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getPinLockedSubscription()I

    move-result v9

    .line 424
    .restart local v9       #subscription:I
    const-string v4, "MSimLockPatternKeyguardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display SimUnlockScreen for sub :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    new-instance v3, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    .end local v3           #unlockView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 431
    .restart local v3       #unlockView:Landroid/view/View;
    goto/16 :goto_0

    .end local v9           #subscription:I
    :cond_2
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_3

    .line 433
    :try_start_0
    new-instance v10, Lcom/android/internal/policy/impl/AccountUnlockScreen;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/policy/impl/AccountUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #unlockView:Landroid/view/View;
    .local v10, unlockView:Landroid/view/View;
    move-object v3, v10

    .line 453
    .end local v10           #unlockView:Landroid/view/View;
    .restart local v3       #unlockView:Landroid/view/View;
    goto/16 :goto_0

    .line 439
    :catch_0
    move-exception v16

    .line 440
    .local v16, e:Ljava/lang/IllegalStateException;
    const-string v4, "MSimLockPatternKeyguardView"

    const-string v5, "Couldn\'t instantiate AccountUnlockScreen (IAccountsService isn\'t available)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_1

    .line 454
    .end local v16           #e:Ljava/lang/IllegalStateException;
    :cond_3
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_4

    .line 455
    new-instance v3, Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    .end local v3           #unlockView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v3       #unlockView:Landroid/view/View;
    goto/16 :goto_0

    .line 462
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown unlock mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 498
    const/4 v2, 0x0

    .local v2, isPinLocked:Z
    const/4 v4, 0x0

    .line 499
    .local v4, isPukLocked:Z
    const/4 v3, 0x0

    .local v3, isPinRequired:Z
    const/4 v5, 0x0

    .line 503
    .local v5, isPukRequired:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v9

    if-ge v1, v9, :cond_8

    .line 504
    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPinLocked(I)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPinUnlockCancelled:[Z

    aget-boolean v9, v9, v1

    if-nez v9, :cond_4

    :cond_0
    move v2, v8

    .line 505
    :goto_1
    if-nez v4, :cond_1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPukLocked(I)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPukUnlockCancelled:[Z

    aget-boolean v9, v9, v1

    if-nez v9, :cond_5

    :cond_1
    move v4, v8

    .line 506
    :goto_2
    if-nez v3, :cond_2

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPinLocked(I)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_2
    move v3, v8

    .line 507
    :goto_3
    if-nez v5, :cond_3

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPukLocked(I)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_3
    move v5, v8

    .line 503
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v2, v7

    .line 504
    goto :goto_1

    :cond_5
    move v4, v7

    .line 505
    goto :goto_2

    :cond_6
    move v3, v7

    .line 506
    goto :goto_3

    :cond_7
    move v5, v7

    .line 507
    goto :goto_4

    .line 510
    :cond_8
    if-eqz v2, :cond_9

    .line 511
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 538
    .local v0, currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :goto_5
    return-object v0

    .line 512
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_9
    if-eqz v4, :cond_a

    .line 513
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_5

    .line 514
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_a
    if-eqz v3, :cond_b

    if-eqz v5, :cond_b

    .line 515
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_5

    .line 517
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_b
    iget-object v7, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v6

    .line 518
    .local v6, mode:I
    sparse-switch v6, :sswitch_data_0

    .line 535
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown unlock mode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 523
    :sswitch_0
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 524
    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_5

    .line 528
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :sswitch_1
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mForgotPattern:Z

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 529
    :cond_c
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_5

    .line 531
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_d
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 533
    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_5

    .line 518
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected isSecure()Z
    .locals 6

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v2

    .line 370
    .local v2, unlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    const/4 v1, 0x0

    .line 371
    .local v1, secure:Z
    sget-object v3, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$2;->$SwitchMap$com$android$internal$policy$impl$LockPatternKeyguardView$UnlockMode:[I

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 391
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown unlock mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 373
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    .line 393
    :cond_0
    :goto_0
    return v1

    .line 377
    :pswitch_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 380
    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard$State;->isPinLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 381
    :goto_2
    if-nez v1, :cond_0

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 380
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 385
    .end local v0           #i:I
    :pswitch_2
    const/4 v1, 0x1

    .line 386
    goto :goto_0

    .line 388
    :pswitch_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    .line 389
    goto :goto_0

    .line 371
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected keyguardScreenCallback()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;-><init>(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 295
    return-void
.end method

.method protected stuckOnLockScreenBecauseSimMissing()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 61
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mRequiresSim:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 62
    .local v1, result:Z
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 65
    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v5, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_3

    :cond_0
    move v1, v2

    .line 67
    :goto_2
    if-nez v1, :cond_4

    .line 69
    :cond_1
    return v1

    .end local v0           #i:I
    .end local v1           #result:Z
    :cond_2
    move v1, v3

    .line 61
    goto :goto_0

    .restart local v0       #i:I
    .restart local v1       #result:Z
    :cond_3
    move v1, v3

    .line 65
    goto :goto_2

    .line 62
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public wakeWhenReadyTq(I)V
    .locals 5
    .parameter "keyCode"

    .prologue
    const/4 v2, 0x0

    .line 350
    const/4 v1, 0x1

    .line 351
    .local v1, isPukRequired:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 352
    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPukLocked(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 353
    :goto_1
    if-nez v1, :cond_2

    .line 356
    :cond_0
    const/16 v3, 0x52

    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v3, v4, :cond_3

    if-nez v1, :cond_3

    .line 359
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    .line 360
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 365
    :goto_2
    return-void

    :cond_1
    move v1, v2

    .line 352
    goto :goto_1

    .line 351
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    goto :goto_2
.end method
