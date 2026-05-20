.class public Lcom/miui/home/launcher/allapps/hideapps/ClickShadowView;
.super Landroid/view/View;
.source "ClickShadowView.java"


# static fields
.field public static final CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mShadowOffset:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private final mShadowPadding:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/miui/home/launcher/allapps/hideapps/ClickShadowView$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/hideapps/ClickShadowView$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/allapps/hideapps/ClickShadowView;->CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x10000

    .line 65
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070094

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/allapps/hideapps/ClickShadowView;->mShadowPadding:F

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700b0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/allapps/hideapps/ClickShadowView;->mShadowOffset:F

    return-void
.end method


# virtual methods
.method public getExtraSize()I
    .locals 1

    .line 75
    iget p0, p0, Lcom/miui/home/launcher/allapps/hideapps/ClickShadowView;->mShadowPadding:F

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/ClickShadowView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 95
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/ClickShadowView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/ClickShadowView;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/miui/home/launcher/allapps/hideapps/ClickShadowView;->mShadowOffset:F

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
