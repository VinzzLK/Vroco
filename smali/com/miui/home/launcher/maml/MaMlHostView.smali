.class public Lcom/miui/home/launcher/maml/MaMlHostView;
.super Lcom/miui/maml/component/MamlView;
.source "MaMlHostView.java"

# interfaces
.implements Lcom/miui/home/launcher/gadget/ColorUpdatable;
.implements Lcom/miui/maml/component/MamlView$OnExternCommandListener;
.implements Lcom/miui/home/launcher/LauncherWidgetContainerView$OnWidgetContainerClickListener;


# instance fields
.field private isResumed:Z

.field private final mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

.field private mEnforcedCornerRadius:F

.field private final mEnforcedRectangle:Landroid/graphics/Rect;

.field private mIsDrawingInFolderView:Z

.field private mIsDrawingInScreenPreview:Z

.field private mIsDrawingInThumbnailView:Z

.field private mWidgetId:I


# direct methods
.method public static synthetic $r8$lambda$9Zje-FK4siOSXdOqxkcRMQQkJkM(Lcom/miui/home/launcher/maml/MaMlHostView;Ljava/util/function/Consumer;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/maml/MaMlHostView;->lambda$applyPath$3(Ljava/util/function/Consumer;Lcom/miui/maml/ScreenElementRoot;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XPYcvdJn0vQmdrd39XJxo2MD4-8(Lcom/miui/home/launcher/maml/MaMlHostView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->lambda$applyPath$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$foaP-HmIShavmaspfQx5EchAoDQ(Lcom/miui/home/launcher/maml/MaMlHostView;Ljava/lang/String;F)Lcom/miui/maml/ScreenElementRoot;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/maml/MaMlHostView;->lambda$applyPath$1(Ljava/lang/String;F)Lcom/miui/maml/ScreenElementRoot;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uqRpbLeJLp2VvubC9K8rVe5luqA(Lcom/miui/home/launcher/maml/MaMlHostView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->lambda$onResume$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 73
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 62
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    .line 292
    new-instance p2, Lcom/miui/home/launcher/maml/MaMlHostView$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/maml/MaMlHostView$1;-><init>(Lcom/miui/home/launcher/maml/MaMlHostView;)V

    iput-object p2, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

    .line 79
    invoke-static {p1}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedCornerRadius:F

    .line 80
    invoke-virtual {p0, p0}, Lcom/miui/maml/component/MamlView;->setOnExternCommandListener(Lcom/miui/maml/component/MamlView$OnExternCommandListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/maml/MaMlHostView;)Landroid/graphics/Rect;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/maml/MaMlHostView;)F
    .locals 0

    .line 45
    iget p0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedCornerRadius:F

    return p0
.end method

.method private checkColorMode()V
    .locals 5

    .line 243
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "applied_light_wallpaper"

    .line 246
    invoke-virtual {p0, v0}, Lcom/miui/maml/component/MamlView;->getVariableNumber(Ljava/lang/String;)D

    move-result-wide v1

    .line 247
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    :goto_0
    cmpl-double v1, v1, v3

    if-eqz v1, :cond_2

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "color mode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaMlHostView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p0, v0, v3, v4}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;D)V

    :cond_2
    return-void
.end method

.method private computeRoundedCornerRadius(Lcom/miui/home/launcher/ItemInfo;)F
    .locals 5

    .line 320
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result v0

    .line 321
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isAboveLevel2()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 324
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getCornerType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "capsule_rect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 326
    :cond_1
    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne v4, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 328
    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    if-le v1, p1, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    :goto_1
    div-int/2addr p0, v3

    int-to-float p0, p0

    move v0, p0

    :cond_4
    :goto_2
    return v0
.end method

.method private enforceRoundedCorners()V
    .locals 1

    .line 305
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->disableCutRoundCorner()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 306
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    invoke-static {p0, p0, v0}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeRoundedRectangle(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 313
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->computeRoundedCornerRadius(Lcom/miui/home/launcher/ItemInfo;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedCornerRadius:F

    .line 314
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 315
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    const/4 v0, 0x1

    .line 316
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    return-void
.end method

.method private getCornerType()Ljava/lang/String;
    .locals 1

    .line 338
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->getCornerCutType()Ljava/lang/String;

    move-result-object p0

    .line 339
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "rounded_rect"

    :cond_0
    return-object p0
.end method

.method private invalidateConfig()V
    .locals 2

    .line 277
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 278
    iget-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    iget-object v0, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/maml/widget/edit/WidgetEditSave;->restoreFromConfigPath(Lcom/miui/maml/component/MamlView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$applyPath$1(Ljava/lang/String;F)Lcom/miui/maml/ScreenElementRoot;
    .locals 4

    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 188
    :cond_0
    new-instance v0, Lcom/miui/maml/util/ZipResourceLoader;

    invoke-direct {v0, p1, v1}, Lcom/miui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance p1, Lcom/miui/maml/ResourceManager;

    invoke-direct {p1, v0}, Lcom/miui/maml/ResourceManager;-><init>(Lcom/miui/maml/ResourceLoader;)V

    .line 190
    new-instance v0, Lcom/miui/maml/ScreenElementRoot;

    new-instance v2, Lcom/miui/maml/ScreenContext;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/miui/maml/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;)V

    invoke-direct {v0, v2}, Lcom/miui/maml/ScreenElementRoot;-><init>(Lcom/miui/maml/ScreenContext;)V

    .line 191
    invoke-virtual {v0, p2}, Lcom/miui/maml/ScreenElementRoot;->setResizeRadio(F)V

    .line 192
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 193
    iget p1, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget p2, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iget-boolean p0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    invoke-static {p1, p2, p0}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetSizeSpec(IIZ)J

    move-result-wide p0

    const/16 p2, 0x20

    shr-long v2, p0, p2

    long-to-int p2, v2

    long-to-int p0, p0

    .line 196
    new-instance p1, Lcom/miui/maml/component/MamlView$Config;

    invoke-direct {p1}, Lcom/miui/maml/component/MamlView$Config;-><init>()V

    .line 197
    iput p0, p1, Lcom/miui/maml/component/MamlView$Config;->viewHeight:I

    .line 198
    iput p2, p1, Lcom/miui/maml/component/MamlView$Config;->viewWidth:I

    .line 199
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "applyPath: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Lcom/miui/maml/component/MamlView$Config;->viewHeight:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "   "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Lcom/miui/maml/component/MamlView$Config;->viewWidth:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "MaMlHostView"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->setMamlViewConfig(Lcom/miui/maml/component/MamlView$Config;)V

    .line 201
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->load()Z

    move-result p0

    if-eqz p0, :cond_1

    move-object v1, v0

    :cond_1
    return-object v1
.end method

.method private synthetic lambda$applyPath$2()V
    .locals 1

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p0, v0}, Lcom/miui/maml/component/MamlView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$applyPath$3(Ljava/util/function/Consumer;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 206
    invoke-virtual {p2, v1}, Lcom/miui/maml/ScreenElementRoot;->setKeepResource(Z)V

    .line 207
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/miui/maml/component/MamlView;->initMamlview(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V

    .line 208
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->checkColorMode()V

    .line 209
    new-instance v2, Lcom/miui/home/launcher/maml/MaMlHostView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/maml/MaMlHostView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/maml/MaMlHostView;)V

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 210
    iput-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->isResumed:Z

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    move v0, v1

    .line 213
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 215
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->onResume()V

    return-void
.end method

.method private synthetic lambda$onResume$0()V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->invalidateConfig()V

    return-void
.end method


# virtual methods
.method public applyPath(Ljava/lang/String;FLjava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 183
    new-instance v0, Lcom/miui/home/launcher/maml/MaMlHostView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/maml/MaMlHostView$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/maml/MaMlHostView;Ljava/lang/String;F)V

    new-instance p1, Lcom/miui/home/launcher/maml/MaMlHostView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p3}, Lcom/miui/home/launcher/maml/MaMlHostView$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/maml/MaMlHostView;Ljava/util/function/Consumer;)V

    invoke-static {v0, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 222
    iget-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mIsDrawingInThumbnailView:Z

    const-string v1, "drawPagImageView"

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mIsDrawingInScreenPreview:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mIsDrawingInFolderView:Z

    if-eqz v0, :cond_1

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 223
    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;D)V

    .line 225
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    const-wide/16 p2, 0x0

    .line 226
    invoke-virtual {p0, v1, p2, p3}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;D)V

    return p1
.end method

.method public getCornerRadius()F
    .locals 1

    .line 343
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->disableCutRoundCorner()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedCornerRadius:F

    :goto_0
    return p0
.end method

.method public getItemInfo()Lcom/miui/home/launcher/ItemInfo;
    .locals 1

    .line 284
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getTag()Ljava/lang/Object;

    move-result-object p0

    .line 285
    instance-of v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v0, :cond_0

    .line 288
    check-cast p0, Lcom/miui/home/launcher/ItemInfo;

    return-object p0

    .line 286
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "wrong type of ItemInfo"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method getMaMlRoot()Ljava/lang/Object;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    return-object p0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 3

    .line 267
    invoke-super {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 268
    instance-of v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v1, :cond_0

    .line 269
    move-object v1, v0

    check-cast v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 270
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->supportBackgroundBlur()Z

    move-result v2

    iput-boolean v2, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->supportBackgroundBlur:Z

    .line 271
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/maml/MaMlHostView;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getWidgetId()I
    .locals 0

    .line 138
    iget p0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mWidgetId:I

    return p0
.end method

.method isResumed()Z
    .locals 0

    .line 151
    iget-boolean p0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->isResumed:Z

    return p0
.end method

.method public notifyColorChanged()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 115
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->updateLauncherComponentColorByWallpaper(Lcom/miui/home/launcher/gadget/ColorUpdatable;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 85
    invoke-super {p0}, Lcom/miui/maml/component/MamlView;->onAttachedToWindow()V

    .line 87
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->supportBackgroundBlur()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setMaMlBlurIfSupported(Lcom/miui/maml/component/MamlView;Z)V

    .line 88
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->invalidateConfig()V

    .line 89
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MaMlHostView"

    const-string v1, "onAttachedToWindow: register"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 0

    const-string p2, "clickMaMlTrack"

    .line 348
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 349
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 350
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    .line 349
    invoke-static {p1, p0, p3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickMaMl(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "exposeMaMlTrack"

    .line 351
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 352
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 353
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    .line 352
    invoke-static {p1, p0, p3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackExposeMaMl(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "clickMaMlAdTrack"

    .line 354
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 355
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 356
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    .line 355
    invoke-static {p1, p0, p3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickAdvertMaMl(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p2, "exposeMaMlAdTrack"

    .line 357
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 358
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 359
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    .line 358
    invoke-static {p1, p0, p3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackExposeAdvertMaMl(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 179
    invoke-super {p0}, Lcom/miui/maml/component/MamlView;->onDestroy()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 97
    invoke-super {p0}, Lcom/miui/maml/component/MamlView;->onDetachedFromWindow()V

    .line 99
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->supportBackgroundBlur()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->clearMaMlBlurIfSupported(Lcom/miui/maml/component/MamlView;Z)V

    .line 100
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MaMlHostView"

    const-string v1, "onDetachedFromWindow: unregister"

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 108
    invoke-super/range {p0 .. p5}, Lcom/miui/maml/component/MamlView;->onLayout(ZIIII)V

    .line 109
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->enforceRoundedCorners()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/WidgetBlurStateMessage;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMessageEvent: message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    const-string v1, "is null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MaMlHostView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 372
    instance-of v2, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v2, :cond_1

    .line 373
    iget-object p1, p1, Lcom/miui/home/launcher/common/messages/WidgetBlurStateMessage;->packageName:Ljava/lang/String;

    .line 374
    check-cast v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMessageEvent: mamlWidgetInfo.appPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 378
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageEvent: mamlWidgetInfo.supportBackgroundBlur "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->supportBackgroundBlur:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->setWidgetBlurIfSupported(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->isResumed:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-super {p0}, Lcom/miui/maml/component/MamlView;->onPause()V

    const-string v0, "pause"

    .line 172
    invoke-virtual {p0, v0}, Lcom/miui/maml/component/MamlView;->sendCommand(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->isResumed:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 156
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->isResumed:Z

    if-nez v0, :cond_0

    .line 157
    invoke-super {p0}, Lcom/miui/maml/component/MamlView;->onResume()V

    .line 158
    new-instance v0, Lcom/miui/home/launcher/maml/MaMlHostView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/maml/MaMlHostView$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/maml/MaMlHostView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    const-string v0, "resume"

    .line 159
    invoke-virtual {p0, v0}, Lcom/miui/maml/component/MamlView;->sendCommand(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->isResumed:Z

    .line 161
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/WidgetPermissionAction;->VISIBLE:Lcom/miui/home/launcher/WidgetPermissionAction;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetUtilities;->tryUpdateMaMlWidgetVisibility(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/WidgetPermissionAction;)V

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->requestUpdate()V

    :goto_0
    return-void
.end method

.method public onWidgetContainerClick()V
    .locals 1

    .line 365
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/WidgetPermissionAction;->CLICK:Lcom/miui/home/launcher/WidgetPermissionAction;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetUtilities;->tryUpdateMaMlWidgetVisibility(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/WidgetPermissionAction;)V

    return-void
.end method

.method public setIsDrawingInFloatingView(Z)V
    .locals 0

    .line 239
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mIsDrawingInFolderView:Z

    return-void
.end method

.method public setIsDrawingInScreenPreview(Z)V
    .locals 0

    .line 231
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mIsDrawingInScreenPreview:Z

    return-void
.end method

.method public setIsDrawingInThumbnailView(Z)V
    .locals 0

    .line 235
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mIsDrawingInThumbnailView:Z

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 2

    .line 256
    instance-of v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v0, :cond_0

    .line 257
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 258
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->supportBackgroundBlur()Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->supportBackgroundBlur:Z

    .line 260
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setWidgetId(I)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mWidgetId:I

    return-void
.end method

.method public updateColor(I)V
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateColor :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MaMlHostView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->supportBackgroundBlur()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setMaMlBlurIfSupported(Lcom/miui/maml/component/MamlView;Z)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string p1, "applied_light_wallpaper"

    .line 125
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;D)V

    .line 127
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->forceTick()V

    .line 128
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->requestUpdate()V

    :cond_1
    return-void
.end method
