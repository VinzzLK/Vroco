.class public Lcom/miui/home/launcher/ProgressShortcutIcon;
.super Lcom/miui/home/launcher/BaseProgressShortcutIcon;
.source "ProgressShortcutIcon.java"


# static fields
.field private static final DARK_FILTER:Landroid/graphics/ColorFilter;

.field private static final DARK_MATRIX:Landroid/graphics/ColorMatrix;


# instance fields
.field private final mClickPadding:I

.field private mDetachTime:J

.field private mDragMamlViewPercent:F

.field private mForbidUpdate:Z

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mIsInRunningFolderSimpleOpenCloseAnim:Z

.field private mLastResumeAnimationValue:F

.field private mMamlDownloadView:Lcom/miui/maml/component/MamlView;

.field private mMamlPaint:Landroid/graphics/Paint;

.field private mMamlResumeAnimation:Landroid/animation/ValueAnimator;

.field private mNeedInit:Z

.field mNormalTickCallback:Lcom/miui/maml/component/MamlView$OnExternCommandListener;

.field private mOriginBitmap:Landroid/graphics/Bitmap;

.field mPauseTickCallback:Lcom/miui/maml/component/MamlView$OnExternCommandListener;

.field private mPauseWhenInit:Z

.field private mRestorePercent:Z

.field private mTempDstRect:Landroid/graphics/Rect;

.field private mUTime:F

.field private mVisible:Z


# direct methods
.method public static synthetic $r8$lambda$-2LLsQulWU_GfpWizWHN9M2yWeA(Lcom/miui/home/launcher/ProgressShortcutIcon;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ProgressShortcutIcon;->lambda$startAfterDropAnimation$2(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lbCgq-34eVDlEr_68JkbyzgaQ8I(Lcom/miui/home/launcher/ProgressShortcutIcon;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/ProgressShortcutIcon;->lambda$new$1(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yhVS9JOwAUUpVZeiahLDMGm2Ieo(Lcom/miui/home/launcher/ProgressShortcutIcon;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/ProgressShortcutIcon;->lambda$new$0(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Landroid/graphics/ColorMatrix;

    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    sput-object v0, Lcom/miui/home/launcher/ProgressShortcutIcon;->DARK_MATRIX:Landroid/graphics/ColorMatrix;

    .line 72
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    sput-object v1, Lcom/miui/home/launcher/ProgressShortcutIcon;->DARK_FILTER:Landroid/graphics/ColorFilter;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x3ccaf334
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x3ccaf334
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x3ccaf334
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mPauseWhenInit:Z

    const/4 p2, 0x0

    .line 52
    iput p2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mUTime:F

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mDetachTime:J

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mVisible:Z

    .line 74
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIsInRunningFolderSimpleOpenCloseAnim:Z

    .line 309
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mForbidUpdate:Z

    .line 365
    new-instance v0, Lcom/miui/home/launcher/ProgressShortcutIcon$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/ProgressShortcutIcon$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/ProgressShortcutIcon;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mNormalTickCallback:Lcom/miui/maml/component/MamlView$OnExternCommandListener;

    .line 389
    new-instance v0, Lcom/miui/home/launcher/ProgressShortcutIcon$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/ProgressShortcutIcon$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/ProgressShortcutIcon;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mPauseTickCallback:Lcom/miui/maml/component/MamlView$OnExternCommandListener;

    .line 442
    iput p2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mLastResumeAnimationValue:F

    .line 531
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlPaint:Landroid/graphics/Paint;

    .line 532
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mTempDstRect:Landroid/graphics/Rect;

    .line 597
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mNeedInit:Z

    .line 79
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07069c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mClickPadding:I

    return-void
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/ProgressShortcutIcon;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mForbidUpdate:Z

    return p1
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/ProgressShortcutIcon;F)F
    .locals 0

    .line 38
    iput p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mLastResumeAnimationValue:F

    return p1
.end method

.method private createMamlView()V
    .locals 5

    .line 268
    new-instance v0, Lcom/miui/maml/component/MamlView$Config;

    invoke-direct {v0}, Lcom/miui/maml/component/MamlView$Config;-><init>()V

    .line 269
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v1

    iput v1, v0, Lcom/miui/maml/component/MamlView$Config;->viewWidth:I

    .line 270
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result v1

    iput v1, v0, Lcom/miui/maml/component/MamlView$Config;->viewHeight:I

    const-string v1, "download_maml"

    .line 271
    iput-object v1, v0, Lcom/miui/maml/component/MamlView$Config;->path:Ljava/lang/String;

    const/4 v1, 0x0

    .line 272
    iput-boolean v1, v0, Lcom/miui/maml/component/MamlView$Config;->touchable:Z

    const/4 v1, 0x2

    .line 273
    iput v1, v0, Lcom/miui/maml/component/MamlView$Config;->mode:I

    .line 274
    new-instance v1, Lcom/miui/maml/component/MamlView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Lcom/miui/maml/component/MamlView$Config;)V

    iput-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    .line 275
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Lcom/miui/maml/component/MamlView$Config;->viewWidth:I

    iget v3, v0, Lcom/miui/maml/component/MamlView$Config;->viewHeight:I

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 276
    iget-object v2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 278
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    instance-of v2, v1, Lcom/miui/home/launcher/ProgressIconImageView;

    if-eqz v2, :cond_0

    .line 279
    check-cast v1, Lcom/miui/home/launcher/ProgressIconImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ProgressIconImageView;->setIsDrawMaml(Z)V

    .line 281
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inflate Maml viewstub success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    .line 282
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",width = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Lcom/miui/maml/component/MamlView$Config;->viewWidth:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",height = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Lcom/miui/maml/component/MamlView$Config;->viewHeight:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ProgressShortcutIcon"

    .line 281
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private destroyDownloadMaml()V
    .locals 2

    .line 570
    invoke-direct {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->resetIconImage()V

    .line 571
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_1

    .line 572
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 573
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 574
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 576
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " destroyDownloadMaml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    .line 577
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgressShortcutIcon"

    .line 576
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v0}, Lcom/miui/maml/component/MamlView;->onDestroy()V

    const/4 v0, 0x0

    .line 579
    iput-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    :cond_1
    return-void
.end method

.method private initMamlIfNeed(II)V
    .locals 1

    .line 600
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->needMamlProgressIcon()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 604
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mVisible:Z

    if-nez v0, :cond_1

    return-void

    .line 608
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mNeedInit:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-nez v0, :cond_4

    if-lez p1, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-eqz v0, :cond_4

    .line 610
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 p1, 0x1

    .line 612
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mNeedInit:Z

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 615
    iput-boolean v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mNeedInit:Z

    .line 616
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mOriginBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/home/launcher/ProgressShortcutIcon;->initMamlView(Landroid/graphics/Bitmap;II)V

    .line 618
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz p1, :cond_5

    .line 619
    iget-object p0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mOriginBitmap:Landroid/graphics/Bitmap;

    const-string p2, "iconBitmap"

    invoke-virtual {p1, p2, p0}, Lcom/miui/maml/component/MamlView;->putVariableObject(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private initMamlView(Landroid/graphics/Bitmap;II)V
    .locals 5

    .line 225
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 226
    invoke-virtual {v0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->canAutoInstall(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x4

    const/4 v1, 0x0

    if-eq p3, v0, :cond_5

    const/4 v0, -0x5

    if-ne p3, v0, :cond_1

    goto :goto_2

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->onIconSetNull()V

    .line 236
    invoke-direct {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->createMamlView()V

    .line 237
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    const-string v2, "ProgressShortcutIcon"

    if-eqz v0, :cond_4

    .line 239
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 240
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLongClickable(Z)V

    .line 241
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 243
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/IconCache;->getMamlDownloadLight()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 245
    iget-object v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    const-string v4, "lightBitmap"

    invoke-virtual {v3, v4, v0}, Lcom/miui/maml/component/MamlView;->putVariableObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    const-string v3, "iconBitmap"

    invoke-virtual {v0, v3, p1}, Lcom/miui/maml/component/MamlView;->putVariableObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    const-string/jumbo v0, "uWavePer"

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v3, v4}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;D)V

    .line 249
    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    const-string v0, "SetNeedDrawTick"

    invoke-virtual {p1, v0, v3, v4}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;D)V

    int-to-float p1, p2

    .line 250
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ProgressShortcutIcon;->putMamlPercent(F)V

    .line 251
    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    iget-object p2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mNormalTickCallback:Lcom/miui/maml/component/MamlView$OnExternCommandListener;

    invoke-virtual {p1, p2}, Lcom/miui/maml/component/MamlView;->setOnExternCommandListener(Lcom/miui/maml/component/MamlView$OnExternCommandListener;)V

    if-ltz p3, :cond_3

    const/16 p1, 0x64

    if-gt p3, p1, :cond_3

    .line 253
    iput-boolean v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mPauseWhenInit:Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 255
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mPauseWhenInit:Z

    .line 257
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->resumeMamlView()V

    const-string p0, "Maml view init success"

    .line 258
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 260
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    const-string p0, "Maml view init fail"

    .line 263
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    .line 231
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->destroyDownloadMaml()V

    .line 232
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/LauncherIconImageView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo p2, "tick"

    .line 370
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-nez p1, :cond_0

    goto :goto_0

    .line 373
    :cond_0
    iget-boolean p2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mPauseWhenInit:Z

    if-nez p2, :cond_1

    .line 374
    iget p2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mUTime:F

    const/high16 p3, 0x3f800000    # 1.0f

    add-float/2addr p2, p3

    iput p2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mUTime:F

    .line 376
    :cond_1
    iget p2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mUTime:F

    const/high16 p3, 0x42700000    # 60.0f

    div-float/2addr p2, p3

    float-to-double p2, p2

    const-string/jumbo v0, "uTime"

    invoke-virtual {p1, v0, p2, p3}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;D)V

    .line 377
    iget-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    iget p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mUTime:F

    const/high16 p3, 0x40a00000    # 5.0f

    cmpl-float p1, p1, p3

    if-lez p1, :cond_3

    .line 378
    iget-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIsInRunningFolderSimpleOpenCloseAnim:Z

    if-nez p1, :cond_2

    .line 379
    iget-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/LauncherIconImageView;->setVisibility(I)V

    .line 381
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->resetIconImage()V

    .line 383
    :cond_3
    iget-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mPauseWhenInit:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 384
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mPauseWhenInit:Z

    .line 385
    invoke-direct {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->pauseMamlView()V

    :cond_4
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 0

    const-string p2, "ProgressShortcutIcon"

    const-string p3, "OnExternCommandListener  onPause"

    .line 391
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p2, "tick"

    .line 392
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-nez p0, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->onPause()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$startAfterDropAnimation$2(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 480
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 481
    iget v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mLastResumeAnimationValue:F

    sub-float v0, p2, v0

    .line 482
    iput p2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mLastResumeAnimationValue:F

    .line 483
    iget p1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    int-to-float v1, p1

    iget v2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mDragMamlViewPercent:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    div-float/2addr v0, v1

    add-float/2addr v2, v0

    int-to-float p1, p1

    cmpl-float p1, v2, p1

    if-ltz p1, :cond_0

    .line 488
    iget-object p0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    .line 491
    :cond_0
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/ProgressShortcutIcon;->updateMamlView(F)V

    return-void
.end method

.method private pauseMamlView()V
    .locals 2

    const-string v0, "ProgressShortcutIcon"

    const-string v1, "pause in"

    .line 399
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-nez v1, :cond_0

    const-string p0, "pause aborting"

    .line 401
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 404
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mPauseTickCallback:Lcom/miui/maml/component/MamlView$OnExternCommandListener;

    invoke-virtual {v1, p0}, Lcom/miui/maml/component/MamlView;->setOnExternCommandListener(Lcom/miui/maml/component/MamlView$OnExternCommandListener;)V

    return-void
.end method

.method private putMamlPercent(F)V
    .locals 2

    .line 329
    iget-object p0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz p0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    sub-float/2addr v0, p1

    float-to-double v0, v0

    const-string p1, "icon_percent"

    .line 330
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;D)V

    :cond_0
    return-void
.end method

.method private putMamlStatus(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 340
    invoke-direct {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->resumeMamlView()V

    goto :goto_1

    :cond_0
    const/4 v0, -0x4

    if-eq p1, v0, :cond_2

    const/4 v0, -0x5

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 345
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mPauseWhenInit:Z

    .line 346
    invoke-direct {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->resumeMamlView()V

    goto :goto_1

    .line 342
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherIconImageView;->setVisibility(I)V

    .line 343
    invoke-direct {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->destroyDownloadMaml()V

    :goto_1
    return-void
.end method

.method private resetIconImage()V
    .locals 4

    .line 624
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 626
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 627
    invoke-virtual {v1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getWaveDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    const/4 v3, 0x0

    .line 628
    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->setWaveDrawable(Landroid/graphics/drawable/BitmapDrawable;)V

    if-eqz v2, :cond_0

    .line 629
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mOriginBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 630
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mOriginBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 634
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 635
    invoke-super {p0, v0, v3}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method private resumeMamlView()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mVisible:Z

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mNormalTickCallback:Lcom/miui/maml/component/MamlView$OnExternCommandListener;

    invoke-virtual {v0, v1}, Lcom/miui/maml/component/MamlView;->setOnExternCommandListener(Lcom/miui/maml/component/MamlView$OnExternCommandListener;)V

    .line 361
    iget-object p0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->onResume()V

    :cond_0
    return-void
.end method

.method private setMamlDownloadViewAlpha(Z)V
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIsInRunningFolderSimpleOpenCloseAnim:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 110
    iget-object p0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private setNotDrawMaml()V
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIsInRunningFolderSimpleOpenCloseAnim:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    instance-of v0, p0, Lcom/miui/home/launcher/ProgressIconImageView;

    if-eqz v0, :cond_0

    .line 116
    check-cast p0, Lcom/miui/home/launcher/ProgressIconImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ProgressIconImageView;->setIsDrawMaml(Z)V

    :cond_0
    return-void
.end method

.method private startAfterDropAnimation()V
    .locals 8

    .line 455
    iget-boolean v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mRestorePercent:Z

    if-eqz v0, :cond_6

    .line 456
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 459
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 460
    iget v1, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mDragMamlViewPercent:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    return-void

    .line 463
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mDetachTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x64

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    return-void

    :cond_2
    const/4 v3, 0x1

    .line 467
    iput-boolean v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mForbidUpdate:Z

    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 468
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    .line 469
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x258

    cmp-long v5, v1, v3

    if-gez v5, :cond_3

    .line 471
    iget-object v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_3
    const-wide/16 v5, 0x5dc

    cmp-long v7, v1, v5

    if-gez v7, :cond_4

    .line 473
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_4
    const-wide/16 v3, 0xbb8

    cmp-long v1, v1, v3

    if-gez v1, :cond_5

    .line 475
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 477
    :cond_5
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 479
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/home/launcher/ProgressShortcutIcon$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/ProgressShortcutIcon$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/ProgressShortcutIcon;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 493
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/ProgressShortcutIcon$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/ProgressShortcutIcon$1;-><init>(Lcom/miui/home/launcher/ProgressShortcutIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 514
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x0

    .line 515
    iput-boolean v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mRestorePercent:Z

    :cond_6
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateMamlDownloadViewScale()V
    .locals 5

    .line 175
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 181
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v1

    .line 182
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result v2

    .line 184
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v3, :cond_2

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gtz v4, :cond_1

    goto :goto_0

    :cond_1
    int-to-float v0, v1

    int-to-float v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v1, v3

    div-float/2addr v0, v1

    int-to-float v1, v2

    int-to-float v2, v4

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    .line 192
    iget-object v2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 193
    iget-object p0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void

    .line 185
    :cond_2
    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 186
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private updateMamlView(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x42c80000    # 100.0f

    .line 521
    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mDragMamlViewPercent:F

    .line 522
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ProgressShortcutIcon;->putMamlPercent(F)V

    return-void
.end method

.method private updateProgressShortcutIconSize()V
    .locals 1

    .line 170
    invoke-direct {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->updateMamlDownloadViewScale()V

    .line 171
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->updateViewSize(Landroid/view/View;)V

    return-void
.end method

.method private updateViewSize(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 202
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result p1

    .line 203
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v0

    .line 204
    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, p1, :cond_1

    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, v0, :cond_2

    .line 205
    :cond_1
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 206
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_2
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .line 122
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isDrawingInThumbnailView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    .line 126
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getDownloadTextureView()Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v2, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    .line 129
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    .line 130
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    add-int/2addr v3, v0

    int-to-float v0, v3

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 128
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method public drawDragView(Landroid/graphics/Canvas;)V
    .locals 7

    .line 535
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-nez v0, :cond_0

    return-void

    .line 539
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    .line 540
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getIconContainer()Landroid/view/View;

    move-result-object v1

    .line 541
    iget-object v2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 543
    iget-object v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mTempDstRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 544
    iget-object v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mTempDstRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v4

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 545
    iget-object v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mTempDstRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v5, v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    add-int/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 546
    check-cast v2, Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mTempDstRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 549
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getDownloadTextureView()Landroid/view/TextureView;
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 291
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 292
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/TextureView;

    if-eqz v1, :cond_0

    .line 293
    iget-object p0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/TextureView;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDownloadView()Lcom/miui/maml/component/MamlView;
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    return-object p0
.end method

.method public getIconHotClickBounds(Landroid/graphics/Rect;)V
    .locals 5

    .line 640
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 642
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mClickPadding:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    .line 643
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mClickPadding:I

    sub-int/2addr v2, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    .line 644
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getRight()I

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mClickPadding:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    .line 645
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mClickPadding:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 641
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public needPostWhenDrop()Z
    .locals 0

    .line 527
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->pauseSelfIfNeed()V

    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 417
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    const-string v0, "ProgressShortcutIcon"

    const-string v1, "MamlView Attached To Window"

    .line 418
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-nez v0, :cond_0

    return-void

    .line 422
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->restoreIconStatus()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 427
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->onDetachedFromWindow()V

    const-string v0, "ProgressShortcutIcon"

    const-string v1, "MamlView Detached From Window"

    .line 428
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-nez v0, :cond_0

    return-void

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mNormalTickCallback:Lcom/miui/maml/component/MamlView$OnExternCommandListener;

    invoke-virtual {v0, v1}, Lcom/miui/maml/component/MamlView;->setOnExternCommandListener(Lcom/miui/maml/component/MamlView$OnExternCommandListener;)V

    .line 433
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->recordDragStatus()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->onFinishInflate()V

    const v0, 0x7f0a0200

    .line 85
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mFrameLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method public onIconRemoved()V
    .locals 0

    .line 585
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->onIconRemoved()V

    .line 586
    invoke-direct {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->destroyDownloadMaml()V

    return-void
.end method

.method public onIconSetNull()V
    .locals 0

    .line 591
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->onIconSetNull()V

    .line 592
    iget-object p0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz p0, :cond_0

    .line 593
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->onDestroy()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->updateProgressShortcutIconSize()V

    .line 166
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->onMeasure(II)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 219
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->onPause()V

    const/4 v0, 0x0

    .line 220
    iput-boolean v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mVisible:Z

    .line 221
    invoke-direct {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->pauseMamlView()V

    return-void
.end method

.method public onProgressStatusChanged()V
    .locals 1

    .line 90
    invoke-super {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->onProgressStatusChanged()V

    .line 91
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 92
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->updateDownloadView(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 212
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->onResume()V

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mVisible:Z

    .line 214
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->onProgressStatusChanged()V

    return-void
.end method

.method public pauseSelfIfNeed()V
    .locals 2

    .line 302
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 303
    iget v0, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    if-ltz v0, :cond_0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 305
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->pauseMamlView()V

    :cond_1
    return-void
.end method

.method public rebindInfo(Lcom/miui/home/launcher/ItemInfo;Landroid/view/ViewGroup;)V
    .locals 0

    .line 409
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsViewRebindInfo;->rebindInfo(Lcom/miui/home/launcher/ItemInfo;Landroid/view/ViewGroup;)V

    .line 410
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 411
    iget p2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ProgressShortcutIcon;->putMamlStatus(I)V

    .line 412
    iget p1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ProgressShortcutIcon;->putMamlPercent(F)V

    return-void
.end method

.method public recordDragStatus()V
    .locals 2

    .line 437
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    iget v0, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mDragMamlViewPercent:F

    const/4 v0, 0x1

    .line 438
    iput-boolean v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mRestorePercent:Z

    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mDetachTime:J

    return-void
.end method

.method public restoreIconStatus()V
    .locals 2

    .line 445
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    iget v0, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    if-ltz v0, :cond_0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    .line 447
    invoke-direct {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->startAfterDropAnimation()V

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 449
    iput-boolean v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mPauseWhenInit:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setDownloadTag()V
    .locals 4

    .line 554
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-nez v0, :cond_0

    return-void

    .line 557
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getDownloadTextureView()Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 559
    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 560
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getDownloadView()Lcom/miui/maml/component/MamlView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 561
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 562
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 563
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->setWaveDrawable(Landroid/graphics/drawable/BitmapDrawable;)V

    const/4 v0, 0x0

    .line 565
    invoke-super {p0, v2, v0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 143
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->needMamlProgressIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    .line 144
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 145
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 147
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mOriginBitmap:Landroid/graphics/Bitmap;

    .line 149
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/ProgressShortcutIcon;->DARK_FILTER:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 151
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 152
    invoke-virtual {v0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getWaveDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 153
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 154
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->updateDownloadView(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method public bridge synthetic setIgnoreAnimationForOnce(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setIgnoreAnimationForOnce(Z)V

    return-void
.end method

.method public setInRunningFolderSimpleOpenCloseAnimStatus(Z)V
    .locals 0

    .line 352
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIsInRunningFolderSimpleOpenCloseAnim:Z

    return-void
.end method

.method public setMamlDownloadVisibility(Z)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ProgressShortcutIcon;->setMamlDownloadViewAlpha(Z)V

    .line 104
    invoke-direct {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->setNotDrawMaml()V

    return-void
.end method

.method public bridge synthetic setTag(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/IShortcutIcon;->setTag(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method public updateDownloadView(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    .line 313
    check-cast p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 314
    iget v0, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    iget v1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/ProgressShortcutIcon;->initMamlIfNeed(II)V

    .line 315
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mForbidUpdate:Z

    if-nez v0, :cond_0

    .line 319
    iget v0, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->putMamlStatus(I)V

    .line 320
    iget v0, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->putMamlPercent(F)V

    .line 322
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    instance-of v0, p0, Lcom/miui/home/launcher/ProgressIconImageView;

    if-eqz v0, :cond_1

    .line 323
    check-cast p0, Lcom/miui/home/launcher/ProgressIconImageView;

    iget p1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ProgressIconImageView;->setProgress(I)V

    :cond_1
    return-void
.end method

.method public updateMamlDownloadVisible()V
    .locals 1

    .line 97
    iget-object p0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0}, Lcom/miui/maml/component/MamlView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateSizeOnIconSizeChanged()V
    .locals 0

    .line 159
    invoke-super {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->updateSizeOnIconSizeChanged()V

    .line 160
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method
