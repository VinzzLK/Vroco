.class public Lcom/miui/home/launcher/UninstallDialogWrapper;
.super Ljava/lang/Object;
.source "UninstallDialogWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConfirmUninstall:Ljava/lang/Runnable;

.field private mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

.field private mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

.field private mIsUninstallDialogBlackoutEffectWithoutAnim:Z

.field private mIsUninstallDialogHideAnimRunning:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mShowUninstallDialogAnimDuration:I

.field private mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

.field private final mShowUninstallDialogInterpolator:Lmiuix/animation/utils/SpringInterpolator;

.field private mShowUninstallDialogStartSize:I

.field private mUninstallAnimShowing:Z

.field private mUninstallConfirmAppDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

.field private mUninstallDialogCanceled:Z

.field private mUninstallDialogConflictsListener:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

.field private mUninstallDialogShowing:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DropTargetBar;)V
    .locals 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UninstallDialogWrapper"

    .line 34
    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIsUninstallDialogBlackoutEffectWithoutAnim:Z

    .line 37
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    .line 38
    new-instance v1, Lmiuix/animation/utils/SpringInterpolator;

    const v2, 0x3f733333    # 0.95f

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v2, v3}, Lmiuix/animation/utils/SpringInterpolator;-><init>(FF)V

    iput-object v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogInterpolator:Lmiuix/animation/utils/SpringInterpolator;

    .line 41
    iput-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogShowing:Z

    .line 42
    iput-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallAnimShowing:Z

    .line 43
    iput-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogCanceled:Z

    .line 45
    iput-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIsUninstallDialogHideAnimRunning:Z

    .line 299
    new-instance v0, Lcom/miui/home/launcher/UninstallDialogWrapper$8;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper$8;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogConflictsListener:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    .line 52
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    .line 53
    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 54
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    const v0, 0x7f0a03f6

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/UninstallDialog;

    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/UninstallDialog;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 56
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    const v0, 0x7f0a00c5

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    const v0, 0x7f0a00c6

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0032

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimDuration:I

    .line 60
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    const v0, 0x7f0a0131

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    .line 61
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 62
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/home/launcher/UninstallDialogWrapper$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper$1;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 85
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/home/launcher/UninstallDialogWrapper$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper$2;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/UninstallDialogWrapper;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogStartSize:I

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/UninstallDialogWrapper;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallConfirmAppDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/UninstallDialog;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/UninstallDialogWrapper;)Ljava/lang/Runnable;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mConfirmUninstall:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/UninstallDialogWrapper;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogShowing:Z

    return p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/UninstallDialogWrapper;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->resetIconContainerState()V

    return-void
.end method

.method static synthetic access$602(Lcom/miui/home/launcher/UninstallDialogWrapper;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallAnimShowing:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/UninstallDialogWrapper;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIsUninstallDialogHideAnimRunning:Z

    return p0
.end method

.method static synthetic access$702(Lcom/miui/home/launcher/UninstallDialogWrapper;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIsUninstallDialogHideAnimRunning:Z

    return p1
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogConflictsListener:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/UninstallDialogWrapper;Ljava/util/List;)Z
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->onConfirmUninstall(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private confirmUninstall()V
    .locals 2

    .line 200
    new-instance v0, Lcom/miui/home/launcher/UninstallDialogWrapper$5;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper$5;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    new-instance v1, Lcom/miui/home/launcher/UninstallDialogWrapper$6;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper$6;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private dismissUninstallDualAppDialog()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallConfirmAppDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallConfirmAppDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private onConfirmUninstall(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, v0, v0, p1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallDialog(ZZLjava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private resetIconContainerState()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 118
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method private showUninstallConfirmAppDialog()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDialog;->getAllInfos()Ljava/util/List;

    move-result-object v0

    .line 174
    new-instance v1, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;

    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {v1, v2, v0}, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 175
    new-instance v0, Lcom/miui/home/launcher/UninstallDialogWrapper$3;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/UninstallDialogWrapper$3;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;)V

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->setPositiveConsumer(Ljava/util/function/Consumer;)V

    .line 181
    new-instance v0, Lcom/miui/home/launcher/UninstallDialogWrapper$4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper$4;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->setCancelConsumer(Ljava/util/function/Consumer;)V

    .line 187
    iput-object v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallConfirmAppDialog:Lmiuix/appcompat/app/AlertDialog;

    const p0, 0x7f10012f

    .line 188
    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->setPositiveButTitle(I)V

    .line 189
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public getShowUninstallDialogAnimDuration()I
    .locals 0

    .line 312
    iget p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimDuration:I

    return p0
.end method

.method getUninstallDialog()Lcom/miui/home/launcher/UninstallDialog;
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    return-object p0
.end method

.method public getUninstallDialogConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogConflictsListener:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    return-object p0
.end method

.method public isUninstallAnimShowing()Z
    .locals 0

    .line 285
    iget-boolean p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallAnimShowing:Z

    return p0
.end method

.method public isUninstallDialogBlackoutEffectWithoutAnim(Z)V
    .locals 0

    .line 316
    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIsUninstallDialogBlackoutEffectWithoutAnim:Z

    return-void
.end method

.method public isUninstallDialogShowing()Z
    .locals 0

    .line 281
    iget-boolean p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogShowing:Z

    return p0
.end method

.method public onCancelUninstall()Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 151
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->onCancelUninstall(ZZ)Z

    move-result p0

    return p0
.end method

.method public onCancelUninstall(ZZ)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallDialog(ZZLjava/util/List;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->dismissUninstallDualAppDialog()V

    .line 157
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/UninstallDialog;->cancelUninstall(Z)V

    return v1

    :cond_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 141
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->confirmUninstall()V

    goto :goto_0

    .line 136
    :pswitch_1
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mConfirmUninstall:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->onCancelUninstall()Z

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a00c5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showUninstallDialog(ZZLjava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 222
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallDialog(ZZLjava/util/List;Z)Z

    move-result p0

    return p0
.end method

.method public showUninstallDialog(ZZLjava/util/List;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;Z)Z"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUninstallDialogShowing != isShow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogShowing:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, p1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUninstallDialogShowing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallAnimShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isShow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UninstallDialogWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogShowing:Z

    if-eq v0, p1, :cond_2

    .line 229
    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogShowing:Z

    .line 233
    iput-boolean p2, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogCanceled:Z

    if-eqz p1, :cond_1

    .line 235
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getTipConflictsManager()Lcom/miui/home/launcher/common/ConflictsManager;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogConflictsListener:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/ConflictsManager;->obtainLock(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)V

    goto :goto_1

    .line 237
    :cond_1
    invoke-virtual {p0, v3, p3, p4}, Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallDialogAnim(ZLjava/util/List;Z)V

    :goto_1
    return v2

    :cond_2
    return v3
.end method

.method public showUninstallDialogAnim(ZLjava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallAnimShowing:Z

    .line 244
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-boolean v3, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIsUninstallDialogBlackoutEffectWithoutAnim:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v0

    :goto_1
    invoke-virtual {v1, p1, v3}, Lcom/miui/home/launcher/Launcher;->blurBehindWithAnim(ZZ)V

    .line 245
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/Launcher;->enableFolderInteractive(Z)V

    .line 246
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    iget-boolean v3, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogCanceled:Z

    invoke-virtual {v1, p1, v3, p2}, Lcom/miui/home/launcher/UninstallDialog;->onShow(ZZLjava/util/List;)V

    .line 247
    iget-object p2, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogInterpolator:Lmiuix/animation/utils/SpringInterpolator;

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 248
    iget-object p2, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogInterpolator:Lmiuix/animation/utils/SpringInterpolator;

    invoke-virtual {v1}, Lmiuix/animation/utils/SpringInterpolator;->getDuration()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 250
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mConfirmUninstall:Ljava/lang/Runnable;

    .line 251
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogStartSize:I

    .line 252
    iget-object p3, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    new-array p2, p2, [I

    aput p1, p2, v2

    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    .line 253
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    aput p1, p2, v0

    .line 252
    invoke-virtual {p3, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 254
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 256
    new-instance p1, Lcom/miui/home/launcher/UninstallDialogWrapper$7;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper$7;-><init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->useViewToPost(Ljava/lang/Runnable;)V

    .line 262
    iput-boolean v2, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIsUninstallDialogHideAnimRunning:Z

    .line 263
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onShowOrHideUninstallDialog(Z)V

    goto :goto_3

    .line 265
    :cond_2
    iput v2, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogStartSize:I

    if-eqz p3, :cond_3

    .line 267
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 269
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    new-array p2, p2, [I

    iget-object p3, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p3

    aput p3, p2, v2

    aput v2, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 270
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    iget-boolean p2, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialogCanceled:Z

    if-nez p2, :cond_5

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportCompleteAnimation()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    const-wide/16 v3, 0x258

    :cond_5
    :goto_2
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 272
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-nez p1, :cond_6

    .line 273
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    .line 275
    :cond_6
    iput-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mIsUninstallDialogHideAnimRunning:Z

    .line 277
    :goto_3
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mShowUninstallDialogAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method startUninstallDialog()V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDialog;->getUninstallItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 295
    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallDialog(ZZLjava/util/List;)Z

    :cond_0
    return-void
.end method
