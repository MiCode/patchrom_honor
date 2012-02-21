.class public Landroid/renderscript/ProgramRaster$Builder;
.super Ljava/lang/Object;
.source "ProgramRaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramRaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

.field mPointSprite:Z

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .parameter "rs"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Landroid/renderscript/ProgramRaster$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/renderscript/ProgramRaster$Builder;->mPointSprite:Z

    .line 101
    sget-object v0, Landroid/renderscript/ProgramRaster$CullMode;->BACK:Landroid/renderscript/ProgramRaster$CullMode;

    iput-object v0, p0, Landroid/renderscript/ProgramRaster$Builder;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    .line 102
    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramRaster;
    .locals 5

    .prologue
    .line 115
    iget-object v2, p0, Landroid/renderscript/ProgramRaster$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 116
    iget-object v2, p0, Landroid/renderscript/ProgramRaster$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-boolean v3, p0, Landroid/renderscript/ProgramRaster$Builder;->mPointSprite:Z

    iget-object v4, p0, Landroid/renderscript/ProgramRaster$Builder;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    iget v4, v4, Landroid/renderscript/ProgramRaster$CullMode;->mID:I

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/RenderScript;->nProgramRasterCreate(ZI)I

    move-result v0

    .line 117
    .local v0, id:I
    new-instance v1, Landroid/renderscript/ProgramRaster;

    iget-object v2, p0, Landroid/renderscript/ProgramRaster$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v1, v0, v2}, Landroid/renderscript/ProgramRaster;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 118
    .local v1, programRaster:Landroid/renderscript/ProgramRaster;
    iget-boolean v2, p0, Landroid/renderscript/ProgramRaster$Builder;->mPointSprite:Z

    iput-boolean v2, v1, Landroid/renderscript/ProgramRaster;->mPointSprite:Z

    .line 119
    iget-object v2, p0, Landroid/renderscript/ProgramRaster$Builder;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    iput-object v2, v1, Landroid/renderscript/ProgramRaster;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    .line 120
    return-object v1
.end method

.method public setCullMode(Landroid/renderscript/ProgramRaster$CullMode;)Landroid/renderscript/ProgramRaster$Builder;
    .locals 0
    .parameter "m"

    .prologue
    .line 110
    iput-object p1, p0, Landroid/renderscript/ProgramRaster$Builder;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    .line 111
    return-object p0
.end method

.method public setPointSpriteEnabled(Z)Landroid/renderscript/ProgramRaster$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    .line 105
    iput-boolean p1, p0, Landroid/renderscript/ProgramRaster$Builder;->mPointSprite:Z

    .line 106
    return-object p0
.end method
