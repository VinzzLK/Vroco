.class public Lmiuix/bottomsheet/BottomSheetView;
.super Landroid/widget/FrameLayout;
.source "BottomSheetView.java"

# interfaces
.implements Lmiuix/view/BlurableWidget;
.implements Lmiuix/view/Fence;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/bottomsheet/BottomSheetView$FloatingModeOutlineProvider;,
        Lmiuix/bottomsheet/BottomSheetView$BottomModeOutlineProvider;
    }
.end annotation


# instance fields
.field private mAttrs:Landroid/util/AttributeSet;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

.field private mBlurEnable:Z

.field private mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

.field private mBottomModeRadii:[F

.field private mBottomModeRadius:I

.field private mBottomOutlineProvider:Lmiuix/bottomsheet/BottomSheetView$BottomModeOutlineProvider;

.field private mClipByOutline:Z

.field private mClipPath:Landroid/graphics/Path;

.field private mContainerView:Landroid/widget/FrameLayout;

.field private mCurrentMode:I

.field private mDensityDpi:F

.field private mDragHandleContainerView:Landroid/view/View;

.field private mDragHandleViewEnabled:Z

.field private mExtraHeightView:Landroid/view/View;

.field private mFenceEnabled:Z

.field private mFloatingModeOutlineProvider:Lmiuix/bottomsheet/BottomSheetView$FloatingModeOutlineProvider;

.field private mFloatingModeRadii:[F

.field private mFloatingModeRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lmiuix/bottomsheet/BottomSheetView;->mCurrentMode:I

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetView;->mDragHandleViewEnabled:Z

    const/4 v1, 0x0

    .line 52
    iput-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetView;->mBlurEnable:Z

    .line 57
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetView;->mFenceEnabled:Z

    .line 68
    invoke-direct {p0, p1, p2}, Lmiuix/bottomsheet/BottomSheetView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/bottomsheet/BottomSheetView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 33
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetView;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/bottomsheet/BottomSheetView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 33
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetView;->mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 82
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lmiuix/bottomsheet/R$layout;->miuix_bottom_sheet_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 83
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 84
    iput-object p2, p0, Lmiuix/bottomsheet/BottomSheetView;->mAttrs:Landroid/util/AttributeSet;

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lmiuix/bottomsheet/BottomSheetView;->mClipByOutline:Z

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetView;->mDensityDpi:F

    .line 87
    invoke-direct {p0, p2}, Lmiuix/bottomsheet/BottomSheetView;->refreshSizes(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initBlurHelper(Landroid/content/Context;)V
    .locals 3

    .line 117
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 118
    new-instance v0, Lmiuix/view/MiuiBlurUiHelper;

    new-instance v1, Lmiuix/bottomsheet/BottomSheetView$1;

    invoke-direct {v1, p0}, Lmiuix/bottomsheet/BottomSheetView$1;-><init>(Lmiuix/bottomsheet/BottomSheetView;)V

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v2, v1}, Lmiuix/view/MiuiBlurUiHelper;-><init>(Landroid/content/Context;Landroid/view/View;ZLmiuix/view/MiuiBlurUiHelper$BlurStateCallback;)V

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    return-void
.end method

.method private refreshSizes(Landroid/util/AttributeSet;)V
    .locals 10

    .line 92
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    sget v1, Lmiuix/bottomsheet/R$dimen;->miuix_bottom_sheet_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetView;->mBottomModeRadius:I

    .line 94
    sget v1, Lmiuix/bottomsheet/R$dimen;->miuix_bottom_sheet_floating_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetView;->mFloatingModeRadius:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lmiuix/bottomsheet/R$styleable;->BottomSheetView:[I

    sget v3, Lmiuix/bottomsheet/R$attr;->bottomSheetStyle:I

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 97
    sget v1, Lmiuix/bottomsheet/R$styleable;->BottomSheetView_bottomModeRadius:I

    iget v2, p0, Lmiuix/bottomsheet/BottomSheetView;->mBottomModeRadius:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetView;->mBottomModeRadius:I

    .line 98
    sget v1, Lmiuix/bottomsheet/R$styleable;->BottomSheetView_floatingModeRadius:I

    iget v2, p0, Lmiuix/bottomsheet/BottomSheetView;->mFloatingModeRadius:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetView;->mFloatingModeRadius:I

    .line 99
    sget v1, Lmiuix/bottomsheet/R$styleable;->BottomSheetView_blurEnabled:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetView;->mBlurEnable:Z

    .line 100
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    const/16 p1, 0x8

    new-array v1, p1, [F

    .line 102
    iget v2, p0, Lmiuix/bottomsheet/BottomSheetView;->mBottomModeRadius:I

    int-to-float v3, v2

    aput v3, v1, v0

    int-to-float v3, v2

    const/4 v4, 0x1

    aput v3, v1, v4

    int-to-float v3, v2

    const/4 v5, 0x2

    aput v3, v1, v5

    int-to-float v2, v2

    const/4 v3, 0x3

    aput v2, v1, v3

    const/4 v2, 0x4

    const/4 v6, 0x0

    aput v6, v1, v2

    const/4 v7, 0x5

    aput v6, v1, v7

    const/4 v8, 0x6

    aput v6, v1, v8

    const/4 v9, 0x7

    aput v6, v1, v9

    iput-object v1, p0, Lmiuix/bottomsheet/BottomSheetView;->mBottomModeRadii:[F

    new-array p1, p1, [F

    .line 108
    iget v1, p0, Lmiuix/bottomsheet/BottomSheetView;->mFloatingModeRadius:I

    int-to-float v6, v1

    aput v6, p1, v0

    int-to-float v0, v1

    aput v0, p1, v4

    int-to-float v0, v1

    aput v0, p1, v5

    int-to-float v0, v1

    aput v0, p1, v3

    int-to-float v0, v1

    aput v0, p1, v2

    int-to-float v0, v1

    aput v0, p1, v7

    int-to-float v0, v1

    aput v0, p1, v8

    int-to-float v0, v1

    aput v0, p1, v9

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->mFloatingModeRadii:[F

    return-void
.end method


# virtual methods
.method public addContentChildView(Landroid/view/View;)V
    .locals 0

    .line 222
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetView;->mContainerView:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    .line 223
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public addContentChildView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 228
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetView;->mContainerView:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    .line 229
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public applyBlur(Z)V
    .locals 0

    .line 341
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetView;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {p0, p1}, Lmiuix/view/MiuiBlurUiHelper;->applyBlur(Z)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 200
    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetView;->mClipByOutline:Z

    if-eqz v0, :cond_0

    .line 201
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->mClipPath:Landroid/graphics/Path;

    if-nez v0, :cond_1

    .line 204
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 206
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 207
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 208
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 209
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    return-void
.end method

.method getExtraHeight()I
    .locals 2

    .line 290
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->mExtraHeightView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 291
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetView;->mExtraHeightView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hideDragHandleView()V
    .locals 1

    .line 251
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetView;->mDragHandleContainerView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 252
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isDragHandleViewEnabled()Z
    .locals 0

    .line 241
    iget-boolean p0, p0, Lmiuix/bottomsheet/BottomSheetView;->mDragHandleViewEnabled:Z

    return p0
.end method

.method public isFenceEnabled()Z
    .locals 0

    .line 356
    iget-boolean p0, p0, Lmiuix/bottomsheet/BottomSheetView;->mFenceEnabled:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 149
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 150
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetView;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-eqz p0, :cond_0

    .line 151
    invoke-virtual {p0}, Lmiuix/view/MiuiBlurUiHelper;->onConfigChanged()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 298
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 299
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p1, p1

    .line 300
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetView;->mDensityDpi:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 301
    iput p1, p0, Lmiuix/bottomsheet/BottomSheetView;->mDensityDpi:F

    .line 302
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->mAttrs:Landroid/util/AttributeSet;

    invoke-direct {p0, p1}, Lmiuix/bottomsheet/BottomSheetView;->refreshSizes(Landroid/util/AttributeSet;)V

    .line 303
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->mBottomOutlineProvider:Lmiuix/bottomsheet/BottomSheetView$BottomModeOutlineProvider;

    if-eqz p1, :cond_0

    .line 304
    new-instance p1, Lmiuix/bottomsheet/BottomSheetView$BottomModeOutlineProvider;

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetView;->mBottomModeRadius:I

    int-to-float v0, v0

    invoke-direct {p1, v0}, Lmiuix/bottomsheet/BottomSheetView$BottomModeOutlineProvider;-><init>(F)V

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->mBottomOutlineProvider:Lmiuix/bottomsheet/BottomSheetView$BottomModeOutlineProvider;

    .line 306
    :cond_0
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->mFloatingModeOutlineProvider:Lmiuix/bottomsheet/BottomSheetView$FloatingModeOutlineProvider;

    if-eqz p1, :cond_1

    .line 307
    new-instance p1, Lmiuix/bottomsheet/BottomSheetView$FloatingModeOutlineProvider;

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetView;->mFloatingModeRadius:I

    int-to-float v0, v0

    invoke-direct {p1, v0}, Lmiuix/bottomsheet/BottomSheetView$FloatingModeOutlineProvider;-><init>(F)V

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->mFloatingModeOutlineProvider:Lmiuix/bottomsheet/BottomSheetView$FloatingModeOutlineProvider;

    .line 310
    :cond_1
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetView;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-eqz p0, :cond_2

    .line 311
    invoke-virtual {p0}, Lmiuix/view/MiuiBlurUiHelper;->onConfigChanged()V

    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 157
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 158
    sget v0, Lmiuix/bottomsheet/R$id;->miuix_bottom_sheet_container_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->mContainerView:Landroid/widget/FrameLayout;

    .line 159
    sget v0, Lmiuix/bottomsheet/R$id;->drag_handle_container_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->mDragHandleContainerView:Landroid/view/View;

    .line 160
    sget v0, Lmiuix/bottomsheet/R$id;->extra_space_height_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->mExtraHeightView:Landroid/view/View;

    .line 161
    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetView;->mDragHandleViewEnabled:Z

    if-nez v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetView;->hideDragHandleView()V

    .line 164
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 165
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/bottomsheet/BottomSheetView;->initBlurHelper(Landroid/content/Context;)V

    .line 166
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 167
    invoke-static {}, Lmiuix/device/DeviceUtils;->isLiteV1StockPlus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 168
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiMiddle()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    .line 169
    :goto_1
    invoke-static {}, Lmiuix/core/util/MiuiBlurUtils;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    .line 170
    invoke-virtual {p0, v2}, Lmiuix/bottomsheet/BottomSheetView;->setSupportBlur(Z)V

    .line 171
    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetView;->mBlurEnable:Z

    invoke-virtual {p0, v0}, Lmiuix/bottomsheet/BottomSheetView;->setEnableBlur(Z)V

    .line 172
    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetView;->mBlurEnable:Z

    invoke-virtual {p0, v0}, Lmiuix/bottomsheet/BottomSheetView;->applyBlur(Z)V

    goto :goto_2

    .line 174
    :cond_3
    invoke-virtual {p0, v1}, Lmiuix/bottomsheet/BottomSheetView;->setSupportBlur(Z)V

    :goto_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 181
    iget-boolean p3, p0, Lmiuix/bottomsheet/BottomSheetView;->mClipByOutline:Z

    if-nez p3, :cond_3

    .line 182
    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetView;->mClipPath:Landroid/graphics/Path;

    if-nez p3, :cond_0

    .line 183
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lmiuix/bottomsheet/BottomSheetView;->mClipPath:Landroid/graphics/Path;

    .line 185
    :cond_0
    iget p3, p0, Lmiuix/bottomsheet/BottomSheetView;->mCurrentMode:I

    const/4 p4, 0x0

    if-nez p3, :cond_1

    .line 186
    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 187
    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetView;->mClipPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v0, p4, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetView;->mBottomModeRadii:[F

    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p3, v0, p0, p1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 189
    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 190
    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetView;->mClipPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v0, p4, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetView;->mFloatingModeRadii:[F

    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p3, v0, p0, p1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 192
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected bottom sheet mode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lmiuix/bottomsheet/BottomSheetView;->mCurrentMode:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public removeAllContentViews()V
    .locals 0

    .line 216
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetView;->mContainerView:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    .line 217
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    return-void
.end method

.method setBottomSheetMode(I)V
    .locals 2

    .line 257
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetView;->mCurrentMode:I

    if-eq v0, p1, :cond_5

    .line 258
    iput p1, p0, Lmiuix/bottomsheet/BottomSheetView;->mCurrentMode:I

    .line 259
    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetView;->mClipByOutline:Z

    if-eqz v0, :cond_4

    if-nez p1, :cond_1

    .line 261
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->mBottomOutlineProvider:Lmiuix/bottomsheet/BottomSheetView$BottomModeOutlineProvider;

    if-nez p1, :cond_0

    .line 262
    new-instance p1, Lmiuix/bottomsheet/BottomSheetView$BottomModeOutlineProvider;

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetView;->mBottomModeRadius:I

    int-to-float v0, v0

    invoke-direct {p1, v0}, Lmiuix/bottomsheet/BottomSheetView$BottomModeOutlineProvider;-><init>(F)V

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->mBottomOutlineProvider:Lmiuix/bottomsheet/BottomSheetView$BottomModeOutlineProvider;

    .line 264
    :cond_0
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->mBottomOutlineProvider:Lmiuix/bottomsheet/BottomSheetView$BottomModeOutlineProvider;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 266
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->mFloatingModeOutlineProvider:Lmiuix/bottomsheet/BottomSheetView$FloatingModeOutlineProvider;

    if-nez p1, :cond_2

    .line 267
    new-instance p1, Lmiuix/bottomsheet/BottomSheetView$FloatingModeOutlineProvider;

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetView;->mFloatingModeRadius:I

    int-to-float v0, v0

    invoke-direct {p1, v0}, Lmiuix/bottomsheet/BottomSheetView$FloatingModeOutlineProvider;-><init>(F)V

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->mFloatingModeOutlineProvider:Lmiuix/bottomsheet/BottomSheetView$FloatingModeOutlineProvider;

    .line 269
    :cond_2
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->mFloatingModeOutlineProvider:Lmiuix/bottomsheet/BottomSheetView$FloatingModeOutlineProvider;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0

    .line 271
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected bottom sheet mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 274
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_5
    :goto_0
    return-void
.end method

.method public setDragHandleViewEnabled(Z)V
    .locals 0

    .line 234
    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetView;->mDragHandleViewEnabled:Z

    if-nez p1, :cond_0

    .line 236
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetView;->hideDragHandleView()V

    :cond_0
    return-void
.end method

.method public setEnableBlur(Z)V
    .locals 1

    .line 330
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setEnableBlur(Z)V

    const/4 p1, 0x1

    .line 331
    invoke-virtual {p0, p1}, Lmiuix/bottomsheet/BottomSheetView;->applyBlur(Z)V

    return-void
.end method

.method setExtraHeightEnabled(Z)V
    .locals 0

    .line 280
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetView;->mExtraHeightView:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 282
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 284
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFenceEnabled(Z)V
    .locals 0

    .line 351
    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetView;->mFenceEnabled:Z

    return-void
.end method

.method public setSupportBlur(Z)V
    .locals 1

    .line 317
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setSupportBlur(Z)V

    if-eqz p1, :cond_0

    .line 319
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public showDragHandleView()V
    .locals 1

    .line 245
    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetView;->mDragHandleViewEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetView;->mDragHandleContainerView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 246
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
