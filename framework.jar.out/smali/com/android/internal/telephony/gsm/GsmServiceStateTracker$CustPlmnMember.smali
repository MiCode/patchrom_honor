.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$CustPlmnMember;
.super Ljava/lang/Object;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustPlmnMember"
.end annotation


# static fields
.field private static final REGEX:Ljava/lang/String; = "(\\d:([^:,;\\s]{5,6},){2}[^:,;]{1,20},[^:,;]{1,20};)*(\\d:([^:,;\\s]{5,6},){2}[^:,;]{1,20},[^:,;]{1,20};?)$"

.field private static custSpn:Ljava/lang/String;

.field private static instance:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$CustPlmnMember;


# instance fields
.field public plmn:Ljava/lang/String;

.field public rule:I

.field public showPlmn:Z

.field public showSpn:Z

.field public spn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 562
    const-string/jumbo v0, "ro.config.hw_plmn_spn"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$CustPlmnMember;->custSpn:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$CustPlmnMember;
    .locals 1

    .prologue
    .line 572
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$CustPlmnMember;->instance:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$CustPlmnMember;

    if-nez v0, :cond_0

    .line 573
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$CustPlmnMember;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$CustPlmnMember;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$CustPlmnMember;->instance:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$CustPlmnMember;

    .line 575
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$CustPlmnMember;->instance:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$CustPlmnMember;

    return-object v0
.end method

.method private isAvail(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 579
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acquireFromProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "hplmn"
    .parameter "regplmn"

    .prologue
    .line 584
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "acquireFromProperty() custSpn:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$CustPlmnMember;->custSpn:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "acquireFromProperty() hplmn:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "acquireFromProperty() regplmn:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    sget-object v10, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$CustPlmnMember;->custSpn:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$CustPlmnMember;->isAvail(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$CustPlmnMember;->isAvail(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$CustPlmnMember;->isAvail(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 589
    :cond_0
    const-string v10, "GSM"

    const-string v11, "acquireFromProperty() failed, custSpn or hplmm or regplmn is null or empty string"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v10, 0x0

    .line 617
    :goto_0
    return v10

    .line 593
    :cond_1
    const-string v10, "(\\d:([^:,;\\s]{5,6},){2}[^:,;]{1,20},[^:,;]{1,20};)*(\\d:([^:,;\\s]{5,6},){2}[^:,;]{1,20},[^:,;]{1,20};?)$"

    sget-object v11, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$CustPlmnMember;->custSpn:Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 594
    const-string v10, "GSM"

    const-string v11, "acquireFromProperty() failed, custSpn does not match with regex"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v10, 0x0

    goto :goto_0

    .line 598
    :cond_2
    sget-object v10, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$CustPlmnMember;->custSpn:Ljava/lang/String;

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 599
    .local v9, rules:[Ljava/lang/String;
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_6

    aget-object v6, v0, v3

    .line 600
    .local v6, rule_item:Ljava/lang/String;
    const-string v10, ":"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 601
    .local v7, rule_plmns:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 602
    .local v8, rule_prop:I
    and-int/lit8 v10, v8, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    const/4 v2, 0x1

    .line 604
    .local v2, custShowSpn:Z
    :goto_2
    and-int/lit8 v10, v8, 0x2

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    const/4 v1, 0x1

    .line 606
    .local v1, custShowPlmn:Z
    :goto_3
    const/4 v10, 0x1

    aget-object v10, v7, v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 608
    .local v5, plmns:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 609
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$CustPlmnMember;->showSpn:Z

    .line 610
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$CustPlmnMember;->showPlmn:Z

    .line 611
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$CustPlmnMember;->rule:I

    .line 612
    const/4 v10, 0x2

    aget-object v10, v5, v10

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$CustPlmnMember;->plmn:Ljava/lang/String;

    .line 613
    const/4 v10, 0x3

    aget-object v10, v5, v10

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$CustPlmnMember;->spn:Ljava/lang/String;

    .line 614
    const/4 v10, 0x1

    goto :goto_0

    .line 602
    .end local v1           #custShowPlmn:Z
    .end local v2           #custShowSpn:Z
    .end local v5           #plmns:[Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 604
    .restart local v2       #custShowSpn:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 599
    .restart local v1       #custShowPlmn:Z
    .restart local v5       #plmns:[Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 617
    .end local v1           #custShowPlmn:Z
    .end local v2           #custShowSpn:Z
    .end local v5           #plmns:[Ljava/lang/String;
    .end local v6           #rule_item:Ljava/lang/String;
    .end local v7           #rule_plmns:[Ljava/lang/String;
    .end local v8           #rule_prop:I
    :cond_6
    const/4 v10, 0x0

    goto :goto_0
.end method
