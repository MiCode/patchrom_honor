.class public Landroid/renderscript/RenderScriptGL;
.super Landroid/renderscript/RenderScript;
.source "RenderScriptGL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    }
.end annotation


# instance fields
.field mHeight:I

.field mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V
    .locals 17
    .parameter "ctx"
    .parameter "sc"

    .prologue
    .line 160
    invoke-direct/range {p0 .. p1}, Landroid/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    .line 161
    new-instance v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    .line 163
    invoke-static/range {p1 .. p1}, Landroid/renderscript/RenderScriptGL;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v4

    .line 165
    .local v4, sdkVersion:I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    .line 166
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    .line 167
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScriptGL;->nDeviceCreate()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/renderscript/RenderScriptGL;->mDev:I

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v16, v0

    .line 169
    .local v16, dpi:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/renderscript/RenderScriptGL;->mDev:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v5, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v6, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v7, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v8, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v9, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v10, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v11, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v12, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v13, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v14, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v15, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v16}, Landroid/renderscript/RenderScriptGL;->nContextCreateGL(IIIIIIIIIIIIIFI)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/renderscript/RenderScriptGL;->mContext:I

    .line 176
    move-object/from16 v0, p0

    iget v1, v0, Landroid/renderscript/RenderScriptGL;->mContext:I

    if-nez v1, :cond_0

    .line 177
    new-instance v1, Landroid/renderscript/RSDriverException;

    const-string v2, "Failed to create RS context."

    invoke-direct {v1, v2}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_0
    new-instance v1, Landroid/renderscript/RenderScript$MessageThread;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/renderscript/RenderScript$MessageThread;-><init>(Landroid/renderscript/RenderScript;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/renderscript/RenderScriptGL;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    .line 180
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript$MessageThread;->start()V

    .line 181
    return-void
.end method


# virtual methods
.method public bindProgramFragment(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 284
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramFragment(I)V

    .line 285
    return-void
.end method

.method public bindProgramRaster(Landroid/renderscript/ProgramRaster;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 295
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramRaster(I)V

    .line 296
    return-void
.end method

.method public bindProgramStore(Landroid/renderscript/ProgramStore;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 272
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 273
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramStore(I)V

    .line 274
    return-void
.end method

.method public bindProgramVertex(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 305
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 306
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramVertex(I)V

    .line 307
    return-void
.end method

.method public bindRootScript(Landroid/renderscript/Script;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 261
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 262
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindRootScript(I)V

    .line 263
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 241
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 242
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->nContextPause()V

    .line 243
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 250
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 251
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->nContextResume()V

    .line 252
    return-void
.end method

.method public setSurface(Landroid/view/SurfaceHolder;II)V
    .locals 1
    .parameter "sur"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, s:Landroid/view/Surface;
    if-eqz p1, :cond_0

    .line 195
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 197
    :cond_0
    iput p2, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    .line 198
    iput p3, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    .line 199
    invoke-virtual {p0, p2, p3, v0}, Landroid/renderscript/RenderScriptGL;->nContextSetSurface(IILandroid/view/Surface;)V

    .line 200
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .parameter "sur"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 210
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 213
    iput p2, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    .line 214
    iput p3, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    .line 215
    invoke-virtual {p0, p2, p3, p1}, Landroid/renderscript/RenderScriptGL;->nContextSetSurfaceTexture(IILandroid/graphics/SurfaceTexture;)V

    .line 216
    return-void
.end method
