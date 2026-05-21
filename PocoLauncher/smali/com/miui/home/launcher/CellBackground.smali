.class public Lcom/miui/home/launcher/CellBackground;
.super Landroid/widget/ImageView;
.source "CellBackground.java"

# interfaces
.implements Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;


# instance fields
.field private isInDock:Z

.field private mAlphaInAnimator:Landroid/animation/ObjectAnimator;

.field private mAlphaOutAnimator:Landroid/animation/ObjectAnimator;

.field private mAutoLayoutAnimatorAnimateDelegate:Lcom/miui/home/launcher/AutoLayoutAnimation$AutoLayoutAnimatorAnimateDelegate;

.field private mIsAutoLayoutAnimating:Z

.field private mIsBind:Z

.field private mIsIconCellBackground:Z

.field private mIsUseSmoothTransAnimation:Z

.field private mSkipNextAutoLayoutAnimation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/CellBackground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellBackground;->mSkipNextAutoLayoutAnimation:Z

    .line 21
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellBackground;->mIsIconCellBackground:Z

    .line 25
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellBackground;->mIsUseSmoothTransAnimation:Z

    .line 26
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellBackground;->mIsBind:Z

    .line 27
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellBackground;->isInDock:Z

    .line 112
    new-instance p1, Landroid/animation/ObjectAnimator;

    invoke-direct {p1}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaOutAnimator:Landroid/animation/ObjectAnimator;

    .line 113
    new-instance p1, Landroid/animation/ObjectAnimator;

    invoke-direct {p1}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaInAnimator:Landroid/animation/ObjectAnimator;

    .line 115
    new-instance p1, Lcom/miui/home/launcher/CellBackground$2;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/CellBackground$2;-><init>(Lcom/miui/home/launcher/CellBackground;)V

    iput-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAutoLayoutAnimatorAnimateDelegate:Lcom/miui/home/launcher/AutoLayoutAnimation$AutoLayoutAnimatorAnimateDelegate;

    .line 35
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaOutAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 36
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaOutAnimator:Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/miui/home/launcher/common/Ease$Sine;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaOutAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 38
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 39
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaInAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 40
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 41
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaInAnimator:Landroid/animation/ObjectAnimator;

    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 42
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 43
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaInAnimator:Landroid/animation/ObjectAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 44
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaOutAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/miui/home/launcher/CellBackground$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/CellBackground$1;-><init>(Lcom/miui/home/launcher/CellBackground;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/CellBackground;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/miui/home/launcher/CellBackground;->isInDock:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/CellBackground;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaInAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/CellBackground;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaOutAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method


# virtual methods
.method public bindDragObject(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 80
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/DesktopIcon;

    iput-boolean v0, p0, Lcom/miui/home/launcher/CellBackground;->mIsIconCellBackground:Z

    .line 81
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isDragingOneObjectWhichOccupiedCellMoreThan1X1()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/CellBackground;->mIsUseSmoothTransAnimation:Z

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellBackground;->mIsBind:Z

    return-void
.end method

.method public getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSkipNextAutoLayoutAnimation()Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/miui/home/launcher/CellBackground;->mSkipNextAutoLayoutAnimation:Z

    return p0
.end method

.method public isAutoLayoutAnimating()Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/miui/home/launcher/CellBackground;->mIsAutoLayoutAnimating:Z

    return p0
.end method

.method public isBind()Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/miui/home/launcher/CellBackground;->mIsBind:Z

    return p0
.end method

.method public isEnableAutoLayoutAnimation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setCellTranslate(I)V
    .locals 2

    .line 142
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 143
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 144
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 145
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 146
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setEnableAutoLayoutAnimation(Z)V
    .locals 0

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 7

    .line 129
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellBackground;->mIsUseSmoothTransAnimation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellBackground;->mAutoLayoutAnimatorAnimateDelegate:Lcom/miui/home/launcher/AutoLayoutAnimation$AutoLayoutAnimatorAnimateDelegate;

    :goto_0
    move-object v6, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIIILcom/miui/home/launcher/AutoLayoutAnimation$AutoLayoutAnimatorAnimateDelegate;)Z

    move-result p0

    return p0
.end method

.method public setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setIgnoreAnimationForOnce(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setIgnoreAnimationForOnce(Z)V

    return-void
.end method

.method public setImageTranslation(II)V
    .locals 1

    .line 150
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 151
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    int-to-float p2, p2

    .line 152
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 153
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setInDock(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellBackground;->isInDock:Z

    return-void
.end method

.method public setIsAutoLayoutAnimating(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellBackground;->mIsAutoLayoutAnimating:Z

    return-void
.end method

.method public setSkipNextAutoLayoutAnimation(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellBackground;->mSkipNextAutoLayoutAnimation:Z

    return-void
.end method

.method public superSetFrame(IIII)Z
    .locals 0

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p0

    return p0
.end method

.method public unbindDragObject(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellBackground;->mIsBind:Z

    return-void
.end method
