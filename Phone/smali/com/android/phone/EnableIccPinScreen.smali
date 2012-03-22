.class public Lcom/android/phone/EnableIccPinScreen;
.super Landroid/app/Activity;
.source "EnableIccPinScreen.java"


# instance fields
.field private mClicked:Landroid/view/View$OnClickListener;

.field private mEnable:Z

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinField:Landroid/widget/EditText;

.field private mPinFieldContainer:Landroid/widget/LinearLayout;

.field private mStatusField:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    new-instance v0, Lcom/android/phone/EnableIccPinScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EnableIccPinScreen$1;-><init>(Lcom/android/phone/EnableIccPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Lcom/android/phone/EnableIccPinScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/EnableIccPinScreen$3;-><init>(Lcom/android/phone/EnableIccPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EnableIccPinScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/phone/EnableIccPinScreen;->handleResult(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/EnableIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/EnableIccPinScreen;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/phone/EnableIccPinScreen;->showStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/EnableIccPinScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/phone/EnableIccPinScreen;->enableIccPin()V

    return-void
.end method

.method private enableIccPin()V
    .locals 4

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/phone/EnableIccPinScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 105
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/EnableIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/EnableIccPinScreen;->mEnable:Z

    invoke-direct {p0}, Lcom/android/phone/EnableIccPinScreen;->getPin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 107
    return-void
.end method

.method private getPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleResult(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 110
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 112
    invoke-virtual {p0}, Lcom/android/phone/EnableIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/phone/EnableIccPinScreen;->mEnable:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0c014e

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EnableIccPinScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 122
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/EnableIccPinScreen$2;

    invoke-direct {v1, p0}, Lcom/android/phone/EnableIccPinScreen$2;-><init>(Lcom/android/phone/EnableIccPinScreen;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    return-void

    .line 112
    :cond_1
    const v0, 0x7f0c014f

    goto :goto_0

    .line 114
    :cond_2
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/phone/EnableIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0150

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EnableIccPinScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 78
    const v0, 0x7f070047

    invoke-virtual {p0, v0}, Lcom/android/phone/EnableIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    .line 79
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 80
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 81
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EnableIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v0, 0x7f070042

    invoke-virtual {p0, v0}, Lcom/android/phone/EnableIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    .line 84
    const v0, 0x7f070048

    invoke-virtual {p0, v0}, Lcom/android/phone/EnableIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mStatusField:Landroid/widget/TextView;

    .line 85
    return-void
.end method

.method private showStatus(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "statusMsg"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 88
    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mStatusField:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mStatusField:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mStatusField:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v1, 0x7f04000c

    invoke-virtual {p0, v1}, Lcom/android/phone/EnableIccPinScreen;->setContentView(I)V

    .line 68
    invoke-direct {p0}, Lcom/android/phone/EnableIccPinScreen;->setupView()V

    .line 70
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EnableIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 71
    iget-object v1, p0, Lcom/android/phone/EnableIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/EnableIccPinScreen;->mEnable:Z

    .line 73
    iget-boolean v1, p0, Lcom/android/phone/EnableIccPinScreen;->mEnable:Z

    if-eqz v1, :cond_1

    const v0, 0x7f0c014c

    .line 74
    .local v0, id:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/EnableIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/EnableIccPinScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    return-void

    .line 71
    .end local v0           #id:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 73
    :cond_1
    const v0, 0x7f0c014b

    goto :goto_1
.end method
