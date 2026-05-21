.class public Lcom/miui/home/launcher/widget/WidgetThumbnailView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "WidgetThumbnailView.java"

# interfaces
.implements Lcom/miui/home/launcher/DragSource;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/home/launcher/widget/WidgetDetailsCallback;


# instance fields
.field public mAddWidgetEnable:Z

.field private mCameraDistanceCache:F

.field private mContext:Landroid/content/Context;

.field private final mCoordinatesTemp:[I

.field private mDefaultPaddingBottom:I

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mPaint:Landroid/graphics/Paint;

.field private mWidgetDetailsCallback:Lcom/miui/home/launcher/widget/WidgetDetailsCallback;

.field private mWidgetThumbnailShadowLineHeight:F

.field private mWidgetThumbnailShadowLinePadding:F


# direct methods
.method public static synthetic $r8$lambda$1bOCFVfcCVGu0D4WnyAYCj9I59U(Lcom/miui/home/launcher/widget/WidgetThumbnailView;Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->lambda$resetAdapter$1(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9TN3fuZvFpYL1-L44z4NjD0VEx8(Lcom/miui/home/launcher/widget/WidgetThumbnailView;Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->lambda$resetAdapter$0(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 67
    iput-boolean p2, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mAddWidgetEnable:Z

    const/4 p3, 0x0

    .line 68
    iput p3, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mDefaultPaddingBottom:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 98
    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mCoordinatesTemp:[I

    const/4 v0, 0x0

    .line 186
    iput v0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mCameraDistanceCache:F

    .line 76
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mContext:Landroid/content/Context;

    .line 77
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 78
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070744

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mWidgetThumbnailShadowLineHeight:F

    .line 81
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0705fc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mWidgetThumbnailShadowLinePadding:F

    .line 82
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 83
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mDefaultPaddingBottom:I

    .line 84
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->setPaddingBottom()V

    return-void
.end method

.method private calculateDividerLineAlpha()I
    .locals 3

    .line 148
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    int-to-float v1, v0

    .line 149
    iget p0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mWidgetThumbnailShadowLinePadding:F

    cmpg-float v1, v1, p0

    const/16 v2, 0x1a

    if-gez v1, :cond_0

    mul-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, p0

    float-to-int v2, v0

    :cond_0
    return v2
.end method

.method private synthetic lambda$resetAdapter$0(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;)V
    .locals 0

    .line 217
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private synthetic lambda$resetAdapter$1(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;)V
    .locals 1

    .line 215
    invoke-virtual {p1}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->initAllItems()V

    .line 216
    new-instance v0, Lcom/miui/home/launcher/widget/WidgetThumbnailView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/widget/WidgetThumbnailView$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/widget/WidgetThumbnailView;Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setPaddingBottom()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mDefaultPaddingBottom:I

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->setPaddingBottom()V

    .line 90
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public getContainerId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onButtonClick()V
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mWidgetDetailsCallback:Lcom/miui/home/launcher/widget/WidgetDetailsCallback;

    invoke-interface {p0}, Lcom/miui/home/launcher/widget/WidgetDetailsCallback;->onButtonClick()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 155
    iget-boolean v0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mAddWidgetEnable:Z

    if-nez v0, :cond_0

    const-string p0, "WidgetThumbnailView"

    const-string p1, " Click so quick, return it"

    .line 156
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 159
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/widget/WidgetCell;

    if-nez v0, :cond_1

    return-void

    .line 162
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDragDisable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->showDragDisableToast(Landroid/content/Context;)V

    return-void

    .line 166
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 167
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 168
    instance-of v1, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v1, :cond_3

    .line 169
    move-object v1, v0

    check-cast v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    const/4 v2, -0x1

    iput v2, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerTipSource:I

    const/16 v2, 0x3e8

    .line 170
    iput v2, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->addSource:I

    .line 172
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Landroid/view/View;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/DragController;->startAutoDrag([Landroid/view/View;Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DropTarget;II)V

    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 142
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    .line 143
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->calculateDividerLineAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mWidgetThumbnailShadowLineHeight:F

    iget-object v6, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onJumpClick(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mWidgetDetailsCallback:Lcom/miui/home/launcher/widget/WidgetDetailsCallback;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/widget/WidgetDetailsCallback;->onJumpClick(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 14

    .line 101
    instance-of v0, p1, Lcom/miui/home/launcher/widget/WidgetCell;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 104
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDragDisable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->showDragDisableToast(Landroid/content/Context;)V

    return v1

    .line 108
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/widget/WidgetCell;

    .line 109
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    .line 110
    instance-of v3, v2, Lcom/miui/home/launcher/ShortcutProviderInfo;

    if-eqz v3, :cond_2

    .line 111
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->onClick(Landroid/view/View;)V

    return v1

    .line 114
    :cond_2
    iget-object p1, v0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemPreview:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_3

    return v1

    .line 118
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 119
    iget-object v3, v0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemPreview:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mCoordinatesTemp:[I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 120
    iget-object v3, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mCoordinatesTemp:[I

    aget v4, v3, v1

    const/4 v13, 0x1

    .line 121
    aget v3, v3, v13

    .line 122
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 123
    iget-object v0, v0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemPreview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v12}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 124
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v6, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v6

    float-to-int v0, v0

    .line 125
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v7, v6

    float-to-int v6, v7

    .line 124
    invoke-virtual {p1, v1, v1, v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v0, v4

    .line 126
    iget v4, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v4

    float-to-int v7, v0

    int-to-float v0, v3

    .line 127
    iget v3, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v3

    float-to-int v8, v0

    .line 128
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    .line 129
    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v6

    .line 130
    instance-of v0, v6, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v0, :cond_4

    .line 131
    move-object v0, v6

    check-cast v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    const/4 v1, -0x1

    iput v1, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerTipSource:I

    const/16 v1, 0x3e9

    .line 132
    iput v1, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->addSource:I

    .line 134
    :cond_4
    iget-object v3, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x2

    move-object v4, p1

    move-object v10, p0

    invoke-virtual/range {v3 .. v11}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/graphics/drawable/Drawable;ZLcom/miui/home/launcher/ItemInfo;IIFLcom/miui/home/launcher/DragSource;I)Z

    .line 136
    invoke-virtual {p1, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return v13
.end method

.method public releaseMemory()V
    .locals 1

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 224
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    return-void
.end method

.method public resetAdapter()V
    .locals 2

    .line 213
    new-instance v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;-><init>(Lcom/miui/home/launcher/widget/WidgetThumbnailView;)V

    .line 214
    new-instance v1, Lcom/miui/home/launcher/widget/WidgetThumbnailView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/widget/WidgetThumbnailView;Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAddWidgetEnable(Z)V
    .locals 0

    .line 244
    iput-boolean p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mAddWidgetEnable:Z

    return-void
.end method

.method public setCameraDistance(F)V
    .locals 1

    .line 190
    iget v0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mCameraDistanceCache:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 191
    iput p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mCameraDistanceCache:F

    .line 192
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setCameraDistance(F)V

    :cond_0
    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    return-void
.end method

.method public setScreenType(I)V
    .locals 1

    .line 228
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->setScreenType(I)V

    :cond_0
    return-void
.end method

.method public setWidgetDetailsCallback(Lcom/miui/home/launcher/widget/WidgetDetailsCallback;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mWidgetDetailsCallback:Lcom/miui/home/launcher/widget/WidgetDetailsCallback;

    return-void
.end method
