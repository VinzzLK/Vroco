.class public Lcom/miui/home/launcher/anim/NormalEditEnterAnim;
.super Lcom/miui/home/launcher/anim/EditAnimController;
.source "NormalEditEnterAnim.java"


# static fields
.field protected static DEBUG:Z = false

.field private static EDIT_ENTER_ANIM_CHILD_DAMPING:F = 0.68f

.field private static EDIT_ENTER_ANIM_CHILD_RESPONSE:F = 0.4f


# instance fields
.field correctLoc:[I

.field private mAnimatorNum:I

.field protected mCellScreenPadding:F

.field protected mCurrentCellLayoutScale:F

.field private mEditItem:Z

.field private mIsEnterAnimStarted:Z

.field private mIsOutAnimStarted:Z

.field protected mIsScalePivotInCenter:Z

.field private mLongClick:Z

.field mNormalEditEnterAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

.field mNormalEditOutAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

.field protected mPivotX:F

.field protected mPivotY:F

.field private final mSpringAnimatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/animate/SpringAnimator;",
            ">;"
        }
    .end annotation
.end field

.field protected mTargetCellLayoutScale:F

.field mTriggerDeltaX:I

.field private mXs:[I

.field private mYs:[I


# direct methods
.method public static synthetic $r8$lambda$23Lnt6zU2d6uKRBGtlK68zBtR4g(Lcom/miui/home/launcher/anim/NormalEditEnterAnim;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->lambda$startEditModeOutAnimation$1(IF)V

    return-void
.end method

.method public static synthetic $r8$lambda$SF5_qd_K1tXs_n-lRYo_fNdJue4(Lcom/miui/home/launcher/anim/NormalEditEnterAnim;ZFFFLcom/miui/home/launcher/Workspace;FZF)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->lambda$startNormalEnterEditAnim$0(ZFFFLcom/miui/home/launcher/Workspace;FZF)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/CellLayout;)V
    .locals 4

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/anim/EditAnimController;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/CellLayout;)V

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mSpringAnimatorList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mAnimatorNum:I

    .line 116
    iput p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mTriggerDeltaX:I

    .line 117
    new-instance p2, Lcom/miui/home/launcher/animate/SpringAnimator;

    sget v0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->EDIT_ENTER_ANIM_CHILD_DAMPING:F

    sget v1, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->EDIT_ENTER_ANIM_CHILD_RESPONSE:F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mNormalEditEnterAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 153
    iput-object p2, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->correctLoc:[I

    .line 168
    iput-boolean p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mIsEnterAnimStarted:Z

    .line 169
    iput-boolean p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mEditItem:Z

    .line 170
    iput-boolean p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mLongClick:Z

    .line 281
    iput-boolean p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mIsOutAnimStarted:Z

    .line 292
    new-instance p1, Lcom/miui/home/launcher/animate/SpringAnimator;

    const p2, 0x3eb33333    # 0.35f

    invoke-direct {p1, v3, p2, v2, v3}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mNormalEditOutAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/anim/NormalEditEnterAnim;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mIsOutAnimStarted:Z

    return p1
.end method

.method private calDeltaY(Z)F
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CellScreen;

    .line 96
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotY()F

    move-result v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getEditModePinchingPivotY()F

    move-result p1

    sub-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    iget p0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mTargetCellLayoutScale:F

    sub-float/2addr p1, p0

    mul-float/2addr v0, p1

    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private correctCellLayoutBeforeStart()F
    .locals 5

    .line 156
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mLongClick:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 158
    iget-object v1, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 159
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->getCurrentScreenDeltaX(Lcom/miui/home/launcher/Workspace;I)I

    move-result v1

    int-to-float v1, v1

    .line 160
    iget-object v2, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    neg-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 161
    iget-object v2, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget-object v3, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->correctLoc:[I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 162
    sget-boolean v2, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startNormalEnterEditAnim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", x before: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x after:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->correctLoc:[I

    aget p0, p0, v3

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EditAnim_DEBUG"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private synthetic lambda$startEditModeOutAnimation$1(IF)V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p2

    mul-float/2addr p1, v2

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 300
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result p1

    sub-float/2addr v1, p1

    mul-float/2addr v1, p2

    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result p1

    add-float/2addr v1, p1

    .line 301
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->scaleTargetView(F)V

    return-void
.end method

.method private synthetic lambda$startNormalEnterEditAnim$0(ZFFFLcom/miui/home/launcher/Workspace;FZF)V
    .locals 2

    .line 210
    iget v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mTargetCellLayoutScale:F

    iget v1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCurrentCellLayoutScale:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p8

    add-float/2addr v0, v1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p8

    mul-float/2addr p1, p2

    goto :goto_0

    .line 215
    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mTriggerDeltaX:I

    if-nez p1, :cond_1

    add-float/2addr p3, p4

    mul-float/2addr p3, p8

    add-float p1, p3, p2

    goto :goto_0

    .line 218
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLargeRtlLayout()Z

    move-result p1

    if-eqz p1, :cond_3

    neg-float p1, p3

    mul-float/2addr p1, p8

    .line 221
    iget-object p3, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p3}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide p3

    invoke-virtual {p5, p3, p4}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p3

    invoke-virtual {p5}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p4

    if-ne p3, p4, :cond_2

    .line 222
    iget p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellScreenPadding:F

    mul-float/2addr p1, p8

    .line 224
    :cond_2
    iget p3, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mTriggerDeltaX:I

    int-to-float p3, p3

    add-float/2addr p2, p3

    add-float/2addr p1, p2

    goto :goto_0

    :cond_3
    add-float/2addr p3, p4

    .line 226
    iget p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mTriggerDeltaX:I

    int-to-float p4, p1

    sub-float/2addr p3, p4

    mul-float/2addr p3, p8

    add-float/2addr p3, p2

    int-to-float p1, p1

    add-float/2addr p1, p3

    .line 230
    :goto_0
    iget-object p2, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 231
    iget-object p2, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 232
    iget-object p2, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    mul-float/2addr p8, p6

    invoke-virtual {p2, p8}, Landroid/view/ViewGroup;->setTranslationY(F)V

    if-nez p7, :cond_4

    .line 235
    iget-object p0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :cond_4
    return-void
.end method

.method private normalEnterEditAnimStart()V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mSpringAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 253
    invoke-static {v0}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setDisableAutoLayoutAnimation(Z)V

    .line 254
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mSpringAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mAnimatorNum:I

    const/4 v0, 0x0

    .line 255
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mSpringAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mSpringAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/animate/SpringAnimator;

    if-nez v0, :cond_0

    .line 258
    new-instance v2, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$1;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$1;-><init>(Lcom/miui/home/launcher/anim/NormalEditEnterAnim;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/animate/SpringAnimator;->setAnimatorListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)Lcom/miui/home/launcher/animate/SpringAnimator;

    goto :goto_1

    .line 270
    :cond_0
    new-instance v2, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$2;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$2;-><init>(Lcom/miui/home/launcher/anim/NormalEditEnterAnim;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/animate/SpringAnimator;->setAnimatorListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)Lcom/miui/home/launcher/animate/SpringAnimator;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setEditModeForItem(Landroid/view/View;Z)V
    .locals 0

    .line 398
    instance-of p0, p1, Lcom/miui/home/launcher/interfaces/IEditable;

    if-eqz p0, :cond_0

    .line 399
    check-cast p1, Lcom/miui/home/launcher/interfaces/IEditable;

    const/4 p0, 0x1

    invoke-interface {p1, p2, p0}, Lcom/miui/home/launcher/interfaces/IEditable;->setEditMode(ZZ)V

    :cond_0
    return-void
.end method

.method private setEditModeForItems(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 391
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 393
    invoke-direct {p0, v1, p1}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->setEditModeForItem(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startNormalEnterEditAnim(ZZ)V
    .locals 10

    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mIsEnterAnimStarted:Z

    .line 173
    iput-boolean p2, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mLongClick:Z

    .line 174
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->correctCellLayoutBeforeStart()F

    move-result v6

    .line 176
    iput-boolean p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mEditItem:Z

    .line 177
    iget-object p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mSpringAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 179
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v7

    if-nez v7, :cond_0

    return-void

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    .line 184
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    iput p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCurrentCellLayoutScale:F

    .line 186
    iget-object v1, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget v2, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mPivotX:F

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 187
    iget-object v1, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget v2, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mPivotY:F

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setPivotY(F)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 189
    iget-object v1, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget v2, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mPivotY:F

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 192
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->getEnterTransX(Z)F

    move-result v4

    .line 193
    iget-object v1, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 194
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLargeRtlLayout()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->calDeltaFirstScreenX()F

    move-result v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->calDeltaX(Z)F

    move-result v1

    :goto_1
    move v5, v1

    .line 195
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->calDeltaY(Z)F

    move-result v8

    .line 197
    iget v1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellScreenPadding:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLargeRtlLayout()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    if-eqz v1, :cond_4

    .line 198
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 199
    instance-of v2, v1, Lcom/miui/home/launcher/CellScreen;

    if-eqz v2, :cond_4

    .line 200
    check-cast v1, Lcom/miui/home/launcher/CellScreen;

    .line 201
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mTargetCellLayoutScale:F

    sub-float/2addr p1, v2

    mul-float/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    div-float/2addr v1, p1

    .line 202
    iput v1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellScreenPadding:F

    .line 207
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLargeRtlLayout()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {v7}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v1

    if-ne p1, v1, :cond_5

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    move v9, v0

    .line 209
    iget-object p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mNormalEditEnterAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$$ExternalSyntheticLambda1;

    move-object v1, v0

    move-object v2, p0

    move v3, p2

    invoke-direct/range {v1 .. v9}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/anim/NormalEditEnterAnim;ZFFFLcom/miui/home/launcher/Workspace;FZ)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 238
    iget-object p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mSpringAnimatorList:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mNormalEditEnterAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object p1, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 241
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->triggerEnterAnimStart()V

    .line 244
    :cond_6
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->normalEnterEditAnimStart()V

    return-void
.end method

.method private triggerEnterAnimStart()V
    .locals 5

    .line 119
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mLongClick:Z

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 121
    iget-object v2, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 122
    iget-object v2, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->correctLoc:[I

    aget v2, v2, v1

    aget v3, v0, v1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mTriggerDeltaX:I

    .line 123
    sget-boolean v2, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "triggerEnterAnimStart id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", x before: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->correctLoc:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", x after: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mTriggerDeltaX: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mTriggerDeltaX:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", translationX old: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    .line 125
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EditAnim_DEBUG"

    .line 123
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mTriggerDeltaX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_0

    .line 128
    :cond_1
    iput v1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mTriggerDeltaX:I

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mNormalEditEnterAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/animate/SpringAnimator;->startDelay(J)V

    .line 131
    iget-boolean v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mEditItem:Z

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->setEditModeForItems(Z)V

    return-void
.end method

.method private triggerOutAnimStart()V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mNormalEditOutAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/animate/SpringAnimator;->startDelay(J)V

    const/4 v0, 0x0

    .line 285
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->setEditModeForItems(Z)V

    return-void
.end method


# virtual methods
.method protected calDeltaFirstScreenX()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected calDeltaX(Z)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected cancelAnimation()V
    .locals 2

    const/4 v0, 0x0

    .line 383
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mSpringAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mSpringAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 385
    invoke-virtual {v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mSpringAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public cancelEditEnterAnim()V
    .locals 1

    .line 329
    iget-object p0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mSpringAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 330
    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getCellScreen()Lcom/miui/home/launcher/CellScreen;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/CellScreen;

    return-object p0
.end method

.method public getCurrentScreenDeltaX(Lcom/miui/home/launcher/Workspace;I)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 140
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLargeRtlLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 141
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v1, 0x0

    if-lt p2, p0, :cond_1

    return v1

    .line 144
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 145
    instance-of p1, p0, Lcom/miui/home/launcher/CellScreen;

    if-eqz p1, :cond_2

    .line 146
    check-cast p0, Lcom/miui/home/launcher/CellScreen;

    .line 147
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    aget p0, v0, v1

    return p0

    :cond_2
    return v1
.end method

.method protected getEnterTransX(Z)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getOutTransX()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getWorkspace()Lcom/miui/home/launcher/Workspace;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    return-object p0
.end method

.method public onEnterAnimationEnd()V
    .locals 1

    .line 350
    iget v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mAnimatorNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mAnimatorNum:I

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->resetCellLayout()V

    .line 353
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->resetAllViews()V

    .line 354
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->getCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->onNormalEditAnimationEnterEnd()V

    const/4 v0, 0x0

    .line 355
    iput-boolean v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mIsEnterAnimStarted:Z

    :cond_0
    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 360
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->resetAllViews()V

    return-void
.end method

.method protected prepareAnimParam()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setAllLayoutValues(Z)V

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->calculateXsAndYs()V

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mPivotY:F

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mPivotX:F

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCurrentCellLayoutScale:F

    .line 85
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mTargetCellLayoutScale:F

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mIsScalePivotInCenter:Z

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getmXs()[I

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mXs:[I

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getmYs()[I

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mYs:[I

    return-void
.end method

.method public resetAllViews()V
    .locals 4

    .line 364
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->cancelAnimation()V

    const/4 v0, 0x0

    move v1, v0

    .line 365
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 366
    iget-object v2, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 367
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->resetView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getGridCells()[[Lcom/miui/home/launcher/GridCell;

    move-result-object p0

    move v1, v0

    .line 371
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_3

    move v2, v0

    .line 372
    :goto_2
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 373
    aget-object v3, p0, v1

    aget-object v3, v3, v2

    if-nez v3, :cond_1

    goto :goto_3

    .line 377
    :cond_1
    invoke-virtual {v3}, Lcom/miui/home/launcher/GridCell;->reset()V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected resetView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 412
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    .line 413
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 415
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_1

    .line 416
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 418
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_2

    .line 419
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 421
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_3

    .line 422
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_3
    return-void
.end method

.method protected scaleTargetView(F)V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 346
    iget-object p0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleY(F)V

    return-void
.end method

.method public startEditAnim(ZZLcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 52
    invoke-virtual {p3}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "event_long_click_in_edit"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 53
    invoke-virtual {p3}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "display_layout_preview"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 54
    invoke-virtual {p3}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "event_menu"

    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 55
    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->startEnterAnim(ZZ)V

    goto :goto_2

    .line 57
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->startOutAnim()V

    :goto_2
    return-void
.end method

.method public startEditModeOutAnimation()V
    .locals 3

    .line 295
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->getOutTransX()I

    move-result v0

    .line 296
    iget-object v1, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 298
    iget-object v1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mNormalEditOutAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v2, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/anim/NormalEditEnterAnim;I)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 303
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mNormalEditOutAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v1, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$3;-><init>(Lcom/miui/home/launcher/anim/NormalEditEnterAnim;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setAnimatorListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 322
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->triggerOutAnimStart()V

    :cond_0
    return-void
.end method

.method public startEnterAnim(ZZ)V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->prepareAnimParam()V

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->startNormalEnterEditAnim(ZZ)V

    const/4 p1, 0x1

    .line 65
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->updateBlur(Z)V

    return-void
.end method

.method protected startNormalOutAnim()V
    .locals 2

    const/4 v0, 0x1

    .line 335
    iput-boolean v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mIsOutAnimStarted:Z

    .line 336
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->cancelEditEnterAnim()V

    .line 338
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getFoldEditModePivotX()F

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotX()F

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 339
    iget-object v0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 341
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->startEditModeOutAnimation()V

    return-void
.end method

.method public startOutAnim()V
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->startNormalOutAnim()V

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->updateBlur(Z)V

    return-void
.end method

.method public triggerAnimationStart()V
    .locals 1

    .line 429
    iget-boolean v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mIsOutAnimStarted:Z

    if-eqz v0, :cond_0

    .line 430
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->triggerOutAnimStart()V

    goto :goto_0

    .line 431
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mIsEnterAnimStarted:Z

    if-eqz v0, :cond_1

    .line 432
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->triggerEnterAnimStart()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected updateBlur(Z)V
    .locals 1

    .line 404
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDeviceOrSpecialDevice()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    .line 406
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/Launcher;->showPressBlackReplaceBlur(ZZ)V

    :cond_0
    return-void
.end method

.method public updateParam()V
    .locals 0

    return-void
.end method
