.class public Lcom/miui/home/launcher/BaseProgressShortcutIcon;
.super Lcom/miui/home/launcher/ItemIcon;
.source "BaseProgressShortcutIcon.java"

# interfaces
.implements Lcom/miui/home/launcher/DropTarget;
.implements Lcom/miui/launcher/utils/ToggleManagerUtils$MiuiToggleChangedListener;
.implements Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
.implements Lcom/miui/home/launcher/IShortcutIcon;
.implements Lcom/miui/home/launcher/hotseats/HotSeatsViewRebindInfo;


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static sEnableLoadingAnim:Z = false


# instance fields
.field hideAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private isChecked:Z

.field private mCheckBoxDiameter:I

.field private mCheckBoxDrawableScale:F

.field private mCheckBoxVisibility:I

.field private mCheckboxDrawable:Landroid/graphics/drawable/Drawable;

.field private mClickRunnable:Ljava/lang/Runnable;

.field protected mContext:Landroid/content/Context;

.field protected mFolderCreationBg:Landroid/widget/ImageView;

.field mFolderCreationBgHideState:Lmiuix/animation/controller/AnimState;

.field mFolderCreationBgShowState:Lmiuix/animation/controller/AnimState;

.field private mGeneralScaleType:Landroid/widget/ImageView$ScaleType;

.field private mIsAnimating:Z

.field protected mIsHideCheckBox:Z

.field private mIsInRunningFolderSimpleCloseAnim:Z

.field private mIsMultiDrag:Z

.field private mIsShowingCheckBox:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLock:Ljava/lang/Object;

.field private mPerformHapticRunnable:Ljava/lang/Runnable;

.field public mResetBackAnimRunnable:Ljava/lang/Runnable;

.field private mShowOrHideCheckBoxAnim:Landroid/animation/ValueAnimator;

.field private mStopLoading:Z

.field private releaseDrawableRunanble:Ljava/lang/Runnable;

.field showAnimConfig:Lmiuix/animation/base/AnimConfig;


# direct methods
.method public static synthetic $r8$lambda$89DHiHpocLh4qo7xMvz_8dJQ2J4(Lcom/miui/home/launcher/BaseProgressShortcutIcon;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->lambda$fromXml$0(Lcom/miui/home/launcher/BaseProgressShortcutIcon;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YxbRcsvCEc8FOi7BViH7k8HNxk4(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$f8S8L6vvHXIZKgOUO1BB3wGvtuI(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$onVCn6hAPHaY444T5zibk-_xHvA(Lcom/miui/home/launcher/BaseProgressShortcutIcon;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->lambda$initShowOrHideCheckBoxAnim$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 97
    sput-object v0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ItemIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 79
    iput-boolean p2, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mStopLoading:Z

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mIsHideCheckBox:Z

    .line 82
    iput-boolean v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mIsShowingCheckBox:Z

    const/4 v1, 0x4

    .line 83
    iput v1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckBoxVisibility:I

    .line 86
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mLock:Ljava/lang/Object;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 373
    iput v1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckBoxDrawableScale:F

    .line 375
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckBoxDiameter:I

    .line 478
    new-instance v1, Lcom/miui/home/launcher/BaseProgressShortcutIcon$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)V

    iput-object v1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mPerformHapticRunnable:Ljava/lang/Runnable;

    .line 522
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const v2, 0x3f59999a    # 0.85f

    const v3, 0x3eb33333    # 0.35f

    .line 523
    invoke-static {v2, v3}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-array v4, p2, [Lmiuix/animation/listener/TransitionListener;

    new-instance v5, Lcom/miui/home/launcher/BaseProgressShortcutIcon$7;

    invoke-direct {v5, p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon$7;-><init>(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)V

    aput-object v5, v4, v0

    .line 524
    invoke-virtual {v1, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->showAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 536
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 537
    invoke-static {v2, v3}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-array p2, p2, [Lmiuix/animation/listener/TransitionListener;

    new-instance v2, Lcom/miui/home/launcher/BaseProgressShortcutIcon$8;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon$8;-><init>(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)V

    aput-object v2, p2, v0

    .line 538
    invoke-virtual {v1, p2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->hideAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 547
    new-instance p2, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v0, "showState"

    invoke-direct {p2, v0}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    sget v1, Lcom/miui/home/launcher/FolderIcon;->DEFAULT_DRAG_OVER_ANIM_SCALE:F

    float-to-double v1, v1

    .line 548
    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    sget v2, Lcom/miui/home/launcher/FolderIcon;->DEFAULT_DRAG_OVER_ANIM_SCALE:F

    float-to-double v2, v2

    .line 549
    invoke-virtual {p2, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 550
    invoke-virtual {p2, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mFolderCreationBgShowState:Lmiuix/animation/controller/AnimState;

    .line 551
    new-instance p2, Lmiuix/animation/controller/AnimState;

    const-string v5, "hideState"

    invoke-direct {p2, v5}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 552
    invoke-virtual {p2, v0, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    .line 553
    invoke-virtual {p2, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    const-wide/16 v0, 0x0

    .line 554
    invoke-virtual {p2, v2, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mFolderCreationBgHideState:Lmiuix/animation/controller/AnimState;

    .line 841
    new-instance p2, Lcom/miui/home/launcher/BaseProgressShortcutIcon$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)V

    iput-object p2, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mResetBackAnimRunnable:Ljava/lang/Runnable;

    .line 880
    new-instance p2, Lcom/miui/home/launcher/BaseProgressShortcutIcon$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)V

    iput-object p2, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->releaseDrawableRunanble:Ljava/lang/Runnable;

    .line 950
    new-instance p2, Lcom/miui/home/launcher/BaseProgressShortcutIcon$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)V

    iput-object p2, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mClickRunnable:Ljava/lang/Runnable;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mContext:Landroid/content/Context;

    .line 104
    invoke-direct {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->initCheckBoxDrawable()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 65
    sget-boolean v0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->sEnableLoadingAnim:Z

    return v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mStopLoading:Z

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mIsShowingCheckBox:Z

    return p0
.end method

.method static synthetic access$302(Lcom/miui/home/launcher/BaseProgressShortcutIcon;I)I
    .locals 0

    .line 65
    iput p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckBoxVisibility:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->updateContentDescription()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)Ljava/lang/Runnable;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mClickRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static createShortcutIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/BaseProgressShortcutIcon;
    .locals 2

    .line 305
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    .line 306
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 307
    iget-object p2, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    if-eqz p2, :cond_0

    const v0, 0x7f1103c8

    .line 308
    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 309
    iget-object p2, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/miui/home/launcher/common/Utilities;->setTitleShadow(Landroid/content/Context;Landroid/widget/TextView;I)V

    :cond_0
    return-object p0
.end method

.method private drawCheckBox(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1017
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->isNeedDrawCheckBox()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1020
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1021
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1022
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->getIconBounds(Landroid/graphics/Rect;)V

    .line 1023
    iget v1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckBoxDiameter:I

    div-int/lit8 v1, v1, 0x2

    .line 1024
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    .line 1025
    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    .line 1026
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/home/launcher/ItemIcon;->mOutDistance:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    .line 1027
    iget v5, p0, Lcom/miui/home/launcher/ItemIcon;->mOutDistance:I

    int-to-float v5, v5

    sub-float v5, v0, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    .line 1028
    iget v5, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckBoxDiameter:I

    iget v6, p0, Lcom/miui/home/launcher/ItemIcon;->mOutDistance:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v3

    int-to-float v3, v5

    add-int/2addr v6, v4

    int-to-float v4, v6

    sub-float/2addr v2, v3

    sub-float/2addr v0, v4

    .line 1030
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1031
    iget v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckBoxDrawableScale:F

    int-to-float v1, v1

    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1032
    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckboxDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1033
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public static fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/BaseProgressShortcutIcon;
    .locals 6

    .line 246
    monitor-enter p3

    .line 247
    :try_start_0
    invoke-virtual {p3, p2}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p2, :cond_1

    .line 249
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/ItemIcon;->createItemIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    .line 250
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 251
    invoke-virtual {p3, v0, p2}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/IShortcutIcon;Landroid/view/ViewGroup;)V

    .line 253
    :cond_1
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const/4 v1, 0x0

    .line 257
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    .line 258
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 259
    instance-of v4, p2, Landroid/widget/AbsListView;

    if-eqz v4, :cond_6

    .line 260
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderCellWidth()I

    move-result p2

    .line 261
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderCellHeight()I

    move-result v4

    if-nez p0, :cond_2

    .line 263
    new-instance p0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {p0, p2, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    :goto_0
    move-object v1, p0

    goto :goto_1

    .line 264
    :cond_2
    iget v5, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v5, p2, :cond_3

    iget v5, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v5, v4, :cond_4

    .line 265
    :cond_3
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 266
    iput v4, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 269
    :cond_4
    :goto_1
    instance-of p2, p0, Landroid/widget/AbsListView$LayoutParams;

    if-nez p2, :cond_5

    .line 270
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    :cond_5
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 273
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 274
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ItemIcon;->setTextAlpha(F)V

    .line 275
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 276
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLongClickable(Z)V

    .line 277
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/ItemIcon;->setEnableAutoLayoutAnimation(Z)V

    const p0, 0x7f0600da

    .line 279
    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_2

    .line 281
    :cond_6
    invoke-static {p0, p2}, Lcom/miui/home/launcher/ItemIcon;->createDefaultLayoutParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 p0, 0x1

    .line 282
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 283
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ItemIcon;->setEnableAutoLayoutAnimation(Z)V

    const p0, 0x7f060125

    .line 285
    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    :goto_2
    const p2, 0x7f1103c8

    if-eqz v1, :cond_7

    .line 288
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    iget-object v1, v0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    if-eqz v1, :cond_7

    .line 290
    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 291
    iget-object p2, v0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    invoke-static {p1, p2, p0}, Lcom/miui/home/launcher/common/Utilities;->setTitleShadow(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 295
    :cond_7
    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/ShortcutInfo;->updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V

    .line 297
    new-instance p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$$ExternalSyntheticLambda5;

    invoke-direct {p0, v0, p3, p1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon$$ExternalSyntheticLambda5;-><init>(Lcom/miui/home/launcher/BaseProgressShortcutIcon;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    .line 300
    monitor-exit p3

    return-object v0

    :catchall_0
    move-exception p0

    .line 301
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getItemAnimIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [F

    .line 197
    fill-array-data p0, :array_0

    const-string v0, "alpha"

    invoke-static {p1, v0, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 198
    new-instance p1, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;

    invoke-direct {p1}, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xc8

    .line 199
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method private getItemAnimOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [F

    .line 190
    fill-array-data p0, :array_0

    const-string v0, "alpha"

    invoke-static {p1, v0, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 191
    new-instance p1, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseInInterpolater;

    invoke-direct {p1}, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseInInterpolater;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xc8

    .line 192
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method private initCheckBoxDrawable()V
    .locals 3

    .line 382
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1100d1

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f08044b

    .line 383
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckboxDrawable:Landroid/graphics/drawable/Drawable;

    .line 384
    invoke-direct {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->updateBadgeConfig()V

    .line 385
    iget-object v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckboxDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 386
    iget-object v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckboxDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckboxDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method private initShowOrHideCheckBoxAnim()V
    .locals 3

    .line 356
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mShowOrHideCheckBoxAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    .line 357
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 358
    iget-object v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mShowOrHideCheckBoxAnim:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/miui/home/launcher/common/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 359
    iget-object v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mShowOrHideCheckBoxAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/BaseProgressShortcutIcon$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 362
    iget-object v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mShowOrHideCheckBoxAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/BaseProgressShortcutIcon$6;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon$6;-><init>(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private isDropable(Lcom/miui/home/launcher/DragObject;)Z
    .locals 2

    .line 557
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 558
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v1, 0x12

    if-eq p0, v1, :cond_1

    .line 559
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eq p0, v0, :cond_1

    .line 560
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v1, 0xe

    if-eq p0, v1, :cond_1

    .line 561
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 p1, 0xb

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static synthetic lambda$fromXml$0(Lcom/miui/home/launcher/BaseProgressShortcutIcon;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 4

    .line 297
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long p1, v0, v2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 299
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 297
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->setEditMode(ZZ)V

    return-void
.end method

.method private synthetic lambda$initShowOrHideCheckBoxAnim$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 360
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->updateCheckBoxAnimProgress(F)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    .line 478
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterOrCreateFolder(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 1

    .line 881
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 882
    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->clearDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 883
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private scaleDownToFolder(Z)V
    .locals 8

    .line 498
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 499
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderPreviewWidth()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    sub-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v1, v3

    div-float/2addr v1, v0

    .line 503
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 504
    iget-object v3, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    sub-float/2addr v0, v2

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setPivotX(F)V

    goto :goto_0

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v3

    add-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 508
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getY()F

    move-result v3

    add-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setPivotY(F)V

    const v0, 0x3e99999a    # 0.3f

    const v2, 0x3f733333    # 0.95f

    const-string/jumbo v3, "state_show"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_1

    .line 510
    new-instance p1, Lmiuix/animation/controller/AnimState;

    invoke-direct {p1, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v6, v1

    .line 511
    invoke-virtual {p1, v3, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 512
    invoke-virtual {p1, v1, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    new-array v1, v5, [Landroid/view/View;

    .line 513
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    aput-object p0, v1, v4

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-array v1, v5, [Lmiuix/animation/base/AnimConfig;

    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    invoke-static {v2, v0}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    invoke-virtual {v3, v0}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-interface {p0, p1, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 515
    :cond_1
    new-instance p1, Lmiuix/animation/controller/AnimState;

    invoke-direct {p1, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 516
    invoke-virtual {p1, v1, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 517
    invoke-virtual {p1, v1, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    new-array v1, v5, [Landroid/view/View;

    .line 518
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    aput-object p0, v1, v4

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-array v1, v5, [Lmiuix/animation/base/AnimConfig;

    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    invoke-static {v2, v0}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    invoke-virtual {v3, v0}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-interface {p0, p1, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :goto_1
    return-void
.end method

.method public static setEnableLoadingAnim(Z)V
    .locals 0

    .line 108
    sput-boolean p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->sEnableLoadingAnim:Z

    return-void
.end method

.method private showCheckBox(ZLcom/miui/home/launcher/ShortcutInfo;Z)V
    .locals 0

    .line 624
    invoke-virtual {p2}, Lcom/miui/home/launcher/ItemInfo;->isInFolder()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result p2

    if-nez p2, :cond_2

    .line 625
    iput-boolean p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mIsShowingCheckBox:Z

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    .line 626
    :goto_0
    iput p2, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckBoxVisibility:I

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 627
    :goto_1
    iput p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckBoxDrawableScale:F

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    .line 630
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->showOrHideCheckBoxWithAnim(Z)V

    goto :goto_2

    .line 632
    :cond_3
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->quickHideOrShowCheckbox(Z)V

    .line 635
    :goto_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method private showFolderCreateBackground(Z)V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 482
    iget-object p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 483
    invoke-static {v1}, Lcom/miui/home/launcher/common/BlurUtilities;->isFolderBlurSupported(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 484
    iget-object v2, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    invoke-static {p1, v3, v4}, Lcom/miui/home/launcher/common/BlurUtilities;->getFolderIconBlurRoundRectRadius(Landroid/content/Context;Ljava/lang/Boolean;Landroid/widget/ImageView;)I

    move-result v3

    const v4, -0x4c89898a

    const/16 v5, 0x64

    const v6, 0x66b4b4b4

    const/16 v7, 0x64

    const v8, -0xeb6c00

    const/16 v9, 0x6a

    const v10, -0xd10e00

    const/16 v11, 0x6a

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lcom/miui/home/launcher/common/BlurUtilities;->setFolderIconBlur(Landroid/view/View;IIIIIIIIII)V

    :cond_0
    new-array p1, v1, [Landroid/view/View;

    .line 488
    iget-object v2, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    aput-object v2, p1, v0

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mFolderCreationBgShowState:Lmiuix/animation/controller/AnimState;

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->showAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p0, v1, v0

    invoke-interface {p1, v2, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_1
    new-array p1, v1, [Landroid/view/View;

    .line 490
    iget-object v2, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    aput-object v2, p1, v0

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mFolderCreationBgHideState:Lmiuix/animation/controller/AnimState;

    new-array v3, v1, [Lmiuix/animation/base/AnimConfig;

    iget-object v4, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->hideAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object v4, v3, v0

    invoke-interface {p1, v2, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 491
    invoke-static {v1}, Lcom/miui/home/launcher/common/BlurUtilities;->isFolderBlurSupported(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 492
    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->clearAllBlur(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private startLoading([Landroid/view/View;)V
    .locals 8

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 134
    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    array-length v1, p1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->getItemAnimIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 137
    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->getItemAnimOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v2, 0x1

    .line 139
    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->getItemAnimIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 140
    aget-object v2, p1, v2

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->getItemAnimOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v4, 0x2

    .line 142
    aget-object v5, p1, v4

    invoke-direct {p0, v5}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->getItemAnimIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 143
    aget-object v4, p1, v4

    invoke-direct {p0, v4}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->getItemAnimOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v6, 0x3

    .line 145
    aget-object v7, p1, v6

    invoke-direct {p0, v7}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->getItemAnimIn(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 146
    aget-object p1, p1, v6

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->getItemAnimOut(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 147
    new-instance v6, Lcom/miui/home/launcher/BaseProgressShortcutIcon$1;

    invoke-direct {v6, p0, v0, v3}, Lcom/miui/home/launcher/BaseProgressShortcutIcon$1;-><init>(Lcom/miui/home/launcher/BaseProgressShortcutIcon;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 157
    new-instance v0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$2;

    invoke-direct {v0, p0, v2, v5}, Lcom/miui/home/launcher/BaseProgressShortcutIcon$2;-><init>(Lcom/miui/home/launcher/BaseProgressShortcutIcon;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 167
    new-instance v0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$3;

    invoke-direct {v0, p0, v4, v7}, Lcom/miui/home/launcher/BaseProgressShortcutIcon$3;-><init>(Lcom/miui/home/launcher/BaseProgressShortcutIcon;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v5, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 177
    new-instance v0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$4;

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon$4;-><init>(Lcom/miui/home/launcher/BaseProgressShortcutIcon;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 186
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateBadgeConfig()V
    .locals 2

    .line 392
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckBoxDiameter:I

    .line 393
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 394
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isPocoDefaultIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0705e9

    goto :goto_0

    :cond_0
    const v1, 0x7f0700ac

    .line 393
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ItemIcon;->mOutDistance:I

    .line 395
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconMessageParams:Lcom/miui/home/launcher/IconMessageRender$DrawParams;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->setOutDistance(I)V

    .line 396
    iget-object v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckboxDrawable:Landroid/graphics/drawable/Drawable;

    iget p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckBoxDiameter:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private updateContentDescription()V
    .locals 5

    .line 786
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 787
    iget-object v1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckboxDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mIsShowingCheckBox:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 791
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f100138

    goto :goto_0

    :cond_1
    const v2, 0x7f100139

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 794
    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 788
    :cond_2
    :goto_1
    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public OnToggleChanged(I)V
    .locals 6

    .line 323
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v0, :cond_0

    return-void

    .line 325
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getToggleId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 326
    iget-object p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_1

    .line 327
    iget-object p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->loadToggleBackground(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    .line 328
    iget-object v2, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Lcom/miui/home/launcher/BaseProgressShortcutIcon$5;

    invoke-direct {v5, p0, p1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon$5;-><init>(Lcom/miui/home/launcher/BaseProgressShortcutIcon;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    .line 335
    iget-object p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/launcher/utils/ToggleManagerUtils;->getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ItemIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 336
    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->getParentFolderIcon(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    .line 338
    invoke-interface {p0, p1}, Lcom/miui/home/launcher/Folder$FolderCallback;->loadItemIcons(Z)V

    :cond_1
    return-void
.end method

.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 2

    .line 573
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 576
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->isDropable(Lcom/miui/home/launcher/DragObject;)Z

    move-result p0

    return p0
.end method

.method public checkCheckBox(Z)V
    .locals 0

    .line 664
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->setChecked(Z)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1012
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ItemIcon;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1013
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->drawCheckBox(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 818
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 819
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 581
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isDrawingInThumbnailView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleContainer:Lcom/miui/home/launcher/ItemIconTitleContainer;

    if-ne p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 586
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ItemIcon;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method public drawOutLine(Landroid/graphics/Canvas;)V
    .locals 2

    .line 808
    iget-object v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 809
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ItemIcon;->setDrawOutline(Z)V

    .line 810
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->draw(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    .line 811
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ItemIcon;->setDrawOutline(Z)V

    .line 812
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 0

    .line 704
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->drawableHotspotChanged(FF)V

    .line 706
    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckboxDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 707
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    .line 678
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->drawableStateChanged()V

    .line 680
    iget-object v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckboxDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 685
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->CHECKED_STATE_SET:[I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v1

    .line 686
    iget v2, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckBoxVisibility:I

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->isChecked:Z

    if-eqz v1, :cond_2

    .line 687
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 688
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 689
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public getBackAnimPreviewDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 888
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getContentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 993
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;
    .locals 5

    .line 799
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v0

    const v1, 0x7f100091

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 800
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 801
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v3, v4

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 803
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHitView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getIconRadius()F
    .locals 1

    .line 939
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 940
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->getDefaultIconRadius(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const v0, 0x40951eb8    # 4.66f

    div-float/2addr p0, v0

    float-to-int p0, p0

    :goto_0
    int-to-float p0, p0

    return p0

    .line 942
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result p0

    if-eqz p0, :cond_2

    const/high16 p0, 0x42300000    # 44.0f

    goto :goto_1

    :cond_2
    const/high16 p0, 0x42100000    # 36.0f

    :goto_1
    return p0
.end method

.method public getIconTransparentEdge()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLayerAdaptiveIconDrawable()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;
    .locals 1

    .line 905
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->getBackAnimPreviewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 906
    instance-of v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-eqz v0, :cond_0

    .line 907
    check-cast p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMirrorDragListener()Lcom/miui/home/library/mirror/MirrorDragListener;
    .locals 1

    .line 954
    new-instance v0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$10;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon$10;-><init>(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)V

    return-object v0
.end method

.method public getMirrorMenuListener()Lcom/miui/home/library/mirror/MirrorMenuListener;
    .locals 1

    .line 923
    new-instance v0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$9;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon$9;-><init>(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)V

    return-object v0
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 0

    return-object p0
.end method

.method public getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    .line 914
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    .line 915
    instance-of v0, p0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 916
    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasFocusable()Z
    .locals 1

    .line 737
    iget-boolean v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mIsShowingCheckBox:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 740
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->hasFocusable()Z

    move-result p0

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->hasOverlappingRendering(Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    return p0
.end method

.method public isCanChecked()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 728
    iget-boolean p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->isChecked:Z

    return p0
.end method

.method public isDropEnabled()Z
    .locals 1

    .line 437
    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected isNeedDrawCheckBox()Z
    .locals 1

    .line 1037
    iget v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckBoxVisibility:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isDrawingInThumbnailView()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mDrawOutline:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mIsMultiDrag:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mIsHideCheckBox:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mIsInRunningFolderSimpleCloseAnim:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPairIcon()Z
    .locals 1

    .line 1007
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isPairIcon()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShownCheckBox()Z
    .locals 0

    .line 1003
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isPairIcon()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 0

    .line 696
    invoke-super {p0}, Landroid/widget/RelativeLayout;->jumpDrawablesToCurrentState()V

    .line 697
    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckboxDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 698
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public needPostWhenDrop()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBackAnimStart()V
    .locals 1

    const/4 v0, 0x4

    .line 828
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->setIconVisibility(I)V

    return-void
.end method

.method public onBackAnimStop()V
    .locals 1

    const/4 v0, 0x0

    .line 864
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->setIconVisibility(I)V

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    .line 669
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 670
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 671
    sget-object p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->CHECKED_STATE_SET:[I

    invoke-static {p1, p0}, Landroid/widget/RelativeLayout;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 4

    const/4 v0, 0x1

    .line 458
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->scaleDownToFolder(Z)V

    .line 459
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->showFolderCreateBackground(Z)V

    .line 460
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 461
    iget-object v1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mPerformHapticRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 462
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const p0, 0x7f10006d

    invoke-virtual {v1, p0, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragObject;->announce(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    const/4 p1, 0x0

    .line 472
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->scaleDownToFolder(Z)V

    .line 473
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->showFolderCreateBackground(Z)V

    .line 474
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 475
    iget-object p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mPerformHapticRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 2

    .line 446
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->isDropable(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 447
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->showFolderCreateBackground(Z)V

    .line 448
    iget-object v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    .line 449
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 448
    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/Workspace;->createUserFolderWithDragOverlap(Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ShortcutInfo;)Z

    .line 450
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragObject;->setOnDropAnnounce(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public onDropCompleted()V
    .locals 0

    return-void
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 345
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->onFinishInflate()V

    .line 346
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mGeneralScaleType:Landroid/widget/ImageView$ScaleType;

    const v0, 0x7f0a01fa

    .line 347
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    .line 348
    invoke-direct {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->initShowOrHideCheckBoxAnim()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 401
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ItemIcon;->onMeasure(II)V

    .line 402
    invoke-direct {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->updateBadgeConfig()V

    return-void
.end method

.method public onProgressStatusChanged()V
    .locals 2

    .line 233
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 234
    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    .line 235
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onlyShowIconWhenDrawChild()V
    .locals 1

    .line 775
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->onlyShowIconWhenDrawChild()V

    const/4 v0, 0x1

    .line 776
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->setIsHideCheckBox(Z)V

    return-void
.end method

.method public quickHideOrShowCheckbox(Z)V
    .locals 1

    .line 639
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->isShownCheckBox()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 642
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mIsShowingCheckBox:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 645
    :cond_1
    iput-boolean p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mIsShowingCheckBox:Z

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    .line 646
    :goto_0
    iput v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckBoxVisibility:I

    if-eqz p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 647
    :goto_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->updateCheckBoxAnimProgress(F)V

    .line 648
    invoke-direct {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->updateContentDescription()V

    return-void
.end method

.method public resetBackAnim()V
    .locals 1

    .line 869
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_OREO:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->getLayerAdaptiveIconDrawable()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSpringLayerBackController()Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->getLayerAdaptiveIconDrawable()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;->resetBackAnim(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;)V

    goto :goto_0

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->releaseDrawableRunanble:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public resetCheckBox()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 406
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->updateCheckBoxAnimProgress(F)V

    return-void
.end method

.method public resetIShortcutIcon(Landroid/view/View;)V
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 418
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 419
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    const/4 p0, 0x0

    .line 420
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 421
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public resetInRunningFolderSimpleCloseAnimStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 763
    iput-boolean v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mIsInRunningFolderSimpleCloseAnim:Z

    .line 764
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    if-eqz p0, :cond_0

    .line 765
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public restoreToInitState()V
    .locals 2

    const/4 v0, 0x0

    .line 744
    iput-boolean v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mIsMultiDrag:Z

    .line 745
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getIconContainer()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 746
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getIconContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 747
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getTitleContainer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getTitleContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 749
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getTitleContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 750
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getTitleContainer()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 717
    iget-boolean v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->isChecked:Z

    if-eq v0, p1, :cond_0

    .line 718
    iput-boolean p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->isChecked:Z

    .line 719
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object p1

    iget-boolean v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->isChecked:Z

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onShortCutIconChecked(ZLcom/miui/home/launcher/ShortcutInfo;)V

    .line 720
    invoke-direct {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->updateContentDescription()V

    .line 721
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performCheckedStateInEditMode(Landroid/view/View;)V

    .line 723
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public setEditMode(ZZ)V
    .locals 2

    .line 611
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->onEditModeChange(Z)V

    if-eqz p1, :cond_0

    .line 612
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 615
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 616
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->isShownCheckBox()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 617
    invoke-direct {p0, p1, v0, p2}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->showCheckBox(ZLcom/miui/home/launcher/ShortcutInfo;Z)V

    .line 620
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->updateContentDescription()V

    return-void
.end method

.method public setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 226
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ItemIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 228
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mGeneralScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    return-void
.end method

.method public setIconTitleVisible(Z)V
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherIconImageView;->setVisibility(I)V

    .line 593
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    .line 594
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public bridge synthetic setIgnoreAnimationForOnce(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setIgnoreAnimationForOnce(Z)V

    return-void
.end method

.method public setInRunningFolderSimpleCloseAnimStatus(Z)V
    .locals 0

    .line 756
    iput-boolean p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mIsInRunningFolderSimpleCloseAnim:Z

    .line 757
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    xor-int/lit8 p1, p1, 0x1

    .line 758
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->setIconTitleVisible(Z)V

    return-void
.end method

.method public setIsAnimating(Z)V
    .locals 0

    .line 410
    iput-boolean p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mIsAnimating:Z

    return-void
.end method

.method public setIsHideCheckBox(Z)V
    .locals 0

    .line 770
    iput-boolean p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mIsHideCheckBox:Z

    return-void
.end method

.method public setIsMultiDrag(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mIsMultiDrag:Z

    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method public bridge synthetic setTag(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/IShortcutIcon;->setTag(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method public showAllChildViewWhenDrawChild()V
    .locals 1

    .line 781
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->showAllChildViewWhenDrawChild()V

    const/4 v0, 0x0

    .line 782
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->setIsHideCheckBox(Z)V

    return-void
.end method

.method public showOrHideCheckBoxWithAnim(Z)V
    .locals 4

    .line 652
    iget-boolean v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mIsShowingCheckBox:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 655
    :cond_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mIsShowingCheckBox:Z

    const/4 v0, 0x0

    .line 656
    iput v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckBoxVisibility:I

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz p1, :cond_2

    move v1, v2

    .line 659
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mShowOrHideCheckBoxAnim:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v3, v2, v0

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 660
    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mShowOrHideCheckBoxAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public showTitle()V
    .locals 1

    const/4 v0, 0x0

    .line 1041
    iput-boolean v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mIsMultiDrag:Z

    .line 1042
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getTitleContainer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1043
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getTitleContainer()Landroid/view/View;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public startLoadingAnim()V
    .locals 5

    const v0, 0x7f0a0245

    .line 116
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 117
    sget-boolean v1, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->sEnableLoadingAnim:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 118
    iput-boolean v1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mStopLoading:Z

    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x4

    new-array v2, v0, [Landroid/view/View;

    const v3, 0x7f0a0219

    .line 121
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v1

    const v3, 0x7f0a021a

    .line 122
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const v4, 0x7f0a021b

    .line 123
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const v4, 0x7f0a021c

    .line 124
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    :goto_0
    if-ge v1, v0, :cond_1

    .line 126
    aget-object v3, v2, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportCompleteAnimation()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x3dcccccd    # 0.1f

    goto :goto_1

    :cond_0
    const v4, 0x3e99999a    # 0.3f

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_1
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->startLoading([Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public stopLoading()V
    .locals 1

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mStopLoading:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "null"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateBackAnim(Ljava/lang/String;)V
    .locals 2

    .line 833
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_OREO:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->getLayerAdaptiveIconDrawable()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSpringLayerBackController()Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->getLayerAdaptiveIconDrawable()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;->updateBackAnim(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Ljava/lang/String;F)V

    goto :goto_0

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->changeToFancyDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 837
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/miui/launcher/utils/MamlUtils;->notifyBackHome(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateCheckBoxAnimProgress(F)V
    .locals 0

    .line 377
    iput p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckBoxDrawableScale:F

    .line 378
    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckboxDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public updateMamlDownloadVisible()V
    .locals 0

    return-void
.end method

.method public updateSizeOnIconSizeChanged()V
    .locals 0

    .line 997
    invoke-direct {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->updateBadgeConfig()V

    .line 998
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->updateSizeOnIconSizeChanged()V

    .line 999
    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public updateTitleTip()V
    .locals 5

    .line 204
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_3

    .line 205
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    if-eqz v1, :cond_3

    instance-of v1, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-nez v1, :cond_3

    .line 207
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 208
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getCurrentLightSpeedIconPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 211
    :goto_0
    iget-object v4, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v4, v1}, Lcom/miui/home/launcher/TitleTextView;->updateSpeedOfLightIndicator(Z)V

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-nez v1, :cond_3

    .line 214
    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    .line 215
    :goto_2
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/TitleTextView;->updateNewInstallIndicator(Z)V

    :cond_3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 713
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mCheckboxDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
