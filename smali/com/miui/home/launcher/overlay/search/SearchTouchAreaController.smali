.class public Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;
.super Ljava/lang/Object;
.source "SearchTouchAreaController.java"


# instance fields
.field private mGlobalSearchBottom:I

.field private final mStatusBarSwipeBottomSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTouchSlopSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0_8cJ1BeKtaVa4VcVVdX40DppV4()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;->lambda$new$0()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$jWDup44LwikZDX_AqxBO7JpNuLc()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;->lambda$new$1()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;->mGlobalSearchBottom:I

    .line 24
    sget-object v0, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController$$ExternalSyntheticLambda0;

    iput-object v0, p0, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;->mStatusBarSwipeBottomSupplier:Ljava/util/function/Supplier;

    .line 25
    sget-object v0, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController$$ExternalSyntheticLambda1;

    iput-object v0, p0, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;->mTouchSlopSupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;->mGlobalSearchBottom:I

    return p0
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;I)I
    .locals 0

    .line 17
    iput p1, p0, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;->mGlobalSearchBottom:I

    return p1
.end method

.method private static synthetic lambda$new$0()Ljava/lang/Integer;
    .locals 2

    .line 24
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$new$1()Ljava/lang/Integer;
    .locals 1

    .line 25
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getTouchSlop()F
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;->mTouchSlopSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public isInPullDownToSearchZone(FFLandroid/view/MotionEvent;Landroid/graphics/PointF;)Z
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;->mTouchSlopSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, v1, :cond_0

    iget p1, p4, Landroid/graphics/PointF;->y:F

    iget-object p2, p0, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;->mStatusBarSwipeBottomSupplier:Ljava/util/function/Supplier;

    .line 34
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    iget p1, p4, Landroid/graphics/PointF;->y:F

    iget p0, p0, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;->mGlobalSearchBottom:I

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isInPullDownToSearchZoneOverlay(FFLandroid/view/MotionEvent;Landroid/graphics/PointF;)Z
    .locals 0

    .line 42
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    const/4 p2, 0x1

    if-lez p1, :cond_0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, p2, :cond_0

    iget p1, p4, Landroid/graphics/PointF;->y:F

    iget-object p3, p0, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;->mStatusBarSwipeBottomSupplier:Ljava/util/function/Supplier;

    .line 43
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_0

    iget p1, p4, Landroid/graphics/PointF;->y:F

    iget p0, p0, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;->mGlobalSearchBottom:I

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public setTouchArea(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a0439

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController$1;-><init>(Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
