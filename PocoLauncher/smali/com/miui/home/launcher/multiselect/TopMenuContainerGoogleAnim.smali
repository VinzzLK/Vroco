.class public Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;
.super Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;
.source "TopMenuContainerGoogleAnim.java"


# instance fields
.field private mTopMenuColorAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/multiselect/TopMenuContainer;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuContainer;)V

    .line 17
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->initAnimator()V

    return-void
.end method

.method private initAnimator()V
    .locals 3

    .line 21
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->mTopMenuColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 23
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->mTopMenuColorAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->TOP_MENU_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 24
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->mTopMenuColorAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 25
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->mTopMenuColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim$1;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 33
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->mTopMenuColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim$2;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public cancelAnim()V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    invoke-static {p0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->endAnimationIfNeeded(Landroid/view/View;)V

    return-void
.end method

.method public changeStateWithAnim(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V
    .locals 6

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->changeColor(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getGoneState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 47
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 48
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    const/4 v1, 0x1

    const v2, 0x3f4ccccd    # 0.8f

    const/high16 v3, 0x3f000000    # 0.5f

    const v4, 0x3f4ccccd    # 0.8f

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/compat/EditModeAnimController;->showEditModeAnimation(Landroid/view/View;ZFFFF)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getGoneState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object p1

    if-ne p2, p1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3eb33333    # 0.35f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e3851ec    # 0.18f

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/compat/EditModeAnimController;->showEditModeAnimation(Landroid/view/View;ZFFFF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public changeStateWithoutAnim(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V
    .locals 0

    .line 68
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->changeStateWithoutAnim(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    .line 69
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    iget p2, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->mImageViewAnimEndColor:I

    iget p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->mTextViewAnimEndColor:I

    invoke-virtual {p1, p2, p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateImageAndTextColor(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
