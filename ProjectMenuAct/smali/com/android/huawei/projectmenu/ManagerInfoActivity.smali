.class public Lcom/android/huawei/projectmenu/ManagerInfoActivity;
.super Landroid/app/ListActivity;
.source "ManagerInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/huawei/projectmenu/ManagerInfoActivity$ManagerInfoAdapter;,
        Lcom/android/huawei/projectmenu/ManagerInfoActivity$Item;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "ManagerInfoActivity"

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static mItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/huawei/projectmenu/ManagerInfoActivity$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/android/huawei/projectmenu/ManagerInfoActivity;->mItemArray:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 59
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/android/huawei/projectmenu/ManagerInfoActivity;->mItemArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method private iniManagerInfo()V
    .locals 9

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, autoId:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/android/huawei/projectmenu/ManagerInfoActivity;->mItemArray:Ljava/util/ArrayList;

    .line 36
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/android/huawei/projectmenu/ManagerInfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, imeiStr:Ljava/lang/String;
    sget-object v5, Lcom/android/huawei/projectmenu/ManagerInfoActivity;->mItemArray:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/huawei/projectmenu/ManagerInfoActivity$Item;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #autoId:I
    .local v1, autoId:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0600a7

    invoke-virtual {p0, v8}, Lcom/android/huawei/projectmenu/ManagerInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7, v4}, Lcom/android/huawei/projectmenu/ManagerInfoActivity$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    const v5, 0x7f0600a9

    invoke-virtual {p0, v5}, Lcom/android/huawei/projectmenu/ManagerInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, buildNumber:Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 41
    :cond_0
    const-string v5, "ro.build.display.id"

    const-string v6, "unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    :cond_1
    sget-object v5, Lcom/android/huawei/projectmenu/ManagerInfoActivity;->mItemArray:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/huawei/projectmenu/ManagerInfoActivity$Item;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #autoId:I
    .restart local v0       #autoId:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0600a8

    invoke-virtual {p0, v8}, Lcom/android/huawei/projectmenu/ManagerInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7, v2}, Lcom/android/huawei/projectmenu/ManagerInfoActivity$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-static {}, Lcom/android/huawei/projectmenu/ProjectMenu;->readHWBoardID()Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, hwVersion:Ljava/lang/String;
    sget-object v5, Lcom/android/huawei/projectmenu/ManagerInfoActivity;->mItemArray:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/huawei/projectmenu/ManagerInfoActivity$Item;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #autoId:I
    .restart local v1       #autoId:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0600aa

    invoke-virtual {p0, v8}, Lcom/android/huawei/projectmenu/ManagerInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7, v3}, Lcom/android/huawei/projectmenu/ManagerInfoActivity$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-direct {p0}, Lcom/android/huawei/projectmenu/ManagerInfoActivity;->iniManagerInfo()V

    .line 30
    new-instance v0, Lcom/android/huawei/projectmenu/ManagerInfoActivity$ManagerInfoAdapter;

    invoke-direct {v0, p0}, Lcom/android/huawei/projectmenu/ManagerInfoActivity$ManagerInfoAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/ManagerInfoActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 31
    return-void
.end method
