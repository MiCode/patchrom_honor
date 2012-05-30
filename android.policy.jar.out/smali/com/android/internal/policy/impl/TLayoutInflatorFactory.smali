.class public Lcom/android/internal/policy/impl/TLayoutInflatorFactory;
.super Ljava/lang/Object;
.source "TLayoutInflatorFactory.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "TLayoutInflatorFactory"

.field private static final mConstructorSignature:[Ljava/lang/Class;

.field private static mPackageName:Ljava/lang/String;

.field private static sClassLoaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ldalvik/system/PathClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;->mPackageName:Ljava/lang/String;

    .line 25
    sput-object v0, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;->sClassLoaders:Ljava/util/HashMap;

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;->mConstructorSignature:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "packageName can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 39
    :cond_1
    sput-object p1, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;->mPackageName:Ljava/lang/String;

    .line 44
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 12
    .parameter "name"
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    const-string v9, "TLayoutInflatorFactory"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Current view is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v9, -0x1

    const-string v10, "."

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_0

    .line 56
    const-string v9, "TLayoutInflatorFactory"

    const-string v10, "Current view is defined by android , we just return null,and construct it by default."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v9, 0x0

    .line 91
    :goto_0
    return-object v9

    .line 68
    :cond_0
    :try_start_0
    sget-object v9, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;->sClassLoaders:Ljava/util/HashMap;

    if-nez v9, :cond_1

    .line 69
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;->sClassLoaders:Ljava/util/HashMap;

    .line 71
    :cond_1
    sget-object v9, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;->sClassLoaders:Ljava/util/HashMap;

    sget-object v10, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldalvik/system/PathClassLoader;

    .line 72
    .local v3, classLoader:Ldalvik/system/PathClassLoader;
    if-nez v3, :cond_2

    .line 73
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 74
    .local v8, pm:Landroid/content/pm/PackageManager;
    sget-object v9, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;->mPackageName:Ljava/lang/String;

    const/16 v10, 0x80

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 75
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 76
    .local v1, apkPath:Ljava/lang/String;
    new-instance v3, Ldalvik/system/PathClassLoader;

    .end local v3           #classLoader:Ldalvik/system/PathClassLoader;
    invoke-virtual {p2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v3, v1, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 77
    .restart local v3       #classLoader:Ldalvik/system/PathClassLoader;
    sget-object v9, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;->sClassLoaders:Ljava/util/HashMap;

    sget-object v10, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #apkPath:Ljava/lang/String;
    .end local v8           #pm:Landroid/content/pm/PackageManager;
    :cond_2
    invoke-virtual {v3, p1}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 82
    .local v4, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/view/View;>;"
    sget-object v9, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;->mConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v4, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 83
    .local v5, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    const/4 v9, 0x2

    new-array v2, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v2, v9

    const/4 v9, 0x1

    aput-object p3, v2, v9

    .line 84
    .local v2, args:[Ljava/lang/Object;
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 85
    .end local v2           #args:[Ljava/lang/Object;
    .end local v3           #classLoader:Ldalvik/system/PathClassLoader;
    .end local v4           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/view/View;>;"
    .end local v5           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    :catch_0
    move-exception v7

    .line 86
    .local v7, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 87
    const/4 v9, 0x0

    goto :goto_0

    .line 88
    .end local v7           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v6

    .line 89
    .local v6, e:Ljava/lang/Exception;
    const-string v9, "TLayoutInflatorFactory"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error inflating class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    const/4 v9, 0x0

    goto :goto_0
.end method
