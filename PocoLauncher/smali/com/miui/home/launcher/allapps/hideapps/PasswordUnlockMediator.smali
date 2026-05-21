.class public Lcom/miui/home/launcher/allapps/hideapps/PasswordUnlockMediator;
.super Landroid/widget/LinearLayout;
.source "PasswordUnlockMediator.java"


# instance fields
.field private isResetPasswordPage:Z

.field private mContext:Landroid/content/Context;

.field private mUnlockPasswordView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/allapps/hideapps/PasswordUnlockMediator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/PasswordUnlockMediator;->mContext:Landroid/content/Context;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/hideapps/PasswordUnlockMediator;->initTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private createUnlockView()V
    .locals 3

    .line 63
    new-instance v0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/PasswordUnlockMediator;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/miui/home/launcher/allapps/hideapps/PasswordUnlockMediator;->isResetPasswordPage:Z

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/PasswordUnlockMediator;->mUnlockPasswordView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    return-void
.end method

.method private initTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 37
    sget-object v0, Lcom/miui/home/R$styleable;->PasswordUnlockMediatorAttrs:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 38
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/home/launcher/allapps/hideapps/PasswordUnlockMediator;->isResetPasswordPage:Z

    .line 40
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getUnlockView()Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/PasswordUnlockMediator;->mUnlockPasswordView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    return-object p0
.end method

.method public initUnlockView()V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/PasswordUnlockMediator;->createUnlockView()V

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/PasswordUnlockMediator;->mUnlockPasswordView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/PasswordUnlockMediator;->mUnlockPasswordView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public updateColor()V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/PasswordUnlockMediator;->mUnlockPasswordView:Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;

    check-cast p0, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/PatternPasswordUnlock;->updateColor()V

    return-void
.end method
