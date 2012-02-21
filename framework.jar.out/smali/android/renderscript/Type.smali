.class public Landroid/renderscript/Type;
.super Landroid/renderscript/BaseObj;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Type$Builder;,
        Landroid/renderscript/Type$CubemapFace;
    }
.end annotation


# instance fields
.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimZ:I

.field mElement:Landroid/renderscript/Element;

.field mElementCount:I


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 0
    .parameter "id"
    .parameter "rs"

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 171
    return-void
.end method


# virtual methods
.method calcElementCount()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 132
    invoke-virtual {p0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v2

    .line 133
    .local v2, hasLod:Z
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    move-result v3

    .line 134
    .local v3, x:I
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    move-result v4

    .line 135
    .local v4, y:I
    invoke-virtual {p0}, Landroid/renderscript/Type;->getZ()I

    move-result v5

    .line 136
    .local v5, z:I
    const/4 v1, 0x1

    .line 137
    .local v1, faces:I
    invoke-virtual {p0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 138
    const/4 v1, 0x6

    .line 140
    :cond_0
    if-nez v3, :cond_1

    .line 141
    const/4 v3, 0x1

    .line 143
    :cond_1
    if-nez v4, :cond_2

    .line 144
    const/4 v4, 0x1

    .line 146
    :cond_2
    if-nez v5, :cond_3

    .line 147
    const/4 v5, 0x1

    .line 150
    :cond_3
    mul-int v6, v3, v4

    mul-int/2addr v6, v5

    mul-int v0, v6, v1

    .line 152
    .local v0, count:I
    :goto_0
    if-eqz v2, :cond_8

    if-gt v3, v7, :cond_4

    if-gt v4, v7, :cond_4

    if-le v5, v7, :cond_8

    .line 153
    :cond_4
    if-le v3, v7, :cond_5

    .line 154
    shr-int/lit8 v3, v3, 0x1

    .line 156
    :cond_5
    if-le v4, v7, :cond_6

    .line 157
    shr-int/lit8 v4, v4, 0x1

    .line 159
    :cond_6
    if-le v5, v7, :cond_7

    .line 160
    shr-int/lit8 v5, v5, 0x1

    .line 163
    :cond_7
    mul-int v6, v3, v4

    mul-int/2addr v6, v5

    mul-int/2addr v6, v1

    add-int/2addr v0, v6

    goto :goto_0

    .line 165
    :cond_8
    iput v0, p0, Landroid/renderscript/Type;->mElementCount:I

    .line 166
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Landroid/renderscript/Type;->mElementCount:I

    return v0
.end method

.method public getElement()Landroid/renderscript/Element;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    return-object v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Landroid/renderscript/Type;->mDimX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Landroid/renderscript/Type;->mDimY:I

    return v0
.end method

.method public getZ()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Landroid/renderscript/Type;->mDimZ:I

    return v0
.end method

.method public hasFaces()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/renderscript/Type;->mDimFaces:Z

    return v0
.end method

.method public hasMipmaps()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Landroid/renderscript/Type;->mDimMipmaps:Z

    return v0
.end method

.method updateFromNative()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 177
    const/4 v2, 0x6

    new-array v0, v2, [I

    .line 178
    .local v0, dataBuffer:[I
    iget-object v2, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Type;->getID()I

    move-result v5

    invoke-virtual {v2, v5, v0}, Landroid/renderscript/RenderScript;->nTypeGetNativeData(I[I)V

    .line 180
    aget v2, v0, v4

    iput v2, p0, Landroid/renderscript/Type;->mDimX:I

    .line 181
    aget v2, v0, v3

    iput v2, p0, Landroid/renderscript/Type;->mDimY:I

    .line 182
    const/4 v2, 0x2

    aget v2, v0, v2

    iput v2, p0, Landroid/renderscript/Type;->mDimZ:I

    .line 183
    const/4 v2, 0x3

    aget v2, v0, v2

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Landroid/renderscript/Type;->mDimMipmaps:Z

    .line 184
    const/4 v2, 0x4

    aget v2, v0, v2

    if-ne v2, v3, :cond_2

    :goto_1
    iput-boolean v3, p0, Landroid/renderscript/Type;->mDimFaces:Z

    .line 186
    const/4 v2, 0x5

    aget v1, v0, v2

    .line 187
    .local v1, elementID:I
    if-eqz v1, :cond_0

    .line 188
    new-instance v2, Landroid/renderscript/Element;

    iget-object v3, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v1, v3}, Landroid/renderscript/Element;-><init>(ILandroid/renderscript/RenderScript;)V

    iput-object v2, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 189
    iget-object v2, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->updateFromNative()V

    .line 191
    :cond_0
    invoke-virtual {p0}, Landroid/renderscript/Type;->calcElementCount()V

    .line 192
    return-void

    .end local v1           #elementID:I
    :cond_1
    move v2, v4

    .line 183
    goto :goto_0

    :cond_2
    move v3, v4

    .line 184
    goto :goto_1
.end method
