.class public Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;
.super Ljava/lang/Object;
.source "HyperPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/HyperPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewBounds"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds$CornerProperty;,
        Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds$ArrowRotationProperty;
    }
.end annotation


# static fields
.field private static final sCloseConfig:Lmiuix/animation/base/AnimConfig;

.field private static final sOpenConfig:Lmiuix/animation/base/AnimConfig;


# instance fields
.field private mArrowCloseConfig:Lmiuix/animation/base/AnimConfig;

.field private mArrowOpenConfig:Lmiuix/animation/base/AnimConfig;

.field private mArrowRotation:F

.field private final mArrowRotationProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;",
            ">;"
        }
    .end annotation
.end field

.field private final mCornerProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;",
            ">;"
        }
    .end annotation
.end field

.field private mCornerRadius:F

.field private mHeaderArrowView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasureWidth:I

.field private mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 746
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    sput-object v0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->sOpenConfig:Lmiuix/animation/base/AnimConfig;

    .line 747
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, -0x2

    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sput-object v0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->sCloseConfig:Lmiuix/animation/base/AnimConfig;

    return-void

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 4

    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 741
    iput v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mMeasureWidth:I

    const/4 v0, 0x0

    .line 742
    iput v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mCornerRadius:F

    .line 743
    iput v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mArrowRotation:F

    .line 744
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mArrowOpenConfig:Lmiuix/animation/base/AnimConfig;

    .line 745
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mArrowCloseConfig:Lmiuix/animation/base/AnimConfig;

    .line 751
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mView:Ljava/lang/ref/WeakReference;

    .line 752
    new-instance p1, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds$ArrowRotationProperty;

    invoke-direct {p1}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds$ArrowRotationProperty;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mArrowRotationProperty:Lmiuix/animation/property/FloatProperty;

    .line 753
    new-instance p1, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds$CornerProperty;

    invoke-direct {p1}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds$CornerProperty;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mCornerProperty:Lmiuix/animation/property/FloatProperty;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method static synthetic access$2300(Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;)Lmiuix/animation/property/FloatProperty;
    .locals 0

    .line 736
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mCornerProperty:Lmiuix/animation/property/FloatProperty;

    return-object p0
.end method

.method static synthetic access$2400()Lmiuix/animation/base/AnimConfig;
    .locals 1

    .line 736
    sget-object v0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->sCloseConfig:Lmiuix/animation/base/AnimConfig;

    return-object v0
.end method

.method static synthetic access$2500(Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;)Lmiuix/animation/property/FloatProperty;
    .locals 0

    .line 736
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mArrowRotationProperty:Lmiuix/animation/property/FloatProperty;

    return-object p0
.end method

.method static synthetic access$2600(Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;)Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 736
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mArrowCloseConfig:Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method static synthetic access$3200()Lmiuix/animation/base/AnimConfig;
    .locals 1

    .line 736
    sget-object v0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->sOpenConfig:Lmiuix/animation/base/AnimConfig;

    return-object v0
.end method

.method static synthetic access$3300(Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;)Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 736
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mArrowOpenConfig:Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method


# virtual methods
.method public getArrowRotation()F
    .locals 0

    .line 794
    iget p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mArrowRotation:F

    return p0
.end method

.method public getCornerRadius()F
    .locals 0

    .line 774
    iget p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mCornerRadius:F

    return p0
.end method

.method public setArrowRotation(F)V
    .locals 3

    .line 778
    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mArrowRotation:F

    .line 779
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mHeaderArrowView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 780
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 783
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lmiuix/appcompat/R$id;->tag_secondary_popup_menu_item_head:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 784
    sget v1, Lmiuix/appcompat/R$id;->arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 785
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mHeaderArrowView:Ljava/lang/ref/WeakReference;

    .line 786
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 787
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 789
    :cond_2
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mHeaderArrowView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 790
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 2

    .line 761
    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mCornerRadius:F

    .line 762
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 763
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 764
    instance-of v1, p1, Lmiuix/smooth/SmoothFrameLayout2;

    if-eqz v1, :cond_0

    .line 765
    check-cast p1, Lmiuix/smooth/SmoothFrameLayout2;

    .line 766
    iget v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mCornerRadius:F

    invoke-virtual {p1, v1}, Lmiuix/smooth/SmoothFrameLayout2;->setCornerRadius(F)V

    .line 768
    :cond_0
    instance-of p1, v0, Lmiuix/smooth/SmoothContainerDrawable2;

    if-eqz p1, :cond_1

    .line 769
    check-cast v0, Lmiuix/smooth/SmoothContainerDrawable2;

    iget p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mCornerRadius:F

    invoke-virtual {v0, p0}, Lmiuix/smooth/SmoothContainerDrawable2;->setCornerRadius(F)V

    :cond_1
    return-void
.end method

.method public setMeasureWidth(I)V
    .locals 0

    .line 757
    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mMeasureWidth:I

    return-void
.end method

.method public updateLeftTopRightBottom(IIIII)V
    .locals 3

    .line 799
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 800
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 802
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 803
    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr p3, p1

    .line 804
    iput p3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr p4, p2

    .line 805
    iput p4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const p1, 0x102000a

    .line 806
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    .line 807
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    if-ge p2, p4, :cond_1

    .line 808
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 809
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 810
    invoke-virtual {p4}, Landroid/view/View;->getId()I

    move-result p4

    sget v2, Lmiuix/appcompat/R$id;->tag_secondary_popup_menu_item_head:I

    if-eq p4, v2, :cond_0

    .line 811
    iget p4, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mMeasureWidth:I

    iput p4, v1, Landroid/widget/AbsListView$LayoutParams;->width:I

    goto :goto_1

    .line 813
    :cond_0
    iput p3, v1, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 814
    iput p5, v1, Landroid/widget/AbsListView$LayoutParams;->height:I

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 817
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
