.class public Lcom/android/huawei/projectmenu/Manufacturer;
.super Landroid/app/ListActivity;
.source "Manufacturer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/huawei/projectmenu/Manufacturer$NV_INFO_Adapter;
    }
.end annotation


# static fields
.field private static NV_INFO:[Ljava/lang/String; = null

.field private static final NV_INFO_MENU:[Ljava/lang/Integer; = null

.field private static final NV_LENGTH:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    .line 21
    new-array v0, v3, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const v2, 0x7f06004a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f06004c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f06004d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f06004e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x7f06004f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f060050

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f060051

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f060052

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f060053

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/huawei/projectmenu/Manufacturer;->NV_INFO_MENU:[Ljava/lang/Integer;

    .line 33
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/android/huawei/projectmenu/Manufacturer;->NV_INFO:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 111
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/android/huawei/projectmenu/Manufacturer;->NV_INFO_MENU:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/android/huawei/projectmenu/Manufacturer;->NV_INFO:[Ljava/lang/String;

    return-object v0
.end method

.method private getNV_INFO()V
    .locals 12

    .prologue
    const/16 v11, 0x3c

    const/16 v10, 0x37

    const/16 v9, 0x20

    const/4 v8, 0x0

    const/16 v7, 0x64

    .line 58
    invoke-static {}, Lcom/android/huawei/projectmenu/ProjectMenu;->readNv114()Z

    move-result v1

    .line 59
    .local v1, isReadNV114:Z
    const-string v4, "###"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isReadNV114"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-eqz v1, :cond_6

    .line 62
    sget-object v2, Lcom/android/huawei/projectmenu/ProjectMenu;->m_nv114:Ljava/lang/String;

    .line 63
    .local v2, m_nv114:Ljava/lang/String;
    const/4 v3, 0x0

    .line 64
    .local v3, readNV114:[C
    const-string v4, "###"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "m_nv114"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v4, "###"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "m_nv114"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v2, :cond_2

    .line 69
    :cond_0
    new-array v3, v7, [C

    .line 70
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 71
    aput-char v9, v3, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    .end local v0           #i:I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v7, :cond_4

    .line 78
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x64

    new-array v3, v4, [C

    .line 80
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x64

    if-ge v0, v4, :cond_3

    .line 81
    aput-char v9, v3, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .end local v0           #i:I
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_5

    .line 88
    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 91
    :cond_5
    sget-object v4, Lcom/android/huawei/projectmenu/Manufacturer;->NV_INFO:[Ljava/lang/String;

    const/16 v5, 0x19

    invoke-virtual {v2, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 93
    sget-object v4, Lcom/android/huawei/projectmenu/Manufacturer;->NV_INFO:[Ljava/lang/String;

    const/4 v5, 0x1

    const/16 v6, 0x32

    invoke-virtual {v2, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 94
    sget-object v4, Lcom/android/huawei/projectmenu/Manufacturer;->NV_INFO:[Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 95
    sget-object v4, Lcom/android/huawei/projectmenu/Manufacturer;->NV_INFO:[Ljava/lang/String;

    const/4 v5, 0x3

    const/16 v6, 0x5f

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 96
    sget-object v4, Lcom/android/huawei/projectmenu/Manufacturer;->NV_INFO:[Ljava/lang/String;

    const/4 v5, 0x4

    const/16 v6, 0x41

    invoke-virtual {v2, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 97
    sget-object v4, Lcom/android/huawei/projectmenu/Manufacturer;->NV_INFO:[Ljava/lang/String;

    const/4 v5, 0x5

    const/16 v6, 0x4b

    const/16 v7, 0x50

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 98
    sget-object v4, Lcom/android/huawei/projectmenu/Manufacturer;->NV_INFO:[Ljava/lang/String;

    const/4 v5, 0x6

    const/16 v6, 0x41

    const/16 v7, 0x46

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 99
    sget-object v4, Lcom/android/huawei/projectmenu/Manufacturer;->NV_INFO:[Ljava/lang/String;

    const/4 v5, 0x7

    const/16 v6, 0x5a

    const/16 v7, 0x5f

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 100
    sget-object v4, Lcom/android/huawei/projectmenu/Manufacturer;->NV_INFO:[Ljava/lang/String;

    const/16 v5, 0x8

    const/16 v6, 0x46

    const/16 v7, 0x4b

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 109
    .end local v2           #m_nv114:Ljava/lang/String;
    .end local v3           #readNV114:[C
    :goto_2
    return-void

    .line 104
    :cond_6
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f06008d

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f060074

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    :try_start_0
    invoke-direct {p0}, Lcom/android/huawei/projectmenu/Manufacturer;->getNV_INFO()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    new-instance v1, Lcom/android/huawei/projectmenu/Manufacturer$NV_INFO_Adapter;

    invoke-direct {v1, p0}, Lcom/android/huawei/projectmenu/Manufacturer$NV_INFO_Adapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/android/huawei/projectmenu/Manufacturer;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f06008d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060074

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
