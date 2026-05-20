.class public final Lcom/miui/home/library/rs/RenderEffectImageProcessor;
.super Ljava/lang/Object;
.source "RenderEffectImageProcessor.kt"

# interfaces
.implements Lcom/miui/home/library/rs/ImageProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private params:Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RenderEffect"

    .line 13
    iput-object v0, p0, Lcom/miui/home/library/rs/RenderEffectImageProcessor;->name:Ljava/lang/String;

    return-void
.end method

.method private final applyEffect(Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;Landroid/graphics/RenderEffect;)Landroid/graphics/Bitmap;
    .locals 2

    .line 23
    invoke-virtual {p1}, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/graphics/RenderNode;->setRenderEffect(Landroid/graphics/RenderEffect;)Z

    .line 24
    invoke-virtual {p1}, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object p0

    const-string p2, "it.renderNode.beginRecording()"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v0, v1}, Landroid/graphics/RecordingCanvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 26
    invoke-virtual {p1}, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 27
    invoke-virtual {p1}, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;->getHardwareRenderer()Landroid/graphics/HardwareRenderer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/HardwareRenderer;->createRenderRequest()Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    move-result-object p0

    const/4 p2, 0x1

    .line 28
    invoke-virtual {p0, p2}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->setWaitForPresent(Z)Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->syncAndDraw()I

    .line 30
    invoke-virtual {p1}, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;->getImageReader()Landroid/media/ImageReader;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 32
    invoke-virtual {p0}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 33
    invoke-static {p2, v1}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;->setBitmapOut(Landroid/graphics/Bitmap;)V

    .line 35
    invoke-virtual {p2}, Landroid/hardware/HardwareBuffer;->close()V

    .line 36
    invoke-virtual {p0}, Landroid/media/Image;->close()V

    goto :goto_0

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Create Bitmap Failed"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "No HardwareBuffer"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;->getBitmapOut()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blur(F)Landroid/graphics/Bitmap;
    .locals 7

    .line 47
    iget-object v0, p0, Lcom/miui/home/library/rs/RenderEffectImageProcessor;->params:Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 49
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 50
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    invoke-virtual {v0}, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    invoke-direct {v3, v5, v5, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 48
    invoke-static {v1, v2, v3}, Landroid/graphics/RenderEffect;->createBitmapEffect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/RenderEffect;

    move-result-object v1

    const-string v2, "createBitmapEffect(it.bi\u2026 /4, it.bitmap.height/4))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 51
    invoke-static {p1, p1, v2}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p1

    const-string v2, "createBlurEffect(\n      \u2026   Shader.TileMode.CLAMP)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {p1, v1}, Landroid/graphics/RenderEffect;->createChainEffect(Landroid/graphics/RenderEffect;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p1

    const-string v1, "createChainEffect(blurRe\u2026, downSampleRenderEffect)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, v0, p1}, Lcom/miui/home/library/rs/RenderEffectImageProcessor;->applyEffect(Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;Landroid/graphics/RenderEffect;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 56
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not configured!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cleanup()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/miui/home/library/rs/RenderEffectImageProcessor;->params:Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 60
    iput-object v1, p0, Lcom/miui/home/library/rs/RenderEffectImageProcessor;->params:Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;

    .line 61
    invoke-virtual {v0}, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;->getImageReader()Landroid/media/ImageReader;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/ImageReader;->close()V

    .line 62
    invoke-virtual {v0}, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/RenderNode;->discardDisplayList()V

    .line 63
    invoke-virtual {v0}, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;->getHardwareRenderer()Landroid/graphics/HardwareRenderer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/HardwareRenderer;->destroy()V

    :cond_0
    return-void
.end method

.method public configureInputAndOutput(Landroid/graphics/Bitmap;I)V
    .locals 1

    const-string v0, "inputImage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;-><init>(Lcom/miui/home/library/rs/RenderEffectImageProcessor;Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/miui/home/library/rs/RenderEffectImageProcessor;->params:Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;

    return-void
.end method
