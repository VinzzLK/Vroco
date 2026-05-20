.class public Lcom/miui/home/safemode/SafeLauncherDialog;
.super Landroid/app/Dialog;
.source "SafeLauncherDialog.java"


# static fields
.field private static mDialogType:I


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public static synthetic $r8$lambda$9YewM2oNmXnFhsnn-nCZskPkgA8(Lcom/miui/home/safemode/SafeLauncherDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/safemode/SafeLauncherDialog;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p1, p0, Lcom/miui/home/safemode/SafeLauncherDialog;->mActivity:Landroid/app/Activity;

    .line 31
    sput p2, Lcom/miui/home/safemode/SafeLauncherDialog;->mDialogType:I

    return-void
.end method

.method private bindContent(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    .line 91
    iget-object p0, p0, Lcom/miui/home/safemode/SafeLauncherDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 92
    sget v0, Lcom/miui/home/safemode/SafeLauncherDialog;->mDialogType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 93
    sget v0, Lcom/miui/home/safemode/R$string;->dialog_safe_launcher_title:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    sget p1, Lcom/miui/home/safemode/R$string;->dialog_safe_launcher_content:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    sget p1, Lcom/miui/home/safemode/R$string;->dialog_safe_launcher_commit_describe:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 98
    sget v0, Lcom/miui/home/safemode/R$string;->safe_launcher_header_check_update_title:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    sget p1, Lcom/miui/home/safemode/R$string;->safe_launcher_header_check_update_available:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    sget p1, Lcom/miui/home/safemode/R$string;->safe_launcher_header_check_update_btn:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 2

    .line 45
    iget-object p1, p0, Lcom/miui/home/safemode/SafeLauncherDialog;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 49
    sget p1, Lcom/miui/home/safemode/SafeLauncherDialog;->mDialogType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 50
    iget-object p1, p0, Lcom/miui/home/safemode/SafeLauncherDialog;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/miui/home/safemode/SafeModeUtil;->launchBugReport(Landroid/content/Context;)V

    .line 51
    sget-object p1, Lcom/miui/home/safemode/SafeModeUtil;->INSTANCE:Lcom/miui/home/safemode/SafeModeUtil;

    iget-object p0, p0, Lcom/miui/home/safemode/SafeLauncherDialog;->mActivity:Landroid/app/Activity;

    const-string v0, "has_safe_mode_dialog_dismissed"

    const-string v1, "true"

    invoke-virtual {p1, p0, v0, v1}, Lcom/miui/home/safemode/SafeModeUtil;->putGlobalSettingsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    if-ne p1, p0, :cond_2

    .line 54
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->arrange()V

    :cond_2
    :goto_0
    return-void
.end method

.method private modifyWindowLayoutParameter(Landroid/view/WindowManager$LayoutParams;)V
    .locals 7

    .line 106
    iget-object p0, p0, Lcom/miui/home/safemode/SafeLauncherDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 107
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 108
    sget v1, Lcom/miui/home/safemode/R$dimen;->safe_launch_360_dp:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 109
    sget v2, Lcom/miui/home/safemode/R$dimen;->safe_launch_394_dp:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 110
    sget v3, Lcom/miui/home/safemode/R$dimen;->safe_launch_16_dp:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 111
    sget v4, Lcom/miui/home/safemode/R$dimen;->safe_launch_24_dp:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 112
    sget v5, Lcom/miui/home/safemode/R$dimen;->safe_launch_12_dp:I

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 113
    sget v6, Lcom/miui/home/safemode/R$dimen;->safe_launch_max_dialog_width:I

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    if-ge v0, v1, :cond_0

    sub-int p0, v0, v3

    goto :goto_0

    :cond_0
    if-gt v0, v2, :cond_1

    sub-int p0, v0, v4

    :cond_1
    :goto_0
    const/16 v0, 0x50

    .line 122
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 123
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p0, -0x2

    .line 124
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 125
    iput v5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 p0, 0x0

    .line 126
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 36
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 37
    iget-object p1, p0, Lcom/miui/home/safemode/SafeLauncherDialog;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/miui/home/safemode/R$layout;->dialog_safe_launcher:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 39
    sget v0, Lcom/miui/home/safemode/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 40
    sget v1, Lcom/miui/home/safemode/R$id;->content:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 41
    sget v3, Lcom/miui/home/safemode/R$id;->tv_commit:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 42
    invoke-direct {p0, v0, v1, v3}, Lcom/miui/home/safemode/SafeLauncherDialog;->bindContent(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 44
    new-instance v0, Lcom/miui/home/safemode/SafeLauncherDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/safemode/SafeLauncherDialog$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/safemode/SafeLauncherDialog;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 60
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 61
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 64
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 65
    invoke-direct {p0, v0}, Lcom/miui/home/safemode/SafeLauncherDialog;->modifyWindowLayoutParameter(Landroid/view/WindowManager$LayoutParams;)V

    .line 66
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SafeLauncherDialog"

    const-string v2, "onCreateDialog: "

    .line 68
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public updateSize()V
    .locals 2

    .line 75
    :try_start_0
    invoke-static {}, Lcom/miui/home/safemode/SafeModeUtil;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 82
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 83
    invoke-direct {p0, v0}, Lcom/miui/home/safemode/SafeLauncherDialog;->modifyWindowLayoutParameter(Landroid/view/WindowManager$LayoutParams;)V

    .line 84
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SafeLauncherDialog"

    const-string v1, "updateSize fail: "

    .line 86
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
