.class public Lcom/miui/home/launcher/WorkspaceThumbnailView;
.super Lcom/miui/home/launcher/EditModeThumbnailView;
.source "WorkspaceThumbnailView.java"

# interfaces
.implements Lcom/miui/home/launcher/DropTarget;
.implements Lcom/miui/home/launcher/DragSource;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/miui/home/launcher/DragController$DragListener;
.implements Lcom/miui/home/launcher/GridConfig$OnGridConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;
    }
.end annotation


# instance fields
.field private final THUMBNAIL_CLICK_HANDLER:Landroid/view/View$OnClickListener;

.field private mBlockNextSnap:Z

.field private mCellBackground:Lcom/miui/home/launcher/CellBackground;

.field private mCoords:[F

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mDraggedUpPos:I

.field private mDraggingView:Landroid/view/View;

.field private final mEditModeAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private mFixedGap:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsDraging:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mPlaceHolderIndex:I

.field private mRect:Landroid/graphics/Rect;

.field private mScreenIdMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShow:Z

.field private mThumbnailHeight:I

.field private final mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

.field private mThumbnailNumInOneScreen:I

.field private mThumbnailWidth:I

.field private mVisibleStyle:Lmiuix/animation/IVisibleStyle;

.field private mWorkspace:Lcom/miui/home/launcher/Workspace;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/EditModeThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 67
    iput p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggedUpPos:I

    .line 68
    iput p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mPlaceHolderIndex:I

    .line 70
    new-instance p2, Landroid/util/LongSparseArray;

    invoke-direct {p2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mScreenIdMap:Landroid/util/LongSparseArray;

    const/4 p2, 0x0

    .line 75
    iput p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailHeight:I

    .line 76
    iput p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailWidth:I

    .line 77
    iput p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mFixedGap:I

    .line 85
    new-instance p3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const/4 v2, -0x2

    invoke-virtual {p3, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mEditModeAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 219
    new-instance p3, Lcom/miui/home/launcher/WorkspaceThumbnailView$1;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView$1;-><init>(Lcom/miui/home/launcher/WorkspaceThumbnailView;)V

    iput-object p3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->THUMBNAIL_CLICK_HANDLER:Landroid/view/View$OnClickListener;

    .line 331
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mRect:Landroid/graphics/Rect;

    new-array p3, v0, [F

    .line 332
    iput-object p3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCoords:[F

    .line 506
    iput-boolean p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mBlockNextSnap:Z

    .line 523
    new-instance p3, Lcom/miui/home/launcher/ThumbnailMeasureController;

    invoke-direct {p3}, Lcom/miui/home/launcher/ThumbnailMeasureController;-><init>()V

    iput-object p3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

    .line 576
    iput-boolean p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mShow:Z

    const-string p3, "layout_inflater"

    .line 106
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mInflater:Landroid/view/LayoutInflater;

    .line 107
    new-instance p3, Lcom/miui/home/launcher/CellBackground;

    invoke-direct {p3, p1}, Lcom/miui/home/launcher/CellBackground;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/16 p1, 0x26

    .line 108
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    const/16 p1, 0xa

    .line 109
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setScreenTransitionType(I)I

    .line 110
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ScreenView;->setScrollWholeScreen(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setFixed()V

    .line 112
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 113
    new-instance p2, Lcom/miui/home/launcher/WorkspaceThumbnailView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/WorkspaceThumbnailView;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/BaseActivity;->addOnGridConfigChangeListener(Lcom/miui/home/launcher/GridConfig$OnGridConfigChangeListener;)V

    const/4 p1, 0x7

    .line 114
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setScreenLayoutMode(I)V

    const/high16 p1, 0x40a00000    # 5.0f

    .line 115
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setOverScrollRatio(F)V

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3eb33333    # 0.35f
    .end array-data
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/WorkspaceThumbnailView;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/WorkspaceThumbnailView;)Lcom/miui/home/launcher/Workspace;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/WorkspaceThumbnailView;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mBlockNextSnap:Z

    return p0
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/WorkspaceThumbnailView;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mBlockNextSnap:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/WorkspaceThumbnailView;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->switchScreen()V

    return-void
.end method

.method private getFolme()Lmiuix/animation/IVisibleStyle;
    .locals 4

    .line 647
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mVisibleStyle:Lmiuix/animation/IVisibleStyle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    aput-object p0, v0, v1

    .line 648
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mVisibleStyle:Lmiuix/animation/IVisibleStyle;

    const-wide/16 v2, 0x64

    .line 650
    invoke-interface {v0, v2, v3}, Lmiuix/animation/IVisibleStyle;->setShowDelay(J)Lmiuix/animation/IVisibleStyle;

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mVisibleStyle:Lmiuix/animation/IVisibleStyle;

    .line 653
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorMarginBottom()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lmiuix/animation/IVisibleStyle;->setMove(II)Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    const v1, 0xf42a4

    iget-object v2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 654
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getBottomEntryHeight()I

    move-result v3

    sub-int/2addr v2, v3

    const v3, 0xf4240

    invoke-interface {v0, v1, v2, v3, v3}, Lmiuix/animation/IVisibleStyle;->setBound(IIII)Lmiuix/animation/IVisibleStyle;

    .line 655
    iget-object p0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mVisibleStyle:Lmiuix/animation/IVisibleStyle;

    return-object p0
.end method

.method private getThumbnailContainer(I)Lcom/miui/home/launcher/ThumbnailContainer;
    .locals 3

    .line 425
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 428
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ThumbnailContainer;

    if-eqz v0, :cond_1

    .line 429
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ThumbnailContainer;

    return-object p0

    :cond_1
    return-object v2
.end method

.method private getTouchedChildIndex(II)I
    .locals 1

    .line 309
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->getScreenIndexByPoint(II)I

    move-result p0

    return p0
.end method

.method private insertConvertView(Lcom/miui/home/launcher/CellScreen;I)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 179
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v1

    .line 181
    iget-object v3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d0186

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 182
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x2

    .line 183
    invoke-virtual {v0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    const v3, 0x7f0a03b6

    .line 184
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ThumbnailContainer;

    .line 186
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setBlur(Landroid/view/View;)V

    .line 188
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 189
    iget-object v4, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->THUMBNAIL_CLICK_HANDLER:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailWidth:I

    iget v6, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailHeight:I

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    new-array v4, v6, [Landroid/view/View;

    aput-object v0, v4, v5

    .line 194
    invoke-static {v4}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v4

    invoke-interface {v4}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v4

    invoke-interface {v4}, Lmiuix/animation/ITouchStyle;->clearTintColor()Lmiuix/animation/ITouchStyle;

    move-result-object v4

    new-array v7, v5, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v4, v3, v7}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 196
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 198
    iget v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailWidth:I

    iget v2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailHeight:I

    invoke-virtual {v3, p1, v1, v2, v0}, Lcom/miui/home/launcher/ThumbnailContainer;->setCellLayoutThumbnail(Lcom/miui/home/launcher/CellScreen;IILandroid/view/View;)V

    .line 200
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10013a

    new-array v2, v6, [Ljava/lang/Object;

    add-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 201
    iget-boolean p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mIsDraging:Z

    if-eqz p1, :cond_2

    .line 202
    invoke-virtual {v3, p1}, Lcom/miui/home/launcher/ThumbnailContainer;->setAlpha(Z)V

    .line 204
    :cond_2
    invoke-virtual {p0, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v0
.end method

.method private refreshScreenIdMap()V
    .locals 5

    .line 213
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mScreenIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    const/4 v0, 0x0

    .line 214
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mScreenIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetAllViews()V
    .locals 0

    .line 171
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->clearBlur()V

    .line 172
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method private resetView()V
    .locals 1

    const/4 v0, 0x0

    .line 640
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 641
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 642
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 643
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    return-void
.end method

.method private setBlur(Landroid/view/View;)V
    .locals 3

    .line 558
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0701e4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    const/4 v0, 0x1

    const/high16 v1, 0x42480000    # 50.0f

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, p0, v2}, Lcom/miui/home/launcher/common/BlurUtilities;->setEditBlurWithRadius(Landroid/view/View;ZFFZ)V

    return-void
.end method

.method private switchScreen()V
    .locals 3

    .line 292
    iget v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mPlaceHolderIndex:I

    iget v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggedUpPos:I

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    .line 293
    iput-boolean v2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mBlockNextSnap:Z

    .line 294
    iget-object v2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v1, v0}, Lcom/miui/home/launcher/Workspace;->changeTargetScreenOrder(II)V

    .line 295
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->reorderScreens()V

    .line 296
    invoke-direct {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->refreshScreenIdMap()V

    :cond_0
    return-void
.end method

.method private switchScreenWithFoldAnim()V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mPlaceHolderIndex:I

    new-instance v2, Lcom/miui/home/launcher/WorkspaceThumbnailView$2;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView$2;-><init>(Lcom/miui/home/launcher/WorkspaceThumbnailView;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->startFoldSwitchScreenAnim(ILcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;)V

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    .line 355
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public blockSnap()Z
    .locals 0

    .line 509
    iget-boolean p0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mBlockNextSnap:Z

    return p0
.end method

.method public clearBlur()V
    .locals 6

    .line 539
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 540
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 541
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x42480000    # 50.0f

    .line 542
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700f5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2, v0, v3, v4}, Lcom/miui/home/launcher/common/BlurUtilities;->setEditBlurWithRadius(Landroid/view/View;ZFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getContainerId()J
    .locals 2

    const-wide/16 v0, -0x6e

    return-wide v0
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 11

    .line 336
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggingView:Landroid/view/View;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 339
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 340
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getThumbnailContainer(I)Lcom/miui/home/launcher/ThumbnailContainer;

    move-result-object v3

    .line 341
    iget-object v4, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCoords:[F

    const/4 v5, 0x1

    invoke-static {v3, p0, v4, v5, v0}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    move-result v4

    .line 343
    iget-object v6, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCoords:[F

    aget v8, v7, v0

    float-to-int v8, v8

    aget v9, v7, v5

    float-to-int v9, v9

    aget v7, v7, v0

    .line 344
    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v4

    add-float/2addr v7, v10

    float-to-int v7, v7

    iget-object v10, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCoords:[F

    aget v5, v10, v5

    .line 345
    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v4

    add-float/2addr v5, v10

    float-to-int v4, v5

    .line 343
    invoke-virtual {v6, v8, v9, v7, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 346
    iget-object v4, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mRect:Landroid/graphics/Rect;

    iget v5, p1, Lcom/miui/home/launcher/DragObject;->x:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p1, Lcom/miui/home/launcher/DragObject;->y:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public getHitView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getScreenSnapDuration()I
    .locals 0

    .line 474
    iget-object p0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenSnapDuration()I

    move-result p0

    return p0
.end method

.method public getScrollZone()I
    .locals 0

    .line 436
    iget-object p0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollZone()I

    move-result p0

    return p0
.end method

.method protected getSnapDuration(II)I
    .locals 0

    const/16 p0, 0xfa

    return p0
.end method

.method public hide(Z)V
    .locals 0

    .line 533
    invoke-super {p0, p1}, Lcom/miui/home/launcher/EditModeThumbnailView;->hide(Z)V

    .line 534
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackUsingMultiSelect()V

    .line 535
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->unregisterEventBus()V

    return-void
.end method

.method public hideWithGoogleAnim()V
    .locals 8

    const-string v0, "WorkspaceThumbnailView"

    const-string v1, "hideWithGoogleAnim: "

    .line 616
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3eb33333    # 0.35f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3e3851ec    # 0.18f

    move-object v2, p0

    .line 617
    invoke-static/range {v2 .. v7}, Lcom/miui/home/launcher/compat/EditModeAnimController;->showEditModeAnimation(Landroid/view/View;ZFFFF)V

    const/4 v0, 0x0

    .line 618
    iput-boolean v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mShow:Z

    return-void
.end method

.method public hideWithOriginAnim()V
    .locals 2

    const-string v0, "WorkspaceThumbnailView"

    const-string v1, "hideWithOriginAnim: "

    .line 633
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditModeThumbnailView;->getExitAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x4

    .line 635
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 636
    iput-boolean v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mShow:Z

    return-void
.end method

.method public invalidateThumbnails()V
    .locals 3

    const/4 v0, 0x0

    .line 452
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 453
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getThumbnailContainer(I)Lcom/miui/home/launcher/ThumbnailContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 454
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getThumbnailContainer(I)Lcom/miui/home/launcher/ThumbnailContainer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ThumbnailContainer;->setForceRebuildCache(Z)V

    .line 455
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getThumbnailContainer(I)Lcom/miui/home/launcher/ThumbnailContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isDropEnabled()Z
    .locals 1

    .line 243
    iget-object p0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isShowing()Z
    .locals 0

    .line 209
    iget-boolean p0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mShow:Z

    return p0
.end method

.method protected isSpringOverScroll()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public loadThumbnails(Z)V
    .locals 7

    .line 151
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070189

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailWidth:I

    .line 153
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070188

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailHeight:I

    .line 155
    invoke-direct {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->resetAllViews()V

    .line 156
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mScreenIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 159
    :goto_0
    iget-object v3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 160
    iget-object v3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->insertConvertView(Lcom/miui/home/launcher/CellScreen;I)Landroid/view/View;

    move-result-object v3

    if-nez p1, :cond_0

    .line 161
    instance-of v4, v3, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v4, :cond_0

    .line 162
    move-object v4, v3

    check-cast v4, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setSkipNextAutoLayoutAnimation(Z)V

    .line 164
    :cond_0
    iget-object v4, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mScreenIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-int/lit8 v3, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v5, v6, v2}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->updateborderLine(Z)V

    .line 167
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 685
    invoke-super {p0}, Lcom/miui/home/launcher/EditModeThumbnailView;->onDetachedFromWindow()V

    .line 686
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->unregisterEventBus()V

    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDragEnd(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    const/4 p1, 0x0

    .line 501
    iput-boolean p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mBlockNextSnap:Z

    .line 502
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragController;->removeDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    const/4 p1, 0x1

    .line 503
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->updateborderLine(Z)V

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    const-string p0, "WorkspaceThumbnailView"

    const-string p1, "onDragExit"

    .line 328
    invoke-static {p0, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 315
    iget v0, p1, Lcom/miui/home/launcher/DragObject;->x:I

    iget v1, p1, Lcom/miui/home/launcher/DragObject;->xOffset:I

    sub-int/2addr v0, v1

    iget p1, p1, Lcom/miui/home/launcher/DragObject;->y:I

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getTouchedChildIndex(II)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 316
    iget v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mPlaceHolderIndex:I

    if-eq p1, v0, :cond_0

    .line 317
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getThumbnailContainer(I)Lcom/miui/home/launcher/ThumbnailContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Lcom/miui/home/launcher/ThumbnailContainer;->getContent()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->removeView(Landroid/view/View;)V

    .line 320
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 321
    iput p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mPlaceHolderIndex:I

    :cond_0
    return-void
.end method

.method public onDragStart([Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->removeView(Landroid/view/View;)V

    .line 257
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggingView:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 258
    check-cast v0, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {v0, v2}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setSkipNextAutoLayoutAnimation(Z)V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggingView:Landroid/view/View;

    iget v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mPlaceHolderIndex:I

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 261
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    invoke-direct {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->switchScreenWithFoldAnim()V

    goto :goto_0

    .line 264
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->switchScreen()V

    .line 266
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    const/4 p1, 0x0

    .line 267
    iput-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggingView:Landroid/view/View;

    return v2
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 393
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->removeView(Landroid/view/View;)V

    .line 394
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggingView:Landroid/view/View;

    iget v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggedUpPos:I

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    const/4 p1, 0x0

    .line 395
    iput-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggingView:Landroid/view/View;

    const/4 p1, -0x1

    .line 396
    iput p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggedUpPos:I

    return-void
.end method

.method public onDropCompleted()V
    .locals 0

    return-void
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 249
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getRemainedDraggingSize()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 250
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    :cond_0
    return-void
.end method

.method public onGridConfigChanged(Lcom/miui/home/launcher/GridConfig;)V
    .locals 0

    .line 671
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ThumbnailMeasureController;->onScreenOrientationChanged(Landroid/view/View;)V

    return-void
.end method

.method protected onHideComplete()V
    .locals 0

    .line 602
    invoke-super {p0}, Lcom/miui/home/launcher/EditModeThumbnailView;->onHideComplete()V

    .line 603
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->clearBlur()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 359
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggingView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 362
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 363
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mScreenIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 364
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    .line 365
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getThumbnailContainer(I)Lcom/miui/home/launcher/ThumbnailContainer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 366
    invoke-virtual {p1}, Lcom/miui/home/launcher/ThumbnailContainer;->getContent()Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 369
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v2, p0}, Lcom/miui/home/launcher/DragController;->addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    .line 370
    iget-object v2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3, p0, v1}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;ZLcom/miui/home/launcher/DragSource;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 371
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    iget-object v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->startFoldEditDragingAnim()V

    .line 373
    invoke-virtual {p0, v3, v3, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->updateborderLine(ZZLcom/miui/home/launcher/ThumbnailContainer;)V

    .line 375
    :cond_2
    iput-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggingView:Landroid/view/View;

    .line 376
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/CellBackground;->setSkipNextAutoLayoutAnimation(Z)V

    .line 377
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mScreenIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mPlaceHolderIndex:I

    .line 378
    iput p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggedUpPos:I

    .line 379
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return v3

    .line 382
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragController;->removeDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    :cond_4
    :goto_0
    return v1
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 129
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

    .line 131
    invoke-virtual {p2}, Lcom/miui/home/launcher/ThumbnailMeasureController;->getEditingEntryBottom()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ThumbnailMeasureController;->makeWidthMeasureSpec()I

    move-result p1

    iget-object p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ThumbnailMeasureController;->makeEditingEntryHeightMeasureSpec()I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->onMeasure(II)V

    .line 134
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailWidth:I

    iget v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mFixedGap:I

    add-int/2addr p2, v0

    div-int/2addr p1, p2

    iput p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailNumInOneScreen:I

    .line 135
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p1

    if-nez p1, :cond_1

    .line 136
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p1

    iget p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailNumInOneScreen:I

    sub-int/2addr p1, p2

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/ScreenView;->setScreenScrollRange(II)V

    goto :goto_0

    .line 138
    :cond_1
    iget p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailNumInOneScreen:I

    add-int/lit8 p1, p1, -0x1

    iget-object p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->setScreenScrollRange(II)V

    :goto_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/DragMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 660
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/DragMessage;->isDragging()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mIsDraging:Z

    const/4 p1, 0x0

    .line 661
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 662
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getThumbnailContainer(I)Lcom/miui/home/launcher/ThumbnailContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 664
    iget-boolean v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mIsDraging:Z

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ThumbnailContainer;->setAlpha(Z)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 2

    .line 526
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setFixed()V

    .line 527
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ThumbnailMeasureController;->onScreenSizeChanged(Landroid/view/View;)V

    .line 528
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/EditModeThumbnailView;->resetMarginBottom(Landroid/view/ViewGroup$LayoutParams;Lcom/miui/home/launcher/ThumbnailMeasureController;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 697
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 702
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V

    .line 703
    invoke-virtual {p2}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplit()Z

    move-result p1

    if-nez p1, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->onScreenSizeChanged()V

    :cond_0
    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 514
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V

    .line 515
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->invalidateThumbnails()V

    return-void
.end method

.method public prepareToShow()V
    .locals 1

    const/4 v0, 0x0

    .line 563
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->loadThumbnails(Z)V

    .line 564
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreen(I)V

    .line 565
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->scrollToScreen(I)V

    .line 566
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public removeAllScreens()V
    .locals 0

    .line 573
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public scrollDragingRight()V
    .locals 3

    .line 440
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 442
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->snapToScreen(I)I

    goto :goto_0

    .line 445
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 446
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->snapToScreen(I)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    return-void
.end method

.method protected setFixed()V
    .locals 2

    .line 119
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07017c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mFixedGap:I

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07075f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mFixedGap:I

    .line 124
    :goto_0
    iget v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mFixedGap:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setFixedGap(I)V

    return-void
.end method

.method public setResource(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-void
.end method

.method public showWithGoogleAnim()V
    .locals 7

    const-string v0, "WorkspaceThumbnailView"

    const-string/jumbo v1, "showWithGoogleAnim: "

    .line 608
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 609
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setVisibility(I)V

    const/4 v2, 0x1

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f000000    # 0.5f

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v1, p0

    .line 610
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/compat/EditModeAnimController;->showEditModeAnimation(Landroid/view/View;ZFFFF)V

    const/4 v0, 0x1

    .line 611
    iput-boolean v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mShow:Z

    return-void
.end method

.method public showWithOriginAnim()V
    .locals 2

    const-string v0, "WorkspaceThumbnailView"

    const-string/jumbo v1, "showWithOriginAnim: "

    .line 623
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-direct {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->resetView()V

    .line 625
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditModeThumbnailView;->getEnterAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    .line 626
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 627
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/4 v0, 0x1

    .line 628
    iput-boolean v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mShow:Z

    return-void
.end method

.method protected snapByVelocity(II)V
    .locals 5

    .line 461
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->cancelScroll()V

    neg-int p1, p1

    .line 462
    div-int/lit16 p2, p1, 0x3e8

    iget v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailWidth:I

    mul-int/2addr p2, v0

    .line 463
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getSnapBound()[I

    move-result-object v0

    .line 464
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    const/4 v2, 0x0

    .line 465
    aget v3, v0, v2

    const/4 v4, 0x1

    aget v0, v0, v4

    add-int/2addr p2, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p2, v1

    add-int v0, v1, p2

    .line 467
    invoke-virtual {p0, v0, v2}, Lcom/miui/home/launcher/ScreenView;->getScreenIndexByPoint(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    .line 468
    invoke-virtual {p0, v1, p2, p1}, Lcom/miui/home/launcher/ScreenView;->startScroll(III)V

    .line 469
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public snapToScreen(I)I
    .locals 4

    .line 484
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 487
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 488
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    move-result p0

    return p0

    .line 489
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 490
    iget v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailNumInOneScreen:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr p1, v0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public unregisterEventBus()V
    .locals 1

    .line 690
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public updateEditModeThumbnailViewBlurMode(Z)V
    .locals 3

    .line 549
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mShow:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 550
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 551
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 v2, 0xa

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    .line 552
    :goto_1
    invoke-static {v1, v2}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBlur(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateborderLine(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 405
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->updateborderLine(ZZLcom/miui/home/launcher/ThumbnailContainer;)V

    return-void
.end method

.method public updateborderLine(ZZLcom/miui/home/launcher/ThumbnailContainer;)V
    .locals 5

    .line 410
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 411
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 412
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getThumbnailContainer(I)Lcom/miui/home/launcher/ThumbnailContainer;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_1

    if-ne v3, p3, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 415
    :goto_1
    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/ThumbnailContainer;->setIsDraging(Z)V

    goto :goto_3

    :cond_1
    if-lt v2, v0, :cond_2

    .line 417
    iget-object v4, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v4}, Lcom/miui/home/launcher/ScreenView;->getVisibleRange()I

    move-result v4

    add-int/2addr v4, v0

    if-ge v2, v4, :cond_2

    sget-object v4, Lcom/miui/home/launcher/anim/BackgroundType;->SELECT:Lcom/miui/home/launcher/anim/BackgroundType;

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/miui/home/launcher/anim/BackgroundType;->NORMAL:Lcom/miui/home/launcher/anim/BackgroundType;

    :goto_2
    invoke-virtual {v3, v4, p1}, Lcom/miui/home/launcher/ThumbnailContainer;->setIsCurrentScreen(Lcom/miui/home/launcher/anim/BackgroundType;Z)V

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 421
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
