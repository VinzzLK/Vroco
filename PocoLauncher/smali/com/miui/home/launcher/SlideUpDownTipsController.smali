.class public Lcom/miui/home/launcher/SlideUpDownTipsController;
.super Ljava/lang/Object;
.source "SlideUpDownTipsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;,
        Lcom/miui/home/launcher/SlideUpDownTipsController$AnimationRunnable;
    }
.end annotation


# instance fields
.field private mContentTips:Lmiuix/appcompat/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mRunnable:Lcom/miui/home/launcher/SlideUpDownTipsController$AnimationRunnable;

.field private mSearchTips:Lmiuix/appcompat/app/AlertDialog;

.field private mShowContentTipsCallBack:Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;

.field private mShowSearchTipsCallBack:Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;


# direct methods
.method public static synthetic $r8$lambda$MKDYL4Q2xX907SFiR2qw3WAjUCE(Lcom/miui/home/launcher/SlideUpDownTipsController;Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/SlideUpDownTipsController;->lambda$createInternationalTipsDialog$3(Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$X_v8u6YEKbcfvQxzC58ogs-ycdI(Lcom/miui/home/launcher/SlideUpDownTipsController;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SlideUpDownTipsController;->lambda$createInternationalTipsDialog$5(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cgtxdPUEAlZ-8uWS8vHdUmm5-ys(Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/SlideUpDownTipsController;->lambda$createTipsDialog$0(Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nB-7wwT80AME6M31CLISLCCTVys(Lcom/miui/home/launcher/SlideUpDownTipsController;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SlideUpDownTipsController;->lambda$createTipsDialog$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nRkVZVn5JGbWRXoTJkseOgErJ_Y(Lcom/miui/home/launcher/SlideUpDownTipsController;ZLandroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/SlideUpDownTipsController;->lambda$createInternationalTipsDialog$4(ZLandroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xoPryvab33hR8p7ff0_52FiQYSU(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/SlideUpDownTipsController;->lambda$createTipsDialog$1(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mHandler:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createInternationalTipsDialog(Landroid/content/Context;ZLcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;)Lmiuix/appcompat/app/AlertDialog;
    .locals 5

    .line 148
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0049

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a03e4

    .line 149
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a03ea

    .line 150
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0073

    .line 151
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    .line 152
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v4

    if-eqz p2, :cond_1

    if-eqz v4, :cond_0

    const-string v4, "international_pull_down_to_search_dark.json"

    goto :goto_0

    :cond_0
    const-string v4, "international_pull_down_to_search_light.json"

    .line 154
    :goto_0
    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    const v4, 0x7f100285

    .line 155
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f100286

    .line 156
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_1
    if-eqz v4, :cond_2

    const-string v4, "international_slide_up_to_content_dark.json"

    goto :goto_1

    :cond_2
    const-string v4, "international_slide_up_to_content_light.json"

    .line 158
    :goto_1
    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    const v4, 0x7f100288

    .line 159
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f100289

    .line 160
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 162
    :goto_2
    invoke-direct {p0}, Lcom/miui/home/launcher/SlideUpDownTipsController;->removeAnimationRunnable()V

    .line 163
    new-instance v1, Lcom/miui/home/launcher/SlideUpDownTipsController$AnimationRunnable;

    invoke-direct {v1, v3}, Lcom/miui/home/launcher/SlideUpDownTipsController$AnimationRunnable;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v1, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mRunnable:Lcom/miui/home/launcher/SlideUpDownTipsController$AnimationRunnable;

    .line 164
    iget-object v2, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    if-eqz p2, :cond_3

    const p1, 0x7f100238

    .line 168
    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    goto :goto_3

    :cond_3
    const p1, 0x7f100134

    .line 170
    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    :goto_3
    const p1, 0x7f100287

    .line 172
    new-instance v0, Lcom/miui/home/launcher/SlideUpDownTipsController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p3, p2}, Lcom/miui/home/launcher/SlideUpDownTipsController$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/SlideUpDownTipsController;Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;Z)V

    invoke-virtual {v1, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 183
    new-instance p1, Lcom/miui/home/launcher/SlideUpDownTipsController$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p2}, Lcom/miui/home/launcher/SlideUpDownTipsController$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/launcher/SlideUpDownTipsController;Z)V

    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 195
    new-instance p1, Lcom/miui/home/launcher/SlideUpDownTipsController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/SlideUpDownTipsController$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/SlideUpDownTipsController;)V

    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 p0, 0x0

    .line 196
    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 197
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private createTipsDialog(Landroid/content/Context;Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;)Lmiuix/appcompat/app/AlertDialog;
    .locals 5

    .line 119
    iput-object p2, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mShowSearchTipsCallBack:Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;

    .line 120
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0047

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0073

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 122
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "pull_down_to_search_dark.json"

    goto :goto_0

    :cond_0
    const-string v2, "pull_down_to_search_light.json"

    .line 123
    :goto_0
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lcom/miui/home/launcher/SlideUpDownTipsController;->removeAnimationRunnable()V

    .line 125
    new-instance v2, Lcom/miui/home/launcher/SlideUpDownTipsController$AnimationRunnable;

    invoke-direct {v2, v1}, Lcom/miui/home/launcher/SlideUpDownTipsController$AnimationRunnable;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v2, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mRunnable:Lcom/miui/home/launcher/SlideUpDownTipsController$AnimationRunnable;

    .line 126
    iget-object v1, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 128
    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f100236

    .line 129
    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f10026b

    .line 130
    new-instance v0, Lcom/miui/home/launcher/SlideUpDownTipsController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/miui/home/launcher/SlideUpDownTipsController$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;)V

    invoke-virtual {v1, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 136
    sget-object p1, Lcom/miui/home/launcher/SlideUpDownTipsController$$ExternalSyntheticLambda5;->INSTANCE:Lcom/miui/home/launcher/SlideUpDownTipsController$$ExternalSyntheticLambda5;

    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 142
    new-instance p1, Lcom/miui/home/launcher/SlideUpDownTipsController$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/SlideUpDownTipsController$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/SlideUpDownTipsController;)V

    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 p0, 0x0

    .line 143
    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 144
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private isShowing(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 57
    iget-object p0, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mSearchTips:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p0, :cond_1

    .line 58
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    return p0

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mContentTips:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p0, :cond_1

    .line 62
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$createInternationalTipsDialog$3(Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;ZLandroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 174
    invoke-interface {p1}, Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;->positiveButtonClick()V

    .line 176
    :cond_0
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 178
    iput-object p1, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mShowSearchTipsCallBack:Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;

    goto :goto_0

    .line 180
    :cond_1
    iput-object p1, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mShowContentTipsCallBack:Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;

    :goto_0
    return-void
.end method

.method private synthetic lambda$createInternationalTipsDialog$4(ZLandroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p3, v0, :cond_1

    .line 184
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p3

    if-nez p3, :cond_1

    .line 185
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 187
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchEdgeLayout()Lcom/miui/home/launcher/search/SearchEdgeLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    .line 188
    iput-object p2, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mShowContentTipsCallBack:Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;

    goto :goto_0

    .line 190
    :cond_0
    iput-object p2, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mShowSearchTipsCallBack:Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$createInternationalTipsDialog$5(Landroid/content/DialogInterface;)V
    .locals 0

    .line 195
    invoke-direct {p0}, Lcom/miui/home/launcher/SlideUpDownTipsController;->removeAnimationRunnable()V

    return-void
.end method

.method private static synthetic lambda$createTipsDialog$0(Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 132
    invoke-interface {p0}, Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;->positiveButtonClick()V

    .line 134
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$createTipsDialog$1(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 137
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 138
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$createTipsDialog$2(Landroid/content/DialogInterface;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/miui/home/launcher/SlideUpDownTipsController;->removeAnimationRunnable()V

    return-void
.end method

.method private removeAnimationRunnable()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mRunnable:Lcom/miui/home/launcher/SlideUpDownTipsController$AnimationRunnable;

    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mRunnable:Lcom/miui/home/launcher/SlideUpDownTipsController$AnimationRunnable;

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 201
    invoke-direct {p0}, Lcom/miui/home/launcher/SlideUpDownTipsController;->removeAnimationRunnable()V

    return-void
.end method

.method public dismiss(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 70
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SlideUpDownTipsController;->isShowing(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 71
    iget-object p0, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mSearchTips:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 74
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SlideUpDownTipsController;->isShowing(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 75
    iget-object p0, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mContentTips:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleDarkModeChanged()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mSearchTips:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mSearchTips:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 84
    iput-object v1, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mSearchTips:Lmiuix/appcompat/app/AlertDialog;

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mShowSearchTipsCallBack:Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SlideUpDownTipsController;->showSearchTips(Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;)V

    goto :goto_0

    .line 87
    :cond_0
    iput-object v1, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mSearchTips:Lmiuix/appcompat/app/AlertDialog;

    .line 90
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mContentTips:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 91
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mContentTips:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 93
    iput-object v1, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mContentTips:Lmiuix/appcompat/app/AlertDialog;

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mShowContentTipsCallBack:Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SlideUpDownTipsController;->showContentTips(Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;)V

    goto :goto_1

    .line 96
    :cond_2
    iput-object v1, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mContentTips:Lmiuix/appcompat/app/AlertDialog;

    :cond_3
    :goto_1
    return-void
.end method

.method public showContentTips(Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mContentTips:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    .line 49
    iput-object p1, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mShowContentTipsCallBack:Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/miui/home/launcher/SlideUpDownTipsController;->createInternationalTipsDialog(Landroid/content/Context;ZLcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mContentTips:Lmiuix/appcompat/app/AlertDialog;

    .line 52
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mContentTips:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public showSearchTips(Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mSearchTips:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_1

    .line 38
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/miui/home/launcher/SlideUpDownTipsController;->createInternationalTipsDialog(Landroid/content/Context;ZLcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mSearchTips:Lmiuix/appcompat/app/AlertDialog;

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/SlideUpDownTipsController;->createTipsDialog(Landroid/content/Context;Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mSearchTips:Lmiuix/appcompat/app/AlertDialog;

    .line 44
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/SlideUpDownTipsController;->mSearchTips:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method
