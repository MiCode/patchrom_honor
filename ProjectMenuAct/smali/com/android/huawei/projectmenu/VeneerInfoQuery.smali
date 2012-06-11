.class public Lcom/android/huawei/projectmenu/VeneerInfoQuery;
.super Landroid/app/ListActivity;
.source "VeneerInfoQuery.java"


# instance fields
.field private codeEdit:Ljava/lang/String;

.field public flag:Z

.field public iCode:[B

.field private mMenu:[Ljava/lang/String;

.field private mlimit:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 16
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->codeEdit:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->flag:Z

    .line 26
    iput v1, p0, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->mlimit:I

    .line 28
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->iCode:[B

    return-void
.end method

.method static synthetic access$000(Lcom/android/huawei/projectmenu/VeneerInfoQuery;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->codeEdit:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/huawei/projectmenu/VeneerInfoQuery;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->codeEdit:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/huawei/projectmenu/VeneerInfoQuery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->mlimit:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/huawei/projectmenu/VeneerInfoQuery;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->mCheckResult()V

    return-void
.end method

.method private mCheckCode()V
    .locals 7

    .prologue
    .line 91
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 92
    .local v2, factory:Landroid/view/LayoutInflater;
    const/high16 v4, 0x7f04

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, DialogView:Landroid/view/View;
    const v4, 0x7f070016

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 97
    .local v3, mCheckCode:Landroid/widget/EditText;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0600c3

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f060074

    new-instance v6, Lcom/android/huawei/projectmenu/VeneerInfoQuery$2;

    invoke-direct {v6, p0, v3}, Lcom/android/huawei/projectmenu/VeneerInfoQuery$2;-><init>(Lcom/android/huawei/projectmenu/VeneerInfoQuery;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f060075

    new-instance v6, Lcom/android/huawei/projectmenu/VeneerInfoQuery$1;

    invoke-direct {v6, p0}, Lcom/android/huawei/projectmenu/VeneerInfoQuery$1;-><init>(Lcom/android/huawei/projectmenu/VeneerInfoQuery;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 117
    .local v1, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 118
    return-void
.end method

.method private mCheckResult()V
    .locals 4

    .prologue
    const v3, 0x7f060074

    .line 124
    iget-boolean v1, p0, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->flag:Z

    if-nez v1, :cond_0

    .line 125
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0600c4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/huawei/projectmenu/VeneerInfoQuery$3;

    invoke-direct {v2, p0}, Lcom/android/huawei/projectmenu/VeneerInfoQuery$3;-><init>(Lcom/android/huawei/projectmenu/VeneerInfoQuery;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 131
    .local v0, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 141
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->flag:Z

    .line 142
    return-void

    .line 133
    .end local v0           #dlg:Landroid/app/AlertDialog;
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0600c5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/huawei/projectmenu/VeneerInfoQuery$4;

    invoke-direct {v2, p0}, Lcom/android/huawei/projectmenu/VeneerInfoQuery$4;-><init>(Lcom/android/huawei/projectmenu/VeneerInfoQuery;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 139
    .restart local v0       #dlg:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f060034

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f060035

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f060036

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f060037

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x7f060038

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f0600c2

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->mMenu:[Ljava/lang/String;

    .line 46
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->mMenu:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 48
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 52
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 54
    packed-switch p3, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 56
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.huawei.SHVERSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 60
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.huawei.APPARATUS_TYPE_QUERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 64
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.huawei.MANUFACTURER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 68
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.huawei.OTHERQUERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 73
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.huawei.APKVERSIONQUERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 78
    :pswitch_5
    invoke-direct {p0}, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->mCheckCode()V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
