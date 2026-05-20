.class public Lcom/miui/maml/elements/GraphicsElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "GraphicsElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;,
        Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;,
        Lcom/miui/maml/elements/GraphicsElement$Callbacks;
    }
.end annotation


# static fields
.field public static final LINEAR_GRADIENT:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "MAML_Graphics"

.field public static final RADIAL_GRADIENT:I = 0x2

.field public static final TAG_NAME:Ljava/lang/String; = "Graphics"


# instance fields
.field private mAutoScale:Z

.field private mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCanvasBounds:Landroid/graphics/Rect;

.field private mCurrentX:F

.field private mCurrentY:F

.field protected mFillPaint:Landroid/graphics/Paint;

.field private mInitRawHeight:F

.field private mInitRawWidth:F

.field private mLastAlpha:I

.field private mMode:Landroid/graphics/PorterDuff$Mode;

.field private mPath:Landroid/graphics/Path;

.field private mRenderListener:Lcom/miui/maml/elements/FunctionElement;

.field protected mStrokePaint:Landroid/graphics/Paint;

.field private mXferMode:Landroid/graphics/PorterDuffXfermode;

.field private mXfermodeNumExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 100
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    .line 104
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 107
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 114
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    .line 115
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    const/4 p2, 0x1

    .line 118
    iput-boolean p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mAutoScale:Z

    const-string p2, "OnDraw"

    .line 124
    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 126
    new-instance v0, Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    invoke-direct {v0, p2, p0}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p2

    const-string v0, "xfermodeNum"

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    const-string p2, "xfermode"

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 130
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    invoke-static {p2}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    .line 132
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 133
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 134
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_1
    const-string p2, "autoScale"

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 138
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mAutoScale:Z

    :cond_2
    return-void
.end method

.method private getGraphicsShader(I[I[FLjava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;
    .locals 9

    .line 364
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    if-ltz p6, :cond_0

    .line 365
    invoke-static {}, Landroid/graphics/Shader$TileMode;->values()[Landroid/graphics/Shader$TileMode;

    move-result-object v1

    array-length v1, v1

    if-ge p6, v1, :cond_0

    .line 366
    invoke-static {}, Landroid/graphics/Shader$TileMode;->values()[Landroid/graphics/Shader$TileMode;

    move-result-object v0

    aget-object v0, v0, p6

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p6

    invoke-virtual {p6, p5}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p6

    const/4 v8, 0x0

    if-nez p6, :cond_1

    .line 373
    new-instance p6, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;

    invoke-direct {p6, v8}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;-><init>(Lcom/miui/maml/elements/GraphicsElement$1;)V

    const/4 v1, 0x1

    .line 375
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 378
    :goto_0
    instance-of p5, p6, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;

    if-eqz p5, :cond_4

    .line 379
    check-cast p6, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;

    if-nez v1, :cond_2

    move-object v1, p0

    move-object v2, p6

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v0

    .line 381
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/elements/GraphicsElement;->isShaderParmsChanged(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;I[I[FLjava/lang/String;Landroid/graphics/Shader$TileMode;)Z

    move-result v1

    :cond_2
    move p5, v1

    if-eqz p5, :cond_3

    move-object v1, p0

    move-object v2, p6

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v0

    .line 383
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/elements/GraphicsElement;->resetShader(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;I[I[FLjava/lang/String;Landroid/graphics/Shader$TileMode;)Z

    move-result p2

    if-nez p2, :cond_3

    return-object v8

    .line 386
    :cond_3
    invoke-direct {p0, p5, p6, p1, p4}, Lcom/miui/maml/elements/GraphicsElement;->resetMatrixIfNecessary(ZLcom/miui/maml/elements/GraphicsElement$GraphicsShader;ILjava/lang/String;)V

    return-object p6

    :cond_4
    return-object v8
.end method

.method private isShaderParmsChanged(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;I[I[FLjava/lang/String;Landroid/graphics/Shader$TileMode;)Z
    .locals 1

    .line 340
    iget-object p0, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    const/4 v0, 0x1

    if-eqz p0, :cond_5

    .line 341
    invoke-static {p1}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$100(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;)I

    move-result p0

    if-ne p2, p0, :cond_5

    array-length p0, p3

    iget-object p2, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mColors:[I

    array-length p2, p2

    if-ne p0, p2, :cond_5

    if-eqz p4, :cond_0

    iget-object p0, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    if-nez p0, :cond_1

    :cond_0
    if-nez p4, :cond_5

    iget-object p0, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    if-nez p0, :cond_5

    .line 344
    :cond_1
    invoke-static {p1}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$200(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;)Landroid/graphics/Shader$TileMode;

    move-result-object p0

    if-ne p6, p0, :cond_5

    .line 345
    invoke-static {p1}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$000(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x0

    move p2, p0

    .line 347
    :goto_0
    array-length p5, p3

    if-ge p2, p5, :cond_4

    .line 348
    iget-object p5, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mColors:[I

    aget p5, p5, p2

    aget p6, p3, p2

    if-eq p5, p6, :cond_2

    return v0

    :cond_2
    if-eqz p4, :cond_3

    .line 351
    iget-object p5, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    aget p5, p5, p2

    aget p6, p4, p2

    cmpl-float p5, p5, p6

    if-eqz p5, :cond_3

    return v0

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    return p0

    :cond_5
    return v0
.end method

.method private isValid()Z
    .locals 2

    .line 273
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const-string p0, "MAML_Graphics"

    const-string v0, "Call maml graphics api not in onDraw callback"

    .line 274
    invoke-static {p0, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private resetMatrixIfNecessary(ZLcom/miui/maml/elements/GraphicsElement$GraphicsShader;ILjava/lang/String;)V
    .locals 6

    .line 316
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 317
    instance-of p4, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;

    if-eqz p4, :cond_3

    iget-object p4, p2, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    if-eqz p4, :cond_3

    .line 320
    check-cast p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;

    if-nez p1, :cond_0

    .line 321
    iget-boolean p1, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mChanged:Z

    if-eqz p1, :cond_3

    .line 323
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Matrix;->reset()V

    const/4 p1, 0x0

    const/4 p4, 0x1

    if-ne p3, p4, :cond_1

    const/4 p3, 0x4

    new-array v1, p3, [F

    .line 325
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 328
    iget-object p3, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aget v1, p3, p1

    neg-float v1, v1

    aget p3, p3, p4

    neg-float p3, p3

    invoke-virtual {p0, v1, p3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 329
    iget-object p3, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aget v0, p3, v0

    const/4 v1, 0x3

    aget p3, p3, v1

    neg-float p3, p3

    invoke-virtual {p0, v0, p3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 330
    iget-object p3, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aget v0, p3, p1

    aget p3, p3, p4

    invoke-virtual {p0, v0, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 332
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mChanged:Z

    .line 333
    iget-object p1, p2, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    invoke-virtual {p1, p0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private resetShader(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;I[I[FLjava/lang/String;Landroid/graphics/Shader$TileMode;)Z
    .locals 9

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    .line 293
    new-instance v8, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, v8

    move-object v5, p3

    move-object v6, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v8, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 296
    new-instance v0, Landroid/graphics/RadialGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v1, v0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    .line 302
    :goto_0
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    iput-object p3, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mColors:[I

    if-eqz p4, :cond_1

    .line 304
    invoke-virtual {p4}, [F->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [F

    iput-object p3, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 306
    iput-object p3, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    .line 308
    :goto_1
    invoke-static {p1, p5}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$002(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;Ljava/lang/String;)Ljava/lang/String;

    .line 309
    invoke-static {p1, p2}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$102(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;I)I

    .line 310
    invoke-static {p1, p6}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$202(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;Landroid/graphics/Shader$TileMode;)Landroid/graphics/Shader$TileMode;

    return p0

    .line 299
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "wrong shader type "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MAML_Graphics"

    invoke-static {p1, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private setColorFilterInternal(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 287
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method


# virtual methods
.method public beginFill(I)V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 282
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public beginGradientFill(I[I[FLjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 436
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    invoke-direct/range {p0 .. p6}, Lcom/miui/maml/elements/GraphicsElement;->getGraphicsShader(I[I[FLjava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 439
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    iget-object p1, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    return-void
.end method

.method public createOrUpdateGradientBox(FFFFLjava/lang/String;)V
    .locals 5

    .line 402
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 403
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;-><init>(Lcom/miui/maml/elements/GraphicsElement$1;)V

    .line 406
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p0

    invoke-virtual {p0, p5, v0}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    :cond_0
    instance-of p0, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;

    if-eqz p0, :cond_2

    .line 409
    check-cast v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;

    .line 410
    iget-object p0, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    const/4 p5, 0x0

    aget v1, p0, p5

    cmpl-float v1, v1, p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v1, :cond_1

    aget v1, p0, v4

    cmpl-float v1, v1, p2

    if-nez v1, :cond_1

    aget v1, p0, v3

    cmpl-float v1, v1, p3

    if-nez v1, :cond_1

    aget v1, p0, v2

    cmpl-float v1, v1, p4

    if-eqz v1, :cond_2

    .line 415
    :cond_1
    aput p1, p0, p5

    .line 416
    aput p2, p0, v4

    .line 417
    aput p3, p0, v3

    .line 418
    aput p4, p0, v2

    .line 419
    iput-boolean v4, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mChanged:Z

    :cond_2
    return-void
.end method

.method public cubicCurveTo(FFFFFF)V
    .locals 11

    move-object v0, p0

    .line 548
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 550
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    iget v2, v0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    iget v3, v0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 551
    iget-object v4, v0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 552
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, v0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move/from16 v1, p5

    .line 553
    iput v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    move/from16 v1, p6

    .line 554
    iput v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    :cond_0
    return-void
.end method

.method public curveTo(FFFF)V
    .locals 3

    .line 528
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 530
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    iget v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 531
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 532
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 533
    iput p3, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 534
    iput p4, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    :cond_0
    return-void
.end method

.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 6

    .line 196
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v0

    float-to-int v0, v0

    .line 197
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v1

    float-to-int v1, v1

    .line 198
    iget-object v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 199
    iget-object v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    .line 200
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v2

    if-lez v3, :cond_0

    if-ge v3, v0, :cond_0

    move v0, v3

    :cond_0
    if-lez v5, :cond_1

    if-ge v5, v1, :cond_1

    move v1, v5

    .line 207
    :cond_1
    invoke-virtual {p1, v4, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 215
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getRenderMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 216
    :try_start_0
    iput v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 217
    iput v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    .line 218
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 219
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    if-eqz p1, :cond_2

    .line 220
    invoke-virtual {p1}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->perform()V

    .line 222
    :cond_2
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mRenderListener:Lcom/miui/maml/elements/FunctionElement;

    if-eqz p1, :cond_3

    .line 223
    invoke-virtual {p1}, Lcom/miui/maml/elements/FunctionElement;->perform()V

    :cond_3
    const/4 p1, 0x0

    .line 225
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 226
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected doTick(J)V
    .locals 0

    .line 165
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 166
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    if-eqz p1, :cond_1

    .line 170
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide p1

    double-to-int p1, p1

    invoke-static {p1}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    .line 171
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    if-eq p1, p2, :cond_1

    .line 172
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    .line 173
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 174
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 175
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 178
    :cond_1
    iget p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mLastAlpha:I

    iget p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    if-eq p1, p2, :cond_2

    .line 179
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 180
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 181
    iget p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    iput p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mLastAlpha:I

    .line 183
    :cond_2
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    if-eqz p1, :cond_3

    .line 184
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, p1}, Lcom/miui/maml/elements/GraphicsElement;->setColorFilterInternal(Landroid/graphics/ColorFilter;)V

    :cond_3
    return-void
.end method

.method public drawCircle(FFF)V
    .locals 3

    .line 559
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 561
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr p3, v1

    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public drawEllipse(FFFF)V
    .locals 9

    .line 569
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-ltz v1, :cond_1

    cmpg-float v1, p4, v0

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p4, v1

    sub-float v8, p2, p4

    add-float/2addr p2, p4

    div-float/2addr p3, v1

    sub-float p4, p1, p3

    add-float/2addr p1, p3

    .line 577
    iget-object v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    move v3, p4

    move v4, v8

    move v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 578
    iget-object p3, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p3

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    .line 580
    iget-object v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    div-float/2addr p3, v1

    sub-float v3, p4, p3

    sub-float v4, v8, p3

    add-float v5, p1, p3

    add-float v6, p2, p3

    iget-object v7, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public drawRect(FFFF)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 590
    invoke-virtual/range {v0 .. v6}, Lcom/miui/maml/elements/GraphicsElement;->drawRoundRect(FFFFFF)V

    return-void
.end method

.method public drawRoundRect(FFFFFF)V
    .locals 14

    move-object v0, p0

    move v9, p1

    move/from16 v10, p2

    .line 594
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v11, 0x0

    cmpg-float v1, p3, v11

    if-ltz v1, :cond_3

    cmpg-float v1, p4, v11

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    add-float v12, v10, p4

    add-float v13, v9, p3

    .line 602
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget-object v8, v0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    move v2, p1

    move/from16 v3, p2

    move v4, v13

    move v5, v12

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 603
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    cmpl-float v2, v1, v11

    if-lez v2, :cond_3

    .line 605
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    .line 607
    invoke-virtual {v2, p1, v10, v13, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 608
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    neg-float v4, v1

    .line 609
    invoke-virtual {v2, v4, v4}, Landroid/graphics/RectF;->inset(FF)V

    cmpl-float v4, v3, v11

    if-lez v4, :cond_1

    add-float/2addr v3, v1

    :cond_1
    cmpg-float v1, v3, v11

    if-gtz v1, :cond_2

    .line 614
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, v0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 616
    :cond_2
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, v0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    nop

    :cond_3
    :goto_0
    return-void
.end method

.method public finish()V
    .locals 0

    .line 243
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->finish()V

    .line 244
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    if-eqz p0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->finish()V

    :cond_0
    return-void
.end method

.method public getScaleX()F
    .locals 4

    .line 145
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidthRaw()F

    move-result v0

    .line 146
    iget-boolean v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mAutoScale:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mInitRawWidth:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    div-float/2addr v0, v1

    .line 147
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleX()F

    move-result p0

    mul-float/2addr v0, p0

    return v0

    .line 149
    :cond_0
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleX()F

    move-result p0

    return p0
.end method

.method public getScaleY()F
    .locals 4

    .line 155
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeightRaw()F

    move-result v0

    .line 156
    iget-boolean v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mAutoScale:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mInitRawHeight:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    div-float/2addr v0, v1

    .line 157
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleY()F

    move-result p0

    mul-float/2addr v0, p0

    return v0

    .line 159
    :cond_0
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleY()F

    move-result p0

    return p0
.end method

.method public init()V
    .locals 2

    .line 251
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->init()V

    .line 252
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidthRaw()F

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mInitRawWidth:F

    .line 253
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeightRaw()F

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mInitRawHeight:F

    .line 254
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 255
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 256
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 257
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 258
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->init()V

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->evaluateAlpha()I

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mLastAlpha:I

    return-void
.end method

.method public lineGradientStyle(I[I[FLjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 456
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    invoke-direct/range {p0 .. p6}, Lcom/miui/maml/elements/GraphicsElement;->getGraphicsShader(I[I[FLjava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 459
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    iget-object p1, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    return-void
.end method

.method public lineStyle(FIIIF)V
    .locals 3

    .line 474
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    if-ltz p3, :cond_0

    .line 475
    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object v1

    array-length v1, v1

    if-ge p3, v1, :cond_0

    .line 476
    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object v0

    aget-object v0, v0, p3

    .line 478
    :cond_0
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    if-ltz p4, :cond_1

    .line 479
    invoke-static {}, Landroid/graphics/Paint$Join;->values()[Landroid/graphics/Paint$Join;

    move-result-object v2

    array-length v2, v2

    if-ge p4, v2, :cond_1

    .line 480
    invoke-static {}, Landroid/graphics/Paint$Join;->values()[Landroid/graphics/Paint$Join;

    move-result-object p4

    aget-object v1, p4, p3

    .line 483
    :cond_1
    iget-object p3, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 p3, 0x0

    cmpl-float p4, p1, p3

    if-ltz p4, :cond_2

    .line 485
    iget-object p4, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 487
    :cond_2
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 488
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 489
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    cmpl-float p1, p5, p3

    if-lez p1, :cond_3

    .line 491
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    :cond_3
    return-void
.end method

.method public lineTo(FF)V
    .locals 7

    .line 501
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    iget v3, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    iget-object v6, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 503
    iput p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 504
    iput p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    :cond_0
    return-void
.end method

.method public moveTo(FF)V
    .locals 1

    .line 514
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iput p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 516
    iput p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    .line 266
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->pause()V

    .line 267
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    if-eqz p0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    .line 235
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->resume()V

    .line 236
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    if-eqz p0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->resume()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 190
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 191
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/GraphicsElement;->setColorFilterInternal(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setRenderListener(Lcom/miui/maml/elements/FunctionElement;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mRenderListener:Lcom/miui/maml/elements/FunctionElement;

    return-void
.end method
