.class public Landroid/widget/WidgetFactoryHuaWei;
.super Ljava/lang/Object;
.source "WidgetFactoryHuaWei.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WidgetFactoryHuaWei"

.field private static final mConstructorSignature:[Ljava/lang/Class;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Landroid/widget/WidgetFactoryHuaWei;->mConstructorSignature:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Both of packageName and context can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    iput-object p1, p0, Landroid/widget/WidgetFactoryHuaWei;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Landroid/widget/WidgetFactoryHuaWei;->mPackageName:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11
    .parameter "name"
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v8, 0x0

    .line 53
    const/4 v7, -0x1

    const-string v9, "."

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ne v7, v9, :cond_0

    move-object v7, v8

    .line 77
    :goto_0
    return-object v7

    .line 66
    :cond_0
    :try_start_0
    iget-object v7, p0, Landroid/widget/WidgetFactoryHuaWei;->mContext:Landroid/content/Context;

    iget-object v9, p0, Landroid/widget/WidgetFactoryHuaWei;->mPackageName:Ljava/lang/String;

    const/4 v10, 0x3

    invoke-virtual {v7, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 67
    .local v1, c:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 68
    .local v6, loader:Ljava/lang/ClassLoader;
    invoke-virtual {v6, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 69
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/view/View;>;"
    sget-object v7, Landroid/widget/WidgetFactoryHuaWei;->mConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 70
    .local v3, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v0, v7

    const/4 v7, 0x1

    aput-object p3, v0, v7

    .line 71
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 72
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #c:Landroid/content/Context;
    .end local v2           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/view/View;>;"
    .end local v3           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    .end local v6           #loader:Ljava/lang/ClassLoader;
    :catch_0
    move-exception v5

    .line 73
    .local v5, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "WidgetFactoryHuaWei"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "packageName is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/WidgetFactoryHuaWei;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " exception is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 74
    goto :goto_0

    .line 75
    .end local v5           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v4

    .line 76
    .local v4, e:Ljava/lang/Exception;
    const-string v7, "WidgetFactoryHuaWei"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error inflating class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Exception is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 77
    goto :goto_0
.end method
