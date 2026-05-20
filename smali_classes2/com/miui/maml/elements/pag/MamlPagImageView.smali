.class public Lcom/miui/maml/elements/pag/MamlPagImageView;
.super Lorg/libpag/PAGImageView;
.source "MamlPagImageView.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MamlPagImageView"


# instance fields
.field private mRoot:Lcom/miui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lorg/libpag/PAGImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lorg/libpag/PAGImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lorg/libpag/PAGImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private renderCurrentFrame(Landroid/graphics/Canvas;)V
    .locals 2

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 49
    invoke-virtual {p0}, Lcom/miui/maml/elements/pag/MamlPagImageView;->currentImage()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const-string p0, "MamlPagImageView"

    const-string v0, "currentImage is null/isRecycled"

    .line 57
    invoke-static {p0, v0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 36
    invoke-super {p0, p1}, Lorg/libpag/PAGImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 38
    iget-object v0, p0, Lcom/miui/maml/elements/pag/MamlPagImageView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string v1, "drawPagImageView"

    invoke-virtual {v0, v1}, Lcom/miui/maml/data/Variables;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 40
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, v2, v4

    if-gez v0, :cond_0

    const-string v0, "MamlPagImageView"

    .line 41
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/pag/MamlPagImageView;->renderCurrentFrame(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public setScreenElementRoot(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/miui/maml/elements/pag/MamlPagImageView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    return-void
.end method
