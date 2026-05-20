.class public Lcom/miui/home/launcher/allapps/category/HeaderElevationController;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "HeaderElevationController.java"


# instance fields
.field private mHeader:Landroid/view/View;

.field private final mMaxElevation:F

.field private final mOffset:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 25
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005d

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->mMaxElevation:F

    .line 27
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->mOffset:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/category/HeaderElevationController;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->mOffset:I

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/allapps/category/HeaderElevationController;)Landroid/view/View;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->mHeader:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public setupView(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)V
    .locals 0

    .line 31
    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->mHeader:Landroid/view/View;

    const/4 p1, 0x0

    .line 32
    invoke-virtual {p2, p1}, Landroid/view/View;->setElevation(F)V

    .line 33
    new-instance p1, Lcom/miui/home/launcher/allapps/category/HeaderElevationController$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/allapps/category/HeaderElevationController$1;-><init>(Lcom/miui/home/launcher/allapps/category/HeaderElevationController;)V

    .line 39
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->mHeader:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method
