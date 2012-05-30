.class public Lcom/android/server/HWDrmDialogsService;
.super Ljava/lang/Object;
.source "HWDrmDialogsService.java"


# static fields
.field private static final MSG_SHOW_CD_NORIGHTS_DLG:I = 0x0

.field private static final MSG_SHOW_NO_SECURITY_DLG:I = 0x2

.field private static final MSG_SHOW_SD_RENEWAL_DLG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HWDrmDialogsService"


# instance fields
.field private mAlertDlg:Landroid/app/Dialog;

.field private mContext:Landroid/content/Context;

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private mRightsIssuer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/HWDrmDialogsService;->mAlertDlg:Landroid/app/Dialog;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/HWDrmDialogsService;->mRightsIssuer:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/android/server/HWDrmDialogsService;->mContext:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Lcom/android/server/HWDrmDialogsService;->CreateDrmErrorListener()V

    .line 46
    return-void
.end method

.method private CreateDrmErrorListener()V
    .locals 4

    .prologue
    .line 49
    new-instance v1, Landroid/drm/DrmManagerClient;

    iget-object v2, p0, Lcom/android/server/HWDrmDialogsService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/HWDrmDialogsService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 50
    new-instance v0, Lcom/android/server/HWDrmDialogsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/HWDrmDialogsService$1;-><init>(Lcom/android/server/HWDrmDialogsService;)V

    .line 89
    .local v0, errorListener:Landroid/drm/DrmManagerClient$OnErrorListener;
    iget-object v1, p0, Lcom/android/server/HWDrmDialogsService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, v0}, Landroid/drm/DrmManagerClient;->setOnErrorListener(Landroid/drm/DrmManagerClient$OnErrorListener;)V

    .line 90
    const-string v1, "HWDrmDialogsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HWDrmDialogsService  errorListener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HWDrmDialogsService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/HWDrmDialogsService;->showDlg(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/HWDrmDialogsService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/HWDrmDialogsService;->mRightsIssuer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/HWDrmDialogsService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/server/HWDrmDialogsService;->mRightsIssuer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/HWDrmDialogsService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/HWDrmDialogsService;->startBrowser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/HWDrmDialogsService;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/server/HWDrmDialogsService;->mAlertDlg:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/HWDrmDialogsService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/HWDrmDialogsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private showDlg(I)V
    .locals 8
    .parameter "dialog"

    .prologue
    const/4 v7, 0x0

    const v6, 0x1040014

    const v5, 0x104000a

    .line 94
    packed-switch p1, :pswitch_data_0

    .line 158
    :goto_0
    iget-object v3, p0, Lcom/android/server/HWDrmDialogsService;->mAlertDlg:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 159
    .local v2, window:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 160
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x7d3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 161
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 163
    iget-object v3, p0, Lcom/android/server/HWDrmDialogsService;->mAlertDlg:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 164
    return-void

    .line 96
    .end local v1           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #window:Landroid/view/Window;
    :pswitch_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/server/HWDrmDialogsService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x2020068

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/server/HWDrmDialogsService$2;

    invoke-direct {v4, p0}, Lcom/android/server/HWDrmDialogsService$2;-><init>(Lcom/android/server/HWDrmDialogsService;)V

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/HWDrmDialogsService;->mAlertDlg:Landroid/app/Dialog;

    goto :goto_0

    .line 108
    :pswitch_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/server/HWDrmDialogsService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 112
    .local v0, bd:Landroid/app/AlertDialog$Builder;
    const-string v3, ""

    iget-object v4, p0, Lcom/android/server/HWDrmDialogsService;->mRightsIssuer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    const v3, 0x2020066

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/server/HWDrmDialogsService$3;

    invoke-direct {v4, p0}, Lcom/android/server/HWDrmDialogsService$3;-><init>(Lcom/android/server/HWDrmDialogsService;)V

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    const/high16 v3, 0x104

    new-instance v4, Lcom/android/server/HWDrmDialogsService$4;

    invoke-direct {v4, p0}, Lcom/android/server/HWDrmDialogsService$4;-><init>(Lcom/android/server/HWDrmDialogsService;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/HWDrmDialogsService;->mAlertDlg:Landroid/app/Dialog;

    goto :goto_0

    .line 135
    :cond_0
    const v3, 0x2020067

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/server/HWDrmDialogsService$5;

    invoke-direct {v4, p0}, Lcom/android/server/HWDrmDialogsService$5;-><init>(Lcom/android/server/HWDrmDialogsService;)V

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 145
    .end local v0           #bd:Landroid/app/AlertDialog$Builder;
    :pswitch_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/server/HWDrmDialogsService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x2020065

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/server/HWDrmDialogsService$6;

    invoke-direct {v4, p0}, Lcom/android/server/HWDrmDialogsService$6;-><init>(Lcom/android/server/HWDrmDialogsService;)V

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/HWDrmDialogsService;->mAlertDlg:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startBrowser(Ljava/lang/String;)V
    .locals 3
    .parameter "rightIssuer"

    .prologue
    .line 167
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 168
    .local v1, rightsUrl:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 170
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 173
    iget-object v2, p0, Lcom/android/server/HWDrmDialogsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 174
    return-void
.end method
