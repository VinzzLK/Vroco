.class public Lcom/miui/home/launcher/anim/EditingEntryBackgroundLineController;
.super Ljava/lang/Object;
.source "EditingEntryBackgroundLineController.java"


# instance fields
.field private mBgRectF:Landroid/graphics/RectF;

.field private mBgdPaint:Landroid/graphics/Paint;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/miui/home/launcher/anim/EditingEntryBackgroundLineController;->mTargetView:Landroid/view/View;

    .line 27
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/EditingEntryBackgroundLineController;->initParam()V

    return-void
.end method

.method private checkTargetViewIsNull()V
    .locals 1

    .line 49
    iget-object p0, p0, Lcom/miui/home/launcher/anim/EditingEntryBackgroundLineController;->mTargetView:Landroid/view/View;

    const-string v0, "CommonBackgroundAnim must has a target view!"

    .line 50
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private initParam()V
    .locals 1

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/anim/EditingEntryBackgroundLineController;->mRectTemp:Landroid/graphics/Rect;

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/anim/EditingEntryBackgroundLineController;->mBgRectF:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;FI)V
    .locals 3

    .line 40
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/EditingEntryBackgroundLineController;->checkTargetViewIsNull()V

    .line 41
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditingEntryBackgroundLineController;->mTargetView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/anim/EditingEntryBackgroundLineController;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 42
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditingEntryBackgroundLineController;->mBgRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/miui/home/launcher/anim/EditingEntryBackgroundLineController;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 43
    iget-object v1, p0, Lcom/miui/home/launcher/anim/EditingEntryBackgroundLineController;->mBgRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/miui/home/launcher/anim/EditingEntryBackgroundLineController;->mTargetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float p3, p3

    add-float/2addr v1, p3

    float-to-int p3, v1

    .line 44
    iget-object v1, p0, Lcom/miui/home/launcher/anim/EditingEntryBackgroundLineController;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v1, p2

    int-to-float p2, v0

    int-to-float p3, p3

    .line 45
    iget-object p0, p0, Lcom/miui/home/launcher/anim/EditingEntryBackgroundLineController;->mBgdPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setBgdPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/miui/home/launcher/anim/EditingEntryBackgroundLineController;->mBgdPaint:Landroid/graphics/Paint;

    return-void
.end method
