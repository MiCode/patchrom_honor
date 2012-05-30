.class public Lcom/android/internal/telephony/cdma/DataProfileOmh;
.super Lcom/android/internal/telephony/DataProfile;
.source "DataProfileOmh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;
    }
.end annotation


# static fields
.field private static PROFILE_TYPE:Ljava/lang/String;


# instance fields
.field private DATA_PROFILE_OMH_PRIORITY_HIGHEST:I

.field private DATA_PROFILE_OMH_PRIORITY_LOWEST:I

.field private mDataProfileModem:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

.field private mPriority:I

.field private mProfileId:I

.field private serviceTypeMasks:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    const-string v0, "DataProfileOmh"

    sput-object v0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->PROFILE_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 127
    sget-object v3, Lcom/android/internal/telephony/cdma/DataProfileOmh;->PROFILE_TYPE:Ljava/lang/String;

    const/4 v6, 0x3

    const-string/jumbo v0, "persist.telephony.cdma.protocol"

    const-string v4, "IP"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "persist.telephony.cdma.rproto"

    const-string v4, "IP"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    move-object v7, v2

    move v10, v1

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/cdma/DataProfileOmh;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    iput v1, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->mProfileId:I

    .line 134
    iput v1, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->mPriority:I

    .line 135
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "profileId"
    .parameter "priority"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/DataProfileOmh;-><init>()V

    .line 139
    iput p1, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->mProfileId:I

    .line 140
    iput p2, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->mPriority:I

    .line 141
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->types:[Ljava/lang/String;

    .line 142
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .parameter "id"
    .parameter "numeric"
    .parameter "name"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "types"
    .parameter "protocol"
    .parameter "roamingProtocol"
    .parameter "bearer"

    .prologue
    .line 117
    const-string v3, ""

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/DataProfile;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_LOWEST:I

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_HIGHEST:I

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->serviceTypeMasks:I

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->mProfileId:I

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->mPriority:I

    .line 119
    return-void
.end method

.method private isValidPriority(I)Z
    .locals 1
    .parameter "priority"

    .prologue
    .line 209
    iget v0, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_HIGHEST:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_LOWEST:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addServiceType(Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;)V
    .locals 7
    .parameter "modemProfile"

    .prologue
    .line 226
    iget v5, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->serviceTypeMasks:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v6

    or-int/2addr v5, v6

    iput v5, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->serviceTypeMasks:I

    .line 229
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v4, serviceTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->values()[Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 231
    .local v1, dpt:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;
    iget v5, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->serviceTypeMasks:I

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 232
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->getDataServiceType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    .end local v1           #dpt:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;
    :cond_1
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->types:[Ljava/lang/String;

    .line 236
    return-void
.end method

.method public canHandleType(Ljava/lang/String;)Z
    .locals 2
    .parameter "serviceType"

    .prologue
    .line 146
    iget v0, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->serviceTypeMasks:I

    invoke-static {p1}, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_OMH:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    return-object v0
.end method

.method public getDataProfileTypeModem()Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->mDataProfileModem:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->mPriority:I

    return v0
.end method

.method public getProfileId()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->mProfileId:I

    return v0
.end method

.method public getServiceTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, dummy:[Ljava/lang/String;
    return-object v0
.end method

.method public isPriorityHigher(I)Z
    .locals 1
    .parameter "priority"

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->isValidPriority(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->mPriority:I

    if-ge v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPriorityLower(I)Z
    .locals 1
    .parameter "priority"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->isValidPriority(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->mPriority:I

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidPriority()Z
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->mPriority:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->isValidPriority(I)Z

    move-result v0

    return v0
.end method

.method public setDataProfileTypeModem(Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;)V
    .locals 0
    .parameter "modemProfile"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->mDataProfileModem:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    .line 178
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 190
    iput p1, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->mPriority:I

    .line 191
    return-void
.end method

.method public setProfileId(I)V
    .locals 0
    .parameter "profileId"

    .prologue
    .line 186
    iput p1, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->mProfileId:I

    .line 187
    return-void
.end method

.method public toHash()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->mProfileId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    const-string v0, "DataProfile OMH"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-super {p0}, Lcom/android/internal/telephony/DataProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->mProfileId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh;->mPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
