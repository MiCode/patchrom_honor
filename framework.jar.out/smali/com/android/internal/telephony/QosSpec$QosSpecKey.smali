.class public Lcom/android/internal/telephony/QosSpec$QosSpecKey;
.super Ljava/lang/Object;
.source "QosSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/QosSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QosSpecKey"
.end annotation


# static fields
.field public static final FILTER_DIRECTION:I = 0xa

.field public static final FILTER_INDEX:I = 0x8

.field public static final FILTER_IPV4_DESTINATION_ADDR:I = 0xc

.field public static final FILTER_IPV4_SOURCE_ADDR:I = 0xb

.field public static final FILTER_IPV4_TOS:I = 0xd

.field public static final FILTER_IPV4_TOS_MASK:I = 0xe

.field public static final FILTER_IPV6_DESTINATION_ADDR:I = 0x19

.field public static final FILTER_IPV6_FLOW_LABEL:I = 0x17

.field public static final FILTER_IPV6_SOURCE_ADDR:I = 0x18

.field public static final FILTER_IPV6_TRAFFIC_CLASS:I = 0x1a

.field public static final FILTER_IPVERSION:I = 0x9

.field public static final FILTER_TCP_DESTINATION_PORT_RANGE:I = 0x12

.field public static final FILTER_TCP_DESTINATION_PORT_START:I = 0x11

.field public static final FILTER_TCP_SOURCE_PORT_RANGE:I = 0x10

.field public static final FILTER_TCP_SOURCE_PORT_START:I = 0xf

.field public static final FILTER_UDP_DESTINATION_PORT_RANGE:I = 0x16

.field public static final FILTER_UDP_DESTINATION_PORT_START:I = 0x15

.field public static final FILTER_UDP_SOURCE_PORT_RANGE:I = 0x14

.field public static final FILTER_UDP_SOURCE_PORT_START:I = 0x13

.field public static final FLOW_3GPP2_PRIORITY:I = 0x7

.field public static final FLOW_3GPP2_PROFILE_ID:I = 0x6

.field public static final FLOW_DATA_RATE_MAX:I = 0x4

.field public static final FLOW_DATA_RATE_MIN:I = 0x3

.field public static final FLOW_DIRECTION:I = 0x1

.field public static final FLOW_LATENCY:I = 0x5

.field public static final FLOW_TRAFFIC_CLASS:I = 0x2

.field public static final SPEC_INDEX:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKey(Ljava/lang/String;)I
    .locals 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 365
    :try_start_0
    const-class v5, Lcom/android/internal/telephony/QosSpec$QosSpecKey;

    invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 366
    .local v3, k:Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 367
    invoke-virtual {v3, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 372
    .end local v3           #k:Ljava/lang/reflect/Field;
    :goto_1
    return v5

    .line 365
    .restart local v3       #k:Ljava/lang/reflect/Field;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 369
    .end local v0           #arr$:[Ljava/lang/reflect/Field;
    .end local v2           #i$:I
    .end local v3           #k:Ljava/lang/reflect/Field;
    .end local v4           #len$:I
    :catch_0
    move-exception v1

    .line 370
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 372
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #arr$:[Ljava/lang/reflect/Field;
    .restart local v2       #i$:I
    .restart local v4       #len$:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static getKeyName(I)Ljava/lang/String;
    .locals 9
    .parameter "key"

    .prologue
    .line 376
    const/4 v5, 0x0

    .line 378
    .local v5, retVal:Ljava/lang/String;
    :try_start_0
    const-class v6, Lcom/android/internal/telephony/QosSpec$QosSpecKey;

    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 379
    .local v3, k:Ljava/lang/reflect/Field;
    invoke-virtual {v3, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    if-ne v6, p0, :cond_1

    .line 380
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 385
    .end local v0           #arr$:[Ljava/lang/reflect/Field;
    .end local v2           #i$:I
    .end local v3           #k:Ljava/lang/reflect/Field;
    .end local v4           #len$:I
    .end local v5           #retVal:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v5

    .line 378
    .restart local v0       #arr$:[Ljava/lang/reflect/Field;
    .restart local v2       #i$:I
    .restart local v3       #k:Ljava/lang/reflect/Field;
    .restart local v4       #len$:I
    .restart local v5       #retVal:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 382
    .end local v0           #arr$:[Ljava/lang/reflect/Field;
    .end local v2           #i$:I
    .end local v3           #k:Ljava/lang/reflect/Field;
    .end local v4           #len$:I
    :catch_0
    move-exception v1

    .line 383
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v6, "QosSpec"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Warning: Invalid key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isValid(I)Z
    .locals 7
    .parameter "key"

    .prologue
    .line 351
    const/4 v5, 0x0

    .line 353
    .local v5, retVal:Z
    :try_start_0
    const-class v6, Lcom/android/internal/telephony/QosSpec$QosSpecKey;

    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 354
    .local v3, k:Ljava/lang/reflect/Field;
    invoke-virtual {v3, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ne v6, p0, :cond_0

    .line 355
    const/4 v6, 0x1

    .line 360
    .end local v0           #arr$:[Ljava/lang/reflect/Field;
    .end local v2           #i$:I
    .end local v3           #k:Ljava/lang/reflect/Field;
    .end local v4           #len$:I
    :goto_1
    return v6

    .line 353
    .restart local v0       #arr$:[Ljava/lang/reflect/Field;
    .restart local v2       #i$:I
    .restart local v3       #k:Ljava/lang/reflect/Field;
    .restart local v4       #len$:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    .end local v0           #arr$:[Ljava/lang/reflect/Field;
    .end local v2           #i$:I
    .end local v3           #k:Ljava/lang/reflect/Field;
    .end local v4           #len$:I
    :catch_0
    move-exception v1

    .line 358
    .local v1, e:Ljava/lang/IllegalAccessException;
    const/4 v5, 0x0

    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :cond_1
    move v6, v5

    .line 360
    goto :goto_1
.end method
