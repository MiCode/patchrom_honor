.class public Lcom/android/internal/telephony/QosSpec;
.super Ljava/lang/Object;
.source "QosSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/QosSpec$QosPipe;,
        Lcom/android/internal/telephony/QosSpec$QosIntentKeys;,
        Lcom/android/internal/telephony/QosSpec$QosIndStates;,
        Lcom/android/internal/telephony/QosSpec$QosStatus;,
        Lcom/android/internal/telephony/QosSpec$QosSpecKey;,
        Lcom/android/internal/telephony/QosSpec$QosClass;,
        Lcom/android/internal/telephony/QosSpec$QosDirection;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/QosSpec;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "QosSpec"

.field private static mPipeId:I


# instance fields
.field mQosPipes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/QosSpec$QosPipe;",
            ">;"
        }
    .end annotation
.end field

.field private mUserData:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/QosSpec;->mPipeId:I

    .line 779
    new-instance v0, Lcom/android/internal/telephony/QosSpec$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/QosSpec$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/QosSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/QosSpec;->mUserData:I

    .line 625
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    .line 626
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/QosSpec;)V
    .locals 9
    .parameter "qosSpec"

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/android/internal/telephony/QosSpec;-><init>()V

    .line 633
    iget-object v7, p1, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/QosSpec$QosPipe;

    .line 634
    .local v6, qosPipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    invoke-virtual {p0}, Lcom/android/internal/telephony/QosSpec;->createPipe()Lcom/android/internal/telephony/QosSpec$QosPipe;

    move-result-object v4

    .line 635
    .local v4, pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    iget-object v7, v6, Lcom/android/internal/telephony/QosSpec$QosPipe;->mQosParams:Ljava/util/LinkedList;

    const/4 v8, 0x0

    new-array v8, v8, [Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;

    .local v0, arr$:[Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 636
    .local v5, qkv:Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
    iget v7, v5, Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;->qosKey:I

    iget-object v8, v5, Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;->qosValue:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 635
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 639
    .end local v0           #arr$:[Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    .end local v5           #qkv:Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
    .end local v6           #qosPipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    :cond_1
    return-void
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 816
    const-string v0, "QosSpec"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 642
    iget-object v2, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/QosSpec$QosPipe;

    .line 643
    .local v1, pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    invoke-virtual {v1}, Lcom/android/internal/telephony/QosSpec$QosPipe;->clear()V

    goto :goto_0

    .line 645
    .end local v1           #pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 646
    return-void
.end method

.method public createPipe()Lcom/android/internal/telephony/QosSpec$QosPipe;
    .locals 4

    .prologue
    .line 653
    sget v1, Lcom/android/internal/telephony/QosSpec;->mPipeId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/internal/telephony/QosSpec;->mPipeId:I

    .line 655
    .local v1, pipeId:I
    new-instance v0, Lcom/android/internal/telephony/QosSpec$QosPipe;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/QosSpec$QosPipe;-><init>(Lcom/android/internal/telephony/QosSpec;)V

    .line 656
    .local v0, pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    iget-object v2, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    return-object v0
.end method

.method public createPipe(Ljava/lang/String;)Lcom/android/internal/telephony/QosSpec$QosPipe;
    .locals 17
    .parameter "flowFilterSpec"

    .prologue
    .line 661
    sget v11, Lcom/android/internal/telephony/QosSpec;->mPipeId:I

    add-int/lit8 v14, v11, 0x1

    sput v14, Lcom/android/internal/telephony/QosSpec;->mPipeId:I

    .line 663
    .local v11, pipeId:I
    const/4 v9, 0x0

    .line 665
    .local v9, pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    if-nez p1, :cond_0

    move-object v10, v9

    .line 691
    .end local v9           #pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    .local v10, pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    :goto_0
    return-object v10

    .line 669
    .end local v10           #pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    .restart local v9       #pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    :cond_0
    new-instance v9, Lcom/android/internal/telephony/QosSpec$QosPipe;

    .end local v9           #pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/internal/telephony/QosSpec$QosPipe;-><init>(Lcom/android/internal/telephony/QosSpec;)V

    .line 670
    .restart local v9       #pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    const-string v14, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 674
    .local v5, keyvalues:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 675
    .local v7, kvpair:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 676
    .local v4, keyStr:Ljava/lang/String;
    const/4 v13, 0x0

    .line 679
    .local v13, value:Ljava/lang/String;
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v8, v1

    .local v8, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v8, :cond_1

    aget-object v6, v1, v2

    .line 681
    .local v6, kv:Ljava/lang/String;
    :try_start_0
    const-string v14, "="

    invoke-virtual {v6, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 682
    const/4 v14, 0x0

    aget-object v4, v7, v14

    .line 683
    const/4 v14, 0x1

    aget-object v13, v7, v14

    .line 684
    const-class v14, Lcom/android/internal/telephony/RIL_QosSpecKeys;

    invoke-virtual {v14, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    const-class v15, Lcom/android/internal/telephony/RIL_QosSpecKeys;

    invoke-virtual {v14, v15}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 686
    .local v3, key:I
    invoke-virtual {v9, v3, v13}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    .end local v3           #key:I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 687
    :catch_0
    move-exception v12

    .line 688
    .local v12, t:Ljava/lang/Throwable;
    const-string v14, "QosSpec"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Warning: Invalid key:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v6           #kv:Ljava/lang/String;
    .end local v12           #t:Ljava/lang/Throwable;
    :cond_1
    move-object v10, v9

    .line 691
    .end local v9           #pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    .restart local v10       #pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 754
    const/4 v0, 0x0

    return v0
.end method

.method public getQosPipes(Ljava/lang/String;)Lcom/android/internal/telephony/QosSpec$QosPipe;
    .locals 3
    .parameter "specIndex"

    .prologue
    .line 700
    iget-object v2, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/QosSpec$QosPipe;

    .line 701
    .local v1, pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/QosSpec$QosPipe;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 704
    .end local v1           #pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getQosPipes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/QosSpec$QosPipe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getQosSpec(II)Ljava/lang/String;
    .locals 3
    .parameter "pipeId"
    .parameter "key"

    .prologue
    .line 708
    const/4 v0, 0x0

    .line 709
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QosSpec;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 710
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/QosSpec$QosPipe;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/QosSpec$QosPipe;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 711
    return-object v0
.end method

.method public getRilQosSpec()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 741
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 742
    .local v2, rilQosSpec:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/QosSpec$QosPipe;

    .line 743
    .local v1, pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    #calls: Lcom/android/internal/telephony/QosSpec$QosPipe;->getRilPipeSpec()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/QosSpec$QosPipe;->access$000(Lcom/android/internal/telephony/QosSpec$QosPipe;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 745
    .end local v1           #pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    :cond_0
    return-object v2
.end method

.method public getUserData()I
    .locals 1

    .prologue
    .line 809
    iget v0, p0, Lcom/android/internal/telephony/QosSpec;->mUserData:I

    return v0
.end method

.method public isEmpty(I)Z
    .locals 4
    .parameter "pipeId"

    .prologue
    .line 732
    const/4 v0, 0x0

    .line 733
    .local v0, flag:Z
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QosSpec;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    iget-object v1, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/QosSpec$QosPipe;

    iget-object v1, v1, Lcom/android/internal/telephony/QosSpec$QosPipe;->mQosParams:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    .line 737
    :goto_0
    return v0

    .line 736
    :cond_0
    const-string v1, "QosSpec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: Invalid pipeId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isValid(I)Z
    .locals 2
    .parameter "pipeId"

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public pipeKeys(I)Ljava/util/List;
    .locals 2
    .parameter "pipeId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 715
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QosSpec;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/QosSpec$QosPipe;

    invoke-virtual {v0}, Lcom/android/internal/telephony/QosSpec$QosPipe;->getKeys()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pipeSize(I)I
    .locals 4
    .parameter "pipeId"

    .prologue
    .line 723
    const/4 v0, 0x0

    .line 724
    .local v0, size:I
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QosSpec;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    iget-object v1, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/QosSpec$QosPipe;

    iget-object v1, v1, Lcom/android/internal/telephony/QosSpec$QosPipe;->mQosParams:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 728
    :goto_0
    return v0

    .line 727
    :cond_0
    const-string v1, "QosSpec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: Invalid pipeId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pipeValues(I)Ljava/util/List;
    .locals 2
    .parameter "pipeId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 719
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QosSpec;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/QosSpec$QosPipe;

    invoke-virtual {v0}, Lcom/android/internal/telephony/QosSpec$QosPipe;->getValues()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUserData(I)V
    .locals 0
    .parameter "userData"

    .prologue
    .line 805
    iput p1, p0, Lcom/android/internal/telephony/QosSpec;->mUserData:I

    .line 806
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 821
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 822
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    iget-object v3, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 824
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/QosSpec$QosPipe;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 826
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/QosSpec$QosPipe;>;"
    :cond_0
    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 762
    iget v6, p0, Lcom/android/internal/telephony/QosSpec;->mUserData:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    iget-object v6, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 764
    iget-object v6, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/QosSpec$QosPipe;

    .line 765
    .local v4, pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    iget-object v6, v4, Lcom/android/internal/telephony/QosSpec$QosPipe;->mQosParams:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    iget-object v6, v4, Lcom/android/internal/telephony/QosSpec$QosPipe;->mQosParams:Ljava/util/LinkedList;

    const/4 v7, 0x0

    new-array v7, v7, [Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;

    .local v0, arr$:[Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 768
    .local v5, qkv:Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
    iget v6, v5, Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;->qosKey:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    iget-object v6, v5, Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;->qosValue:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 767
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 772
    .end local v0           #arr$:[Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    .end local v5           #qkv:Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
    :cond_1
    return-void
.end method
