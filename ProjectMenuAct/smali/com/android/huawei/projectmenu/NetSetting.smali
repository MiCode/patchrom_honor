.class public Lcom/android/huawei/projectmenu/NetSetting;
.super Landroid/app/ListActivity;
.source "NetSetting.java"


# static fields
.field private static final CS_AND_PS:I = 0x2

.field private static final CS_ONLY:I = 0x0

.field private static final NS_LOCKED:I = 0x2

.field private static final NS_SP_LOCKED:I = 0x6

.field private static final NW_LOCKED:I = 0x1

.field private static final NW_NS_LOCKED:I = 0x3

.field private static final NW_NS_SP_LOCKED:I = 0x7

.field private static final NW_SP_LOCKED:I = 0x5

.field private static final OPERATOR_COUNTRY_FIEL_NAME:Ljava/lang/String; = "data/custom.bin"

.field private static final OPERATOR_COUNTRY_INFO:I = 0x4

.field private static final PROP_FILE_NAME:Ljava/lang/String; = "data/local.prop"

.field private static final PS_ONLY:I = 0x1

.field private static final QFUSE_NOT_WRITE:I = 0x1

.field private static final QFUSE_STATE_QUERY:I = 0x3

.field private static final QFUSE_STATUS_ERROR:I = 0x0

.field private static final QFUSE_WRITE:I = 0x2

.field private static final SERVICE_DOMAIN_SETTING:I = 0x1

.field private static final SIMLOCK_DEACTIVE:I = 0x0

.field private static final SIMLOCK_STATUS_ERROR:I = 0x8

.field private static final SIM_LOCK_STATE_QUERY:I = 0x2

.field private static final SP_LOCKED:I = 0x4

.field private static mCheckedItem:I

.field private static operatorCountryQuery:Ljava/lang/String;

.field private static qfuseStateQuery:Ljava/lang/String;

.field private static simLockStateQuery:Ljava/lang/String;


# instance fields
.field private mMenu:[Ljava/lang/String;

.field private ret:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-static {}, Lcom/android/huawei/projectmenu/ProjectMenu;->serviceDomainGetting()I

    move-result v0

    sput v0, Lcom/android/huawei/projectmenu/NetSetting;->mCheckedItem:I

    .line 65
    sput-object v1, Lcom/android/huawei/projectmenu/NetSetting;->simLockStateQuery:Ljava/lang/String;

    .line 66
    sput-object v1, Lcom/android/huawei/projectmenu/NetSetting;->qfuseStateQuery:Ljava/lang/String;

    .line 68
    sput-object v1, Lcom/android/huawei/projectmenu/NetSetting;->operatorCountryQuery:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/huawei/projectmenu/NetSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/huawei/projectmenu/NetSetting;->ret:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/huawei/projectmenu/NetSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/huawei/projectmenu/NetSetting;->ret:Z

    return p1
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    sput p0, Lcom/android/huawei/projectmenu/NetSetting;->mCheckedItem:I

    return p0
.end method

.method private getOperatorAndCountryInfo()V
    .locals 9

    .prologue
    const v8, 0x7f06006b

    .line 151
    new-instance v3, Ljava/io/File;

    const-string v6, "data/custom.bin"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v3, operatorCountryInfoFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 153
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 154
    const/4 v2, 0x0

    .line 156
    .local v2, inReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .end local v2           #inReader:Ljava/io/BufferedReader;
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .restart local v2       #inReader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/huawei/projectmenu/NetSetting;->operatorCountryQuery:Ljava/lang/String;

    .line 167
    sget-object v6, Lcom/android/huawei/projectmenu/NetSetting;->operatorCountryQuery:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 168
    const/4 v4, 0x0

    .line 169
    .local v4, operatorString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 170
    .local v0, countryString:Ljava/lang/String;
    sget-object v6, Lcom/android/huawei/projectmenu/NetSetting;->operatorCountryQuery:Ljava/lang/String;

    sget-char v7, Ljava/io/File;->separatorChar:C

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 171
    .local v5, pos:I
    sget-object v6, Lcom/android/huawei/projectmenu/NetSetting;->operatorCountryQuery:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 172
    sget-object v6, Lcom/android/huawei/projectmenu/NetSetting;->operatorCountryQuery:Ljava/lang/String;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f06009c

    invoke-virtual {p0, v7}, Lcom/android/huawei/projectmenu/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f06009d

    invoke-virtual {p0, v7}, Lcom/android/huawei/projectmenu/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/huawei/projectmenu/NetSetting;->operatorCountryQuery:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 183
    .end local v0           #countryString:Ljava/lang/String;
    .end local v4           #operatorString:Ljava/lang/String;
    .end local v5           #pos:I
    :cond_0
    if-eqz v2, :cond_1

    .line 184
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 198
    .end local v2           #inReader:Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v1

    .line 161
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 162
    invoke-virtual {p0, v8}, Lcom/android/huawei/projectmenu/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/huawei/projectmenu/NetSetting;->operatorCountryQuery:Ljava/lang/String;

    goto :goto_0

    .line 177
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #inReader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 178
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 179
    invoke-virtual {p0, v8}, Lcom/android/huawei/projectmenu/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/huawei/projectmenu/NetSetting;->operatorCountryQuery:Ljava/lang/String;

    goto :goto_0

    .line 186
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 187
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {p0, v8}, Lcom/android/huawei/projectmenu/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/huawei/projectmenu/NetSetting;->operatorCountryQuery:Ljava/lang/String;

    .line 188
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 192
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #inReader:Ljava/io/BufferedReader;
    :cond_2
    const v6, 0x7f060068

    invoke-virtual {p0, v6}, Lcom/android/huawei/projectmenu/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/huawei/projectmenu/NetSetting;->operatorCountryQuery:Ljava/lang/String;

    goto :goto_0

    .line 195
    :cond_3
    const v6, 0x7f060067

    invoke-virtual {p0, v6}, Lcom/android/huawei/projectmenu/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/huawei/projectmenu/NetSetting;->operatorCountryQuery:Ljava/lang/String;

    goto :goto_0
.end method

.method private getQfuseState()V
    .locals 3

    .prologue
    .line 123
    invoke-static {}, Lcom/android/huawei/projectmenu/ProjectMenu;->getQfuseStatus()I

    move-result v1

    .line 124
    .local v1, qfuseState:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v0, qfuseBuilder:Ljava/lang/StringBuilder;
    const v2, 0x7f060061

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    packed-switch v1, :pswitch_data_0

    .line 145
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/huawei/projectmenu/NetSetting;->qfuseStateQuery:Ljava/lang/String;

    .line 146
    return-void

    .line 130
    :pswitch_0
    const v2, 0x7f060064

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 134
    :pswitch_1
    const v2, 0x7f060063

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 138
    :pswitch_2
    const v2, 0x7f060062

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSimLockState()V
    .locals 3

    .prologue
    .line 73
    invoke-static {}, Lcom/android/huawei/projectmenu/ProjectMenu;->getSimLockStatus()I

    move-result v1

    .line 74
    .local v1, simLockState:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v0, simLockBuilder:Ljava/lang/StringBuilder;
    const v2, 0x7f06005e

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    packed-switch v1, :pswitch_data_0

    .line 119
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/huawei/projectmenu/NetSetting;->simLockStateQuery:Ljava/lang/String;

    .line 120
    return-void

    .line 82
    :pswitch_0
    const-string v2, "SIMLOCK_DEACTIVE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 86
    :pswitch_1
    const-string v2, "NW_LOCKED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 90
    :pswitch_2
    const-string v2, "NS_LOCKED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 94
    :pswitch_3
    const-string v2, "NW_NS_LOCKED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 97
    :pswitch_4
    const-string v2, "SP_LOCKED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 100
    :pswitch_5
    const-string v2, "NW_SP_LOCKED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 103
    :pswitch_6
    const-string v2, "NS_SP_LOCKED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 107
    :pswitch_7
    const-string v2, "NW_NS_SP_LOCKED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 112
    :pswitch_8
    const-string v2, "SIMLOCK_STATUS_ERROR"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 208
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f060059

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f06005a

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f06005b

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f06005c

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x7f06005f

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f060065

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/huawei/projectmenu/NetSetting;->mMenu:[Ljava/lang/String;

    .line 219
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/android/huawei/projectmenu/NetSetting;->mMenu:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/NetSetting;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 221
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f060074

    .line 261
    packed-switch p1, :pswitch_data_0

    .line 330
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 263
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060087

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f05000a

    sget v2, Lcom/android/huawei/projectmenu/NetSetting;->mCheckedItem:I

    new-instance v3, Lcom/android/huawei/projectmenu/NetSetting$2;

    invoke-direct {v3, p0}, Lcom/android/huawei/projectmenu/NetSetting$2;-><init>(Lcom/android/huawei/projectmenu/NetSetting;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060075

    new-instance v2, Lcom/android/huawei/projectmenu/NetSetting$1;

    invoke-direct {v2, p0}, Lcom/android/huawei/projectmenu/NetSetting$1;-><init>(Lcom/android/huawei/projectmenu/NetSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 309
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f06005d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/huawei/projectmenu/NetSetting;->simLockStateQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 316
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060060

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/huawei/projectmenu/NetSetting;->qfuseStateQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 322
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060065

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/huawei/projectmenu/NetSetting;->operatorCountryQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 261
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 225
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 227
    packed-switch p3, :pswitch_data_0

    .line 256
    :goto_0
    :pswitch_0
    return-void

    .line 229
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/NetSetting;->showDialog(I)V

    goto :goto_0

    .line 236
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.huawei.QUERY_PLMN_ID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/NetSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 240
    :pswitch_3
    invoke-direct {p0}, Lcom/android/huawei/projectmenu/NetSetting;->getSimLockState()V

    .line 241
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/NetSetting;->showDialog(I)V

    goto :goto_0

    .line 244
    :pswitch_4
    invoke-direct {p0}, Lcom/android/huawei/projectmenu/NetSetting;->getQfuseState()V

    .line 245
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/NetSetting;->showDialog(I)V

    goto :goto_0

    .line 249
    :pswitch_5
    invoke-direct {p0}, Lcom/android/huawei/projectmenu/NetSetting;->getOperatorAndCountryInfo()V

    .line 250
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/NetSetting;->showDialog(I)V

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
