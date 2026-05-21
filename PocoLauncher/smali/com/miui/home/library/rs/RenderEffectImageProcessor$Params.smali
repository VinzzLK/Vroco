.class public final Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;
.super Ljava/lang/Object;
.source "RenderEffectImageProcessor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/library/rs/RenderEffectImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Params"
.end annotation


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field public bitmapOut:Landroid/graphics/Bitmap;

.field private final hardwareRenderer:Landroid/graphics/HardwareRenderer;

.field private final imageReader:Landroid/media/ImageReader;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation
.end field

.field private final renderNode:Landroid/graphics/RenderNode;

.field final synthetic this$0:Lcom/miui/home/library/rs/RenderEffectImageProcessor;


# direct methods
.method public constructor <init>(Lcom/miui/home/library/rs/RenderEffectImageProcessor;Landroid/graphics/Bitmap;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "I)V"
        }
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;->this$0:Lcom/miui/home/library/rs/RenderEffectImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;->bitmap:Landroid/graphics/Bitmap;

    .line 69
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    div-int/lit8 v0, p1, 0x4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    div-int/lit8 v1, p1, 0x4

    const/4 v2, 0x1

    const-wide/16 v4, 0x300

    move v3, p3

    .line 68
    invoke-static/range {v0 .. v5}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object p1

    const-string p3, "newInstance(\n           \u2026PU_COLOR_OUTPUT\n        )"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;->imageReader:Landroid/media/ImageReader;

    .line 73
    new-instance p3, Landroid/graphics/RenderNode;

    const-string v0, "RenderEffect"

    invoke-direct {p3, v0}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;->renderNode:Landroid/graphics/RenderNode;

    .line 74
    new-instance v0, Landroid/graphics/HardwareRenderer;

    invoke-direct {v0}, Landroid/graphics/HardwareRenderer;-><init>()V

    iput-object v0, p0, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;->hardwareRenderer:Landroid/graphics/HardwareRenderer;

    .line 77
    invoke-virtual {p1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/HardwareRenderer;->setSurface(Landroid/view/Surface;)V

    .line 78
    invoke-virtual {v0, p3}, Landroid/graphics/HardwareRenderer;->setContentRoot(Landroid/graphics/RenderNode;)V

    .line 79
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p3, p2, p2, p0, p1}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    return-void
.end method


# virtual methods
.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getBitmapOut()Landroid/graphics/Bitmap;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;->bitmapOut:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "bitmapOut"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getHardwareRenderer()Landroid/graphics/HardwareRenderer;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;->hardwareRenderer:Landroid/graphics/HardwareRenderer;

    return-object p0
.end method

.method public final getImageReader()Landroid/media/ImageReader;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;->imageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public final getRenderNode()Landroid/graphics/RenderNode;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;->renderNode:Landroid/graphics/RenderNode;

    return-object p0
.end method

.method public final setBitmapOut(Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/miui/home/library/rs/RenderEffectImageProcessor$Params;->bitmapOut:Landroid/graphics/Bitmap;

    return-void
.end method
