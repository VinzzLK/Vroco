.class public Lcom/miui/home/launcher/view/ScrimView;
.super Landroid/view/View;
.source "ScrimView.java"

# interfaces
.implements Lcom/miui/launcher/sosc/interfaces/SoscingListener;


# static fields
.field public static final PROGRESS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/miui/home/launcher/view/ScrimView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOP_RADIUS_IN_SPLIT:I


# instance fields
.field private mCornerRadiusRect:Landroid/graphics/Rect;

.field protected mCurrentFlatColor:I

.field private mDrawPath:Landroid/graphics/Path;

.field protected mEndFlatColor:I

.field protected mEndFlatColorAlpha:I

.field private mPaint:Landroid/graphics/Paint;

.field protected mProgress:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 60
    new-instance v0, Lcom/miui/home/launcher/view/ScrimView$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "progress"

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/view/ScrimView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/view/ScrimView;->PROGRESS:Landroid/util/Property;

    const/high16 v0, 0x41000000    # 8.0f

    .line 73
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->dp2px(F)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/view/ScrimView;->TOP_RADIUS_IN_SPLIT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 75
    iput p1, p0, Lcom/miui/home/launcher/view/ScrimView;->mProgress:F

    .line 91
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/view/ScrimView;->mDrawPath:Landroid/graphics/Path;

    .line 92
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/view/ScrimView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 93
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    iget-object p1, p0, Lcom/miui/home/launcher/view/ScrimView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, 0x0

    .line 95
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/view/ScrimView;->setColorValue(Landroid/content/Context;)V

    .line 97
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p1, p1, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/miui/home/launcher/view/ScrimView;->mCornerRadiusRect:Landroid/graphics/Rect;

    return-void
.end method

.method private static resetRoundRectPath(Landroid/graphics/Path;IIIIIIII)V
    .locals 16

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    .line 164
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->reset()V

    add-int v0, v9, p5

    int-to-float v0, v0

    int-to-float v13, v10

    .line 165
    invoke-virtual {v8, v0, v13}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v14, v9

    mul-int/lit8 v0, p5, 0x2

    add-int v1, v9, v0

    int-to-float v3, v1

    add-int/2addr v0, v10

    int-to-float v4, v0

    const/high16 v5, 0x43340000    # 180.0f

    const/high16 v6, 0x42b40000    # 90.0f

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v14

    move v2, v13

    .line 166
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    sub-int v0, v11, p6

    int-to-float v0, v0

    .line 167
    invoke-virtual {v8, v0, v13}, Landroid/graphics/Path;->lineTo(FF)V

    mul-int/lit8 v0, p6, 0x2

    sub-int v1, v11, v0

    int-to-float v1, v1

    int-to-float v15, v11

    add-int/2addr v0, v10

    int-to-float v4, v0

    const/high16 v5, -0x3d4c0000    # -90.0f

    move-object/from16 v0, p0

    move v3, v15

    .line 168
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    sub-int v0, v12, p7

    int-to-float v0, v0

    .line 169
    invoke-virtual {v8, v15, v0}, Landroid/graphics/Path;->lineTo(FF)V

    mul-int/lit8 v0, p7, 0x2

    sub-int v1, v11, v0

    int-to-float v1, v1

    sub-int v0, v12, v0

    int-to-float v2, v0

    int-to-float v11, v12

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v4, v11

    .line 170
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    add-int v0, v9, p8

    int-to-float v0, v0

    .line 171
    invoke-virtual {v8, v0, v11}, Landroid/graphics/Path;->lineTo(FF)V

    mul-int/lit8 v0, p8, 0x2

    sub-int v1, v12, v0

    int-to-float v2, v1

    add-int/2addr v0, v9

    int-to-float v3, v0

    const/high16 v5, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    move v1, v14

    .line 172
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    add-int v0, v10, p5

    int-to-float v0, v0

    .line 173
    invoke-virtual {v8, v14, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 174
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private setAndUpdateColors()V
    .locals 1

    .line 215
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/view/ScrimView;->setColorValue(Landroid/content/Context;)V

    .line 216
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/ScrimView;->updateColors()V

    .line 217
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public cancelSoscingAnim(Z)V
    .locals 0

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInSoscing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 179
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 180
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherSoscController;->register(Lcom/miui/launcher/sosc/interfaces/SoscingListener;)V

    .line 181
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 183
    invoke-direct {p0}, Lcom/miui/home/launcher/view/ScrimView;->setAndUpdateColors()V

    :cond_0
    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/view/ScrimView;->updateCornerRadius(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 190
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 191
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherSoscController;->unregister(Lcom/miui/launcher/sosc/interfaces/SoscingListener;)V

    .line 192
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 154
    iget v0, p0, Lcom/miui/home/launcher/view/ScrimView;->mCurrentFlatColor:I

    if-eqz v0, :cond_0

    .line 155
    iget-object v1, p0, Lcom/miui/home/launcher/view/ScrimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    iget-object v2, p0, Lcom/miui/home/launcher/view/ScrimView;->mDrawPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int v5, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int v6, v0, v1

    iget-object v0, p0, Lcom/miui/home/launcher/view/ScrimView;->mCornerRadiusRect:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Landroid/graphics/Rect;->right:I

    invoke-static/range {v2 .. v10}, Lcom/miui/home/launcher/view/ScrimView;->resetRoundRectPath(Landroid/graphics/Path;IIIIIIII)V

    .line 158
    iget-object v0, p0, Lcom/miui/home/launcher/view/ScrimView;->mDrawPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/miui/home/launcher/view/ScrimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 199
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color_mode"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "background_alpha"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/view/ScrimView;->setAndUpdateColors()V

    :cond_1
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/ShortcutMenuDisplayMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 207
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 208
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/ShortcutMenuDisplayMessage;->getIsDrawingBlur()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/view/ScrimView;->updateCornerRadius(Z)V

    .line 210
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public onSoscChange()V
    .locals 1

    .line 226
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/view/ScrimView;->updateCornerRadius(Z)V

    .line 228
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onSoscChange(Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 1

    .line 233
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v0, Lcom/miui/home/launcher/view/ScrimView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/view/ScrimView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/view/ScrimView;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setColorValue(Landroid/content/Context;)V
    .locals 2

    .line 101
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/view/ScrimView;->mEndFlatColorAlpha:I

    .line 102
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/view/ScrimView;->mEndFlatColorAlpha:I

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getBackgroundColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/view/ScrimView;->mEndFlatColor:I

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 112
    iget v0, p0, Lcom/miui/home/launcher/view/ScrimView;->mProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 113
    iput p1, p0, Lcom/miui/home/launcher/view/ScrimView;->mProgress:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 115
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/view/ScrimView;->updateCornerRadius(Z)V

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/ScrimView;->updateColors()V

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method protected updateColors()V
    .locals 3

    .line 148
    iget v0, p0, Lcom/miui/home/launcher/view/ScrimView;->mProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/miui/home/launcher/view/ScrimView;->mEndFlatColor:I

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/miui/home/launcher/view/ScrimView;->mEndFlatColorAlpha:I

    int-to-float v0, v0

    mul-float/2addr v1, v0

    .line 149
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 148
    invoke-static {v2, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/miui/home/launcher/view/ScrimView;->mCurrentFlatColor:I

    return-void
.end method

.method public updateCornerRadius(Z)V
    .locals 0

    .line 221
    invoke-static {p1}, Lcom/miui/home/launcher/common/BlurUtilities;->getSoscCornerRadiusRect(Z)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/view/ScrimView;->mCornerRadiusRect:Landroid/graphics/Rect;

    return-void
.end method
