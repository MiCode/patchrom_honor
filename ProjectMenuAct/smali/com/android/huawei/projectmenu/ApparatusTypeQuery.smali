.class public Lcom/android/huawei/projectmenu/ApparatusTypeQuery;
.super Landroid/app/ListActivity;
.source "ApparatusTypeQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/huawei/projectmenu/ApparatusTypeQuery$HardwareVersionAdapter;
    }
.end annotation


# static fields
.field private static HARDWARE_VERSION:[Ljava/lang/Integer; = null

.field private static final INNER_CAMERA:I = 0x1

.field private static final OUTER_CAMERA:I

.field private static VERSION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/android/huawei/projectmenu/ApparatusTypeQuery;->HARDWARE_VERSION:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 119
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/huawei/projectmenu/ApparatusTypeQuery;->HARDWARE_VERSION:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/huawei/projectmenu/ApparatusTypeQuery;->VERSION:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v2, headList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v14, 0x7f060043

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    const v14, 0x7f060044

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    const v14, 0x7f060045

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    const v14, 0x7f060099

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    const v14, 0x7f06009a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v14, "ro.config.memtype"

    const-string v15, "false"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 47
    const v14, 0x7f06009b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 50
    .local v3, headSize:I
    new-array v14, v3, [Ljava/lang/Integer;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/Integer;

    check-cast v14, [Ljava/lang/Integer;

    sput-object v14, Lcom/android/huawei/projectmenu/ApparatusTypeQuery;->HARDWARE_VERSION:[Ljava/lang/Integer;

    .line 58
    const/4 v14, 0x0

    :try_start_0
    invoke-static {v14}, Lcom/android/huawei/projectmenu/ProjectMenu;->getCamSensorInfo(I)Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, outerCamera:Ljava/lang/String;
    const/4 v14, 0x1

    invoke-static {v14}, Lcom/android/huawei/projectmenu/ProjectMenu;->getCamSensorInfo(I)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, innerCamera:Ljava/lang/String;
    invoke-static {}, Lcom/android/huawei/projectmenu/ProjectMenu;->getTouchScreenID()Ljava/lang/String;

    move-result-object v13

    .line 65
    .local v13, touchType:Ljava/lang/String;
    invoke-static {}, Lcom/android/huawei/projectmenu/ProjectMenu;->readFlashID()Ljava/lang/String;

    move-result-object v8

    .line 68
    .local v8, readFlashID:Ljava/lang/String;
    invoke-static {}, Lcom/android/huawei/projectmenu/ProjectMenu;->readLCDID()Ljava/lang/String;

    move-result-object v9

    .line 71
    .local v9, readLcdType:Ljava/lang/String;
    invoke-static {}, Lcom/android/huawei/projectmenu/ProjectMenu;->readBoardID()Ljava/lang/String;

    move-result-object v7

    .line 87
    .local v7, readBoardID:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f060048

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/huawei/projectmenu/ApparatusTypeQuery;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f060049

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/huawei/projectmenu/ApparatusTypeQuery;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 94
    .local v12, strCamera:Ljava/lang/String;
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    const-string v14, "ro.config.memtype"

    const-string v15, "false"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 99
    invoke-static {}, Lcom/android/huawei/projectmenu/ProjectMenu;->readMemType()Ljava/lang/String;

    move-result-object v10

    .line 100
    .local v10, readMemType:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v10           #readMemType:Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 103
    .local v11, size:I
    new-array v14, v11, [Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    check-cast v14, [Ljava/lang/String;

    sput-object v14, Lcom/android/huawei/projectmenu/ApparatusTypeQuery;->VERSION:[Ljava/lang/String;

    .line 105
    new-instance v14, Lcom/android/huawei/projectmenu/ApparatusTypeQuery$HardwareVersionAdapter;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/huawei/projectmenu/ApparatusTypeQuery$HardwareVersionAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/huawei/projectmenu/ApparatusTypeQuery;->setListAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v4           #innerCamera:Ljava/lang/String;
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #outerCamera:Ljava/lang/String;
    .end local v7           #readBoardID:Ljava/lang/String;
    .end local v8           #readFlashID:Ljava/lang/String;
    .end local v9           #readLcdType:Ljava/lang/String;
    .end local v11           #size:I
    .end local v12           #strCamera:Ljava/lang/String;
    .end local v13           #touchType:Ljava/lang/String;
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, e:Ljava/lang/Exception;
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v15, 0x7f060039

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x7f060074

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
