.class Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;
.super Landroid/renderscript/Program$BaseProgramBuilder;
.source "ProgramVertexFixedFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramVertexFixedFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InternalBuilder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 0
    .parameter "rs"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/renderscript/Program$BaseProgramBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 50
    return-void
.end method


# virtual methods
.method public addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;
    .locals 3
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 54
    iget v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mInputCount:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 55
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Max input count exceeded."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Element;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Complex elements not allowed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mInputs:[Landroid/renderscript/Element;

    iget v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mInputCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mInputCount:I

    aput-object p1, v0, v1

    .line 61
    return-object p0
.end method

.method public create()Landroid/renderscript/ProgramVertexFixedFunction;
    .locals 8

    .prologue
    .line 71
    iget-object v6, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6}, Landroid/renderscript/RenderScript;->validate()V

    .line 72
    iget v6, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mInputCount:I

    iget v7, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mOutputCount:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mConstantCount:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mTextureCount:I

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x2

    new-array v5, v6, [I

    .line 73
    .local v5, tmp:[I
    const/4 v2, 0x0

    .line 75
    .local v2, idx:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v6, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mInputCount:I

    if-ge v0, v6, :cond_0

    .line 76
    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .local v3, idx:I
    sget-object v6, Landroid/renderscript/Program$ProgramParam;->INPUT:Landroid/renderscript/Program$ProgramParam;

    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v6, v5, v2

    .line 77
    add-int/lit8 v2, v3, 0x1

    .end local v3           #idx:I
    .restart local v2       #idx:I
    iget-object v6, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mInputs:[Landroid/renderscript/Element;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/renderscript/Element;->getID()I

    move-result v6

    aput v6, v5, v3

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v6, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mOutputCount:I

    if-ge v0, v6, :cond_1

    .line 80
    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .restart local v3       #idx:I
    sget-object v6, Landroid/renderscript/Program$ProgramParam;->OUTPUT:Landroid/renderscript/Program$ProgramParam;

    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v6, v5, v2

    .line 81
    add-int/lit8 v2, v3, 0x1

    .end local v3           #idx:I
    .restart local v2       #idx:I
    iget-object v6, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mOutputs:[Landroid/renderscript/Element;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/renderscript/Element;->getID()I

    move-result v6

    aput v6, v5, v3

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget v6, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mConstantCount:I

    if-ge v0, v6, :cond_2

    .line 84
    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .restart local v3       #idx:I
    sget-object v6, Landroid/renderscript/Program$ProgramParam;->CONSTANT:Landroid/renderscript/Program$ProgramParam;

    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v6, v5, v2

    .line 85
    add-int/lit8 v2, v3, 0x1

    .end local v3           #idx:I
    .restart local v2       #idx:I
    iget-object v6, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mConstants:[Landroid/renderscript/Type;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/renderscript/Type;->getID()I

    move-result v6

    aput v6, v5, v3

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 87
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget v6, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mTextureCount:I

    if-ge v0, v6, :cond_3

    .line 88
    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .restart local v3       #idx:I
    sget-object v6, Landroid/renderscript/Program$ProgramParam;->TEXTURE_TYPE:Landroid/renderscript/Program$ProgramParam;

    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v6, v5, v2

    .line 89
    add-int/lit8 v2, v3, 0x1

    .end local v3           #idx:I
    .restart local v2       #idx:I
    iget-object v6, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    aget-object v6, v6, v0

    iget v6, v6, Landroid/renderscript/Program$TextureType;->mID:I

    aput v6, v5, v3

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 92
    :cond_3
    iget-object v6, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v7, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mShader:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Landroid/renderscript/RenderScript;->nProgramVertexCreate(Ljava/lang/String;[I)I

    move-result v1

    .line 93
    .local v1, id:I
    new-instance v4, Landroid/renderscript/ProgramVertexFixedFunction;

    iget-object v6, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v4, v1, v6}, Landroid/renderscript/ProgramVertexFixedFunction;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 94
    .local v4, pv:Landroid/renderscript/ProgramVertexFixedFunction;
    invoke-virtual {p0, v4}, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->initProgram(Landroid/renderscript/Program;)V

    .line 95
    return-object v4
.end method
