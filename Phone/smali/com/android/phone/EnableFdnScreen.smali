.class public Lcom/android/phone/EnableFdnScreen;
.super Landroid/app/Activity;
.source "EnableFdnScreen.java"


# instance fields
.field private mClicked:Landroid/view/View$OnClickListener;

.field private mEnable:Z

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin2Field:Landroid/widget/EditText;

.field private mPinFieldContainer:Landroid/widget/LinearLayout;

.field private mStatusField:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    new-instance v0, Lcom/android/phone/EnableFdnScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EnableFdnScreen$1;-><init>(Lcom/android/phone/EnableFdnScreen;)V

    iput-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mHandler:Landroid/os/Handler;

    .line 134
    new-instance v0, Lcom/android/phone/EnableFdnScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/EnableFdnScreen$3;-><init>(Lcom/android/phone/EnableFdnScreen;)V

    iput-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EnableFdnScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/phone/EnableFdnScreen;->handleResult(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/EnableFdnScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mPin2Field:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/EnableFdnScreen;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/phone/EnableFdnScreen;->showStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/EnableFdnScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/phone/EnableFdnScreen;->enableFdn()V

    return-void
.end method

.method private enableFdn()V
    .locals 4

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/phone/EnableFdnScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 110
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/EnableFdnScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/EnableFdnScreen;->mEnable:Z

    invoke-direct {p0}, Lcom/android/phone/EnableFdnScreen;->getPin2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 112
    return-void
.end method

.method private getPin2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mPin2Field:Landroid/widget/EditText;

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
    .line 115
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/android/phone/EnableFdnScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/phone/EnableFdnScreen;->mEnable:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0c011f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EnableFdnScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 127
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/EnableFdnScreen$2;

    invoke-direct {v1, p0}, Lcom/android/phone/EnableFdnScreen$2;-><init>(Lcom/android/phone/EnableFdnScreen;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    return-void

    .line 117
    :cond_1
    const v0, 0x7f0c0120

    goto :goto_0

    .line 119
    :cond_2
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/phone/EnableFdnScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0150

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EnableFdnScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 84
    const v0, 0x7f070047

    invoke-virtual {p0, v0}, Lcom/android/phone/EnableFdnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mPin2Field:Landroid/widget/EditText;

    .line 85
    iget-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mPin2Field:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 87
    iget-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mPin2Field:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EnableFdnScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v0, 0x7f070042

    invoke-virtual {p0, v0}, Lcom/android/phone/EnableFdnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    .line 90
    const v0, 0x7f070048

    invoke-virtual {p0, v0}, Lcom/android/phone/EnableFdnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mStatusField:Landroid/widget/TextView;

    .line 91
    return-void
.end method

.method private showStatus(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "statusMsg"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mStatusField:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mStatusField:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mStatusField:Landroid/widget/TextView;

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
    const v1, 0x7f04000b

    invoke-virtual {p0, v1}, Lcom/android/phone/EnableFdnScreen;->setContentView(I)V

    .line 68
    invoke-direct {p0}, Lcom/android/phone/EnableFdnScreen;->setupView()V

    .line 70
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EnableFdnScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 71
    iget-object v1, p0, Lcom/android/phone/EnableFdnScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/EnableFdnScreen;->mEnable:Z

    .line 73
    iget-boolean v1, p0, Lcom/android/phone/EnableFdnScreen;->mEnable:Z

    if-eqz v1, :cond_1

    const v0, 0x7f0c011c

    .line 74
    .local v0, id:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/EnableFdnScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/EnableFdnScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    return-void

    .line 71
    .end local v0           #id:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 73
    :cond_1
    const v0, 0x7f0c011d

    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 80
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EnableFdnScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 81
    return-void
.end method
