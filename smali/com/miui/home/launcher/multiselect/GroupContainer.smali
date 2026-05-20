.class public Lcom/miui/home/launcher/multiselect/GroupContainer;
.super Lcom/miui/home/launcher/multiselect/TopMenuContainer;
.source "GroupContainer.java"


# static fields
.field private static final PRESSED_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

.field private static final PRESSED_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;


# instance fields
.field private mBackgroundImageView:Landroid/widget/ImageView;

.field private mIsSetImageBg:Z

.field private mShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lcom/miui/home/launcher/multiselect/TopMenuColor;

    const v1, 0x7f0606b4

    invoke-direct {v0, v1, v1}, Lcom/miui/home/launcher/multiselect/TopMenuColor;-><init>(II)V

    sput-object v0, Lcom/miui/home/launcher/multiselect/GroupContainer;->PRESSED_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    .line 20
    new-instance v1, Lcom/miui/home/launcher/multiselect/TopMenuState;

    const-string v2, "pressed"

    invoke-direct {v1, v0, v2}, Lcom/miui/home/launcher/multiselect/TopMenuState;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuColor;Ljava/lang/String;)V

    sput-object v1, Lcom/miui/home/launcher/multiselect/GroupContainer;->PRESSED_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/miui/home/launcher/multiselect/GroupContainer;->mIsSetImageBg:Z

    .line 30
    iput-boolean p1, p0, Lcom/miui/home/launcher/multiselect/GroupContainer;->mShow:Z

    return-void
.end method


# virtual methods
.method public changeToNormalState(ZZ)V
    .locals 1

    .line 68
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->changeToNormalState(ZZ)V

    .line 69
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/GroupContainer;->mBackgroundImageView:Landroid/widget/ImageView;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/miui/home/launcher/multiselect/GroupContainer;->mIsSetImageBg:Z

    if-nez p1, :cond_1

    .line 70
    iput-boolean p2, p0, Lcom/miui/home/launcher/multiselect/GroupContainer;->mIsSetImageBg:Z

    .line 71
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f080307

    goto :goto_0

    :cond_0
    const p1, 0x7f080308

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/GroupContainer;->mBackgroundImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    :cond_1
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/multiselect/GroupContainer;->setViewBlurs(Z)V

    return-void
.end method

.method public changeToPressedState(Z)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->changeToPressedState(Z)V

    return-void
.end method

.method public folmeComplete(Ljava/lang/Object;)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->folmeComplete(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 80
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/multiselect/GroupContainer;->setViewBlurs(Z)V

    return-void
.end method

.method protected getPressedState()Lcom/miui/home/launcher/multiselect/TopMenuState;
    .locals 0

    .line 55
    sget-object p0, Lcom/miui/home/launcher/multiselect/GroupContainer;->PRESSED_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-object p0
.end method

.method public hasTouchAnim()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 34
    invoke-super {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->onFinishInflate()V

    const v0, 0x7f080306

    .line 35
    invoke-virtual {p0, v0, v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->setImageResource(II)V

    const v0, 0x7f0a03cc

    .line 36
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/GroupContainer;->mBackgroundImageView:Landroid/widget/ImageView;

    .line 37
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/GroupContainer;->mBackgroundImageView:Landroid/widget/ImageView;

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/AccessibilityAdaptHelper;->setImageViewAsButtonAccessibility(Landroid/view/View;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 39
    new-instance v0, Lcom/miui/home/launcher/multiselect/GroupContainer$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/multiselect/GroupContainer$1;-><init>(Lcom/miui/home/launcher/multiselect/GroupContainer;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 98
    invoke-super/range {p0 .. p5}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->onLayout(ZIIII)V

    .line 99
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 100
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setPivotY(F)V

    return-void
.end method

.method public setViewBlurs(Z)V
    .locals 2

    .line 84
    iput-boolean p1, p0, Lcom/miui/home/launcher/multiselect/GroupContainer;->mShow:Z

    .line 85
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 86
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/GroupContainer;->mBackgroundImageView:Landroid/widget/ImageView;

    int-to-float v0, v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {p0, p1, v1, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setEditBlurWithRadius(Landroid/view/View;ZFF)V

    return-void
.end method

.method public updateViewBlurMode(Z)V
    .locals 2

    .line 90
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/multiselect/GroupContainer;->mShow:Z

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 92
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/GroupContainer;->mBackgroundImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    int-to-float v0, v0

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBlur(Landroid/view/View;IF)V

    :cond_1
    return-void
.end method
